int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ENTRY, daily CacheDelete service", buf, 2u);
  }

  v6 = @"CACHE_DELETE_REQUIRED_ENTITLEMENTS";
  v7 = &off_100009958;
  [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  objc_claimAutoreleasedReturnValue();
  register_activity();
  CacheDeleteRegisterCallback();
  v5 = getLocalCloudDocsURLs();
  dispatch_main();
}

__CFDictionary *__cdecl __main_block_invoke(id a1, __CFDictionary *a2)
{
  v2 = a2;
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v24 = objc_opt_new();
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "com.apple.mobile.cache_delete_daily Callback ENTRY, info: %@", buf, 0xCu);
  }

  v23 = v2;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 isEqualToString:@"CACHE_DELETE_ANALYTICS_REPORT"];
        v11 = CDGetLogHandle();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v12)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Analytics Report Request!", buf, 2u);
          }

          v13 = storageDailyStatsFilename();
          if (v13)
          {
            v14 = [NSData dataWithContentsOfFile:v13];
            if (v14)
            {
              *buf = 0;
              v11 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:buf];
              v15 = *buf;
              if (!v11)
              {
                v16 = CDGetLogHandle();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *v30 = 0;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to de-serialize stats", v30, 2u);
                }

                goto LABEL_22;
              }
            }

            else
            {
              v16 = CDGetLogHandle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v19 = __error();
                v20 = strerror(*v19);
                *buf = 136315138;
                *&buf[4] = v20;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to read stats: %s", buf, 0xCu);
              }

              v15 = 0;
LABEL_22:

              v11 = 0;
            }

            unlink([v13 UTF8String]);
          }

          else
          {
            v11 = 0;
          }

          if ([v11 count])
          {
            v17 = v24;
            v18 = v11;
          }

          else
          {
            v17 = v24;
            v18 = &__NSDictionary0__struct;
          }

          [(__CFDictionary *)v17 setObject:v18 forKeyedSubscript:v9];
          goto LABEL_28;
        }

        if (v12)
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Storage Daily ignoring %@", buf, 0xCu);
        }

LABEL_28:
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v21 = CDGetLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Storage Daily returning: %@", buf, 0xCu);
  }

  return v24;
}

id getLocalCloudDocsURLs()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  v1 = BYSetupAssistantNeedsToRun();
  v2 = &__NSArray0__struct;
  if (v0 && (v1 & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    if ((atomic_exchange(byte_10000C38B, 1u) & 1) == 0)
    {
      v4 = objc_opt_new();
      v5 = qword_10000C3B0;
      qword_10000C3B0 = v4;

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __getLocalCloudDocsURLs_block_invoke;
      v20[3] = &unk_1000085A8;
      v6 = v3;
      v21 = v6;
      v7 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v20];
      v8 = qword_10000C3B8;
      qword_10000C3B8 = v7;

      v9 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v6, v9);
      if (qword_10000C3B8)
      {
        [FPProviderDomain endMonitoringProviderDomainChanges:?];
        v10 = qword_10000C3B8;
        qword_10000C3B8 = 0;
      }
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = objc_opt_new();
    v11 = [qword_10000C3B0 copy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __getLocalCloudDocsURLs_block_invoke_441;
    v13[3] = &unk_1000085D0;
    v13[4] = &v14;
    [v11 enumerateObjectsUsingBlock:v13];

    v2 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return v2;
}

void sub_100002490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __register_activity_block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v54 = os_transaction_create();
  activity = v2;
  state = xpc_activity_get_state(v2);
  v55 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v55, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = state;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaily recieved XPC_ACTIVITY_STATE: %ld", buf, 0xCu);
  }

  v5 = CDGetLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing CacheDeleteDaily XPC_ACTIVITY_STATE_RUN", buf, 2u);
    }

    atomic_store(0, &_MergedGlobals);
    atomic_store(xpc_activity_should_defer(v2), &unk_10000C38A);
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = atomic_load(&unk_10000C38A);
      if (v8)
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "XPC_ACTIVITY_STATE_RUN, should_defer: %s", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __register_activity_block_invoke_31;
    block[3] = &unk_1000084D0;
    v62 = v2;
    if (qword_10000C3A0 != -1)
    {
      dispatch_once(&qword_10000C3A0, block);
    }

    if ((atomic_exchange(&unk_10000C389, 1u) & 1) == 0)
    {
      v10 = CDGetLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 245;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "********** %d resuming timer", buf, 8u);
      }

      dispatch_resume(qword_10000C390);
    }

    v11 = qword_10000C398;
    v12 = [CacheDeleteVolume volumeWithPath:@"/private/var/"];
    v13 = [v12 freespace];
    v14 = v12;
    v15 = [v14 size];
    v16 = [v14 thresholds];

    v17 = [v16 objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
    v18 = evaluateNumberProperty();

    if (v18)
    {
      v19 = 3 * [v18 unsignedLongLongValue];
    }

    else
    {
      v25 = (v15 * 0.01);
      if (v25 >= 0x500000000)
      {
        v25 = 0x500000000;
      }

      if (v25 <= 0xC0000000)
      {
        v19 = 3221225472;
      }

      else
      {
        v19 = v25;
      }
    }

    v26 = CDGetLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "com.apple.storage.daily";
      *&buf[12] = 2048;
      *&buf[14] = v13;
      *&buf[22] = 2048;
      *&buf[24] = v19;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s performDailyTasks calculation: %llu (freespace) vs %llu (prune_threshold)", buf, 0x20u);
    }

    v27 = v13 < v19;
    v28 = CDGetLogHandle();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        *buf = 136315138;
        *&buf[4] = "com.apple.storage.daily";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s performDailyTasks performing maintenance", buf, 0xCu);
      }

      [v11 pruneSystemTmp];
      [v11 pruneUserTmp];
      [v11 pruneContainerTmps];
    }

    else
    {
      if (v29)
      {
        *buf = 136315138;
        *&buf[4] = "com.apple.storage.daily";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s performDailyTasks skipping maintenance", buf, 0xCu);
      }
    }

    v30 = objc_opt_new();
    v31 = mach_absolute_time();
    v32 = CDGetLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Calling populateUsage", buf, 2u);
    }

    v53 = v30;
    if (updateUsage(&off_100009970, &off_100009988, @"media", v53) && updateUsage(&off_1000099A0, &off_1000099B8, @"photos", v53))
    {
      v33 = getLocalCloudDocsURLs();
      v34 = objc_opt_new();
      [v34 addObjectsFromArray:&off_1000099D0];
      [v34 addObjectsFromArray:v33];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy_;
      *&buf[32] = __Block_byref_object_dispose_;
      v66 = objc_opt_new();
      [*(*&buf[8] + 40) addObjectsFromArray:&off_1000099E8];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = __populateUsage_block_invoke;
      v63[3] = &unk_1000084F8;
      v63[4] = buf;
      [v33 enumerateObjectsUsingBlock:v63];
      if ((updateUsage(v34, *(*&buf[8] + 40), @"apps", v53) & 1) != 0 && updateUsage(&off_100009A00, 0, @"books", v53) && updateUsage(&off_100009A18, &off_100009A30, @"userdata", v53) && updateUsage(&off_100009A48, &off_100009A60, @"logs", v53))
      {
        updated = updateUsage(&off_100009A78, &off_100009A90, @"system", v53);
        _Block_object_dispose(buf, 8);

        if (updated)
        {
          v36 = CDGetLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = mach_absolute_time();
            *buf = 67109376;
            *&buf[4] = 259;
            *&buf[8] = 2048;
            *&buf[10] = gTimebaseConversion * (v37 - v31) / 1000000000.0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%d populateUsage COMPLETE, ET: %f seconds", buf, 0x12u);
          }

          v38 = CDGetLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "com.apple.storage.daily";
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s writing stats:", buf, 0xCu);
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v39 = v53;
          v40 = [v39 countByEnumeratingWithState:&v57 objects:v64 count:16];
          if (v40)
          {
            v41 = *v58;
            do
            {
              for (i = 0; i != v40; i = i + 1)
              {
                if (*v58 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = *(*(&v57 + 1) + 8 * i);
                v44 = CDGetLogHandle();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [v39 objectForKeyedSubscript:v43];
                  *buf = 138412546;
                  *&buf[4] = v43;
                  *&buf[12] = 2112;
                  *&buf[14] = v45;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "\t%@ : %@", buf, 0x16u);
                }
              }

              v40 = [v39 countByEnumeratingWithState:&v57 objects:v64 count:16];
            }

            while (v40);
          }

          v46 = v39;
          v47 = storageDailyStatsFilename();
          if (v47)
          {
            v63[0] = 0;
            v48 = [NSPropertyListSerialization dataWithPropertyList:v46 format:200 options:0 error:v63];
            v49 = v63[0];
            if (v48)
            {
              [v48 writeToFile:v47 atomically:0];
            }

            else
            {
              v52 = CDGetLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v49;
                *&buf[12] = 2112;
                *&buf[14] = v46;
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Unable to flatten dict, err: %@ for %@", buf, 0x16u);
              }
            }
          }

LABEL_74:
          atomic_store(1u, &_MergedGlobals);

          goto LABEL_75;
        }
      }

      else
      {
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
    }

    v50 = CDGetLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = mach_absolute_time();
      *buf = 67109376;
      *&buf[4] = 266;
      *&buf[8] = 2048;
      *&buf[10] = gTimebaseConversion * (v51 - v31) / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%d populateUsage DEFERRED, ET: %f seconds", buf, 0x12u);
    }

    goto LABEL_74;
  }

  if (state)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CacheDeleteDaily uncaught XPC state", buf, 2u);
    }

    v20 = CDGetLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [&off_100009AA8 objectAtIndexedSubscript:state];
      v22 = v21;
      v23 = atomic_load(&unk_10000C38A);
      v24 = "NO";
      *buf = 67110146;
      *&buf[4] = 272;
      *&buf[8] = 2080;
      if (v23)
      {
        v24 = "YES";
      }

      *&buf[10] = "com.apple.storage.daily";
      *&buf[18] = 2048;
      *&buf[20] = state;
      *&buf[28] = 2112;
      *&buf[30] = v21;
      *&buf[38] = 2080;
      v66 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%d %s handler, state: %ld (%@), should_defer: %s", buf, 0x30u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing CacheDeleteDaily XPC_ACTIVITY_STATE_CHECK_IN", buf, 2u);
    }

    xpc_activity_set_criteria(v2, v55);
  }

LABEL_75:
}

void __register_activity_block_invoke_31(uint64_t a1)
{
  v2 = [[CacheDeletePruner alloc] initWithFileAge:259200.0 dirAge:86400.0];
  v3 = qword_10000C398;
  qword_10000C398 = v2;

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("com.apple.storage.daily.should_defer", v4);
  v6 = qword_10000C3A8;
  qword_10000C3A8 = v5;

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_10000C3A8);
  v8 = qword_10000C390;
  qword_10000C390 = v7;

  dispatch_source_set_timer(qword_10000C390, 0, 0x12A05F200uLL, 0x3B9ACA00uLL);
  v9 = qword_10000C390;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __register_activity_block_invoke_2;
  handler[3] = &unk_1000084D0;
  v11 = *(a1 + 32);
  dispatch_source_set_event_handler(v9, handler);
}

void __register_activity_block_invoke_2(uint64_t a1)
{
  atomic_store(xpc_activity_should_defer(*(a1 + 32)), &unk_10000C38A);
  v2 = atomic_load(&unk_10000C38A);
  if (v2)
  {
    v3 = CDGetLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = 229;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "********** %d suspending timer, should_defer = YES", &v7, 8u);
    }

    dispatch_suspend(qword_10000C390);
    atomic_store(0, &unk_10000C389);
    [qword_10000C398 stop];
    if (!xpc_activity_set_state(*(a1 + 32), 3))
    {
      v4 = CDGetLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v7) = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "xpc_activity_set_state(XPC_ACTIVITY_STATE_DEFER) failed", &v7, 2u);
      }
    }
  }

  else
  {
    v5 = atomic_load(&_MergedGlobals);
    if (v5)
    {
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 67109120;
        v8 = 237;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "********** %d suspending timer, activity_finished = YES", &v7, 8u);
      }

      dispatch_suspend(qword_10000C390);
      atomic_store(0, &unk_10000C389);
    }
  }
}

uint64_t updateUsage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v37 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = atomic_load(&unk_10000C38A);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v31 = v9;
    v32 = v8;
    v13 = +[NSMutableDictionary dictionary];
    v30 = diskUsage(v7, &__block_literal_global_400);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = v7;
    obj = v7;
    v36 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v36)
    {
      v35 = *v43;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        v47 = v15;
        v16 = [NSArray arrayWithObjects:&v47 count:1, v30];
        v17 = diskUsage(v16, &__block_literal_global_403);

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v18 = v37;
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v39;
          v22 = v17;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v38 + 1) + 8 * i);
              if ([v15 hasSuffix:v24])
              {
                v25 = [NSNumber numberWithDouble:v22];
                [v13 setObject:v25 forKeyedSubscript:v24];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v20);
        }

        v26 = atomic_load(&unk_10000C38A);
        if (v26)
        {
          break;
        }

        if (++v14 == v36)
        {
          v36 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
          if (v36)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v27 = [NSNumber numberWithDouble:v30];
    [v13 setObject:v27 forKeyedSubscript:@"total"];

    v10 = v31;
    v8 = v32;
    [v31 setObject:v13 forKeyedSubscript:v32];
    v28 = atomic_load(&unk_10000C38A);
    v12 = v28 ^ 1;

    v7 = v33;
  }

  return v12 & 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __populateUsage_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isAbsolutePath])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v5 lastPathComponent];
    [v3 addObject:v4];
  }
}

uint64_t diskUsage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      if (v4)
      {
        v15 = v4;
        v12 = traverse_dir_with_state();
      }

      else
      {
        v13 = *(*(&v16 + 1) + 8 * v10);
        v12 = traverse_dir_with_state();
      }

      v7 += v12;
      if (*(v21 + 24) != 1)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v20, 8);
  return v7;
}

void sub_100003A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *storageDailyStatsFilename()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if (![v0 count])
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get path to Caches Directory", &v11, 2u);
    }

    v3 = 0;
    v2 = 0;
    v1 = 0;
    goto LABEL_11;
  }

  v1 = [v0 objectAtIndexedSubscript:0];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.storage.daily"];
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.storage.daily.stats"];
  if (mkdir([v2 fileSystemRepresentation], 0x1C0u) && *__error() != 17)
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = 138412546;
      v12 = 0;
      v13 = 2080;
      v14 = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unable to create directory at %@ : %s", &v11, 0x16u);
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = v3;
  v4 = v3;
LABEL_12:
  v7 = v4;

  return v4;
}

void __getLocalCloudDocsURLs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to get domains for cloud doc usage statistics. Error: %@", buf, 0xCu);
    }

    atomic_store(0, byte_10000C38B);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a2 allValues];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isiCloudDriveProvider])
          {
            v13 = qword_10000C3B0;
            v14 = [v12 storageURLs];
            [v13 addObjectsFromArray:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __getLocalCloudDocsURLs_block_invoke_441(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 path];
  [v2 addObject:v3];
}