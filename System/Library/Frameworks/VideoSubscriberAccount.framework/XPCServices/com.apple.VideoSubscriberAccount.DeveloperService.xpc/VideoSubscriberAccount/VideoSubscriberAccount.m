void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleURL];
  v3 = [v2 URLByDeletingLastPathComponent];

  v4 = [v3 URLByDeletingLastPathComponent];

  v5 = [NSBundle bundleWithURL:v4];
  objc_autoreleasePoolPop(v0);
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [v5 loadAndReturnError:&v13];
    v8 = v13;
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v1 principalClass];
      if (v10)
      {
        v12 = objc_alloc_init(v10);
        v11 = +[NSXPCListener serviceListener];
        [v11 setDelegate:v12];
      }

      else
      {
        NSLog(@"Unable to find principal class by name.");
        v11 = 0;
      }

      objc_autoreleasePoolPop(v9);
      [v11 resume];
    }

    else
    {
      NSLog(@"Error loading framework: %@", v8);
    }
  }

  else
  {
    NSLog(@"Unable to find framework using URL: %@", v4);
  }

  exit(1);
}