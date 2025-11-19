id sub_29C91314C()
{
  if (qword_2A1A11FC0 != -1)
  {
    sub_29C9131D4();
  }

  v1 = qword_2A1A11FC8;

  return v1;
}

uint64_t sub_29C913190()
{
  qword_2A1A11FC8 = os_log_create("com.apple.sharing", "Accounts");

  return MEMORY[0x2A1C71028]();
}