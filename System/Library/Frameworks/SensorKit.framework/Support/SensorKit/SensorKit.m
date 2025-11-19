void start()
{
  v0 = objc_autoreleasePoolPush();
  sub_1000008D8();
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_1000008D8()
{
  v0 = [+[NSProcessInfo processInfo](NSProcessInfo arguments];
  if ([(NSArray *)v0 count]<= 1)
  {
    v5 = __stderrp;
    v6 = "Not enough arguments.\n";
    v7 = 22;
    goto LABEL_12;
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  if ([(NSUserDefaults *)v1 stringForKey:@"help"]|| [(NSUserDefaults *)v1 stringForKey:@"h"])
  {
    sub_100000C4C();
  }

  if (![-[NSArray objectAtIndexedSubscript:](v0 objectAtIndexedSubscript:{1), "isEqualToString:", @"diagnostics"}])
  {
    v5 = __stderrp;
    v6 = "Unsupported command.\n";
    v7 = 21;
    goto LABEL_12;
  }

  v2 = [(NSUserDefaults *)v1 stringForKey:@"output"];
  if (!v2)
  {
    v5 = __stderrp;
    v6 = "Missing output directory\n";
    v7 = 25;
LABEL_12:
    fwrite(v6, v7, 1uLL, v5);
    sub_100000C4C();
  }

  v3 = [NSURL fileURLWithPath:v2];
  v16 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    NSLog(@"Failed to create directory %@ because %@", v3, v16);
    exit(73);
  }

  v4 = objc_alloc_init(SRDebugInfoClient);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100000CC4;
  v13[3] = &unk_1000040A0;
  v13[4] = v14;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100000CF8;
  v12[3] = &unk_1000040C8;
  v12[4] = v3;
  v12[5] = v13;
  [v4 datastoreListingWithReply:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100000E38;
  v11[3] = &unk_1000040F0;
  v11[4] = v3;
  v11[5] = v13;
  [v4 dumpClientsWithReply:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000EC4;
  v10[3] = &unk_1000040F0;
  v10[4] = v3;
  v10[5] = v13;
  [v4 dumpStateCacheWithReply:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100000F50;
  v9[3] = &unk_1000040F0;
  v9[4] = v3;
  v9[5] = v13;
  [v4 dumpConfigurationsWithReply:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100000FDC;
  v8[3] = &unk_1000040F0;
  v8[4] = v3;
  v8[5] = v13;
  [v4 dumpDefaultsWithReply:v8];
  _Block_object_dispose(v14, 8);
}

void sub_100000C4C()
{
  fwrite("Usage: srsupporttool <command>\n\tcommands:\n", 0x2AuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "\t\t%s -output <dir> - collect diagnostics\n", [@"diagnostics" UTF8String]);
  fwrite("\t\thelp - print this message\n", 0x1CuLL, 1uLL, __stderrp);
  exit(64);
}

uint64_t sub_100000CC4(uint64_t result)
{
  if (atomic_fetch_add((*(*(result + 32) + 8) + 24), 0xFFFFFFFF) == 1)
  {
    exit(0);
  }

  return result;
}

uint64_t sub_100000CF8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"Failed to list datastore because %@", a3);
LABEL_3:
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  if (!a2)
  {
    NSLog(@"No datastore listing available");
    goto LABEL_3;
  }

  v8 = 0;
  v7 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [a2 lastPathComponent], 0, *(a1 + 32));
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v7, 0];
  }

  if (![+[NSFileManager copyItemAtURL:"copyItemAtURL:toURL:error:"]
  {
    NSLog(@"Failed to copy %@ to %@ because %@", a2, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100000E38(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"Failed to list clients because %@", a3);
  }

  else
  {
    [a2 writeToURL:+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL atomically:{"fileURLWithPath:isDirectory:relativeToURL:", @"clients.plist", 0, *(a1 + 32)), 1}];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_100000EC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"Failed to list stateCache because %@", a3);
  }

  else
  {
    [a2 writeToURL:+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL atomically:{"fileURLWithPath:isDirectory:relativeToURL:", @"stateCache.plist", 0, *(a1 + 32)), 1}];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_100000F50(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"Failed to list configurations because %@", a3);
  }

  else
  {
    [a2 writeToURL:+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL atomically:{"fileURLWithPath:isDirectory:relativeToURL:", @"configurations.plist", 0, *(a1 + 32)), 1}];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_100000FDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"Failed to list defaults because %@", a3);
  }

  else
  {
    [a2 writeToURL:+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL atomically:{"fileURLWithPath:isDirectory:relativeToURL:", @"defaults.plist", 0, *(a1 + 32)), 1}];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}