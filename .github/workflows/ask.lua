function ask(answers)
  local s
  local lock = true
  while lock do
    s = io.read()
    if answers[s] then
      return(s)
    else
      local temps = ""
      for k, v in pairs(answers) do 
      temps = temps..k..", "
      end
      temps = string.sub(temps,1,-3)
      print("??? ("..temps..")")
    end
  end
end

function qs(t)
  local nt = {}
  for i = 1, #t do
   nt[t[i]] = true
  end
  return(nt)
end

while true do

  answer = ask(qs({"yes", "no"}))
  if answer == "no" then
  print('ok then')
  elseif answer == "yes" then
  print('yay')
  end

  print('end')

end
