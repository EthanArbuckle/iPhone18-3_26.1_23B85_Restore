void sub_1001E6814(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E6890;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

void sub_1001E6930(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = sub_1002380D8(v1, @"ID");
  if (v2)
  {
    v3 = +[ACAccountStore ams_sharedAccountStore];
    v4 = [v3 accountWithIdentifier:v2];

    if (v4)
    {
      v5 = [v4 ams_DSID];
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[AccountEvent] Failed to find ACAccount with ID: %{public}@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [v1 objectForKeyedSubscript:@"active"];

  if (v7)
  {
    v7 = sub_10023790C(v1, @"active");
  }

  v8 = [v1 objectForKeyedSubscript:@"signout"];

  v9 = 0;
  if (v1 && v8)
  {
    v9 = sub_1002378BC(v1, @"signout", 0);
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 BOOLValue];
    *buf = 138543618;
    v28 = v5;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AccountEvent] Active account changed notification accountID: %{public}@ active: %{BOOL}d", buf, 0x12u);
  }

  v12 = +[ACAccountStore ams_sharedAccountStore];
  v13 = [v12 ams_activeiTunesAccount];

  if (v13)
  {
    v14 = [v13 ams_DSID];

    v5 = v14;
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[AccountEvent] Falling back to the active account accountID: %{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v16 = sub_1001F03F8([AccountEvent alloc], v13);
    if (!v16)
    {
LABEL_31:
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v1;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[AccountEvent] No account found following active account change notification: %{public}@", buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (!v5)
    {
      v16 = 0;
      goto LABEL_31;
    }

    v16 = objc_alloc_init(AccountEvent);
    sub_10023E000(v16, v5, @"account_id");
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  if (!v7)
  {
    goto LABEL_31;
  }

  v17 = +[NSDate date];
  if ([v7 BOOLValue])
  {
    sub_10023E000(v16, &off_100546F18, @"event_type");
    v18 = @"active_start_time";
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_10023E000(v16, v17, @"active_end_time");
    v18 = @"event_type";
    v20 = &off_100546F30;
    v19 = v16;
  }

  sub_10023E000(v19, v20, v18);
  v21 = sub_10036C90C();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001E6DB8;
  v22[3] = &unk_10051C3E0;
  v16 = v16;
  v23 = v16;
  v26 = v9;
  v24 = v5;
  v25 = v7;
  [v21 modifyUsingTransaction:v22];

LABEL_33:
}

uint64_t sub_1001E6DB8(uint64_t a1, void *a2)
{
  v3 = sub_1003F0450(a2, *(a1 + 32));
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = ASDLogHandleForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = [*(a1 + 48) BOOLValue];
        v14 = 138543618;
        v15 = v7;
        v16 = 1024;
        v17 = v8;
        v9 = "[AccountEvent] Recorded account signout event for account: %{public}@ active: %{BOOL}d";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x12u);
      }
    }

    else if (v6)
    {
      v11 = *(a1 + 40);
      v12 = [*(a1 + 48) BOOLValue];
      v14 = 138543618;
      v15 = v11;
      v16 = 1024;
      v17 = v12;
      v9 = "[AccountEvent] Recorded account event for account: %{public}@ active: %{BOOL}d";
      goto LABEL_9;
    }
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v14 = 138543362;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[AccountEvent] Unable to recorded active account event for account: %{public}@", &v14, 0xCu);
    }
  }

  return 1;
}

void sub_1001E6F40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteQueryDescriptor alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = sub_1002D3838(v4, v5, v6);
  v8 = [SQLiteQuery alloc];
  v9 = [v3 connection];

  v10 = [(SQLiteQuery *)v8 initOnConnection:v9 descriptor:v7];
  v11 = sub_1002713E4();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E7084;
  v12[3] = &unk_10051B038;
  v13 = *(a1 + 32);
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v12];
}

int64_t sub_1001E7090(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = a2;
  v6 = sub_1001F05C8(v5);
  if (v6)
  {
    sub_1001F05C8(v5);
  }

  else
  {
    sub_1001F0590(v5);
  }
  v7 = ;

  v8 = sub_1001F05C8(v4);
  if (v8)
  {
    sub_1001F05C8(v4);
  }

  else
  {
    sub_1001F0590(v4);
  }
  v9 = ;

  v10 = [v7 compare:v9];
  return v10;
}

id sub_1001E71EC(id a1)
{
  v1 = a1;
  if (a1)
  {
    v22 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = sub_1001E66CC(v1);
    v2 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v2)
    {
      v3 = v2;
      v21 = *v24;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v23 + 1) + 8 * i);
          if (v5)
          {
            v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5[2]];
            v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5[3]];
            v8 = v7;
            if (v5[3] == 0.0)
            {
              v9 = @"n/a";
            }

            else
            {
              v9 = sub_1002525A8(v7);
            }

            v30[0] = @"Start Date";
            v10 = sub_1002525A8(v6);
            v31[0] = v10;
            v31[1] = v9;
            v30[1] = @"End Date";
            v30[2] = @"Account";
            Property = objc_getProperty(v5, v11, 8, 1);
            v13 = sub_1001F0520(Property);
            v15 = objc_getProperty(v5, v14, 8, 1);
            v16 = sub_1001F0558(v15);
            v17 = [NSString stringWithFormat:@"%@/%@", v13, v16];
            v31[2] = v17;
            v5 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
          }

          [v22 addObject:v5];
        }

        v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v3);
    }

    v27 = @"events";
    v18 = [v22 copy];
    v28 = v18;
    v1 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  }

  return v1;
}

void sub_1001E74A0()
{
  objc_opt_self();
  v0 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[AccountEventTimeline]: Date diagnostics", buf, 2u);
  }

  v1 = +[NSDate date];
  v2 = sub_1001E60F4(AccountEventCoordinator, v1);
  v3 = +[NSTimeZone localTimeZone];
  v4 = [v3 name];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      [v1 timeIntervalSince1970];
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1002526A4(v2);
    *buf = 138412802;
    v22 = v4;
    v23 = 2048;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting timezone: %@ date: %{time_t}ld week: %@", buf, 0x20u);
  }

  v18 = v4;
  v19 = v2;

  v20 = v1;
  [v1 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = 365;
  do
  {
    v10 = v10 + 86400.0;
    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
    v13 = sub_1001E60F4(AccountEventCoordinator, v12);
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        [v12 timeIntervalSince1970];
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = sub_1002526A4(v13);
      *buf = 134218242;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Date: %{time_t}ld payout week: %@", buf, 0x16u);
    }

    --v11;
  }

  while (v11);
}

void sub_1001E79D4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"OffloadingGracePeriodStartDate", @"com.apple.appstored");
  if (!v0)
  {
    CFPreferencesSetAppValue(@"OffloadingGracePeriodStartDate", +[NSDate date], @"com.apple.appstored");
    CFPreferencesAppSynchronize(@"com.apple.appstored");
    v0 = 0;
  }
}

void sub_1001E7A5C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1003D43E8();
  v4 = [v3 allKeys];
  v5 = [v4 count];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v7)
    {
      v9 = v6;
      goto LABEL_16;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v3 objectForKeyedSubscript:{v12, v14}];

        if (v13)
        {
          if (!v9)
          {
            v9 = [NSMutableDictionary dictionaryWithDictionary:v3];
          }

          [v9 removeObjectForKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);

    if (v9)
    {
      sub_1003D4434(AppDefaultsManager, v9);
LABEL_16:
    }
  }
}

id sub_1001E7C04(void *a1, int a2)
{
  if (a1)
  {
    v4 = +[NSMutableDictionary dictionary];
    v52 = +[NSMutableArray array];
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001E8174(a1, v4, 1, a2, v5);
    v6 = [[ASDPurgeableAppRequestOptions alloc] initWithVolume:@"/private/var" urgency:3];
    v7 = +[NSMutableArray array];
    v49 = v6;
    v51 = v5;
    sub_1001E99F8(a1, v6, v5);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v48 = v68 = 0u;
    v8 = [v48 purgeableApps];
    v9 = [v8 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v66;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v66 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v65 + 1) + 8 * i) diagnosticDescription];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    v50 = v4;
    [v4 setObject:v14 forKeyedSubscript:@"purgeableEvents"];

    v15 = +[NSMutableSet set];
    sub_10033643C();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = v64 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v62;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v62 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v61 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          if (sub_1001E9C7C(a1, v21))
          {
            v23 = [v21 bundleIdentifier];
            [v15 addObject:v23];
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v16 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v18);
    }

    v24 = sub_100336278();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v58;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v57 + 1) + 8 * k) bundleIdentifier];
          [v15 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v26);
    }

    v30 = [NSDateInterval alloc];
    v31 = +[NSDate distantPast];
    v32 = +[NSDate distantFuture];
    v33 = [v30 initWithStartDate:v31 endDate:v32];

    v34 = +[_TtC9appstored13LaunchHistory shared];
    v47 = v33;
    v35 = [v34 getLaunchesWithLogKey:v51 dateInterval:v33];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v54;
      do
      {
        for (m = 0; m != v38; m = m + 1)
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v53 + 1) + 8 * m);
          if (sub_10038AEFC(v41))
          {
            sub_10038AF64(v41);
          }

          else
          {
            sub_10038AD6C(v41);
          }
          v42 = ;
          if ([v42 length] && objc_msgSend(v15, "containsObject:", v42))
          {
            v43 = sub_10038AF9C(v41);
            [v52 addObject:v43];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v38);
    }

    v44 = [v52 copy];
    [v50 setObject:v44 forKeyedSubscript:@"launchEvents"];

    v45 = [v50 copy];
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

void sub_1001E8174(uint64_t a1, void *a2, char a3, int a4, void *a5)
{
  v182 = a2;
  v8 = a5;
  v9 = v8;
  v165 = a1;
  if (a4)
  {
    sub_1001ECF5C(v8);
  }

  else
  {
    sub_1001E9E5C(a1, v8);
  }

  v155 = +[NSMutableArray array];
  v147 = +[NSMutableArray array];
  oslog = sub_100336278();
  v170 = +[NSMutableDictionary dictionary];
  v166 = +[NSMutableDictionary dictionary];
  v10 = +[NSDate distantPast];
  v11 = +[NSDate distantFuture];
  v179 = v10;
  v183 = v11;
  newValue = v9;
  v12 = +[NSMutableSet set];
  v13 = sub_100336278();
  v227 = 0u;
  v228 = 0u;
  memset(v226, 0, sizeof(v226));
  v14 = [v13 countByEnumeratingWithState:v226 objects:buf count:16];
  if (v14)
  {
    v15 = **&v226[16];
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (**&v226[16] != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*&v226[8] + 8 * i) bundleIdentifier];
        [v12 addObject:v17];
      }

      v14 = [v13 countByEnumeratingWithState:v226 objects:buf count:16];
    }

    while (v14);
  }

  v176 = [[NSDateInterval alloc] initWithStartDate:v179 endDate:v183];
  v18 = +[_TtC9appstored13LaunchHistory shared];
  v19 = [v18 getLaunchesWithLogKey:newValue dateInterval:v176];

  v20 = +[NSMutableArray array];
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v206 objects:&v218 count:16];
  if (v22)
  {
    v23 = *v207;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v207 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v206 + 1) + 8 * j);
        v26 = sub_10038AD6C(v25);
        v27 = [v12 containsObject:v26];

        if (v27)
        {
          [v20 addObject:v25];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v206 objects:&v218 count:16];
    }

    while (v22);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  obj = v20;
  v28 = [obj countByEnumeratingWithState:&v202 objects:v217 count:16];
  if (v28)
  {
    v29 = *v203;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v203 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v202 + 1) + 8 * k);
        if (!sub_10038AEFC(v31) || (sub_10038AF64(v31), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 length] == 0, v32, v33))
        {
          v34 = sub_10038AD6C(v31);
          [v170 setObject:v31 forKeyedSubscript:v34];
        }

        else
        {
          v34 = sub_10038AF64(v31);
          [v166 setObject:v31 forKeyedSubscript:v34];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v202 objects:v217 count:16];
    }

    while (v28);
  }

  v159 = +[NSDate date];
  v35 = sub_1001EECF8(newValue, 0);
  v36 = sub_1001EEC70(newValue, 0);
  v37 = sub_1001EECF8(newValue, 1);
  v38 = sub_1001EEC70(newValue, 1);
  v153 = [v159 dateByAddingTimeInterval:(-86400 * v35)];
  v162 = [v159 dateByAddingTimeInterval:(-86400 * v36)];
  v149 = [v159 dateByAddingTimeInterval:(-86400 * v37)];
  v161 = [v159 dateByAddingTimeInterval:(-86400 * v38)];
  v39 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (v153)
    {
      [v153 timeIntervalSince1970];
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v162)
    {
      [v162 timeIntervalSince1970];
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    if (v149)
    {
      [v149 timeIntervalSince1970];
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v161)
    {
      [v161 timeIntervalSince1970];
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    *buf = 138413314;
    *&buf[4] = newValue;
    *&buf[12] = 2048;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    v223 = v43;
    *v224 = 2048;
    *&v224[2] = v45;
    *&v224[10] = 2048;
    *&v224[12] = v47;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%@] Reclaim start. Cutoff dates are data: %{time_t}ld app: %{time_t}ld SIWA data: %{time_t}ld SIWA app: %{time_t}ld", buf, 0x34u);
  }

  v148 = sub_1003D43E8();
  v175 = +[NSMutableDictionary dictionary];
  self = [PurgeContext alloc];
  v48 = sub_1002AB1B0();
  v50 = sub_1002AC124(v48);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v49, v50, 40);

    objc_setProperty_nonatomic_copy(self, v51, newValue, 32);
  }

  else
  {
  }

  v168 = sub_1001EE4E0(v165);
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v163 = oslog;
  v169 = [v163 countByEnumeratingWithState:&v198 objects:v216 count:16];
  if (v169)
  {
    v167 = *v199;
    do
    {
      v52 = 0;
      do
      {
        if (*v199 != v167)
        {
          objc_enumerationMutation(v163);
        }

        v53 = *(*(&v198 + 1) + 8 * v52);
        v54 = [v53 bundleIdentifier];
        if (![v168 containsObject:v54])
        {
          v177 = [v170 objectForKeyedSubscript:v54];
          v180 = [v166 objectForKeyedSubscript:v54];
          v57 = v180;
          if (v180)
          {
            v58 = v177 == 0;
          }

          else
          {
            v58 = 1;
          }

          if (!v58)
          {
            v60 = sub_10038ADA4(v177);
            v61 = sub_10038ADA4(v180);
            v62 = v61;
            if (v60)
            {
              [v60 timeIntervalSinceDate:v61];
              v64 = v63 < 0.0;

              v65 = v177;
              if (v64)
              {
                v65 = v180;
              }
            }

            else
            {

              v65 = v177;
            }

            v59 = v65;
            goto LABEL_65;
          }

          if (v177)
          {
            v57 = v177;
          }

          v59 = v57;
          if (!v59)
          {
            v172 = 0;
            goto LABEL_69;
          }

LABEL_65:
          v172 = v59;
          v56 = sub_10038ADA4(v59);
          if (!v56)
          {
LABEL_69:
            v72 = [v53 bundleIdentifier];
            v73 = [v53 URL];
            v184 = sub_1001EE7FC(v72, v73, self, newValue);

            v74 = v184;
            if (v184)
            {
              v74 = v184[1];
            }

            v56 = v74;
            v75 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              if (v56)
              {
                [v56 timeIntervalSince1970];
                v77 = v76;
              }

              else
              {
                v77 = 0;
              }

              *buf = 138412802;
              *&buf[4] = newValue;
              *&buf[12] = 2114;
              *&buf[14] = v54;
              *&buf[22] = 2048;
              v223 = v77;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Using bundle last modified date: %{time_t}ld", buf, 0x20u);
            }

            if (v56)
            {
              goto LABEL_83;
            }

            osloga = ASDLogHandleForCategory();
            if (os_log_type_enabled(osloga, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = newValue;
              *&buf[12] = 2114;
              *&buf[14] = v54;
              _os_log_error_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Could not find target date", buf, 0x16u);
            }

            v56 = 0;
            goto LABEL_133;
          }

          v66 = sub_10038AEFC(v172);
          v67 = ASDLogHandleForCategory();
          v68 = os_log_type_enabled(v67, OS_LOG_TYPE_INFO);
          if (v66)
          {
            if (v68)
            {
              [v56 timeIntervalSince1970];
              *buf = 138412802;
              *&buf[4] = newValue;
              *&buf[12] = 2114;
              *&buf[14] = v54;
              *&buf[22] = 2048;
              v223 = v69;
              v70 = v67;
              v71 = "[%@] [%{public}@] Using last extension launched date: %{time_t}ld";
              goto LABEL_81;
            }
          }

          else if (v68)
          {
            [v56 timeIntervalSince1970];
            *buf = 138412802;
            *&buf[4] = newValue;
            *&buf[12] = 2114;
            *&buf[14] = v54;
            *&buf[22] = 2048;
            v223 = v78;
            v70 = v67;
            v71 = "[%@] [%{public}@] Using last launched date: %{time_t}ld";
LABEL_81:
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, v71, buf, 0x20u);
          }

          v184 = 0;
LABEL_83:
          v79 = v54;
          v80 = newValue;
          v218 = 0;
          v219 = &v218;
          v220 = 0x2020000000;
          v221 = 0;
          v81 = v165;
          if (!v165[1])
          {
            v82 = objc_alloc_init(AKAuthorizationController);
            v83 = v165[1];
            v165[1] = v82;

            v81 = v165;
          }

          v84 = dispatch_semaphore_create(0);
          v85 = v81[1];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001EE670;
          v223 = &unk_10051C490;
          v86 = v80;
          *v224 = v86;
          v87 = v79;
          *&v224[8] = v87;
          v225 = &v218;
          v88 = v84;
          *&v224[16] = v88;
          [v85 getCredentialStateForClientID:v87 completion:buf];
          v89 = dispatch_time(0, 20000000000);
          if (dispatch_semaphore_wait(v88, v89))
          {
            v90 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *v226 = 138412546;
              *&v226[4] = newValue;
              *&v226[12] = 2114;
              *&v226[14] = v87;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Timed out getting credential state", v226, 0x16u);
            }
          }

          v91 = *(v219 + 24);

          _Block_object_dispose(&v218, 8);
          v92 = v162;
          if (v91)
          {
            v92 = v161;
          }

          osloga = v92;
          if ([osloga compare:v56]!= -1)
          {
            if (v91)
            {
              v93 = @"[SIWA] ";
            }

            else
            {
              v93 = &stru_100529300;
            }

            if (v184)
            {
              v94 = @"modified";
            }

            else
            {
              v94 = @"launched";
            }

            if (v184)
            {
              v158 = v184[1];
              v95 = sub_1002525A8(v158);
              v157 = v95;
            }

            else
            {
              v95 = sub_1002525A8(v56);
              v160 = v95;
            }

            v101 = sub_1002525A8(osloga);
            v102 = [NSString stringWithFormat:@"%@Last %@ date %@ is greater than clip reclaim date %@", v93, v94, v95, v101];

            v103 = v160;
            if (v184)
            {

              v103 = v158;
            }

            v104 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = newValue;
              *&buf[12] = 2114;
              *&buf[14] = v87;
              *&buf[22] = 2114;
              v223 = v102;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Will reclaim with reason: %{public}@", buf, 0x20u);
            }

            [v155 addObject:v87];
LABEL_132:
            [v175 setObject:v102 forKeyedSubscript:v87];

LABEL_133:
            v55 = v177;
            goto LABEL_134;
          }

          v96 = v153;
          if (v91)
          {
            v96 = v149;
          }

          v97 = &stru_100529300;
          if (v91)
          {
            v97 = @"[SIWA] ";
          }

          v156 = v97;
          v98 = v96;
          if (v184)
          {
            v99 = @"modified";
          }

          else
          {
            v99 = @"launched";
          }

          if (v184)
          {
            v151 = v184[1];
            v100 = sub_1002525A8(v151);
            v150 = v100;
          }

          else
          {
            v100 = sub_1002525A8(v56);
            v152 = v100;
          }

          v105 = sub_1002525A8(v98);
          v102 = [NSString stringWithFormat:@"%@Last %@ date %@ is greater than clip data reclaim date %@", v156, v99, v100, v105];

          v106 = v152;
          if (v184)
          {

            v106 = v151;
          }

          if ([v98 compare:v56] != -1)
          {
            v107 = [v148 objectForKeyedSubscript:v87];
            if (v107)
            {
              v108 = [v153 compare:v107] == 1;
              v109 = ASDLogHandleForCategory();
              v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
              if (v108)
              {
                if (v110)
                {
                  [v107 timeIntervalSince1970];
                  *buf = 138413058;
                  *&buf[4] = newValue;
                  *&buf[12] = 2114;
                  *&buf[14] = v87;
                  *&buf[22] = 2048;
                  v223 = v111;
                  *v224 = 2114;
                  *&v224[2] = v102;
                  _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Last data reclaim date: %{time_t}ld out of window. Will reclaim data with reason: %{public}@", buf, 0x2Au);
                }

                goto LABEL_123;
              }

              if (v110)
              {
                [v56 timeIntervalSince1970];
                *buf = 138412802;
                *&buf[4] = newValue;
                *&buf[12] = 2114;
                *&buf[14] = v87;
                *&buf[22] = 2048;
                v223 = v112;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Data reclaim already attempted on targetDate: %{time_t}ld", buf, 0x20u);
              }
            }

            else
            {
              v109 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                *&buf[4] = newValue;
                *&buf[12] = 2114;
                *&buf[14] = v87;
                *&buf[22] = 2114;
                v223 = v102;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Will reclaim user data with reason: %{public}@", buf, 0x20u);
              }

LABEL_123:

              [v147 addObject:v87];
            }
          }

          goto LABEL_132;
        }

        v55 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = newValue;
          *&buf[12] = 2114;
          *&buf[14] = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] This App Clip is not allowed to be reclaimed", buf, 0x16u);
        }

        v56 = 0;
LABEL_134:

        v52 = v52 + 1;
      }

      while (v169 != v52);
      v113 = [v163 countByEnumeratingWithState:&v198 objects:v216 count:16];
      v169 = v113;
    }

    while (v113);
  }

  if ([v155 count])
  {
    if (v182)
    {
      v114 = +[NSMutableArray array];
      [v182 setObject:v114 forKeyedSubscript:@"clipsForDeletion"];
    }

    if ((a3 & 1) == 0)
    {
      v115 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = [v155 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        *&buf[4] = newValue;
        *&buf[12] = 2114;
        *&buf[14] = v116;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[%@] Reclaiming the following apps: [%{public}@]", buf, 0x16u);
      }
    }

    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v194 = 0u;
    v117 = v155;
    v118 = [v117 countByEnumeratingWithState:&v194 objects:v215 count:16];
    if (v118)
    {
      v119 = 0;
      v120 = *v195;
      do
      {
        for (m = 0; m != v118; m = m + 1)
        {
          if (*v195 != v120)
          {
            objc_enumerationMutation(v117);
          }

          v122 = *(*(&v194 + 1) + 8 * m);
          if ((a3 & 1) == 0)
          {
            v123 = [[IXApplicationIdentity alloc] initWithBundleID:v122];
            v124 = objc_alloc_init(IXUninstallOptions);
            [v124 setWaitForDeletion:0];
            [v124 setRequestUserConfirmation:0];
            v191[0] = _NSConcreteStackBlock;
            v191[1] = 3221225472;
            v191[2] = sub_1001EF6CC;
            v191[3] = &unk_10051C5B0;
            v192 = newValue;
            v193 = v122;
            [IXAppInstallCoordinator uninstallAppWithIdentity:v123 options:v124 completion:v191];

            ++v119;
          }

          if (v182)
          {
            v125 = [v182 objectForKeyedSubscript:@"clipsForDeletion"];
            v214[0] = v122;
            v213[0] = @"bundleID";
            v213[1] = @"reason";
            v126 = [v175 objectForKeyedSubscript:v122];
            v214[1] = v126;
            v127 = [NSDictionary dictionaryWithObjects:v214 forKeys:v213 count:2];
            [v125 addObject:v127];
          }
        }

        v118 = [v117 countByEnumeratingWithState:&v194 objects:v215 count:16];
      }

      while (v118);

      if (v119 >= 1)
      {
        sub_1001EF7F8(@"ReclaimApp");
      }
    }

    else
    {
    }
  }

  if ([v147 count])
  {
    if (v182)
    {
      v128 = +[NSMutableArray array];
      [v182 setObject:v128 forKeyedSubscript:@"clipsForDataDeletion"];
    }

    v181 = [NSMutableDictionary dictionaryWithDictionary:v148];
    if ((a3 & 1) == 0)
    {
      v129 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130 = [v147 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        *&buf[4] = newValue;
        *&buf[12] = 2114;
        *&buf[14] = v130;
        _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "[%@] Reclaiming data for the following apps: [%{public}@]", buf, 0x16u);
      }
    }

    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = v147;
    v131 = 0;
    v132 = [v185 countByEnumeratingWithState:&v187 objects:v212 count:16];
    if (v132)
    {
      v133 = *v188;
      do
      {
        for (n = 0; n != v132; n = n + 1)
        {
          if (*v188 != v133)
          {
            objc_enumerationMutation(v185);
          }

          v135 = *(*(&v187 + 1) + 8 * n);
          v136 = [v175 objectForKeyedSubscript:v135];
          v137 = v136;
          if (v136)
          {
            v138 = v136;
          }

          else
          {
            v138 = @"Unknown";
          }

          v139 = v138;

          if ((a3 & 1) == 0)
          {
            v186 = 0;
            [IXAppInstallCoordinator refreshContainerTypes:1 forBundleID:v135 reason:v139 error:&v186];
            v140 = v186;
            v141 = ASDLogHandleForCategory();
            v142 = v141;
            if (v140)
            {
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = newValue;
                *&buf[12] = 2114;
                *&buf[14] = v135;
                *&buf[22] = 2114;
                v223 = v140;
                _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Error refreshing data container: %{public}@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = newValue;
              *&buf[12] = 2114;
              *&buf[14] = v135;
              *&buf[22] = 2114;
              v223 = v139;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Refreshed data container with reason: %{public}@", buf, 0x20u);
            }

            v143 = [v159 copy];
            [v181 setObject:v143 forKeyedSubscript:v135];

            ++v131;
          }

          if (v182)
          {
            v144 = [v182 objectForKeyedSubscript:@"clipsForDataDeletion"];
            v210[0] = @"bundleID";
            v210[1] = @"reason";
            v211[0] = v135;
            v211[1] = v139;
            v145 = [NSDictionary dictionaryWithObjects:v211 forKeys:v210 count:2];
            [v144 addObject:v145];
          }
        }

        v132 = [v185 countByEnumeratingWithState:&v187 objects:v212 count:16];
      }

      while (v132);
    }

    if ((a3 & 1) == 0)
    {
      sub_1003D4434(AppDefaultsManager, v181);
    }

    if (v131 >= 1)
    {
      sub_1001EF7F8(@"ReclaimData");
    }
  }

  v146 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = newValue;
    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[%@] Reclaim complete", buf, 0xCu);
  }
}

id sub_1001E99F8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25 = v5;
  if (a1)
  {
    sub_1001E9E5C(a1, v6);
    v7 = sub_1001E9EE0(a1, v5, v6);
    v8 = sub_1001EC100(a1, v7, &__NSArray0__struct, @"com.apple.appstored", v6);

    v9 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          if (v16)
          {
            v17 = *(v16 + 16);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          v19 = [v18 unsignedLongLongValue];

          v20 = sub_100213A50(v16);
          [v9 addObject:v20];

          v21 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = v6;
            v32 = 2114;
            v33 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] [Offloadable] %{public}@", buf, 0x16u);
          }

          v13 += v19;

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v22 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        v12 = v22;
      }

      while (v22);
    }

    else
    {
      v13 = 0;
    }

    v23 = [[ASDPurgeableAppResponse alloc] initWithPurgeableSize:v13 purgeableApps:v9];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t sub_1001E9C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 applicationDSID])
    {
      if (!sub_10040C5B4(v4))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = [v4 applicationDownloaderDSID];
      if ((sub_10040C5B4(v4) & 1) == 0)
      {
        if (!v5)
        {
LABEL_18:
          a1 = 0;
          goto LABEL_19;
        }

LABEL_9:
        v6 = [v4 iTunesMetadata];
        if (![v6 storeItemIdentifier] || (objc_msgSend(v4, "isDeletableSystemApplication") & 1) != 0 || (objc_msgSend(v4, "isPlaceholder") & 1) != 0 || !objc_msgSend(v4, "isDeletable") || (objc_msgSend(v4, "isBeta") & 1) != 0 || (objc_msgSend(v4, "isPlaceholder") & 1) != 0 || (objc_msgSend(v4, "isProfileValidated") & 1) != 0 || objc_msgSend(v4, "applicationHasMIDBasedSINF"))
        {
        }

        else
        {
          v8 = [v4 isLaunchProhibited];

          if (!v8)
          {
            a1 = 1;
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

    if ([v4 isManagedAppDistributor])
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_19:

  return a1;
}

BOOL sub_1001E9D90(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001E8174(a1, 0, 0, 0, v2);
  }

  return a1 != 0;
}

BOOL sub_1001E9DE8(uint64_t a1, void *a2, int a3)
{
  if (a1)
  {
    v5 = a2;
    v6 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001E8174(a1, v5, 0, a3, v6);
  }

  return a1 != 0;
}

void sub_1001E9E5C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = +[_TtC9appstored13LaunchHistory shared];
    v4 = [v3 syncIfNeededWithLogKey:v2];

    sub_1001EFB5C(v4, v2);
  }
}

id sub_1001E9EE0(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v262 = v4;
  v6 = [v4 urgency];
  v7 = v5;
  v290 = sub_1001EE748(v6);
  newValue = v7;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v290)
    {
      [v290 timeIntervalSince1970];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *buf = 138412802;
    *&buf[4] = newValue;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v324 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Getting app launch history from %{time_t}ld urgency: %ld", buf, 0x20u);
  }

  v11 = +[NSMutableDictionary dictionary];
  v12 = [NSDateInterval alloc];
  v13 = +[NSDate distantPast];
  v14 = +[NSDate distantFuture];
  v280 = [v12 initWithStartDate:v13 endDate:v14];

  v15 = +[_TtC9appstored13LaunchHistory shared];
  v16 = [v15 getLaunchesWithLogKey:newValue dateInterval:v280];

  v315 = 0u;
  v316 = 0u;
  *v313 = 0u;
  v314 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:v313 objects:buf count:16];
  if (v17)
  {
    v18 = *v314;
    do
    {
      v19 = 0;
      do
      {
        if (*v314 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*&v313[8] + 8 * v19);
        if (sub_10038AEFC(v20))
        {
          sub_10038AF64(v20);
        }

        else
        {
          sub_10038AD6C(v20);
        }
        v21 = ;
        if (v21)
        {
          v22 = [v11 objectForKeyedSubscript:v21];
          v23 = v22 == 0;

          if (v23)
          {
            v24 = sub_1001EE7A0([UsedApp alloc], v21);
            [v11 setObject:v24 forKeyedSubscript:v21];
          }

          else
          {
            v24 = [v11 objectForKeyedSubscript:v21];
          }

          v25 = sub_10038AEFC(v20);
          v26 = sub_10038AE18(v20);
          v28 = v26;
          if (v24)
          {
            if (v25)
            {
              v29 = 24;
            }

            else
            {
              v29 = 32;
            }

            objc_setProperty_nonatomic_copy(v24, v27, v26, v29);

            *(v24 + 8) = sub_10038B1E4(v20);
          }

          else
          {

            sub_10038B1E4(v20);
            v24 = 0;
          }
        }

        else
        {
          v24 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *v320 = 138412546;
            *&v320[4] = newValue;
            *&v320[12] = 2114;
            *&v320[14] = v20;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[%@] Skipping entry with no bundleID: %{public}@", v320, 0x16u);
          }
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v30 = [obj countByEnumeratingWithState:v313 objects:buf count:16];
      v17 = v30;
    }

    while (v30);
  }

  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v31 = [v11 objectEnumerator];
  v32 = [v31 countByEnumeratingWithState:&v309 objects:v320 count:16];
  if (v32)
  {
    v33 = *v310;
    do
    {
      v34 = 0;
      do
      {
        if (*v310 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v309 + 1) + 8 * v34);
        if (v35)
        {
          v37 = (v35 + 3);
          v36 = v35[3];
          if (!v36)
          {
            goto LABEL_37;
          }

          v38 = v35[4];
          if (v38)
          {
            if ([v38 compare:?] == 1)
            {
LABEL_37:
              v37 = (v35 + 4);
            }

            v39 = *v37;
            if (!v39)
            {
LABEL_43:
              v40 = 4;
              goto LABEL_44;
            }
          }

          else
          {
            v39 = v36;
          }

          if ([v290 compare:v39] != 1)
          {
            goto LABEL_43;
          }

          v40 = 2;
LABEL_44:
          v35[5] = v40;
          goto LABEL_45;
        }

        v39 = 0;
LABEL_45:
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *v317 = 138412546;
          *&v317[4] = newValue;
          *&v317[12] = 2114;
          *&v317[14] = v35;
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "[%@] %{public}@", v317, 0x16u);
        }

        v34 = v34 + 1;
      }

      while (v32 != v34);
      v42 = [v31 countByEnumeratingWithState:&v309 objects:v320 count:16];
      v32 = v42;
    }

    while (v42);
  }

  v257 = [v11 copy];
  obja = objc_opt_new();
  v43 = sub_1002AB1B0();
  v45 = sub_1002AC124(v43);
  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v44, v45, 40);
  }

  v46 = [v262 skipLaunchCheck];
  if (obja)
  {
    obja[9] = v46;
    objc_setProperty_nonatomic_copy(obja, v47, newValue, 32);
    obja[8] = sub_1001EF0B8(newValue);
  }

  else
  {
    sub_1001EF0B8(newValue);
  }

  v261 = +[NSMutableSet set];
  v260 = +[NSMutableSet set];
  v48 = +[NSDate now];
  [v48 timeIntervalSinceReferenceDate];
  v50 = v49;

  v270 = newValue;
  v291 = +[NSMutableArray array];
  v51 = +[NSMutableArray array];
  v52 = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v272 = [NSURL fileURLWithPath:v52];

  v274 = [NSDictionary dictionaryWithContentsOfURL:v272];
  if (v274)
  {
    v283 = sub_100237778(v274, @"today");
    v318 = 0u;
    v319 = 0u;
    memset(v317, 0, sizeof(v317));
    v53 = [v283 countByEnumeratingWithState:v317 objects:buf count:16];
    if (v53)
    {
      v54 = **&v317[16];
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (**&v317[16] != v54)
          {
            objc_enumerationMutation(v283);
          }

          v56 = *(*&v317[8] + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_1001EFA60(v56, v291, v51);
          }
        }

        v53 = [v283 countByEnumeratingWithState:v317 objects:buf count:16];
      }

      while (v53);
    }

    context = sub_100237778(v274, @"iconLists");
    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    v281 = [context countByEnumeratingWithState:&v301 objects:v320 count:16];
    if (v281)
    {
      v278 = *v302;
      do
      {
        v57 = 0;
        do
        {
          if (*v302 != v278)
          {
            v58 = v57;
            objc_enumerationMutation(context);
            v57 = v58;
          }

          newValuea = v57;
          v59 = *(*(&v301 + 1) + 8 * v57);
          v297 = 0u;
          v298 = 0u;
          v299 = 0u;
          v300 = 0u;
          v60 = v59;
          v61 = [v60 countByEnumeratingWithState:&v297 objects:v313 count:16];
          if (v61)
          {
            v62 = *v298;
            do
            {
              for (j = 0; j != v61; j = j + 1)
              {
                if (*v298 != v62)
                {
                  objc_enumerationMutation(v60);
                }

                v64 = *(*(&v297 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v65 = sub_1002380D8(v64, @"elementType");
                  if (v65 && [@"widget" isEqualToString:v65])
                  {
                    sub_1001EFA60(v64, v291, v51);
                  }
                }
              }

              v61 = [v60 countByEnumeratingWithState:&v297 objects:v313 count:16];
            }

            while (v61);
          }

          v57 = newValuea + 1;
        }

        while (newValuea + 1 != v281);
        v281 = [context countByEnumeratingWithState:&v301 objects:v320 count:16];
      }

      while (v281);
    }
  }

  v66 = [@"~/Library/SpringBoard/TodayViewArchive.plist" stringByExpandingTildeInPath];
  v67 = [NSURL fileURLWithPath:v66];

  v68 = [NSDictionary dictionaryWithContentsOfURL:v67];
  v69 = v68;
  if (v68)
  {
    v70 = sub_100237778(v68, @"TodayGroup");
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v71 = [v70 countByEnumeratingWithState:&v293 objects:&v309 count:16];
    if (v71)
    {
      v72 = *v294;
      do
      {
        for (k = 0; k != v71; k = k + 1)
        {
          if (*v294 != v72)
          {
            objc_enumerationMutation(v70);
          }

          v74 = *(*(&v293 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v291 containsObject:v74] & 1) == 0)
          {
            [v291 addObject:v74];
          }
        }

        v71 = [v70 countByEnumeratingWithState:&v293 objects:&v309 count:16];
      }

      while (v71);
    }
  }

  if ([v291 count])
  {
    v75 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v250 = [v291 componentsJoinedByString:{@", "}];
      *v305 = 138412546;
      v306 = v270;
      v307 = 2114;
      v308 = v250;
      _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "[%@] Widget plugins are: [%{public}@]", v305, 0x16u);
    }
  }

  if ([v51 count])
  {
    v76 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v251 = [v51 componentsJoinedByString:{@", "}];
      *v305 = 138412546;
      v306 = v270;
      v307 = 2114;
      v308 = v251;
      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "[%@] Widget bundles are: [%{public}@]", v305, 0x16u);
    }
  }

  self = objc_alloc_init(SpringBoardWidgetContext);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v77, v51, 8);
    objc_setProperty_nonatomic_copy(self, v78, v291, 16);
  }

  v79 = +[NSDate now];
  [v79 timeIntervalSinceReferenceDate];
  v81 = v80;

  v82 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v270;
    *&buf[12] = 2048;
    *&buf[14] = v81 - v50;
    _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "[%@] Springboard widget lookup elapsedTime: %f", buf, 0x16u);
  }

  if (self)
  {
    denyList = self->_denyList;
  }

  else
  {
    denyList = 0;
  }

  if ([(NSArray *)denyList count])
  {
    if (self)
    {
      v84 = self->_denyList;
    }

    else
    {
      v84 = 0;
    }

    [v261 addObjectsFromArray:v84];
  }

  if (self)
  {
    pluginDenyList = self->_pluginDenyList;
  }

  else
  {
    pluginDenyList = 0;
  }

  if ([(NSArray *)pluginDenyList count])
  {
    if (self)
    {
      v86 = self->_pluginDenyList;
    }

    else
    {
      v86 = 0;
    }

    [v260 addObjectsFromArray:v86];
  }

  v259 = sub_1001EE4E0(a1);
  if ([v259 count])
  {
    [v261 unionSet:v259];
  }

  v87 = +[NSMutableSet set];
  *&v309 = 0;
  v88 = [IXAppInstallCoordinator defaultAppMetadataListWithError:&v309];
  v89 = v309;
  if (v89)
  {
    v90 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v89;
      _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Default app lookup failed due to error: %{public}@", buf, 0xCu);
    }

    v91 = &__NSArray0__struct;
  }

  else
  {
    v321 = 0u;
    v322 = 0u;
    memset(v320, 0, sizeof(v320));
    v92 = v88;
    v93 = [v92 countByEnumeratingWithState:v320 objects:buf count:16];
    if (v93)
    {
      v94 = **&v320[16];
      do
      {
        for (m = 0; m != v93; m = m + 1)
        {
          if (**&v320[16] != v94)
          {
            objc_enumerationMutation(v92);
          }

          v96 = *(*&v320[8] + 8 * m);
          v97 = [v96 identity];
          v98 = [v97 bundleID];

          if ([v96 offloadAnswer] != 1)
          {
            v99 = [v96 offloadAnswer] == 4 || v98 == 0;
            if (!v99)
            {
              [v87 addObject:v98];
            }
          }
        }

        v93 = [v92 countByEnumeratingWithState:v320 objects:buf count:16];
      }

      while (v93);
    }

    v91 = [v87 allObjects];
    v90 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v100 = [v91 componentsJoinedByString:{@", "}];
      *v313 = 138543362;
      *&v313[4] = v100;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Discovered default apps: [%{public}@]", v313, 0xCu);
    }
  }

  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v101, v91, 24);
  }

  v103 = [v261 allObjects];
  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v102, v103, 16);
  }

  v105 = [v260 allObjects];
  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v104, v105, 56);
  }

  v258 = v270;
  v106 = +[NSMutableSet set];
  v107 = +[BagService appstoredService];
  v108 = [v107 lastBag];
  v109 = [v108 arrayOfStringsForKey:@"appPurgePluginBlacklist"];
  v110 = v109;
  v111 = &__NSArray0__struct;
  if (v109)
  {
    v111 = v109;
  }

  v112 = v111;

  [v106 addObjectsFromArray:v112];
  objc_opt_self();
  v113 = sub_1003D3DBC(AppDefaultsManager, @"OffloadPluginDenyList");
  if (v113)
  {
    [v106 addObjectsFromArray:v113];
  }

  [v106 addObject:@"com.apple.Safari.content-blocker"];
  [v106 addObject:@"com.apple.Safari.web-extension"];
  [v106 addObject:@"com.apple.networkextension.packet-tunnel"];
  [v106 addObject:@"com.apple.callkit.call-directory"];
  v114 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
  {
    v115 = [v106 allObjects];
    v116 = [v115 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    *&buf[4] = v258;
    *&buf[12] = 2114;
    *&buf[14] = v116;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "[%@] Updating plugin deny list to %{public}@", buf, 0x16u);
  }

  v117 = [v106 allObjects];

  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v118, v117, 64);

    objc_setProperty_nonatomic_copy(obja, v119, v257, 80);
  }

  else
  {
  }

  v120 = sub_1001EE748([v262 urgency]);
  v122 = v120;
  if (obja)
  {
    objc_setProperty_nonatomic_copy(obja, v121, v120, 88);

    v123 = a1;
    objc_sync_enter(v123);
    objc_setProperty_nonatomic_copy(obja, v124, v123[3], 48);
    objc_setProperty_nonatomic_copy(obja, v125, v123[4], 72);
  }

  else
  {

    objc_sync_enter(a1);
  }

  objc_sync_exit(a1);

  [v262 urgency];
  v292 = obja;
  v126 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    v127 = obja;
    if (obja)
    {
      v128 = v292[4];
      v129 = v292[11];
      if (v129)
      {
        [v129 timeIntervalSince1970];
        v127 = v130;
      }

      else
      {
        v127 = 0;
      }

      v131 = v128;
    }

    else
    {
      v128 = 0;
      v131 = 0;
    }

    *buf = 138412546;
    *&buf[4] = v131;
    *&buf[12] = 2048;
    *&buf[14] = v127;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "[%@] Checking for purgeable apps with window cutoff date: %{time_t}ld", buf, 0x16u);
  }

  v264 = +[NSMutableArray array];
  v132 = sub_10033643C();
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v265 = v132;
  v268 = [v265 countByEnumeratingWithState:&v309 objects:v320 count:16];
  if (v268)
  {
    v266 = *v310;
    do
    {
      v133 = 0;
      do
      {
        if (*v310 != v266)
        {
          v134 = v133;
          objc_enumerationMutation(v265);
          v133 = v134;
        }

        v275 = v133;
        v135 = *(*(&v309 + 1) + 8 * v133);
        contexta = objc_autoreleasePoolPush();
        if (sub_1001E9C7C(a1, v135))
        {
          v279 = v135;
          v271 = v292;
          v136 = obja;
          if (obja)
          {
            v136 = v292[10];
          }

          v137 = v136;
          v138 = [v279 bundleIdentifier];
          v273 = [v137 objectForKey:v138];

          v139 = v273;
          if (v273 && (!obja || (*(v292 + 9) & 1) == 0) && v273[5] == 4)
          {
            if (!v273[3] || (v140 = v273[4]) != 0 && (v141 = [v140 compare:?], v139 = v273, v141 == 1))
            {
              v142 = @"Has usage in window";
              if (*(v139 + 8) == 8)
              {
                v142 = @"Has siri execution usage in window";
              }
            }

            else
            {
              v142 = @"Has extension usage in window";
            }

            v282 = v142;
            v284 = [v279 bundleIdentifier];
            sub_1001EF2B8(@"Skipping", v282, v271, v284);
            v175 = 0;
            v164 = @"None";
            goto LABEL_218;
          }

          v284 = +[NSMutableArray array];
          v282 = +[NSMutableArray array];
          v269 = [v279 applicationExtensionRecords];
          if (![v269 count])
          {
            goto LABEL_207;
          }

          v143 = obja;
          if (obja)
          {
            v143 = v292[8];
          }

          v144 = v143;
          if ([v144 count])
          {

LABEL_190:
            v315 = 0u;
            v316 = 0u;
            *v313 = 0u;
            v314 = 0u;
            newValueb = v269;
            v147 = [newValueb countByEnumeratingWithState:v313 objects:buf count:16];
            if (!v147)
            {
              goto LABEL_206;
            }

            v148 = *v314;
            while (2)
            {
              v149 = 0;
LABEL_193:
              if (*v314 != v148)
              {
                objc_enumerationMutation(newValueb);
              }

              v150 = *(*&v313[8] + 8 * v149);
              v151 = [v150 extensionPointRecord];
              v152 = [v151 name];
              if (obja)
              {
                if ([v292[8] containsObject:v152])
                {
                  goto LABEL_197;
                }

                v153 = v292[7];
                if (v153)
                {
                  v154 = v153;
                  v155 = v292[7];
                  v156 = [v150 bundleIdentifier];
                  v157 = [v155 containsObject:v156];

                  if (v157)
                  {
                    v158 = [v150 bundleIdentifier];
                    [(__CFString *)v282 addObject:v158];
                  }
                }
              }

              else if ([0 containsObject:v152])
              {
LABEL_197:
                [(__CFString *)v284 addObject:v152];
              }

              if (v147 == ++v149)
              {
                v159 = [newValueb countByEnumeratingWithState:v313 objects:buf count:16];
                v147 = v159;
                if (!v159)
                {
LABEL_206:

                  goto LABEL_207;
                }

                continue;
              }

              goto LABEL_193;
            }
          }

          if (obja)
          {
            v145 = v292[7];
          }

          else
          {
            v145 = 0;
          }

          v146 = [v145 count] == 0;

          if (!v146)
          {
            goto LABEL_190;
          }

LABEL_207:
          v160 = obja;
          if (obja)
          {
            v160 = v292[2];
          }

          v161 = v160;
          v162 = [v279 bundleIdentifier];
          v163 = [v161 containsObject:v162];

          v164 = @"In app deny list";
          if (v163)
          {
            goto LABEL_216;
          }

          v165 = obja;
          if (obja)
          {
            v165 = v292[3];
          }

          v166 = v165;
          v167 = [v279 bundleIdentifier];
          v168 = [v166 containsObject:v167];

          v164 = @"Is default for a category";
          if (v168)
          {
            goto LABEL_216;
          }

          v169 = [(__CFString *)v282 count];
          v170 = v282;
          v171 = @"Has deny list extension(s) [%@]";
          if (v169 || (v172 = [(__CFString *)v284 count], v170 = v284, v171 = @"Has deny list protocol extension(s) [%@]", v172))
          {
            v173 = [(__CFString *)v170 componentsJoinedByString:@", "];
            v164 = [NSString stringWithFormat:v171, v173];

            goto LABEL_216;
          }

          v176 = obja;
          if (obja)
          {
            v176 = v292[6];
          }

          v177 = v176;
          v178 = [v279 bundleIdentifier];
          v179 = [v177 containsObject:v178];

          v164 = @"App is managed";
          if (v179)
          {
            goto LABEL_216;
          }

          v180 = obja;
          if (obja)
          {
            v180 = v292[9];
          }

          v181 = v180;
          v182 = [v279 bundleIdentifier];
          v183 = [v181 containsObject:v182];

          v164 = @"Has watch app";
          if (v183)
          {
LABEL_216:
            v174 = [v279 bundleIdentifier];
            sub_1001EF2B8(@"Skipping", v164, v271, v174);
            v175 = 0;
            goto LABEL_217;
          }

          v184 = obja;
          v185 = v292;
          if (!obja || (v292[1] & 1) == 0)
          {
            v186 = [v269 count];
            v184 = obja;
            v185 = v292;
            if (v186)
            {
              v187 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Is within grace period with %ld extension(s)", [v269 count]);
              v164 = v187;
              if (!obja)
              {
                goto LABEL_216;
              }

LABEL_276:
              if ((*(v292 + 9) & 1) == 0)
              {
                v164 = v187;
                goto LABEL_216;
              }

              v198 = 5;
              v164 = @"Ignoring last launch attempt";
LABEL_278:

              v223 = [PurgeableApp alloc];
              v224 = [v279 bundleIdentifier];
              v175 = sub_10020A368(&v223->super.isa, v224);

              if ([v279 applicationDSID])
              {
                v226 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v279 applicationDSID]);
                if (v175)
                {
                  objc_setProperty_nonatomic_copy(v175, v225, v226, 72);
                }
              }

              if ([v279 applicationDownloaderDSID])
              {
                v228 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v279 applicationDownloaderDSID]);
                if (v175)
                {
                  objc_setProperty_nonatomic_copy(v175, v227, v228, 64);
                }
              }

              v229 = [v279 diskUsage];
              v230 = [v229 staticUsage];
              v232 = v230;
              if (v175)
              {
                objc_setProperty_nonatomic_copy(v175, v231, v230, 16);

                objc_setProperty_nonatomic_copy(v175, v233, v164, 48);
                v175[5] = v198;
              }

              else
              {
              }

              v234 = [v279 iTunesMetadata];
              v235 = [v234 storeItemIdentifier];

              if (v235)
              {
                v236 = [v279 iTunesMetadata];
                v238 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v236 storeItemIdentifier]);
                if (v175)
                {
                  objc_setProperty_nonatomic_copy(v175, v237, v238, 56);
                }
              }

              v174 = [v279 bundleIdentifier];
              sub_1001EF2B8(@"Adding", v164, v271, v174);
LABEL_217:

LABEL_218:
              if (v175)
              {
                [v264 addObject:v175];
              }

              goto LABEL_221;
            }
          }

          v188 = v273;
          if (v273 && v273[5] == 2)
          {
            v189 = v273[3];
            if (!v189)
            {
              goto LABEL_241;
            }

            v190 = v273[4];
            if (v190)
            {
              v191 = [v190 compare:?];
              v184 = obja;
              v188 = v273;
              if (v191 == 1)
              {
LABEL_241:
                v192 = v184 == 0;
                if (*(v188 + 8) == 8)
                {
                  v193 = @"Last siri execution launch";
                }

                else
                {
                  v193 = @"Last Launch";
                }

                v194 = v188[4];
                v195 = v193;
                v187 = sub_1002525A8(v194);
                if (v192)
                {
                  v196 = 0;
                }

                else
                {
                  v196 = v292[11];
                }

                v197 = sub_1002525A8(v196);
                v164 = [NSString stringWithFormat:@"%@ %@ outside window cutoff %@", v195, v187, v197];

                v198 = 4;
LABEL_266:

                goto LABEL_278;
              }

              v189 = v273[3];
            }

            v212 = v184 == 0;
            v194 = v189;
            v187 = sub_1002525A8(v194);
            if (v212)
            {
              v213 = 0;
            }

            else
            {
              v213 = v292[11];
            }

            v197 = sub_1002525A8(v213);
            v164 = [NSString stringWithFormat:@"Last extension launch %@ outside window cutoff %@", v187, v197];
            v198 = 3;
            goto LABEL_266;
          }

          if (!v184)
          {
            v164 = @"No usage within grace period";
            goto LABEL_216;
          }

          v187 = @"No usage within grace period";
          if (*(v185 + 8) != 1)
          {
            goto LABEL_276;
          }

          v199 = [v279 bundleIdentifier];
          v200 = [v279 URL];
          v187 = sub_1001EE7FC(v199, v200, v271, v292[4]);

          v201 = v292[11];
          objc_opt_self();
          v202 = sub_1003D3EA8(AppDefaultsManager, @"OffloadRecentInstallCutoffDate");

          if (v202)
          {
            objc_opt_self();
            v194 = sub_1003D3EA8(AppDefaultsManager, @"OffloadRecentInstallCutoffDate");

            v203 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
            {
              *v317 = 138412290;
              *&v317[4] = v194;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_INFO, "Overriding recent install cutoff date from defaults to: %@", v317, 0xCu);
            }

            if (v187)
            {
LABEL_253:
              info = v187->info;
LABEL_254:
              if ([v194 compare:info] == -1)
              {
                if (v187)
                {
                  data = v187->data;
                  v215 = @"Install";
                  if (data == 2)
                  {
                    v215 = @"Registered";
                  }

                  v99 = data == 1;
                  v216 = @"Last Modified";
                  if (!v99)
                  {
                    v216 = v215;
                  }

                  v217 = v216;
                  v218 = v187->info;
                }

                else
                {
                  v217 = 0;
                  v218 = 0;
                }

                v219 = v218;
                v220 = sub_1002525A8(v219);
                v221 = sub_1002525A8(v194);
                v222 = [NSString stringWithFormat:@"%@ date %@ less than window cut off %@", v217, v220, v221];

                v187 = v222;
                goto LABEL_276;
              }

              if (v187)
              {
                v205 = v187->data;
                v206 = @"Install";
                if (v205 == 2)
                {
                  v206 = @"Registered";
                }

                v99 = v205 == 1;
                v207 = @"Last Modified";
                if (!v99)
                {
                  v207 = v206;
                }

                v197 = v207;
                v208 = v187->info;
              }

              else
              {
                v197 = 0;
                v208 = 0;
              }

              v209 = v208;
              v210 = sub_1002525A8(v209);
              v211 = sub_1002525A8(v194);
              v164 = [NSString stringWithFormat:@"%@ date %@ greater than window cut off %@", v197, v210, v211];

              v198 = 2;
              goto LABEL_266;
            }
          }

          else
          {
            v194 = v201;
            if (v187)
            {
              goto LABEL_253;
            }
          }

          info = 0;
          goto LABEL_254;
        }

LABEL_221:
        objc_autoreleasePoolPop(contexta);
        v133 = v275 + 1;
      }

      while (v275 + 1 != v268);
      v239 = [v265 countByEnumeratingWithState:&v309 objects:v320 count:16];
      v268 = v239;
    }

    while (v239);
  }

  v240 = [v264 copy];
  if (obja)
  {
    v241 = *(v292 + 9);
    v242 = [NSSortDescriptor alloc];
    if (v241)
    {
      v243 = [v242 initWithKey:0 ascending:1 comparator:&stru_10051C520];
      *v313 = v243;
      v244 = [[NSSortDescriptor alloc] initWithKey:0 ascending:1];
      v245 = [NSSortDescriptor alloc];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001EF49C;
      v324 = &unk_10051C548;
      v325 = v244;
      v246 = v244;
      v247 = [v245 initWithKey:0 ascending:0 comparator:buf];

      *&v313[8] = v247;
      v248 = [[NSSortDescriptor alloc] initWithKey:0 ascending:0 comparator:&stru_10051C568];
      *&v314 = v248;
      v249 = [NSArray arrayWithObjects:v313 count:3];

      goto LABEL_313;
    }
  }

  else
  {
    v242 = [NSSortDescriptor alloc];
  }

  v252 = [v242 initWithKey:0 ascending:1];
  v253 = [NSSortDescriptor alloc];
  *v320 = _NSConcreteStackBlock;
  *&v320[8] = 3221225472;
  *&v320[16] = sub_1001EF5B4;
  *&v320[24] = &unk_10051C548;
  *&v321 = v252;
  v254 = v252;
  v243 = [v253 initWithKey:0 ascending:0 comparator:v320];

  *&v309 = v243;
  v247 = [[NSSortDescriptor alloc] initWithKey:0 ascending:0 comparator:&stru_10051C588];
  *(&v309 + 1) = v247;
  v249 = [NSArray arrayWithObjects:&v309 count:2];
LABEL_313:

  v255 = [v240 sortedArrayUsingDescriptors:v249];

  return v255;
}

id sub_1001EC100(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v48 = a3;
  v47 = a4;
  v49 = a5;
  v51 = +[NSMutableArray array];
  v53 = +[NSMutableArray array];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v10)
  {
    v11 = *v72;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v71 + 1) + 8 * i);
        if (v13)
        {
          v13 = v13[1];
        }

        v14 = v13;
        [v53 addObject:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v10);
  }

  v50 = +[NSMutableArray array];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = *v68;
    do
    {
      v18 = 0;
      do
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v67 + 1) + 8 * v18);
        v20 = dispatch_semaphore_create(0);
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v21 = [IXApplicationIdentity alloc];
        if (v19)
        {
          v22 = v19[1];
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v24 = [v21 initWithBundleID:v23];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1001EED88;
        v60[3] = &unk_10051C4B8;
        v62 = &v63;
        v25 = v20;
        v61 = v25;
        [IXAppInstallCoordinator removabilityForAppWithIdentity:v24 completion:v60];
        v26 = dispatch_time(0, 5000000000);
        if (dispatch_semaphore_wait(v25, v26))
        {
          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            if (v19)
            {
              v39 = v19[1];
            }

            else
            {
              v39 = 0;
            }

            v40 = v39;
            *buf = 138412546;
            v76 = v49;
            v77 = 2114;
            v78 = v40;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Timeout waiting for removability call", buf, 0x16u);
          }
        }

        if (v64[3] != 1)
        {
          v37 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v64[3];
            *buf = 138412802;
            v76 = v49;
            v77 = 2114;
            v78 = v19;
            v79 = 2048;
            v80 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] Excluding candidate: %{public}@ because removability is not possible and allowed. Removability: %ld", buf, 0x20u);
          }

          goto LABEL_34;
        }

        if (v19)
        {
          v28 = v19[2];
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        v30 = [v29 unsignedLongLongValue];

        [v51 addObject:v19];
        v31 = ASDLogHandleForCategory();
        v16 += v30;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v41 = v64[3];
          *buf = 138413058;
          v76 = v49;
          v77 = 2114;
          v78 = v19;
          v79 = 2048;
          v80 = v16;
          v81 = 2048;
          v82 = v41;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "[%@] [Candidate] %{public}@ purged: %lld removability: %ld", buf, 0x2Au);
        }

        if (v19)
        {
          v32 = v19[7];
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (v19)
          {
            v35 = v19[7];
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          v37 = [v36 stringValue];

          if (([v50 containsObject:v37] & 1) == 0)
          {
            [v50 addObject:v37];
          }

LABEL_34:
        }

        _Block_object_dispose(&v63, 8);
        v18 = v18 + 1;
      }

      while (v15 != v18);
      v42 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
      v15 = v42;
    }

    while (v42);
  }

  if ([v48 count])
  {
    v43 = +[LSDatabaseContext sharedDatabaseContext];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1001EED9C;
    v54[3] = &unk_10051C4E0;
    v55 = v48;
    v56 = a1;
    v57 = v50;
    v58 = v47;
    v59 = v51;
    [v43 accessUsingBlock:v54];
  }

  v44 = [v51 copy];

  return v44;
}

id sub_1001EC7EC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    v56 = 0;
    goto LABEL_48;
  }

  sub_1001ECF5C(v8);
  v10 = [ASDPurgeableAppRequestOptions alloc];
  v11 = [v7 volume];
  v12 = [v10 initWithVolume:v11 urgency:{objc_msgSend(v7, "urgency")}];

  [v12 setSkipLaunchCheck:{objc_msgSend(v7, "skipLaunchCheck")}];
  v63 = v12;
  v13 = sub_1001E9EE0(a1, v12, v8);
  v14 = [v7 desiredPurgeAmount];
  v67 = [v14 longLongValue];

  v15 = [v7 apps];
  v16 = sub_1001EC100(a1, v13, v15, v9, v8);

  v17 = v16;
  if (![v16 count])
  {
    v22 = 0;
    v52 = &__NSArray0__struct;
    goto LABEL_47;
  }

  v62 = v7;
  v18 = [v7 offloadOnly];
  v59 = v17;
  v19 = v17;
  v61 = v8;
  v64 = v8;
  v60 = v9;
  v65 = v9;
  v66 = +[NSMutableArray array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_46;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v78;
  if (v18)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  v68 = v24;
  v71 = v18 ^ 1;
  v69 = *v78;
  do
  {
    v25 = 0;
    v70 = v21;
    do
    {
      if (*v78 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v77 + 1) + 8 * v25);
      context = objc_autoreleasePoolPush();
      if (v26)
      {
        v27 = *(v26 + 1);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v29 = [NSString stringWithFormat:@"com.apple.appstored.purge.%@", v28];
      v30 = sub_100305068([ProcessTerminator alloc], v28, v29);
      v76 = 0;
      v31 = sub_1003051EC(v30, &v76);
      v32 = v76;
      v73 = v32;
      if (v31)
      {
        v33 = [IXApplicationIdentity alloc];
        v34 = v22;
        if (v26)
        {
          v35 = *(v26 + 1);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [v33 initWithBundleID:v36];

        v75 = 0;
        v38 = [IXAppInstallCoordinator demoteAppToPlaceholderWithApplicationIdentity:v37 forReason:v68 waitForDeletion:v71 ignoreRemovability:0 error:&v75];
        v39 = v75;
        v40 = ASDLogHandleForCategory();
        v41 = v40;
        if (v38)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            *&buf[4] = v64;
            *&buf[12] = 2114;
            *&buf[14] = v28;
            *&buf[22] = 2114;
            v83 = v26;
            LOWORD(v84) = 2048;
            *(&v84 + 2) = v34;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Purged app: %{public}@ purged: %lld", buf, 0x2Au);
          }

          v42 = sub_100213A50(v26);
          [v66 addObject:v42];

          if (v26)
          {
            v43 = *(v26 + 2);
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;
          v45 = [v44 unsignedLongLongValue];

          if (v26)
          {
            v46 = *(v26 + 6);
          }

          else
          {
            v46 = 0;
          }

          v22 = &v34[v45];
          v58 = v46;
          ASDDebugLog();

          if (v22 >= v67)
          {
            v47 = v22;
            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              *&buf[4] = v64;
              *&buf[12] = 2114;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              v83 = v47;
              LOWORD(v84) = 2048;
              *(&v84 + 2) = v67;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "[%@][%{public}@] Purge stopped purged: %lld desiredPurgeSize: %lld", buf, 0x2Au);
            }

            v49 = 0;
            v22 = v47;
            goto LABEL_34;
          }
        }

        else
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413314;
            *&buf[4] = v64;
            *&buf[12] = 2114;
            *&buf[14] = v28;
            *&buf[22] = 2114;
            v83 = v26;
            LOWORD(v84) = 1024;
            *(&v84 + 2) = 0;
            WORD3(v84) = 2114;
            *(&v84 + 1) = v39;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Unable to purged app: %{public}@ result: %d error: %{public}@", buf, 0x30u);
          }

          v22 = v34;
        }

        v49 = 1;
LABEL_34:
        v23 = v69;
        v21 = v70;
        goto LABEL_35;
      }

      v50 = v32;
      v39 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Could not purge bundleID: %{public}@ because we could not get a termination assertion: %{public}@", buf, 0x16u);
      }

      v49 = 1;
LABEL_35:

      objc_autoreleasePoolPop(context);
      if (!v49)
      {
        goto LABEL_46;
      }

      v25 = v25 + 1;
    }

    while (v21 != v25);
    v51 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    v21 = v51;
  }

  while (v51);
LABEL_46:

  v53 = [v66 count];
  v54 = v65;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1001EF938;
  v83 = &unk_10051C600;
  *(&v84 + 1) = v53;
  v55 = v54;
  *&v84 = v55;
  v85 = v67;
  v86 = v22;
  AnalyticsSendEventLazy();

  v52 = [v66 copy];
  v8 = v61;
  v7 = v62;
  v17 = v59;
  v9 = v60;
LABEL_47:
  v56 = [[ASDPurgeAppsResponse alloc] initWithPurgedSize:v22 purgedApps:v52];

LABEL_48:

  return v56;
}

void sub_1001ECF5C(void *a1)
{
  v1 = a1;
  v2 = +[_TtC9appstored13LaunchHistory shared];
  v3 = [v2 syncLaunchesWithLogKey:v1];

  sub_1001EFB5C(v3, v1);
}

void sub_1001ECFD8(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001ECF5C(v1);
  }
}

char *sub_1001ED230(char *a1, void *a2, char *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    objc_opt_class();
    objc_opt_self();
    if (sub_1003D3E2C(AppDefaultsManager, @"OffloadUnusedApps", 0) && (sub_1003BBF50(), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isHRNMode], v12, (v13 & 1) == 0))
    {
      v14 = objc_alloc_init(_TtC9appstored6LogKey);
      v34 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.offloadable"];
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v44 = v14;
        v45 = 2048;
        v46 = a3;
        v47 = 2114;
        v48 = v10;
        v49 = 2114;
        v50 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Offloadable check with urgency: %ld reason: %{public}@ client: %{public}@", buf, 0x2Au);
      }

      v35 = v10;

      sub_1001E9E5C(a1, v14);
      v36 = v9;
      v32 = a3;
      v33 = [[ASDPurgeableAppRequestOptions alloc] initWithVolume:v9 urgency:a3];
      v38 = v14;
      sub_1001E9EE0(a1, v33, v14);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = v42 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v17)
      {
        v18 = v17;
        a1 = 0;
        v19 = 0;
        v20 = *v40;
        do
        {
          v37 = v19;
          v21 = 0;
          do
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v39 + 1) + 8 * v21);
            if (v22)
            {
              v23 = *(v22 + 2);
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;
            v25 = [v24 unsignedLongLongValue];

            v26 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              if (v22)
              {
                v27 = *(v22 + 1);
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;
              *buf = 138412802;
              v44 = v38;
              v45 = 2114;
              v46 = v28;
              v47 = 2114;
              v48 = v22;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] May purge %{public}@", buf, 0x20u);
            }

            a1 = &a1[v25];

            ++v21;
          }

          while (v18 != v21);
          v19 = &v37[v18];
          v29 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
          v18 = v29;
        }

        while (v29);
      }

      else
      {
        a1 = 0;
        v19 = 0;
      }

      v30 = ASDLogHandleForCategory();
      v10 = v35;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v44 = v38;
        v45 = 2048;
        v46 = a1;
        v47 = 2048;
        v48 = v19;
        v49 = 2048;
        v50 = v32;
        v51 = 2114;
        v52 = v11;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Offloadable check complete with purgeable: %{bytes}lld purgeable apps: %ld for urgency: %ld for client: %{public}@", buf, 0x34u);
      }

      v9 = v36;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_1001EE408()
{
  v3 = @"OffloadingIsEnabled";
  objc_opt_class();
  objc_opt_self();
  v0 = [NSNumber numberWithBool:sub_1003D3E2C(AppDefaultsManager, @"OffloadUnusedApps", 0)];
  v4 = v0;
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];

  return v1;
}

id sub_1001EE4E0(void *a1)
{
  v2 = +[NSMutableSet set];
  v3 = +[BagService appstoredService];
  v4 = [v3 lastBag];
  v5 = [v4 arrayOfStringsForKey:@"appPurgeBlacklist"];
  v6 = v5;
  v7 = &__NSArray0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if ([v8 count])
  {
    [v2 addObjectsFromArray:v8];
  }

  objc_opt_self();
  v9 = sub_1003D3DBC(AppDefaultsManager, @"OffloadDenyList");
  if (v9)
  {
    [v2 addObjectsFromArray:v9];
  }

  [v2 addObject:@"com.apple.facetime"];
  [v2 addObject:@"com.apple.Bridge"];
  [v2 addObject:@"com.apple.tv"];
  [v2 addObject:@"com.apple.Research"];
  v10 = a1;
  objc_sync_enter(v10);
  [v2 addObjectsFromArray:v10[2]];
  objc_sync_exit(v10);

  v11 = [v2 copy];

  return v11;
}

intptr_t sub_1001EE670(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Authorized by Sign In with Apple", &v7, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

id sub_1001EE748(uint64_t a1)
{
  v1 = dbl_10044B8A0[a1 == 2];
  if (a1 == 1)
  {
    v1 = -32140800.0;
  }

  v2 = [NSDate dateWithTimeIntervalSinceNow:v1];

  return v2;
}

id *sub_1001EE7A0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

void *sub_1001EE7FC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = v9[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectForKeyedSubscript:v7];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 lastUserInitiatedInstall];
    if (v14)
    {
      v15 = v14;
LABEL_7:
      v17 = [AppInstallDate alloc];
      v18 = v15[1];
      v19 = sub_1001EEBF0(v17, v18, 0);
LABEL_25:

      goto LABEL_26;
    }

    v16 = [v13 installs];
    v15 = [v16 firstObject];

    if (v15)
    {
      goto LABEL_7;
    }
  }

  v35 = 0;
  v15 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v7 error:&v35];
  v20 = v35;
  if (v20)
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = v10;
      v38 = 2114;
      v39 = v7;
      v40 = 2114;
      v41 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Failed to find registered date with error: %{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v31 = [AppInstallDate alloc];
  v32 = [v15 registrationDate];
  v19 = sub_1001EEBF0(v31, v32, 2);

  if (!v19)
  {
LABEL_12:
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v10;
      v38 = 2114;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Falling back to file system last modified date", buf, 0x16u);
    }

    v34 = 0;
    v33 = 0;
    v23 = [v8 getResourceValue:&v34 forKey:NSURLAttributeModificationDateKey error:&v33];
    v24 = v34;
    v18 = v33;

    if (v23)
    {
      v25 = +[NSTimeZone localTimeZone];
      v26 = [v25 secondsFromGMT];

      v27 = [v24 dateByAddingTimeInterval:v26];
    }

    else
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v37 = v10;
        v38 = 2114;
        v39 = v7;
        v40 = 2114;
        v41 = v18;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] Error finding modified date for bundleID: %{public}@ error: %{public}@", buf, 0x20u);
      }

      v27 = 0;
    }

    objc_opt_class();
    v29 = v27;
    if (objc_opt_isKindOfClass())
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v19 = sub_1001EEBF0([AppInstallDate alloc], v29, 1);
    }

    goto LABEL_25;
  }

LABEL_26:

  return v19;
}

void *sub_1001EEBF0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = AppInstallDate;
    v6 = objc_msgSendSuper2(&v9, "init");
    a1 = v6;
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v7, v5, 8);
      a1[2] = a3;
    }
  }

  return a1;
}

id sub_1001EEC70(void *a1, int a2)
{
  v3 = a1;
  v4 = +[BagService appstoredService];
  v5 = [v4 lastBag];
  v6 = v5;
  v7 = off_100523F28;
  if (!a2)
  {
    v7 = off_100523F18;
  }

  v8 = [v5 integerForKey:*v7 defaultValue:30];

  return v8;
}

id sub_1001EECF8(void *a1, int a2)
{
  v3 = a1;
  v4 = +[BagService appstoredService];
  v5 = [v4 lastBag];
  v6 = v5;
  if (a2)
  {
    v7 = 30;
  }

  else
  {
    v7 = 10;
  }

  v8 = off_100523F30;
  if (!a2)
  {
    v8 = off_100523F20;
  }

  v9 = [v5 integerForKey:*v8 defaultValue:v7];

  return v9;
}

void sub_1001EED9C(uint64_t a1)
{
  v1 = a1;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v6 = &swift_willThrowTypedImpl_ptr;
    v32 = v1;
    v33 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = [objc_alloc(v6[432]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
        v10 = [v9 iTunesMetadata];
        v11 = [v10 storeItemIdentifier];

        if (v11)
        {
          v11 = [NSNumber numberWithUnsignedLongLong:v11];
        }

        v12 = [v11 stringValue];
        if (sub_1001E9C7C(*(v1 + 40), v9))
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && ([*(v1 + 48) containsObject:v12] & 1) == 0)
        {
          v14 = v4;
          v15 = v5;
          v16 = v6;
          v17 = objc_opt_new();
          v19 = v17;
          if (v17)
          {
            objc_setProperty_nonatomic_copy(v17, v18, v8, 8);
          }

          v20 = [v9 diskUsage];
          v21 = [v20 staticUsage];
          v23 = v21;
          if (v19)
          {
            objc_setProperty_nonatomic_copy(v19, v22, v21, 16);

            objc_setProperty_nonatomic_copy(v19, v24, v11, 56);
          }

          else
          {
          }

          v6 = v16;
          v5 = v15;
          v4 = v14;
          v1 = v32;
          if ([v9 applicationDSID])
          {
            v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 applicationDSID]);
            if (v19)
            {
              objc_setProperty_nonatomic_copy(v19, v25, v26, 72);
            }
          }

          if ([v9 applicationDownloaderDSID])
          {
            v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 applicationDownloaderDSID]);
            if (v19)
            {
              objc_setProperty_nonatomic_copy(v19, v27, v28, 64);
            }
          }

          if (v19)
          {
            v19[5] = 1;
          }

          v30 = [NSString stringWithFormat:@"Requested by %@", *(v32 + 56)];
          if (v19)
          {
            objc_setProperty_nonatomic_copy(v19, v29, v30, 48);
          }

          [*(v32 + 64) addObject:v19];
          v2 = v33;
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v31 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v4 = v31;
    }

    while (v31);
  }
}

BOOL sub_1001EF0B8(void *a1)
{
  v1 = a1;
  v2 = +[BagService appstoredService];
  v3 = [v2 lastBag];
  v4 = [v3 integerForKey:@"appPurgeGracePeriod" defaultValue:8035200];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-v4];
  objc_opt_self();
  v6 = sub_1003D3EA8(AppDefaultsManager, @"OffloadingGracePeriodStartDate");
  if (v6)
  {
    v7 = [v5 compare:v6];
    v8 = v7 != -1;
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v6 timeIntervalSince1970];
      v12 = 138413058;
      v13 = v1;
      v14 = 2114;
      v15 = v5;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = v7 != -1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Grace period start date: %{public}@ offloading grace period start date: %{time_t}ld beyondGracePeriod: %d", &v12, 0x26u);
    }
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v1;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Offloading date not set", &v12, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

void sub_1001EF2B8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9 && *(v9 + 9) == 1)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v9[4];
      v16 = 138413058;
      v17 = v12;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] [%{public}@] %{public}@ with reason: %{public}@", &v16, 0x2Au);
    }
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v15 = v9[4];
      }

      else
      {
        v15 = 0;
      }

      v16 = 138413058;
      v17 = v15;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

int64_t sub_1001EF450(id a1, PurgeableApp *a2, PurgeableApp *a3)
{
  v4 = a3;
  if (a2)
  {
    a2 = a2->_purgeableReason;
  }

  if (v4)
  {
    purgeableReason = v4->_purgeableReason;
  }

  else
  {
    purgeableReason = 0;
  }

  if (a2 < purgeableReason)
  {
    return -1;
  }

  else
  {
    return a2 > purgeableReason;
  }
}

id sub_1001EF49C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 && (v6 = *(a2 + 16)) != 0)
  {
    v7 = v6;
    v8 = v7;
  }

  else
  {
    v8 = +[NSNull null];
    v7 = 0;
  }

  if (v5)
  {
    v9 = v5[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v13 = [*(a1 + 32) compareObject:v8 toObject:v12];
  return v13;
}

int64_t sub_1001EF568(id a1, PurgeableApp *a2, PurgeableApp *a3)
{
  v4 = a3;
  if (a2)
  {
    a2 = a2->_order;
  }

  if (v4)
  {
    order = v4->_order;
  }

  else
  {
    order = 0;
  }

  if (a2 < order)
  {
    return -1;
  }

  else
  {
    return a2 > order;
  }
}

id sub_1001EF5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 && (v6 = *(a2 + 16)) != 0)
  {
    v7 = v6;
    v8 = v7;
  }

  else
  {
    v8 = +[NSNull null];
    v7 = 0;
  }

  if (v5)
  {
    v9 = v5[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v13 = [*(a1 + 32) compareObject:v8 toObject:v12];
  return v13;
}

int64_t sub_1001EF680(id a1, PurgeableApp *a2, PurgeableApp *a3)
{
  v4 = a3;
  if (a2)
  {
    a2 = a2->_order;
  }

  if (v4)
  {
    order = v4->_order;
  }

  else
  {
    order = 0;
  }

  if (a2 < order)
  {
    return -1;
  }

  else
  {
    return a2 > order;
  }
}

void sub_1001EF6CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 138412802;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Error removing clip: %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Uninstalled clip", &v11, 0x16u);
  }
}

void sub_1001EF7F8(void *a1)
{
  v1 = a1;
  AnalyticsSendEventLazy();
}

id sub_1001EF890(uint64_t a1)
{
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:v1];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_1001EF938(void *a1)
{
  v9[0] = @"OffloadedAppCount";
  v2 = [NSNumber numberWithInteger:a1[5]];
  v3 = v2;
  v4 = a1[4];
  if (!v4)
  {
    v4 = @"unknown";
  }

  v10[0] = v2;
  v10[1] = v4;
  v9[1] = @"Client";
  v9[2] = @"RequestedSpace";
  v5 = [NSNumber numberWithLongLong:a1[6]];
  v10[2] = v5;
  v9[3] = @"FreedSpace";
  v6 = [NSNumber numberWithLongLong:a1[7]];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

void sub_1001EFA60(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  v7 = sub_1002380D8(v11, @"containerBundleIdentifier");
  v8 = v7;
  if (v7 && [v7 length])
  {
    if (([v6 containsObject:v8] & 1) == 0)
    {
      [v6 addObject:v8];
    }
  }

  else
  {
    v9 = sub_1002380D8(v11, @"bundleIdentifier");
    v10 = v9;
    if (v9 && [v9 length] && (objc_msgSend(v5, "containsObject:", v10) & 1) == 0)
    {
      [v5 addObject:v10];
    }
  }
}

void sub_1001EFB5C(void *a1, void *a2)
{
  v35 = a1;
  v3 = a2;
  if ([v35 updateCount] < 1)
  {
    goto LABEL_35;
  }

  v4 = +[_TtC9appstored13LaunchHistory shared];
  v5 = [v35 dateInterval];
  v6 = [v4 getLaunchesWithLogKey:v3 dateInterval:v5];

  v7 = v6;
  v37 = v3;
  v8 = sub_100336114();
  v9 = sub_1003D43E8();
  if (![v7 count])
  {
    goto LABEL_34;
  }

  if (![v8 count])
  {
    goto LABEL_34;
  }

  v10 = [v9 allKeys];
  v11 = [v10 count];

  if (!v11)
  {
    goto LABEL_34;
  }

  v34 = v3;
  v36 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v7;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  v14 = *v40;
  do
  {
    v15 = 0;
    do
    {
      if (*v40 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v39 + 1) + 8 * v15);
      v17 = sub_10038AD6C(v16);
      if ([v8 containsObject:v17])
      {
        v18 = sub_10038AD6C(v16);
        v19 = [v9 objectForKeyedSubscript:v18];

        if (!v19)
        {
          goto LABEL_26;
        }

        v17 = sub_10038AE18(v16);
        v20 = sub_10038AD6C(v16);
        v21 = sub_10038AD6C(v16);
        v22 = [v9 objectForKeyedSubscript:v21];

        if (v22)
        {
          v23 = [v22 compare:v17];
          v24 = ASDLogHandleForCategory();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v23 == 1)
          {
            if (v25)
            {
              if (v17)
              {
                [v17 timeIntervalSince1970];
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              [v22 timeIntervalSince1970];
              *buf = 138413058;
              v44 = v37;
              v45 = 2114;
              v46 = v20;
              v47 = 2048;
              v48 = v27;
              v49 = 2048;
              v50 = v28;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Not clearing reclaim historical date: %{time_t}ld which is less than last launch date: %{time_t}ld.", buf, 0x2Au);
            }
          }

          else
          {
            if (v25)
            {
              if (v17)
              {
                [v17 timeIntervalSince1970];
                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              [v22 timeIntervalSince1970];
              *buf = 138413058;
              v44 = v37;
              v45 = 2114;
              v46 = v20;
              v47 = 2048;
              v48 = v30;
              v49 = 2048;
              v50 = v31;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Clearing data reclaim with last launch date: %{time_t}ld is greater than historical date: %{time_t}ld", buf, 0x2Au);
            }

            [v36 addObject:v20];
          }
        }
      }

LABEL_26:
      v15 = v15 + 1;
    }

    while (v13 != v15);
    v32 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    v13 = v32;
  }

  while (v32);
LABEL_31:

  if ([v36 count])
  {
    sub_1001E7A5C(AppPurgeCoordinator, v36);
  }

  v7 = v33;
  v3 = v34;
LABEL_34:

LABEL_35:
}

uint64_t sub_1001EFF9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 companionAppBundleID];
    if (![v8 length])
    {
LABEL_5:

      goto LABEL_11;
    }

    v9 = *(a1 + 48);
    v10 = [v5 companionAppBundleID];
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      v11 = *(a1 + 48);
      v8 = [v5 companionAppBundleID];
      [v11 addObject:v8];
      goto LABEL_5;
    }
  }

  else
  {
    if (v6)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = 138412546;
        v16 = v14;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] Error fetching install applications on paired device: %{public}@", &v15, 0x16u);
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

LABEL_11:

  return 1;
}

id sub_1001F03F8(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = AccountEvent;
    a1 = objc_msgSendSuper2(&v11, "init");
    if (a1)
    {
      v4 = [v3 ams_DSID];

      if (v4)
      {
        v5 = [v3 ams_DSID];
        sub_10023E000(a1, v5, @"account_id");
      }

      v6 = [v3 username];

      if (v6)
      {
        v7 = [v3 username];
        sub_10023E000(a1, v7, @"apple_id");
      }

      v8 = [v3 ams_altDSID];

      if (v8)
      {
        v9 = [v3 ams_altDSID];
        sub_10023E000(a1, v9, @"alt_dsid");
      }
    }
  }

  return a1;
}

id sub_1001F0520(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"apple_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001F0558(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"account_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001F0590(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"active_end_time");
    v1 = vars8;
  }

  return a1;
}

id sub_1001F05C8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"active_start_time");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001F0600(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"event_type");
    v2 = [v1 unsignedCharValue];

    return v2;
  }

  return result;
}

id *sub_1001F0784(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = sub_1001F080C([IAPInfoItemsRequestResponse alloc], v8, 0, v7, 0, v6);

  return v9;
}

id *sub_1001F080C(id *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = IAPInfoItemsRequestResponse;
    a1 = objc_msgSendSuper2(&v22, "init");
    if (a1)
    {
      v15 = [v11 copy];
      v16 = a1[3];
      a1[3] = v15;

      v17 = [v12 copy];
      v18 = a1[4];
      a1[4] = v17;

      v19 = [v13 copy];
      v20 = a1[5];
      a1[5] = v19;

      *(a1 + 8) = a5;
      objc_storeStrong(a1 + 2, a6);
    }
  }

  return a1;
}

id *sub_1001F0904(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v12 = sub_1001F080C([IAPInfoItemsRequestResponse alloc], v11, v10, v9, 1, v8);

  return v12;
}

id *sub_1001F0A00()
{
  objc_opt_self();
  v0 = sub_1001F0A40([ZipDataStreamStatus alloc], 0, 0);

  return v0;
}

id *sub_1001F0A40(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ZipDataStreamStatus;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      v7[2] = a2;
      objc_storeStrong(v7 + 1, a3);
    }
  }

  return a1;
}

id *sub_1001F0AC0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1001F0A40([ZipDataStreamStatus alloc], 1, v2);

  return v3;
}

id *sub_1001F0B24()
{
  objc_opt_self();
  v0 = sub_1001F0A40([ZipDataStreamStatus alloc], 2, 0);

  return v0;
}

id sub_1001F12B8()
{
  objc_opt_self();
  v2[0] = @"last_duet_sync";
  v2[1] = @"spotlight_migrated_date";
  v2[2] = @"timestamp";
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

id *sub_1001F1364(id *a1, void *a2, void *a3, int a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = ZipDataStreamAdapter;
    v10 = objc_msgSendSuper2(&v19, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(a1 + 4, a3);
      if (a4)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      v12 = dispatch_semaphore_create(v11);
      v13 = a1[6];
      a1[6] = v12;

      v14 = dispatch_group_create();
      v15 = a1[7];
      a1[7] = v14;

      *(a1 + 16) = 0;
      v16 = sub_1001F0B24();
      v17 = a1[9];
      a1[9] = v16;
    }
  }

  return a1;
}

void sub_1001F145C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = sub_1001F1868(a1);
    v11 = v9;
    if (v9)
    {
      v12 = v9[2];
      if (v12 == 1)
      {
        v25 = objc_getProperty(v9, v10, 8, 1);
        v8[2](v8, v25, 0);

        goto LABEL_27;
      }

      if (!v12)
      {
        v8[2](v8, 0, 1);
LABEL_27:

        goto LABEL_28;
      }
    }

    if (!*(a1 + 16))
    {
      v26 = ASDErrorWithTitleAndMessage();
      v27 = sub_1001F0AC0(ZipDataStreamStatus, v26);
      sub_1001F1A0C(a1, v27);

      v8[2](v8, v26, 0);
      goto LABEL_27;
    }

    v13 = ASDLogHandleForCategory();
    v14 = os_signpost_id_generate(v13);

    v15 = ASDLogHandleForCategory();
    v16 = v15;
    v17 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 134349056;
      v35 = [v7 length];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Download::Unzip/SupplyBytes", " bytes=%{public, signpost.description:attribute}lu ", buf, 0xCu);
    }

    dispatch_group_enter(*(a1 + 56));
    v18 = *(a1 + 16);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001F18B8;
    v31[3] = &unk_10051C670;
    v31[4] = a1;
    v19 = v8;
    v32 = v19;
    v33 = v14;
    [v18 supplyBytes:v7 withCompletionBlock:v31];
    v20 = ASDLogHandleForCategory();
    v21 = v20;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Download::Unzip/BackPressureWait", "", buf, 2u);
    }

    dispatch_semaphore_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
    v22 = ASDLogHandleForCategory();
    v23 = v22;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v14, "Download::Unzip/BackPressureWait", "", buf, 2u);
    }

    if (a3)
    {
      v24 = v11;
    }

    else
    {
      v24 = sub_1001F1868(a1);

      if (!v24)
      {
        goto LABEL_25;
      }

      v29 = v24[2];
      if (!v29)
      {
        v19[2](v19, 0, 1);
        goto LABEL_26;
      }

      if (v29 != 1)
      {
LABEL_25:
        v19[2](v19, 0, 0);
        goto LABEL_26;
      }

      v30 = objc_getProperty(v24, v28, 8, 1);
      v19[2](v19, v30, 0);
    }

LABEL_26:

    v11 = v24;
    goto LABEL_27;
  }

LABEL_28:
}

id sub_1001F1868(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 72);
  os_unfair_lock_unlock((a1 + 64));

  return v2;
}

void sub_1001F18B8(void *a1, void *a2, int a3)
{
  v5 = a2;
  *(a1[4] + 24) = 1;
  if (v5)
  {
    v6 = a1[4];
    v7 = sub_1001F0AC0(ZipDataStreamStatus, v5);
    sub_1001F1A0C(v6, v7);
  }

  else if (a3)
  {
    v8 = a1[4];
    v9 = sub_1001F0A00();
    sub_1001F1A0C(v8, v9);

    *(a1[4] + 8) = 1;
  }

  (*(a1[5] + 16))();
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "Download::Unzip/SupplyBytes", "", v13, 2u);
  }

  dispatch_semaphore_signal(*(a1[4] + 48));
  dispatch_group_leave(*(a1[4] + 56));
}

void sub_1001F1A0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    objc_storeStrong((a1 + 72), a2);
    os_unfair_lock_unlock((a1 + 64));
  }
}

void sub_1001F1B60(uint64_t a1, void *a2)
{
  v4 = a2;
  if (ASDErrorIsEqual())
  {

    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1001F1D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(a1 + 32) + 40) = a2;
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001F1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(a1 + 32) + 40) = a2;
  }

  return (*(*(a1 + 40) + 16))();
}

void *sub_1001F1F30(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 42), a2);
    }
  }

  return a1;
}

void sub_1001F21D0(void *a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = *(v3 + 146);
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong((a1[4] + 82), v4);
    v5 = a1[5];
    if (v5)
    {
      LOBYTE(v5) = *(v5 + 43);
    }

    *(a1[4] + 51) = v5 & 1;
  }

  (*(a1[6] + 16))();
}

id sub_1001F26CC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2770;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA7B0 != -1)
  {
    dispatch_once(&qword_1005AA7B0, block);
  }

  v0 = qword_1005AA7A8;

  return v0;
}

void sub_1001F2770(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA7A8;
  qword_1005AA7A8 = v1;
}

void sub_1001F27A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F2878;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1001F2878(uint64_t a1)
{
  v2 = sub_100386854(MetricsContext, 1);
  sub_1001F28DC(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void sub_1001F28DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v7)
      {
        v11 = v7[9];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      *buf = 138412546;
      v18 = v12;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%@] Flushing metrics with reason: %{public}@", buf, 0x16u);
    }

    v13 = +[BagService appstoredService];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001F3FBC;
    v14[3] = &unk_10051C6E8;
    v15 = v7;
    v16 = v9;
    [v13 recentBagWithCompletionHandler:v14];
  }
}

void sub_1001F2A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F2B24;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001F2B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = sub_100386854(MetricsContext, 1);
    v4 = v3;
    if (v3)
    {
      *(v3 + 8) = 1;
    }

    v5 = objc_opt_new();
    v6 = sub_1001F3BA4(v1, v4);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = sub_1003D6D24(*(*(&v20 + 1) + 8 * v10));
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v12 = v1[2];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001F42AC;
    v15[3] = &unk_10051C710;
    v16 = v5;
    v17 = 0;
    v18 = v4;
    v19 = v2;
    v13 = v4;
    v14 = v5;
    dispatch_async(v12, v15);
  }
}

void sub_1001F2D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F2DD8;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001F2DD8(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1001F2E44(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

void sub_1001F2E44(uint64_t a1)
{
  if (a1)
  {
    v1 = dispatch_semaphore_create(0);
    v2 = sub_1002B5560();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001F49CC;
    v8[3] = &unk_10051B348;
    v3 = v1;
    v9 = v3;
    sub_1002B8DC8(v2, 10, v8);

    v4 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        *buf = 138543362;
        v11 = v6;
        v7 = v6;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out waiting to sync launches", buf, 0xCu);
      }
    }
  }
}

void sub_1001F2FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F3074;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001F3074(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Crossfire] Posting crossfire metrics", v3, 2u);
  }

  sub_1001F30F4(*(a1 + 32), @"Posting Metrics", *(a1 + 40));
}

void sub_1001F30F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_100386854(MetricsContext, 1);
    v8 = +[BagService appstoredService];
    v9 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001F462C;
    v11[3] = &unk_10051C780;
    v12 = v7;
    v15 = v6;
    v13 = a1;
    v14 = v5;
    v10 = v7;
    [v8 recentBagOnQueue:v9 completionHandler:v11];
  }
}

void sub_1001F3218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F32C8;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t sub_1001F32C8(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Crossfire] Resetting crossfire metrics", v4, 2u);
  }

  sub_1001F3364(*(a1 + 32), @"External Request", 1);
  return (*(*(a1 + 40) + 16))();
}

void sub_1001F3364(uint64_t a1, void *a2, int a3)
{
  v19 = a2;
  if (a1)
  {
    v5 = sub_100386854(MetricsContext, 1);
    sub_1003868F4(v5);
    v6 = sub_10036C90C();
    [v6 modifyUsingTransaction:&stru_10051C7F0];

    v7 = v5;
    v8 = sub_100336114();
    v9 = +[NSMutableArray array];
    v10 = sub_10036C90C();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001F49D4;
    v20[3] = &unk_10051C838;
    v21 = v8;
    v11 = v9;
    v22 = v11;
    v12 = v8;
    [v10 modifyUsingTransaction:v20];

    if ([v11 count])
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v14 = v7[9];
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [v11 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v24 = v15;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Removed clip install metadata for: [%{public}@]", buf, 0x16u);
      }
    }

    if (a3)
    {
      v17 = sub_1001DA8BC();
      v18 = v17;
      if (v17)
      {
        sub_1001DBEB4(v17, 3, v19, 1, 0);
      }
    }
  }
}

void sub_1001F35DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F368C;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t sub_1001F36A0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1003BBF50();
  v2 = [v1 isHRNMode] ^ 1;

  return v2;
}

void sub_1001F3B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001F3BA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = sub_1002AAAA4(a1, 1, v3);
  v23 = sub_1002AAAA4(a1, 5, v3);
  v6 = sub_1002AA838(a1, 5, v23, v3);
  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
  }

  v7 = sub_1002AA838(a1, 1, v5, v3);
  [v4 addObjectsFromArray:v7];
  v24 = v5;
  if (v3)
  {
    v8 = v3[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  sub_1001F2E44(a1);

  v29 = @"launch_end_time";
  v10 = [NSArray arrayWithObjects:&v29 count:1];
  v11 = sub_1002AAAD8(a1, 2, v3, v10);

  v12 = sub_1002A911C(a1, 2u, v11, v3);
  [v4 addObjectsFromArray:v12];
  v13 = dispatch_semaphore_create(0);
  v14 = sub_1002B5560();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001F3EE0;
  v25[3] = &unk_10051B348;
  v15 = v13;
  v26 = v15;
  sub_1002B9064(v14, 10, v25);

  v16 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543362;
      v28 = v21;
      v22 = v21;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Timed out waiting to sync installed apps with metadata", buf, 0xCu);
    }
  }

  v18 = [a1 createMetricsEventsForEventType:3 context:v3];
  [v4 addObjectsFromArray:v18];
  v19 = [v4 copy];

  return v19;
}

void sub_1001F3EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    sub_1001F3364(a1, v6, 1);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001F3FB0;
    v7[3] = &unk_10051B348;
    v8 = v5;
    sub_1001F28DC(a1, v8, v6, v7);
  }
}

void sub_1001F3FBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[_TtC9appstored10ASEMetrics alloc] initWithType:2 bag:v5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001F4188;
    v13[3] = &unk_10051B8A8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    [(ASEMetrics *)v7 flushWithCompletionHandler:v13];

    v8 = v14;
LABEL_6:

    goto LABEL_7;
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = v11[9];
    }

    v12 = v11;
    *buf = 138412546;
    v17 = v12;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Error sending metrics events. Error: %{public}@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v8 = ASDErrorWithSafeUserInfo();
    (*(v10 + 16))(v10, 0, v8);
    goto LABEL_6;
  }

LABEL_7:
}

void sub_1001F4188(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[9];
      }

      v8 = v7;
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Error sending metrics events. Error: %{public}@", &v9, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = ASDErrorWithSafeUserInfo();
    (*(v5 + 16))(v5, v3 == 0, v6);
  }
}

void sub_1001F42AC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = a1[6];

  sub_100232BA0(v3, 0);
}

uint64_t sub_1001F42FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F4314(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
  v6 = [v4 connection];

  v7 = sub_1002D3F5C(AppMetadataInstallEntity, v6, v5);

  v8 = sub_10023731C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F4430;
  v9[3] = &unk_10051B010;
  v9[4] = *(a1 + 40);
  [v7 enumerateMemoryEntitiesWithProperties:v8 usingBlock:v9];
}

void sub_1001F44E4(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.CrossfireManager.switchMetrics"];
  v3 = sub_10030B4C0();
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v6 = "[Crossfire] Analytics switched to on";
    v7 = &v12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = 0;
    v6 = "[Crossfire] Analytics switched to off";
    v7 = &v11;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
LABEL_7:

  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1001F2E44(*(a1 + 32));
  if ((v3 & 1) == 0)
  {
    sub_1001F30F4(*(a1 + 32), @"Analytics switched to off", &stru_10051C758);
  }

  v9 = *(a1 + 32);
  if (v9[24] != v3)
  {
    v10 = v9;
    objc_sync_enter(v10);
    *(*(a1 + 32) + 24) = v3;
    objc_sync_exit(v10);
  }
}

void sub_1001F462C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = a2;
    v12 = v8;
    if (v7)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          v14 = v10[9];
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        *v26 = 138412290;
        *&v26[4] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Sending crossfire metrics", v26, 0xCu);
      }

      v16 = sub_1001F3BA4(v7, v10);
      if ([v16 count])
      {
        v17 = [[_TtC9appstored10ASEMetrics alloc] initWithType:2 bag:v11];
        *v26 = _NSConcreteStackBlock;
        *&v26[8] = 3221225472;
        *&v26[16] = sub_1001F497C;
        v27 = &unk_10051C7A8;
        v28 = v7;
        v29 = v10;
        v30 = v9;
        v31 = v12;
        [(ASEMetrics *)v17 enqueueEvents:v16 flushEvents:0 completionHandler:v26];
      }

      else
      {
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            v22 = v10[9];
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          *v26 = 138412290;
          *&v26[4] = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] No events to report", v26, 0xCu);
        }

        sub_1001F3EE8(v7, v10, @"Nothing to Post");
        (*(v12 + 2))(v12, 1, 0);
      }
    }
  }

  else
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = v24[9];
      }

      v25 = v24;
      *v26 = 138412546;
      *&v26[4] = v25;
      *&v26[12] = 2114;
      *&v26[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Failed to post metrics due to failed bag load: %{public}@", v26, 0x16u);
    }

    v19 = *(a1 + 56);
    v20 = ASDErrorWithSafeUserInfo();
    (*(v19 + 16))(v19, 0, v20);
  }
}

uint64_t sub_1001F497C(uint64_t a1)
{
  sub_1001F3EE8(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

BOOL sub_1001F49D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppMetadataInstallEntity, v4, 0);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F4AE4;
  v9[3] = &unk_10051C7D0;
  v10 = v3;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v6 = v3;
  [v5 enumeratePersistentIDsUsingBlock:v9];
  v7 = [*(a1 + 40) count] != 0;

  return v7;
}

void sub_1001F4AE4(id *a1, uint64_t a2)
{
  v4 = [AppMetadataInstallEntity alloc];
  v5 = [a1[4] connection];
  v7 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = sub_100340328(v7, @"bundle_id");
  if (([a1[5] containsObject:v6] & 1) == 0 && -[SQLiteEntity existsInDatabase](v7, "existsInDatabase"))
  {
    [(SQLiteEntity *)v7 deleteFromDatabase];
    [a1[6] addObject:v6];
  }
}

BOOL sub_1001F4BB0(id a1, AppUsageDatabaseTransaction *a2)
{
  v2 = [(AppUsageDatabaseTransaction *)a2 connection];
  v3 = v2;
  if (v2)
  {
    sub_10022C810(v2, @"DELETE FROM app_events_crossfire;", 0, 0);
  }

  return 1;
}

void sub_1001F4EA8(uint64_t a1, void *a2)
{
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_1001F6030;
  v130 = sub_1001F6040;
  v131 = 0;
  v102 = a2;
  v2 = [v102 persistentID];
  v100 = [v2 longLongValue];

  v3 = (v127 + 5);
  obj = v127[5];
  self = sub_10040AC84(AppInstall, v102, &obj);
  objc_storeStrong(v3, obj);
  if (!self)
  {
    v11 = *(a1 + 32);
    v12 = [v102 bundleID];
    v13 = [ASDJobResult resultWithInvalidActivity:v100 bundleID:v12];
    [v11 addObject:v13];

    v14 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v15 = sub_100408EB0(0);
    v16 = v127[5];
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    v17 = v14;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Import failed - error: %{public}@", buf, 0x16u);

LABEL_12:
    v14 = v17;
    goto LABEL_82;
  }

  v5 = objc_getProperty(self, v4, 48, 1);
  v6 = [v5 count] == 0;

  if (v6)
  {
    v18 = *(a1 + 32);
    v19 = [v102 bundleID];
    v20 = [ASDJobResult resultWithInvalidActivity:v100 bundleID:v19];
    [v18 addObject:v20];

    v14 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v21 = sub_100408EB0(self);
    *buf = 138412290;
    *&buf[4] = v21;
    v17 = v14;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Import failed - no packages", buf, 0xCu);

    goto LABEL_12;
  }

  v7 = sub_10040908C(self);
  v8 = [ApplicationProxy proxyForBundleID:v7];

  sub_10023E000(self, *(a1 + 40), @"client_id");
  v9 = &off_100546FD8;
  if (!v8)
  {
LABEL_7:
    v10 = @"coordinator_intent";
    sub_10023E000(self, v9, @"coordinator_intent");
    goto LABEL_14;
  }

  if ([v8[15] isPlaceholder])
  {
    if ([v8[15] isPlaceholder])
    {
      v9 = &off_100546FC0;
    }

    goto LABEL_7;
  }

  v10 = @"coordinator_intent";
  sub_10023E000(self, &off_100546FA8, @"coordinator_intent");
LABEL_14:
  v22 = *(a1 + 56);
  if (v22)
  {
    if (v22 == 2)
    {
      sub_10023E000(self, &off_100547038, @"priority");
      v23 = &off_100547050;
    }

    else
    {
      if (v22 != 1)
      {
        goto LABEL_21;
      }

      sub_10023E000(self, &off_100546FF0, @"source_type");
      v10 = @"priority";
      v23 = &off_100547008;
    }
  }

  else
  {
    v10 = @"priority";
    v23 = &off_100547020;
  }

  sub_10023E000(self, v23, v10);
LABEL_21:
  v25 = (v127 + 5);
  v24 = v127[5];
  v105 = self;
  v99 = v8;
  objc_opt_self();
  v115 = 0;
  v26 = sub_1003A07F4(v105);
  v27 = 0;
  if (!v26)
  {
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v85 = sub_100408EB0(v105);
      *buf = 138412546;
      *&buf[4] = v85;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%@] Failed to build coordinator error: %{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v8 && [v99[15] isPlaceholder])
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = sub_100408EB0(v105);
      v30 = [v99[15] isPlaceholder];
      v31 = [v99[15] isPlaceholder];
      *buf = 138412802;
      *&buf[4] = v29;
      *&buf[12] = 1024;
      *&buf[14] = v30 ^ 1;
      *&buf[18] = 1024;
      *&buf[20] = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] Using intent IXCoordinatorIntentUpdating isInstalled: %{BOOL}d isPlaceholder: %{BOOL}d", buf, 0x18u);
    }

    v26[5] = 5;
  }

  *v135 = v27;
  v32 = sub_1003A040C(v26, v135);
  v33 = *v135;

  if (!v32)
  {
    v35 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v89 = sub_100408EB0(v105);
      *buf = 138412546;
      *&buf[4] = v89;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%@] Failed to create coordinator error: %{public}@", buf, 0x16u);
    }

    v32 = 0;
    v98 = 0;
    v27 = v33;
    goto LABEL_39;
  }

  if ([v32 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise]&& [v32 creatorIdentifier]== 1 && (sub_100248F9C(v32) & 1) == 0)
  {
    v79 = objc_getProperty(v105, v34, 48, 1);
    v80 = [v79 firstObject];
    v134 = v33;
    v81 = sub_1002FFD28(v105, v80, &v134);
    v27 = v134;

    if (v81)
    {
      v133 = v27;
      v82 = sub_1002FE870(v81, &v133);
      v83 = v133;

      if (v82)
      {
        v132 = v83;
        v84 = sub_10024A138(v32, v82, &v132);
        v27 = v132;

        if (v84)
        {

          goto LABEL_32;
        }

        v94 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v95 = sub_100408EB0(v105);
          *buf = 138412546;
          *&buf[4] = v95;
          *&buf[12] = 2114;
          *&buf[14] = v27;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "[%@]: Failed to set placeholder: %{public}@", buf, 0x16u);
        }

        [v82 cancelForReason:v27 client:1 error:0];
      }

      else
      {
        v93 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v97 = sub_100408EB0(v105);
          *buf = 138412546;
          *&buf[4] = v97;
          *&buf[12] = 2114;
          *&buf[14] = v83;
          _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "[%@] Failed to create placeholder error: %{public}@", buf, 0x16u);
        }

        v27 = v83;
      }
    }

    else
    {
      v88 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v96 = sub_100408EB0(v105);
        *buf = 138412546;
        *&buf[4] = v96;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%@] Failed to build placeholder error: %{public}@", buf, 0x16u);
      }
    }

LABEL_35:
    v98 = 0;
    goto LABEL_39;
  }

  v27 = v33;
LABEL_32:
  v32 = v32;
  v98 = v32;
LABEL_39:

  objc_storeStrong(v25, v24);
  if (v98)
  {
    v36 = [v98 uniqueIdentifier];
    sub_10023E000(v105, v36, @"coordinator_id");

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v38 = objc_getProperty(v105, v37, 48, 1);
    v39 = [v38 countByEnumeratingWithState:&v121 objects:v142 count:16];
    if (v39)
    {
      v40 = *v122;
      do
      {
        v41 = 0;
        do
        {
          if (*v122 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v121 + 1) + 8 * v41);
          v43 = sub_10023E51C(v42, @"bytes_total");
          v44 = v43 == 0;

          if (v44)
          {
            v45 = sub_10023E72C(v42, @"package_url");
            if (v45)
            {
              v46 = [DetermineSizeForURLTask alloc];
              v47 = sub_100408EB0(v105);
              v48 = sub_1002E6CB8(v46, v45, v47);

              if ([*(a1 + 48) runSubTask:v48 returningError:0])
              {
                if (v48)
                {
                  Property = objc_getProperty(v48, v49, 66, 1);
                }

                else
                {
                  Property = 0;
                }

                v51 = Property;
                sub_10023E000(v42, v51, @"bytes_total");
              }

              else
              {
                v51 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v53 = sub_100408EB0(v105);
                  if (v48)
                  {
                    v54 = objc_getProperty(v48, v52, 32, 1);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v101 = v54;
                  *buf = 138412546;
                  *&buf[4] = v53;
                  *&buf[12] = 2114;
                  *&buf[14] = v101;
                  _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "[%@] Unable to determine download size error: %{public}@", buf, 0x16u);
                }
              }
            }
          }

          v41 = v41 + 1;
        }

        while (v39 != v41);
        v55 = [v38 countByEnumeratingWithState:&v121 objects:v142 count:16];
        v39 = v55;
      }

      while (v55);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4010000000;
    v139 = &unk_10049798A;
    v140 = 0u;
    v141 = 0u;
    v115 = 0;
    v116 = &v115;
    v117 = 0x3032000000;
    v118 = sub_1001F6030;
    v119 = sub_1001F6040;
    v120 = 0;
    v56 = sub_1003C27BC();
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_1001F6048;
    v110[3] = &unk_10051C860;
    v112 = buf;
    v57 = v105;
    v111 = v57;
    v113 = &v126;
    v114 = &v115;
    [v56 modifyUsingTransaction:v110];

    if (*(*&buf[8] + 56))
    {
      v58 = sub_1003B6560();
      v59 = [_TtC9appstored23ReviewNetworkPolicyTask alloc];
      v60 = [(ReviewNetworkPolicyTask *)v59 initWithDownload:v116[5]];
      v61 = *(a1 + 48);
      v62 = (v127 + 5);
      v109 = v127[5];
      v63 = [v61 runSubTask:v60 returningError:&v109];
      objc_storeStrong(v62, v109);
      if (v63)
      {
        [(ReviewNetworkPolicyTask *)v60 setValuesOnInstallPolicy:v58];
      }

      else
      {
        sub_1003B6764(v58, 4);
        sub_1003B6820(v58, 4);
        sub_1003B66A8(v58, 60);
      }

      v71 = sub_1003C27BC();
      v106[0] = _NSConcreteStackBlock;
      v106[1] = 3221225472;
      v106[2] = sub_1001F61C8;
      v106[3] = &unk_10051C888;
      v108 = buf;
      v70 = v58;
      v107 = v70;
      [v71 modifyUsingTransaction:v106];

      if (*(*&buf[8] + 56) == 2)
      {
        v72 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v92 = sub_100408EB0(v57);
          *v135 = 138412290;
          *&v135[4] = v92;
          _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "[%@] Import failed - already exists", v135, 0xCu);
        }

        v73 = *(a1 + 32);
        v74 = [v102 bundleID];
        v75 = [ASDJobResult resultWithExistingActivity:v100 bundleID:v74];
        [v73 addObject:v75];
      }

      else
      {
        v76 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = sub_100408EB0(v57);
          *v135 = 138412290;
          *&v135[4] = v77;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%@] Import completed successfully", v135, 0xCu);
        }

        v78 = *(a1 + 32);
        v74 = [v102 bundleID];
        v75 = [ASDJobResult resultWithInvalidActivity:v100 bundleID:v74];
        [v78 addObject:v75];
      }
    }

    else
    {
      v68 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v90 = sub_100408EB0(v57);
        v91 = v127[5];
        *v135 = 138412546;
        *&v135[4] = v90;
        v136 = 2114;
        v137 = v91;
        _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "[%@] Import failed - error: %{public}@", v135, 0x16u);
      }

      v69 = *(a1 + 32);
      v70 = [v102 bundleID];
      v60 = [ASDJobResult resultWithInvalidActivity:v100 bundleID:v70];
      [v69 addObject:v60];
    }

    _Block_object_dispose(&v115, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v64 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v86 = sub_100408EB0(v105);
      v87 = v127[5];
      *buf = 138412546;
      *&buf[4] = v86;
      *&buf[12] = 2114;
      *&buf[14] = v87;
      _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%@] Failed to build coordinator error: %{public}@", buf, 0x16u);
    }

    v65 = *(a1 + 32);
    v66 = [v102 bundleID];
    v67 = [ASDJobResult resultWithInvalidActivity:v100 bundleID:v66];
    [v65 addObject:v67];
  }

  v14 = v99;
LABEL_82:

  _Block_object_dispose(&v126, 8);
}

void sub_1001F5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F6030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1001F6048(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  v6 = *(a1[6] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  obj = v9;
  if (v3)
  {
    sub_100207374(v3, v5, 0, 1, &obj, &v24);
    v7 = obj;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  objc_storeStrong(v8, v7);
  v10 = *(a1[5] + 8);
  v11 = v25;
  *(v10 + 32) = v24;
  *(v10 + 48) = v11;
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 56);
  if (v13 == 2)
  {
    sub_10020894C(v4, *(v12 + 32));
    v13 = *(*(a1[5] + 8) + 56);
  }

  if (v13)
  {
    v14 = [AppInstallEntity alloc];
    v15 = *(*(a1[5] + 8) + 32);
    v16 = [v4 connection];
    v17 = [(SQLiteEntity *)v14 initWithPersistentID:v15 onConnection:v16];

    v18 = sub_100396F9C(v17);
    v19 = *(a1[7] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(*(a1[5] + 8) + 56) != 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_1001F61C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallEntity alloc];
  v5 = *(*(*(a1 + 40) + 8) + 32);
  v6 = [v3 connection];
  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];

  sub_1002945E4(v7, *(a1 + 32));
  if (sub_1003B6718(*(a1 + 32)) == 2)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10029430C(v7);
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Explicitly denied for low data network - canceling installation", &v17, 0xCu);
    }

    if (v3)
    {
      Property = objc_getProperty(v3, v11, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = Property;
    v14 = sub_1002953E0(v7, -30);
    sub_1002561F0(v13, v14);
  }

  else
  {
    if (v3)
    {
      v15 = objc_getProperty(v3, v8, 24, 1);
      if (v15)
      {
        v15[17] |= 0x40uLL;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return 1;
}

id sub_1001F6394()
{
  objc_opt_self();
  if (qword_1005AA7C0 != -1)
  {
    dispatch_once(&qword_1005AA7C0, &stru_10051C8D0);
  }

  v0 = qword_1005AA7B8;

  return v0;
}

void sub_1001F63EC(id a1)
{
  v1 = objc_alloc_init(InstallationService);
  v2 = qword_1005AA7B8;
  qword_1005AA7B8 = v1;
}

uint64_t sub_1001F666C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning initial content download setting for %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = sub_1003D3E2C(AppDefaultsManager, @"BackgroundAssetDownloadsEnabled", 1);
  return (*(v6 + 16))(v6, v7);
}

void sub_1001F6834(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    v7 = 138543874;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting initial content download setting to %{BOOL}d for %{public}@", &v7, 0x1Cu);
  }

  sub_1003D4090(AppDefaultsManager, *(a1 + 40), @"BackgroundAssetDownloadsEnabled");
}

uint64_t sub_1001F6A14(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning should post notification on default browser installation setting for %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = sub_1003D3E2C(AppDefaultsManager, @"ShouldPostNotificationOnDefaultBrowserInstallation", 0);
  return (*(v6 + 16))(v6, v7);
}

void sub_1001F6BDC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    v7 = 138543874;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting should post notification on default browser installation setting to %{BOOL}d for %{public}@", &v7, 0x1Cu);
  }

  sub_1003D4090(AppDefaultsManager, *(a1 + 40), @"ShouldPostNotificationOnDefaultBrowserInstallation");
}

void sub_1001F6DE8(uint64_t a1)
{
  v2 = sub_100352B70(InstallAppReviewAppsTask, *(a1 + 32));
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1001F6EA8;
  v7 = &unk_10051C920;
  v8 = *(a1 + 56);
  v9 = v2;
  [v2 setCompletionBlock:&v4];
  v3 = *(*(a1 + 48) + 48);
  if (v3)
  {
    [*(v3 + 8) addOperation:{v2, v4, v5, v6, v7}];
  }
}

void sub_1001F6EA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = sub_1003533B8(*(a1 + 40));
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v5 = Property;
  (*(v2 + 16))(v2, v6, v5);
}

void sub_1001F6FBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = sub_1003BA734(InstallEnterpriseAppsTask, a2, a4);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1001F771C;
    v13 = &unk_10051C920;
    v14 = v7;
    v15 = v8;
    [v8 setCompletionBlock:&v10];
    v9 = *(a1 + 48);
    if (v9)
    {
      [*(v9 + 8) addOperation:{v8, v10, v11, v12, v13}];
    }
  }
}

void sub_1001F721C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = sub_100347624(InstallSystemAppsTask, v7, v9);
    objc_initWeak(&location, v10);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001F77A4;
    v15 = &unk_10051C948;
    objc_copyWeak(&v18, &location);
    v17 = v8;
    v16 = v9;
    [v10 setCompletionBlock:&v12];
    v11 = *(a1 + 48);
    if (v11)
    {
      [*(v11 + 8) addOperation:{v10, v12, v13, v14, v15}];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_1001F7350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F7400(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  if (a1)
  {
    v10 = sub_1002D9750(InstallTestFlightAppsTask, a2, a3, a5);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001F78B0;
    v15 = &unk_10051C920;
    v16 = v9;
    v17 = v10;
    [v10 setCompletionBlock:&v12];
    v11 = *(a1 + 48);
    if (v11)
    {
      [*(v11 + 8) addOperation:{v10, v12, v13, v14, v15}];
    }
  }
}

void sub_1001F75EC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = +[BagService appstoredService];
    v14 = *(a1 + 24);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001F7C60;
    v15[3] = &unk_10051C998;
    v20 = v11;
    v16 = v9;
    v17 = v10;
    v18 = v12;
    v19 = a1;
    [v13 upToDateBagOnQueue:v14 completionHandler:v15];
  }
}

void sub_1001F771C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = sub_1003BA8D4(*(a1 + 40));
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v5 = Property;
  (*(v2 + 16))(v2, v6, v5);
}

void sub_1001F77A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  v4 = sub_100347944(WeakRetained);
  (*(v3 + 16))(v3, v4, 0);

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 32, 1);
    }

    v8 = Property;
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[InstallationService][%{public}@] System request complete", &v9, 0xCu);
  }
}

void sub_1001F78B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = sub_1002DA910(*(a1 + 40));
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v5 = Property;
  (*(v2 + 16))(v2, v6, v5);
}

dispatch_queue_t *sub_1001F7938(dispatch_queue_t *a1)
{
  if (a1)
  {
    v1 = a1;
    dispatch_assert_queue_V2(a1[3]);
    if (!v1[4])
    {
      if (!v1[5])
      {
        v2 = sub_10029BDD4();
        v3 = [v2 stringByAppendingPathComponent:@"throttle"];
        v4 = [v3 stringByAppendingPathExtension:@"plist"];

        v5 = sub_100348D00([RequestThrottlePersistence alloc], v4);
        v6 = v1[5];
        v1[5] = v5;
      }

      v7 = +[BagService appstoredService];
      v8 = [v7 lastBag];
      [v8 doubleForKey:@"watchRequestThrottle" defaultValue:86400.0];
      v10 = v9;

      v11 = [RequestThrottle alloc];
      v12 = sub_10023ADE8();
      v13 = sub_1003A4534(&v11->super.isa, v12, v1[5], v10);
      v14 = v1[4];
      v1[4] = v13;

      if (!v1[1])
      {
        objc_initWeak(&location, v1);
        v15 = +[BagService appstoredService];
        v23 = @"watchRequestThrottle";
        v16 = [NSArray arrayWithObjects:&v23 count:1];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001F7BC4;
        v20[3] = &unk_10051C970;
        objc_copyWeak(&v21, &location);
        v17 = [v15 addChangeObserverLimitedToKeys:v16 observer:v20];
        v18 = v1[1];
        v1[1] = v17;

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }
    }

    a1 = v1[4];
  }

  return a1;
}

void sub_1001F7B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F7BC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F7C50;
    block[3] = &unk_10051AF98;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void sub_1001F7C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

void sub_1001F7C60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = sub_1001F7938(*(a1 + 56));
    v8 = sub_100344DC8(InstallWatchAppsTask, v4, v5, v6, v7, v3);

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1001F7D94;
    v13 = &unk_10051C920;
    v14 = *(a1 + 64);
    v15 = v8;
    [v8 setCompletionBlock:&v10];
    v9 = *(*(a1 + 56) + 48);
    if (v9)
    {
      [*(v9 + 8) addOperation:{v8, v10, v11, v12, v13}];
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1001F7D94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = sub_1003458A0(*(a1 + 40));
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v5 = Property;
  (*(v2 + 16))(v2, v6, v5);
}

void sub_1001F8114(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = 0;
LABEL_13:
    sub_1001F6FBC(*(a1 + 48), *(a1 + 40), *(a1 + 64), *(a1 + 56));
    goto LABEL_14;
  }

  v2 = sub_1002B0154();
  v3 = sub_1002B08FC(v2, *(a1 + 32));

  if (!v3 || (v3[18] & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(XDCInstallRequest);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[NSUUID UUID];
        [v4 addObject:v11];
        v12 = sub_100282FFC(XDCAppMetadata, v10);
        sub_1002839AC(v12, v11);
        sub_1003C4558(v5, v12);
        sub_1001F8320(*(a1 + 48), v12, v3);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  sub_1001F840C(*(a1 + 48), v5, v3);
  (*(*(a1 + 64) + 16))();

LABEL_14:
}

void sub_1001F8320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = sub_1001FB238([AppInstallRemote alloc], v5, v6);

    v8 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001FAC60;
    v10[3] = &unk_10051CA38;
    v11 = v7;
    v12 = v5;
    v9 = v7;
    [v8 modifyUsingTransaction:v10];
  }
}

void sub_1001F840C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_1003420C0([XDCMessage alloc], v5, 2);
    v8 = sub_1002EB36C();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001FAD9C;
    v10[3] = &unk_10051CBA0;
    v9 = v6;
    v11 = v9;
    v12 = a1;
    v13 = v5;
    if (v8)
    {
      sub_1002EB834(v8, v7, v9, 1, v10);
    }
  }
}

void sub_1001F87F0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_1002B0154();
    v3 = sub_1002B08FC(v2, *(a1 + 32));

    if (v3)
    {
      if (v3[18])
      {
        v42 = +[NSMutableArray array];
        v41 = objc_alloc_init(XDCInstallRequest);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = *(a1 + 40);
        v4 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v4)
        {
          v5 = v4;
          v40 = *v44;
          v6 = v3;
          do
          {
            v7 = 0;
            do
            {
              if (*v44 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v43 + 1) + 8 * v7);
              v9 = +[NSUUID UUID];
              [v42 addObject:v9];
              v10 = sub_1002830E8(XDCAppMetadata, v8);
              sub_1002839AC(v10, v9);
              sub_1003C4558(v41, v10);
              sub_1001F8320(*(a1 + 48), v10, v3);
              v13 = *(a1 + 48);
              Property = *(a1 + 56);
              if (Property)
              {
                Property = objc_getProperty(Property, v11, 32, 1);
              }

              v14 = Property;
              v15 = v8;
              v16 = v14;
              if (v13)
              {
                v17 = [v15 bundleID];

                if (v17)
                {
                  v18 = [ProgressInfo alloc];
                  v19 = [v15 bundleID];
                  v20 = sub_100403C3C(&v18->super.isa, v19, 0, v16);

                  if (v20)
                  {
                    v20[18] = 896;
                    v20[20] = 3;
                  }

                  v21 = sub_1003649C8();
                  sub_100364E78(v21, v20, @"System");
                }
              }

              v7 = v7 + 1;
              v3 = v6;
            }

            while (v5 != v7);
            v5 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v5);
        }

        sub_1001F840C(*(a1 + 48), v41, v3);
        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v37 = *(a1 + 56);
          if (v37)
          {
            v37 = objc_getProperty(v37, v32, 32, 1);
          }

          v38 = v37;
          *buf = 138412290;
          v48 = v38;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%@]: Legacy install path not supported for system apps for the requested device", buf, 0xCu);
        }

        v33 = *(a1 + 64);
        v34 = ASDErrorWithDescription();
        (*(v33 + 16))(v33, 0, v34);
      }
    }

    else
    {
      v26 = [NSString stringWithFormat:@"Unable to find the requested device: %@", *(a1 + 32)];
      v27 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 56);
        if (v35)
        {
          v35 = objc_getProperty(v35, v28, 32, 1);
        }

        v36 = v35;
        *buf = 138412546;
        v48 = v36;
        v49 = 2114;
        v50 = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%@]: %{public}@", buf, 0x16u);
      }

      v29 = *(a1 + 64);
      v30 = ASDErrorWithDescription();
      (*(v29 + 16))(v29, 0, v30);
    }
  }

  else
  {
    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);

    sub_1001F721C(v22, v23, v24, v25);
  }
}

void sub_1001F8DE8(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = 0;
LABEL_13:
    sub_1001F7400(*(a1 + 48), *(a1 + 40), v3, *(a1 + 64), *(a1 + 56));
    goto LABEL_14;
  }

  v2 = sub_1002B0154();
  v3 = sub_1002B08FC(v2, *(a1 + 32));

  if (!v3 || (v3[18] & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(XDCInstallRequest);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[NSUUID UUID];
        [v4 addObject:v11];
        v12 = sub_100283194(XDCAppMetadata, v10);
        sub_1002839AC(v12, v11);
        sub_1003C4558(v5, v12);
        sub_1001F8320(*(a1 + 48), v12, v3);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  sub_1001F840C(*(a1 + 48), v5, v3);
  (*(*(a1 + 64) + 16))();

LABEL_14:
}

void sub_1001F91D4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = 0;
LABEL_13:
    sub_1001F75EC(*(a1 + 48), *(a1 + 40), v3, *(a1 + 64), *(a1 + 56));
    goto LABEL_14;
  }

  v2 = sub_1002B0154();
  v3 = sub_1002B08FC(v2, *(a1 + 32));

  if (!v3 || (v3[18] & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(XDCInstallRequest);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[NSUUID UUID];
        [v4 addObject:v11];
        v12 = sub_100283694(XDCAppMetadata, v10);
        sub_1002839AC(v12, v11);
        sub_1003C4558(v5, v12);
        sub_1001F8320(*(a1 + 48), v12, v3);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  sub_1001F840C(*(a1 + 48), v5, v3);
  (*(*(a1 + 64) + 16))();

LABEL_14:
}

uint64_t sub_1001F93E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100386398(*(a1 + 32));
  v5 = [SQLiteContainsPredicate containsPredicateWithProperty:@"external_id" values:v4];

  v6 = [v3 connection];
  v7 = sub_1002D3F5C(AppInstallRemoteEntity, v6, v5);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001F951C;
  v10[3] = &unk_10051CA10;
  v11 = v3;
  v12 = *(a1 + 40);
  v8 = v3;
  [v7 enumeratePersistentIDsUsingBlock:v10];

  return 1;
}

void sub_1001F951C(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallRemoteEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [(SQLiteEntity *)v6 valueForProperty:@"metadata"];
  if (v7)
  {
    v8 = [[XDCAppMetadata alloc] initWithData:v7];
    if (v8)
    {
      v9 = [[_TtC9appstored6LogKey alloc] initWithAppMetadata:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SQLiteEntity *)v6 deleteFromDatabase];
  v11 = ASDLogHandleForCategory();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 138412546;
      v15 = v9;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Acknowledged receipt of request by %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[%@] Failed to delete completed remote installation request", &v14, 0xCu);
  }
}

uint64_t sub_1001F9800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v18 = @"destination_id";
  v5 = [NSArray arrayWithObjects:&v18 count:1];
  v6 = sub_1002D4680(AppInstallRemoteEntity, v4, 0, v5);

  v17[0] = @"destination_id";
  v17[1] = @"metadata";
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1001F9A38;
  v15[4] = sub_1001F9A48;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1001F9A38;
  v13[4] = sub_1001F9A48;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F9A50;
  v9[3] = &unk_10051CA60;
  v11 = v15;
  v12 = v13;
  v10 = *(a1 + 32);
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v9];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);

  return 0;
}

void sub_1001F9A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F9A50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"destination_id"];
  if (v5)
  {
    if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:v5] & 1) == 0)
    {
      v6 = +[NSMutableArray array];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      [*(a1 + 32) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:v5];
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    }

    v9 = [v4 objectForKeyedSubscript:@"metadata"];
    if (v9)
    {
      v10 = [[XDCAppMetadata alloc] initWithData:v9];
      if (v10)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
      }
    }
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Encountered pending remote installation with no destination", v12, 2u);
    }
  }
}

id sub_1001F9BBC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001F9C30;
  v3[3] = &unk_10051CAF0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1001F9C30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1002B0154();
  v7 = sub_1002B048C(v6, v4);

  if (v7 && (v7[17] & 1) != 0)
  {
    log = sub_10036F9FC(v5, &stru_10051CAC8);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = [&off_1005492D8 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v24)
    {
      v19 = v5;
      v20 = v4;
      v22 = *v32;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(&off_1005492D8);
          }

          v9 = [log objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i), v19, v20];
          if ([v9 count])
          {
            v26 = i;
            v10 = objc_alloc_init(XDCInstallRequest);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v25 = v9;
            v11 = v9;
            v12 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v28;
              do
              {
                for (j = 0; j != v13; j = j + 1)
                {
                  if (*v28 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v27 + 1) + 8 * j);
                  v17 = [[_TtC9appstored6LogKey alloc] initWithAppMetadata:v16];
                  v18 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v36 = v17;
                    v37 = 2114;
                    v38 = v7;
                    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Sending pending installation to device: %{public}@", buf, 0x16u);
                  }

                  sub_1003C4558(v10, v16);
                }

                v13 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
              }

              while (v13);
            }

            sub_1001F840C(*(a1 + 32), v10, v7);
            v9 = v25;
            i = v26;
          }
        }

        v24 = [&off_1005492D8 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v24);
      v5 = v19;
      v4 = v20;
    }
  }

  else
  {
    log = ASDLogHandleForCategory();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v7;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping pending installations for disconnected device: %{public}@", buf, 0xCu);
    }
  }
}

NSCopying *__cdecl sub_1001F9F78(id a1, XDCAppMetadata *a2)
{
  if (a2 && (*&a2->_has & 0x10) != 0)
  {
    type = a2->_type;
  }

  else
  {
    type = 0;
  }

  return [NSNumber numberWithInt:type];
}

void sub_1001FA528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 192), 8);
  _Unwind_Resume(a1);
}

NSCopying *__cdecl sub_1001FA554(id a1, XDCAppMetadata *a2)
{
  if (a2 && (*&a2->_has & 0x10) != 0)
  {
    type = a2->_type;
  }

  else
  {
    type = 0;
  }

  return [NSNumber numberWithInt:type];
}

void sub_1001FA588(uint64_t a1)
{
  v2 = sub_1001F7938(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001FA5D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_100343C10(InstallWatchAppsTask, *(a1 + 32), *(a1 + 40), *(*(*(a1 + 64) + 8) + 40), a2);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load bag to install app: %{public}@", &v11, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_1001FAC60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallRemoteEntity alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[2];
  }

  v6 = v5;
  v7 = [v3 connection];

  v8 = [(SQLiteEntity *)v4 initWithPropertyValues:v6 onConnection:v7];
  if (!v8)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_100283A14(*(a1 + 40));
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Failed to record pending installation", &v12, 0xCu);
    }
  }

  return 1;
}

void sub_1001FAD9C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v39 = a3;
  if (v5)
  {
    v6 = [XDCInstallResponse alloc];
    v8 = objc_getProperty(v5, v7, 16, 1);
    v9 = [(XDCInstallResponse *)v6 initWithData:v8];

    if (v9 && (*&v9->_has & 1) != 0)
    {
      v37 = a1;
      v38 = v5;
      v10 = ASDErrorWithDescription();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v36 = v9;
      v11 = sub_100386460(v9);
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v45;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v44 + 1) + 8 * i);
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v10;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Remote failure encountered: %{public}@", buf, 0x16u);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v13);
      }

      a1 = v37;
      v5 = v38;
      v9 = v36;
    }

    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        externalIDStrings = v9->_externalIDStrings;
      }

      else
      {
        externalIDStrings = 0;
      }

      v20 = externalIDStrings;
      v21 = [(NSMutableArray *)v20 count];
      v22 = a1[4];
      *buf = 134218242;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Acknowledging receipt of %lu request(s) by %{public}@", buf, 0x16u);
    }

    v24 = a1[4];
    v23 = a1[5];
    v25 = v9;
    v26 = v24;
    if (v23)
    {
      v27 = *(v23 + 16);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001F93E4;
      v51 = &unk_10051CA38;
      v52 = v25;
      v53 = v26;
      [v27 modifyUsingTransaction:buf];
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = a1[6];
    if (v28)
    {
      v28 = v28[1];
    }

    v25 = v28;
    v29 = [(XDCInstallResponse *)v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v41;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v40 + 1) + 8 * j);
          v34 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = sub_100283A14(v33);
            *buf = 138412546;
            *&buf[4] = v35;
            *&buf[12] = 2114;
            *&buf[14] = v39;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%@] Unable to send request, will try again later: %{public}@", buf, 0x16u);
          }
        }

        v30 = [(XDCInstallResponse *)v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v30);
      v5 = 0;
    }
  }
}

id *sub_1001FB238(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = AppInstallRemote;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = [NSUUID alloc];
      if (v5)
      {
        v9 = v5[11];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [v8 initWithUUIDString:v10];

      [v7 setObject:v11 forKeyedSubscript:@"external_id"];
      v12 = [v5 data];
      [v7 setObject:v12 forKeyedSubscript:@"metadata"];

      if (v6)
      {
        Property = objc_getProperty(v6, v13, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v15 = Property;
      [v7 setObject:v15 forKeyedSubscript:@"destination_id"];

      [a1[2] addEntriesFromDictionary:v7];
    }
  }

  return a1;
}

id sub_1001FB3A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 amsBag];

  v4 = [AMSNetworkConstraints networkConstraintsForMediaType:@"software" withBag:v3];
  v5 = [v4 resultWithError:0];

  return v5;
}

id *sub_1001FB440(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PurchaseHistoryUpdateDAAPRequestEncoder;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void *sub_1001FB5A0(void *a1, _OWORD *a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v17.receiver = a1;
  v17.super_class = XPCServiceEntitlements;
  v5 = objc_msgSendSuper2(&v17, "init");
  if (v5)
  {
    v6 = a2[1];
    *token.val = *a2;
    *&token.val[4] = v6;
    v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    v5[2] = v7;
    *(v5 + 6) = a3;
    objc_opt_self();
    if (v7)
    {
      error = 0;
      v7 = SecTaskCopyValueForEntitlement(v7, @"com.apple.private.appstored", &error);
      if (error)
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          token.val[0] = 138412802;
          *&token.val[1] = v13;
          LOWORD(token.val[3]) = 1024;
          *(&token.val[3] + 2) = a3;
          HIWORD(token.val[4]) = 2112;
          *&token.val[5] = error;
          v14 = v13;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements for pid: %i error: %@", &token, 0x1Cu);
        }
      }

      if (v7)
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v7))
        {
          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v15 = objc_opt_class();
            token.val[0] = 138412802;
            *&token.val[1] = v15;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = a3;
            HIWORD(token.val[4]) = 2112;
            *&token.val[5] = v7;
            v16 = v15;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%@]: Entitlements for pid: %i %@", &token, 0x1Cu);
          }
        }

        else
        {
          CFRelease(v7);
          v7 = 0;
        }
      }
    }

    v11 = v5[1];
    v5[1] = v7;
  }

  return v5;
}

uint64_t sub_1001FB82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a1;
  if (a1)
  {
    v6 = [*(a1 + 8) containsObject:a2];
    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      v6 = sub_1001FB8DC(XPCServiceEntitlements, a3, *(v5 + 16), *(v5 + 24));
    }

    v5 = (v6 & 1) != 0 || sub_1001FB8DC(XPCServiceEntitlements, @"com.apple.itunesstored.private", *(v5 + 16), *(v5 + 24));
  }

  return v5;
}

BOOL sub_1001FB8DC(uint64_t a1, void *a2, __SecTask *a3, int a4)
{
  v6 = a2;
  objc_opt_self();
  if (!a3)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v6;
      v24 = 1024;
      v25 = a4;
      v18 = v21;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@ pid: %i", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  error = 0;
  v7 = SecTaskCopyValueForEntitlement(a3, v6, &error);
  if (error)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138413058;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      v24 = 1024;
      v25 = a4;
      v26 = 2112;
      v27 = error;
      v17 = v16;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ for pid: %i error: %@", buf, 0x26u);
    }
  }

  if (!v7)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_17;
  }

  TypeID = CFBooleanGetTypeID();
  v10 = TypeID == CFGetTypeID(v7) && CFBooleanGetValue(v7) != 0;
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138413058;
    v21 = v13;
    v22 = 2112;
    v23 = v6;
    v24 = 1024;
    v25 = a4;
    v26 = 1024;
    LODWORD(v27) = v10;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@]: We have the entitlement: %@ for pid: %i result: %d", buf, 0x22u);
  }

  CFRelease(v7);
LABEL_17:

  return v10;
}

uint64_t sub_1001FBB74(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_1001FBB80(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

id sub_1001FBB8C(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

void sub_1001FBBA0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 24);
  }
}

id sub_1001FBBB4(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 32, 1);
  }

  return result;
}

void sub_1001FBBC8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 32);
  }
}

id sub_1001FBBDC(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 40, 1);
  }

  return result;
}

void sub_1001FBBF0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 40);
  }
}

id sub_1001FBC04(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

void sub_1001FBC18(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 48);
  }
}

uint64_t sub_1001FBC2C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1001FBC44(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

id sub_1001FBCE4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = AppEvent;
    a1 = objc_msgSendSuper2(&v19, "init");
    if (a1)
    {
      v4 = sub_100382084(v3);
      sub_10023E000(a1, v4, @"bundle_id");

      v5 = sub_1003826A0(v3);
      sub_10023E000(a1, v5, @"bundle_version");

      v6 = sub_1003821D8(v3);
      sub_10023E000(a1, v6, @"cohort");

      v7 = sub_100382668(v3);
      sub_10023E000(a1, v7, @"device_vendor_id");

      v8 = sub_1003820F4(v3);
      sub_10023E000(a1, v8, @"evid");

      if (v3)
      {
        v9 = sub_10023E604(v3, @"app_platform");
      }

      else
      {
        v9 = 0;
      }

      v10 = [NSNumber numberWithUnsignedInteger:v9];
      sub_10023E000(a1, v10, @"app_platform");

      v11 = [NSNumber numberWithBool:sub_1003827A0(v3)];
      sub_10023E000(a1, v11, @"is_beta");

      v12 = [NSNumber numberWithBool:sub_100382710(v3)];
      sub_10023E000(a1, v12, @"is_clip");

      v13 = [NSNumber numberWithBool:sub_1003827E8(v3)];
      sub_10023E000(a1, v13, @"is_system_app");

      v14 = sub_1003820BC(v3);
      sub_10023E000(a1, v14, @"item_id");

      v15 = sub_1003826D8(v3);
      sub_10023E000(a1, v15, @"item_name");

      v16 = sub_100382830(v3);
      sub_10023E000(a1, v16, @"short_version");

      v17 = sub_100382868(v3);
      sub_10023E000(a1, v17, @"storefront");

      sub_10023E000(a1, &off_1005470C8, @"count");
    }
  }

  return a1;
}

id sub_1001FBFC4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v53.receiver = a1;
    v53.super_class = AppEvent;
    a1 = objc_msgSendSuper2(&v53, "init");
    if (a1)
    {
      v4 = [v3 bundleID];

      if (v4)
      {
        v5 = [v3 bundleID];
        sub_10023E000(a1, v5, @"bundle_id");

        v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 count]);
        sub_10023E000(a1, v6, @"count");

        v7 = [v3 eventType];
        v8 = &off_10051FFB0;
        if (v7 > 4)
        {
          if (v7 == 8)
          {
            v13 = 5;
          }

          else
          {
            v13 = 0;
          }

          if (v7 == 7)
          {
            v14 = 4;
          }

          else
          {
            v14 = v13;
          }

          if (v7 == 6)
          {
            v15 = 3;
          }

          else
          {
            v15 = 0;
          }

          if (v7 == 5)
          {
            v16 = 2;
          }

          else
          {
            v16 = v15;
          }

          if (v7 <= 6)
          {
            v10 = v16;
          }

          else
          {
            v10 = v14;
          }

          v8 = &off_10051FFB0;
        }

        else if (v7 > 1)
        {
          if (v7 == 2)
          {
            v10 = 8;
          }

          else if (v7 == 4)
          {
            v49 = [NSNumber numberWithUnsignedChar:1];
            sub_10023E000(a1, v49, @"event_type");

            v50 = [v3 eventSubtype] - 1;
            if (v50 >= 9)
            {
              v10 = 0;
            }

            else
            {
              v10 = byte_10044B8C0[v50];
            }

            v8 = &off_10051FFB8;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          if (v7 == 1)
          {
            v9 = 7;
          }

          else
          {
            v9 = 0;
          }

          if (v7)
          {
            v10 = v9;
          }

          else
          {
            v10 = 6;
          }

          v8 = &off_10051FFB0;
        }

        v17 = [NSNumber numberWithUnsignedChar:v10];
        sub_10023E000(a1, v17, *v8);

        v18 = [LSApplicationRecord alloc];
        v19 = [v3 bundleID];
        v12 = [v18 initWithBundleIdentifier:v19 allowPlaceholder:0 error:0];

        if (v12)
        {
          v20 = [v12 exactBundleVersion];

          if (v20)
          {
            v21 = [v12 exactBundleVersion];
            sub_10023E000(a1, v21, @"bundle_version");
          }

          v22 = [v12 iTunesMetadata];
          v23 = [v22 storeCohort];
          v24 = [v23 length];

          if (v24)
          {
            v25 = [v12 iTunesMetadata];
            v26 = [v25 storeCohort];
            sub_10023E000(a1, v26, @"cohort");
          }

          v27 = [v12 deviceIdentifierForVendor];

          if (v27)
          {
            v28 = [v12 deviceIdentifierForVendor];
            v29 = [v28 UUIDString];

            if ([v29 length])
            {
              sub_10023E000(a1, v29, @"device_vendor_id");
            }
          }

          v30 = [v12 iTunesMetadata];
          v31 = [v30 versionIdentifier];

          if (v31)
          {
            v32 = [v12 iTunesMetadata];
            v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 versionIdentifier]);
            sub_10023E000(a1, v33, @"evid");
          }

          if ([v12 isBeta])
          {
            sub_10023E000(a1, &__kCFBooleanTrue, @"is_beta");
          }

          v34 = [v12 iTunesMetadata];
          v35 = [v34 storeItemIdentifier];

          if (v35)
          {
            v36 = [v12 iTunesMetadata];
            v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v36 storeItemIdentifier]);
            sub_10023E000(a1, v37, @"item_id");
          }

          v38 = [v12 iTunesMetadata];
          v39 = [v38 itemName];
          v40 = [v39 length];

          if (v40)
          {
            v41 = [v12 iTunesMetadata];
            v42 = [v41 itemName];
            sub_10023E000(a1, v42, @"item_name");
          }

          v43 = [v12 shortVersionString];

          if (v43)
          {
            v44 = [v12 shortVersionString];
            sub_10023E000(a1, v44, @"short_version");
          }

          v45 = [v12 iTunesMetadata];
          v46 = [v45 storeFront];

          if (!v46)
          {
            goto LABEL_56;
          }

          v11 = [v12 iTunesMetadata];
          v47 = [NSNumber numberWithUnsignedLongLong:[v11 storeFront]];
          sub_10023E000(a1, v47, @"storefront");
        }

        else
        {
          v12 = [v3 itemID];

          if (!v12)
          {
LABEL_56:

            goto LABEL_57;
          }

          v11 = [v3 itemID];
          sub_10023E000(a1, v11, @"item_id");
          v12 = 0;
        }
      }

      else
      {
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          *buf = 138543618;
          v55 = v51;
          v56 = 2114;
          v57 = v3;
          v52 = v51;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@]: BundleID required for event: %{public}@", buf, 0x16u);
        }

        v12 = a1;
        a1 = 0;
      }

      goto LABEL_56;
    }
  }

LABEL_57:

  return a1;
}

const __CFString *sub_1001FC658(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10051CBF0 + a2);
  }
}

id sub_1001FC69C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"account_id");
    v2 = [v1 stringValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001FC6FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = objc_opt_new();
    v14 = *(a1 + 40);
    *(a1 + 40) = v13;

    if (!v9)
    {
LABEL_12:
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543618;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Skipping foreground event with timestamp: %{public}@ duration: %{public}@", &v18, 0x16u);
      }

      goto LABEL_15;
    }
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = [v9 stringValue];
  [v15 setObject:v10 forKeyedSubscript:v16];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"refType"];
  }

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"refSource"];
  }

  [*(a1 + 40) addObject:v15];

LABEL_15:
}

id sub_1001FC8C8(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = sub_10023E0F8(a1, @"app_platform");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v3, @"app_platform");
    }

    v4 = sub_10023E0F8(a1, @"bundle_id");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v4, @"bundle_id");
    }

    v5 = sub_10023E0F8(a1, @"bundle_version");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v5, @"bundle_version");
    }

    v6 = sub_10023E0F8(a1, @"cohort");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v6, @"cohort");
    }

    v7 = sub_10023E0F8(a1, @"device_vendor_id");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v7, @"device_vendor_id");
    }

    v8 = sub_10023E0F8(a1, @"evid");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v8, @"evid");
    }

    v9 = sub_10023E0F8(a1, @"is_beta");

    if (objc_opt_respondsToSelector())
    {
      sub_10023E000(v2, v9, @"is_beta");
    }

    v10 = sub_10023E0F8(a1, @"is_clip");

    if (objc_opt_respondsToSelector())
    {
      sub_10023E000(v2, v10, @"is_clip");
    }

    v11 = sub_10023E0F8(a1, @"item_id");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v11, @"item_id");
    }

    v12 = sub_10023E0F8(a1, @"item_name");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v12, @"item_name");
    }

    v13 = sub_10023E0F8(a1, @"short_version");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v13, @"short_version");
    }

    v14 = sub_10023E0F8(a1, @"storefront");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v14, @"storefront");
    }

    v15 = sub_10023E0F8(a1, @"timestamp");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10023E000(v2, v15, @"timestamp");
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

AppMetadataInstall *sub_1001FCCDC(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(AppMetadataInstall);
    v3 = *(a1 + 16);
    v4 = sub_1002380D8(v3, @"bundle_id");
    if (v4)
    {
      sub_10023E000(v2, v4, @"bundle_id");
    }

    v5 = sub_1002380D8(v3, @"clip_affiliate_token");
    if (v5)
    {
      sub_10023E000(v2, v5, @"clip_affiliate_token");
    }

    v6 = sub_1002380D8(v3, @"clip_campaign");
    if (v6)
    {
      sub_10023E000(v2, v6, @"clip_campaign");
    }

    v7 = sub_1002380D8(v3, @"clip_campaign_token");
    if (v7)
    {
      sub_10023E000(v2, v7, @"clip_campaign_token");
    }

    v8 = sub_1002380D8(v3, @"clip_provider_token");
    if (v8)
    {
      sub_10023E000(v2, v8, @"clip_provider_token");
    }

    v9 = sub_1002380D8(v3, @"clip_ref_source");
    if (v9)
    {
      sub_10023E000(v2, v9, @"clip_ref_source");
    }

    v10 = sub_1002380D8(v3, @"clip_ref_type");
    if (v10)
    {
      sub_10023E000(v2, v10, @"clip_ref_type");
    }

    if (v3)
    {
      v11 = sub_1002378BC(v3, @"clip_third_party_with_no_app_referrer", 0);
    }

    else
    {
      v11 = 0;
    }

    v12 = [NSNumber numberWithBool:v11];
    sub_10023E000(v2, v12, @"clip_third_party_with_no_app_referrer");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001FCF14(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FCF4C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_version");
    v1 = vars8;
  }

  return a1;
}

id sub_1001FCF84(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"cohort");
    v1 = vars8;
  }

  return a1;
}