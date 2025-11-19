void sub_1160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1178(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1190(uint64_t a1)
{
  v2 = [*(a1 + 32) _specifiersWithMainSpecifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained refreshControl];
    [v2 endRefreshing];

    WeakRetained = v3;
  }
}

int64_t sub_1BEC(id a1, PersonalHotspotDataUsageSpecifier *a2, PersonalHotspotDataUsageSpecifier *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [NSNumber numberWithDouble:[(PersonalHotspotDataUsageSpecifier *)v5 dataUsage]];
  v7 = [NSNumber numberWithDouble:[(PersonalHotspotDataUsageSpecifier *)v4 dataUsage]];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [(PersonalHotspotDataUsageSpecifier *)v4 name];
    v10 = [(PersonalHotspotDataUsageSpecifier *)v5 name];
    v8 = [v9 localizedStandardCompare:v10];
  }

  return v8;
}

id usageSizeString(double a1)
{
  if (qword_11558 != -1)
  {
    sub_59DC();
  }

  v2 = qword_11550;

  return [v2 stringFromByteCount:a1];
}

void sub_3A64(id a1)
{
  v1 = objc_alloc_init(NSByteCountFormatter);
  v2 = qword_11550;
  qword_11550 = v1;

  [qword_11550 setZeroPadsFractionDigits:1];
  [qword_11550 setAdaptive:0];
  v3 = qword_11550;

  [v3 setCountStyle:3];
}

id zeroPaddedMACAddress(void *a1)
{
  if (a1)
  {
    v1 = [a1 componentsSeparatedByString:@":"];
    if ([v1 count] == &dword_4 + 2)
    {
      v2 = [NSMutableArray arrayWithCapacity:6];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = v1;
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v15;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v15 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v14 + 1) + 8 * i);
            v9 = +[NSCharacterSet whitespaceCharacterSet];
            v10 = [v8 stringByTrimmingCharactersInSet:v9];

            if (![v10 length])
            {
LABEL_18:

              v12 = 0;
              goto LABEL_19;
            }

            if ([v10 length] == &dword_0 + 1)
            {
              v11 = [@"0" stringByAppendingString:v10];
              [v2 addObject:v11];
            }

            else
            {
              if ([v10 length] != &dword_0 + 2)
              {
                goto LABEL_18;
              }

              [v2 addObject:v10];
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v12 = [v2 componentsJoinedByString:@":"];
LABEL_19:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id PHocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = [NSBundle bundleForClass:NSClassFromString(@"PersonalHotspotBundleController")];
  v13 = [v12 localizedStringForKey:v11 value:@"_" table:@"PersonalHotspotDataUsage"];

  if (v13)
  {
    v18[1] = &a9;
    v14 = [NSString alloc];
    v15 = +[NSLocale currentLocale];
    v18[0] = 0;
    v16 = [v14 initWithValidatedFormat:v13 validFormatSpecifiers:v10 locale:v15 arguments:&a9 error:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id logger()
{
  if (qword_11560 != -1)
  {
    sub_59F0();
  }

  v1 = qword_11568;

  return v1;
}

void sub_3E40(id a1)
{
  qword_11568 = os_log_create("com.apple.cellularSettings", "PHDataUsage");

  _objc_release_x1();
}

void sub_3EC8(id a1)
{
  qword_11570 = [[PersonalHotspotDataUsageCache alloc] initPrivate];

  _objc_release_x1();
}

void sub_41E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setRefreshInProgress:0];
  v7 = logger();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_5A18(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %{public}@", &v14, 0xCu);
    }

    [*(a1 + 32) setCachedDeviceDataUsage:v5];
    [*(a1 + 32) setCacheNeedsRefresh:0];
    v9 = [*(a1 + 32) refreshCompletionHandler];

    if (v9)
    {
      v10 = [*(a1 + 32) refreshCompletionHandler];
      v10[2]();

      [*(a1 + 32) setRefreshCompletionHandler:0];
    }

    else
    {
      v11 = logger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_5A90(v11);
      }
    }

    v8 = [NSNotification notificationWithName:@"PSWirelessDataUsageCacheRefreshedNotification" object:0];
    v12 = logger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PersonalHotspotDataUsageCache fetchDeviceDataUsage]_block_invoke";
      v16 = 2112;
      v17 = @"PSWirelessDataUsageCacheRefreshedNotification";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v14, 0x16u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 performSelectorOnMainThread:"postNotification:" withObject:v8 waitUntilDone:0];
  }
}

void sub_5954(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Constructed iconURL = %@ for device %@", &v3, 0x16u);
}

void sub_5A18(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Fetch failed: %{public}@", &v2, 0xCu);
}

void sub_5AD4(void *a1, NSObject *a2)
{
  v3 = [a1 hotspotClientsUsage];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Hotspot usage: %{public}@", &v4, 0xCu);
}