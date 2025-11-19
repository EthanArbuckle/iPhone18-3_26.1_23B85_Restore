os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_general_log()
{
  if (qword_8008 != -1)
  {
    sub_764();
  }

  v1 = qword_8000;

  return v1;
}

void sub_610(id a1)
{
  qword_8000 = os_log_create("com.apple.NanoPhone", "general");

  _objc_release_x1();
}

id nph_sos_general_log()
{
  if (qword_8018 != -1)
  {
    sub_778();
  }

  v1 = qword_8010;

  return v1;
}

void sub_698(id a1)
{
  qword_8010 = os_log_create("com.apple.NanoPhone", "sos_general");

  _objc_release_x1();
}

id nph_sos_newton_log()
{
  if (qword_8028 != -1)
  {
    sub_78C();
  }

  v1 = qword_8020;

  return v1;
}

void sub_720(id a1)
{
  qword_8020 = os_log_create("com.apple.NanoPhone", "sos_newton");

  _objc_release_x1();
}