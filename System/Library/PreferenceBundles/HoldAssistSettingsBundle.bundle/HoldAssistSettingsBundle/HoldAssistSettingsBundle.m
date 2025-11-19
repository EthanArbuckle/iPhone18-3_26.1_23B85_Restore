id PHDefaultLog()
{
  if (qword_8580 != -1)
  {
    sub_17D8();
  }

  v1 = qword_8578;

  return v1;
}

void sub_D6C(id a1)
{
  qword_8578 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_8590 != -1)
  {
    sub_17EC();
  }

  v1 = qword_8588;

  return v1;
}

void sub_DF4(id a1)
{
  qword_8588 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_85A0 != -1)
  {
    sub_1800();
  }

  v1 = qword_8598;

  return v1;
}

void sub_E7C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_8598;
  qword_8598 = v1;
}