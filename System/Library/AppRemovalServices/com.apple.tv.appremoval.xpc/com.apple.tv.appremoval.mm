uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_10000183C(uint64_t a1)
{
  NSLog(@"Received secure invalidation complete notification");
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

uint64_t sub_100001884(uint64_t a1)
{
  notify_post("com.apple.tv.appRemoved");
  v2 = *(*(a1 + 32) + 16);

  return v2();
}