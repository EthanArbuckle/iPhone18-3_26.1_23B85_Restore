uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

id sub_100000D2C()
{
  if (qword_100008610 != -1)
  {
    sub_100001304();
  }

  v1 = qword_100008608;

  return v1;
}

void sub_100000D70(id a1)
{
  v4 = +[RBSProcessIdentity identityOfCurrentProcess];
  v1 = [v4 description];
  v2 = os_log_create([v1 UTF8String], "XPCAppRemovalService");
  v3 = qword_100008608;
  qword_100008608 = v2;
}

void sub_100001034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100000D2C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      sub_100001450();
    }
  }

  else if (v5)
  {
    sub_1000014C4();
  }

  (*(*(a1 + 32) + 16))();
}