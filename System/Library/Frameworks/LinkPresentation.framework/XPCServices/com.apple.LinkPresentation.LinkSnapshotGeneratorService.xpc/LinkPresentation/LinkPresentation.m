uint64_t start()
{
  v0 = +[NSXPCListener serviceListener];
  v1 = objc_opt_new();
  [v0 setDelegate:v1];
  [v0 resume];

  return 0;
}