id PHDefaultLog()
{
  if (qword_86B8 != -1)
  {
    sub_17A4();
  }

  v1 = qword_86B0;

  return v1;
}

void sub_DB0(id a1)
{
  qword_86B0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_86C8 != -1)
  {
    sub_17B8();
  }

  v1 = qword_86C0;

  return v1;
}

void sub_E38(id a1)
{
  qword_86C0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_86D8 != -1)
  {
    sub_17CC();
  }

  v1 = qword_86D0;

  return v1;
}

void sub_EC0(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_86D0;
  qword_86D0 = v1;
}