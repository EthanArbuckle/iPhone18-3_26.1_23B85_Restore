int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id os_log_appremoval()
{
  if (qword_100008630 != -1)
  {
    sub_100001250();
  }

  v1 = qword_100008628;

  return v1;
}

void sub_100000C98(id a1)
{
  qword_100008628 = os_log_create([@"com.apple.Home" UTF8String], "XPCAppRemovalService");

  _objc_release_x1();
}