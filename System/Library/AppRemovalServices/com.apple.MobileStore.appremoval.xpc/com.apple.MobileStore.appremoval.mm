int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id OS_LOG_XPCAPPREMOVAL()
{
  if (qword_1000088D0 != -1)
  {
    sub_10000104C();
  }

  v1 = qword_1000088C8;

  return v1;
}

void sub_100000D00(id a1)
{
  qword_1000088C8 = os_log_create([@"com.apple.MobileStore" UTF8String], "XPCAppRemovalService");

  _objc_release_x1();
}

void sub_100001030(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}