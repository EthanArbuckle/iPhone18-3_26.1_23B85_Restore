BOOL sub_10000119C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 length] < 0x33;
  }

  else
  {
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 integerValue] > 0;
  }

  return v3;
}

void sub_1000017DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100001818(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained isCancelled];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 type];
    v7 = [v6 isEqualToString:@"109"];

    if (v7)
    {
      LOBYTE(v7) = [v3 BOOLFromFieldAtIndex:7];
    }

    v8 = objc_loadWeakRetained(a1 + 7);
    v9 = [v3 bundleID];
    v10 = [v8 userFriendlyAppNameForBundleID:v9];

    if (v10 && (v7 & 1) == 0)
    {
      v11 = [a1[4] objectForKeyedSubscript:v10];
      v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intValue] + 1);
      [a1[4] setObject:v12 forKeyedSubscript:v10];
    }

    v13 = [v3 fields];
    v14 = [v13 componentsJoinedByString:@" "];

    v15 = [v3 type];
    if ([v15 isEqualToString:@"210"])
    {
      v16 = [a1[5] containsObject:v14];

      if ((v16 & 1) == 0)
      {
        v17 = [v3 bundleID];

        if (v17)
        {
          if (!v10)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v10 = @"System Process";
        }

        v18 = [a1[6] objectForKeyedSubscript:v10];
        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 intValue] + 1);
        [a1[6] setObject:v19 forKeyedSubscript:v10];

        [a1[5] addObject:v14];
      }
    }

    else
    {
    }

LABEL_15:
  }

  return v5;
}

void sub_100001A34(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 48) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    [v5 doubleValue];
    v7 = (v8 / *(a1 + 48));
  }

  v9 = [v6 intValue];
  v10 = [*(a1 + 32) inputs];
  if (v9 <= [v10 minCrashesToConsider])
  {
  }

  else
  {
    v11 = [*(a1 + 32) inputs];
    v12 = [v11 avgCrashesToConsider];

    if (v7 > v12)
    {
      [*(a1 + 40) addObject:v13];
    }
  }
}

void sub_100001D78(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Bundle record not found for ID %@: %@", &v3, 0x16u);
}