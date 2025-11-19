uint64_t sub_14F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v57 = v5;
    v58 = 2114;
    v59 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@", buf, 0x16u);
  }

  v6 = [[NSSet alloc] initWithArray:*(a1 + 40)];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v12 alarmURL];
        v14 = [v6 containsObject:v13];

        if (v14)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v9);
  }

  v15 = [v7 count];
  v16 = MTLogForCategory();
  v17 = v16;
  if (v15)
  {
    v38 = v6;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v57 = v18;
      v58 = 2114;
      v59 = v7;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ found alarms to dismiss: %{public}@", buf, 0x16u);
    }

    v19 = [[NSMutableArray alloc] initWithCapacity:v15];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v7;
    v39 = v7;
    v20 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v39);
          }

          v24 = *(*(&v44 + 1) + 8 * j);
          v25 = MTLogForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            *buf = 138543618;
            v57 = v26;
            v58 = 2114;
            v59 = v24;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing alarm: %{public}@", buf, 0x16u);
          }

          v27 = *(a1 + 48);
          v28 = [v24 alarmIDString];
          v29 = [v27 dismissAlarmWithIdentifier:v28];

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1AB8;
          v41[3] = &unk_14418;
          v42 = *(a1 + 32);
          v43 = v24;
          v30 = [v29 addCompletionBlock:v41];
          [v19 addObject:v29];
        }

        v21 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v21);
    }

    v31 = MTLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = [v19 count];
      *buf = 138543618;
      v57 = v32;
      v58 = 2048;
      v59 = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ combining dismiss futures. Count: %tu", buf, 0x16u);
    }

    v34 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
    v35 = [NAFuture combineAllFutures:v19 ignoringErrors:0 scheduler:v34];
    v7 = v37;
    v6 = v38;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_C314(a1, v17);
    }

    v53 = NSLocalizedDescriptionKey;
    v54 = @"No alarm matches the alarm IDs.";
    v19 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v34 = [NSError errorWithDomain:@"com.apple.mobiletimer.SAAlarmDismiss" code:2 userInfo:v19];
    v35 = [NAFuture futureWithError:v34];
  }

  return v35;
}

void sub_1AB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C390(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ dismiss alarm %{public}@ succeeded", &v9, 0x16u);
  }
}

void sub_1BA8(uint64_t a1, void *a2)
{
  v3 = [a2 na_firstObjectPassingTest:&stru_14480];
  v4 = MTLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_C410(a1);
    }

    v6 = [SACommandFailed alloc];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v9 = [v6 initWithReason:v8];

    [v9 setErrorCode:{objc_msgSend(v3, "code")}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ combined alarm dismiss future succeeded", &v13, 0xCu);
    }

    v9 = objc_alloc_init(SACommandSucceeded);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_1D3C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_C410(a1);
  }

  v5 = [SACommandFailed alloc];
  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  v8 = [v5 initWithReason:v7];

  [v8 setErrorCode:{objc_msgSend(v3, "code")}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1E98(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2114;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_2448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v57 = v5;
    v58 = 2114;
    v59 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@", buf, 0x16u);
  }

  v6 = [[NSSet alloc] initWithArray:*(a1 + 40)];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v12 alarmURL];
        v14 = [v6 containsObject:v13];

        if (v14)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v9);
  }

  v15 = [v7 count];
  v16 = MTLogForCategory();
  v17 = v16;
  if (v15)
  {
    v38 = v6;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v57 = v18;
      v58 = 2114;
      v59 = v7;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ found alarms to snooze: %{public}@", buf, 0x16u);
    }

    v19 = [[NSMutableArray alloc] initWithCapacity:v15];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v7;
    v39 = v7;
    v20 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v39);
          }

          v24 = *(*(&v44 + 1) + 8 * j);
          v25 = MTLogForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            *buf = 138543618;
            v57 = v26;
            v58 = 2114;
            v59 = v24;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze alarm: %{public}@", buf, 0x16u);
          }

          v27 = *(a1 + 48);
          v28 = [v24 alarmIDString];
          v29 = [v27 snoozeAlarmWithIdentifier:v28];

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_2A10;
          v41[3] = &unk_14418;
          v42 = *(a1 + 32);
          v43 = v24;
          v30 = [v29 addCompletionBlock:v41];
          [v19 addObject:v29];
        }

        v21 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v21);
    }

    v31 = MTLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = [v19 count];
      *buf = 138543618;
      v57 = v32;
      v58 = 2048;
      v59 = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ combining snooze futures. Count: %tu", buf, 0x16u);
    }

    v34 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
    v35 = [NAFuture combineAllFutures:v19 ignoringErrors:0 scheduler:v34];
    v7 = v37;
    v6 = v38;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_C658(a1, v17);
    }

    v53 = NSLocalizedDescriptionKey;
    v54 = @"No alarm matches the alarm IDs.";
    v19 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v34 = [NSError errorWithDomain:@"com.apple.mobiletimer.SAAlarmSnooze" code:2 userInfo:v19];
    v35 = [NAFuture futureWithError:v34];
  }

  return v35;
}

void sub_2A10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C6D4(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ snooze alarm %{public}@ succeeded", &v9, 0x16u);
  }
}

void sub_2B00(uint64_t a1, void *a2)
{
  v3 = [a2 na_firstObjectPassingTest:&stru_144F0];
  v4 = MTLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_C754(a1);
    }

    v6 = [SACommandFailed alloc];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v9 = [v6 initWithReason:v8];

    [v9 setErrorCode:{objc_msgSend(v3, "code")}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ combined alarm snooze future succeeded", &v13, 0xCu);
    }

    v9 = objc_alloc_init(SACommandSucceeded);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_2C94(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_2CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_C754(a1);
  }

  v5 = [SACommandFailed alloc];
  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  v8 = [v5 initWithReason:v7];

  [v8 setErrorCode:{objc_msgSend(v3, "code")}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_35E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 48));
  objc_destroyWeak((v44 + 56));
  _Block_object_dispose(&a43, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_3638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ create alarm succeeded", &v9, 0xCu);
  }

  [MTAnalytics incrementEventCount:kMTCASiriAlarmAdds];
  v4 = objc_alloc_init(SAAlarmCreateCompleted);
  v5 = [*(a1 + 32) alarmURL];
  [v4 setAlarmId:v5];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
  v8 = v4;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_3780(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_CA04();
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_3AB0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_3FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&a29);
  _Block_object_dispose((v32 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_400C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_4024(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = WeakRetained;
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timer: %{public}@", buf, 0x16u);
  }

  [v3 duration];
  v7 = v6;
  v8 = [WeakRetained timer];
  v9 = [v8 timerValue];

  if (v9)
  {
    v10 = [WeakRetained timer];
    v11 = [v10 timerValue];
    v7 = [v11 integerValue];
  }

  if ([v3 state] == &dword_0 + 1)
  {
    v12 = [*(a1 + 32) startCurrentTimerWithDuration:v7];
  }

  else
  {
    v13 = MTLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = WeakRetained;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping current timer before restarting", buf, 0xCu);
    }

    v14 = [*(a1 + 32) stopCurrentTimer];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4280;
    v16[3] = &unk_14568;
    v17 = *(a1 + 32);
    v18 = v7;
    v12 = [v14 flatMap:v16];
  }

  return v12;
}

void sub_4290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ set timer succeeded", &v7, 0xCu);
  }

  v4 = objc_alloc_init(SATimerSetCompleted);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_4378(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ set timer failed with error: %{public}@", &v9, 0x16u);
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_4B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak((v30 + 48));
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_4B6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4B84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm update succeeded", &v11, 0xCu);
  }

  v6 = objc_alloc_init(SAAlarmUpdateCompleted);
  v7 = [v3 na_map:&stru_145F8];

  [v6 setAlarmIds:v7];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v10 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_4CC0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_CEFC();
  }

  v6 = [SACommandFailed alloc];
  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  v9 = [v6 initWithReason:v8];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_4F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_4F78(int8x16_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 hour];

  if (v7)
  {
    v8 = [v6 hour];
    v9 = [v8 unsignedIntegerValue];
    v10 = *(a1[2].i64[1] + 8);
    v40 = *(v10 + 40);
    v11 = MTValidateAlarmHour(v9, &v40);
    objc_storeStrong((v10 + 40), v40);
    *(*(a1[2].i64[0] + 8) + 24) = v11;
  }

  if (*(*(a1[2].i64[0] + 8) + 24) == 1)
  {
    v12 = [v6 minute];

    if (v12)
    {
      v13 = [v6 minute];
      v14 = [v13 unsignedIntegerValue];
      v15 = *(a1[2].i64[1] + 8);
      v39 = *(v15 + 40);
      v16 = MTValidateAlarmMinute(v14, &v39);
      objc_storeStrong((v15 + 40), v39);
      *(*(a1[2].i64[0] + 8) + 24) = v16;
    }
  }

  if (*(*(a1[2].i64[0] + 8) + 24) == 1)
  {
    v17 = [v6 addedFrequency];

    if (v17)
    {
      v18 = [v6 addedFrequency];
      v19 = *(a1[2].i64[1] + 8);
      obj = *(v19 + 40);
      v20 = MTValidateAlarmFrequency(v18, &obj);
      objc_storeStrong((v19 + 40), obj);
      *(*(a1[2].i64[0] + 8) + 24) = v20;
    }
  }

  if (*(*(a1[2].i64[0] + 8) + 24) == 1)
  {
    v21 = [v6 removedFrequency];

    if (v21)
    {
      v22 = [v6 removedFrequency];
      v23 = *(a1[2].i64[1] + 8);
      v37 = *(v23 + 40);
      v24 = MTValidateAlarmFrequency(v22, &v37);
      objc_storeStrong((v23 + 40), v37);
      *(*(a1[2].i64[0] + 8) + 24) = v24;
    }
  }

  if (*(*(a1[2].i64[0] + 8) + 24) == 1)
  {
    v25 = [v6 addedFrequency];
    if (v25)
    {
      v26 = v25;
      v27 = [v6 removedFrequency];

      if (v27)
      {
        v28 = [v6 addedFrequency];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_52D0;
        v34[3] = &unk_14648;
        v35 = v6;
        v36 = vextq_s8(a1[2], a1[2], 8uLL);
        [v28 enumerateObjectsUsingBlock:v34];
      }
    }
  }

  if (*(*(a1[2].i64[0] + 8) + 24) == 1)
  {
    v29 = [v6 label];

    if (v29)
    {
      v30 = [v6 label];
      v31 = *(a1[2].i64[1] + 8);
      v33 = *(v31 + 40);
      v32 = MTValidateAlarmLabel(v30, &v33);
      objc_storeStrong((v31 + 40), v33);
      *(*(a1[2].i64[0] + 8) + 24) = v32;
    }
  }

  if ((*(*(a1[2].i64[0] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_52D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) removedFrequency];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = [*(a1 + 32) addedFrequency];
    v10 = [*(a1 + 32) removedFrequency];
    v11 = [NSString stringWithFormat:@"Cannot add a frequency (%@) that is also being removed. Added: %@, Removed: %@", v6, v9, v10];

    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:4 userInfo:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_55D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_55FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = WeakRetained;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@", buf, 0x16u);
  }

  v6 = [WeakRetained modifications];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_57D4;
  v12[3] = &unk_146E8;
  v13 = v3;
  v14 = WeakRetained;
  v15 = *(a1 + 32);
  v7 = v3;
  v8 = [v6 na_map:v12];

  v9 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
  v10 = [NAFuture combineAllFutures:v8 ignoringErrors:0 scheduler:v9];

  return v10;
}

id sub_57D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5AEC;
  v20[3] = &unk_14698;
  v5 = v3;
  v21 = v5;
  v6 = [v4 na_firstObjectPassingTest:v20];
  v7 = MTLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ found matching alarm: %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 40) updateAlarm:v6 withModification:v5];
    v11 = MTLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updating alarm: %{public}@", buf, 0x16u);
    }

    v13 = [*(a1 + 48) updateAlarm:v10];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_5B50;
    v18[3] = &unk_146C0;
    v19 = v10;
    v14 = v10;
    v15 = [v13 flatMap:v18];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_CF64(a1, v8);
    }

    v13 = [NSString stringWithFormat:&stru_14A20];
    v26 = NSLocalizedDescriptionKey;
    v27 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:0 userInfo:v16];

    v15 = [NAFuture futureWithError:v14];
  }

  return v15;
}

id sub_5AEC(uint64_t a1, void *a2)
{
  v3 = [a2 alarmURL];
  v4 = [*(a1 + 32) alarmId];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_6604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  objc_destroyWeak((v51 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v52 - 224), 8);
  _Block_object_dispose((v52 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6680(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6698(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep alarm fetch returned: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  v9 = MTNilify();
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_67D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = MTLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@, error: %{public}@", &v15, 0x20u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_group_leave(*(a1 + 32));
}

intptr_t sub_690C(uint64_t a1)
{
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v16 = 138543362;
    v17 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm search completed", &v16, 0xCu);
  }

  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 64) + 8) + 40))
  {
    v4 = objc_alloc_init(SACommandFailed);
    goto LABEL_6;
  }

  if (MTShouldHandleForEucalyptus())
  {
    v12 = [*(a1 + 32) includesSleepAlarms];
    if (![v12 BOOLValue])
    {
LABEL_15:

      goto LABEL_16;
    }

    v13 = *(*(*(a1 + 80) + 8) + 40);

    if (v13)
    {
      v14 = [*(*(*(a1 + 88) + 8) + 40) arrayByAddingObject:*(*(*(a1 + 80) + 8) + 40)];
      v15 = *(*(a1 + 88) + 8);
      v12 = *(v15 + 40);
      *(v15 + 40) = v14;
      goto LABEL_15;
    }
  }

LABEL_16:
  v4 = [*(a1 + 32) searchWithAlarms:*(*(*(a1 + 88) + 8) + 40)];
LABEL_6:
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_D1A8(a1, a1 + 72);
  }

  v8 = *(a1 + 48);
  v9 = [*(*(*(a1 + 72) + 8) + 40) dictionary];
  (*(v8 + 16))(v8, v9);

  v10 = MTLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_D240(a1, a1 + 72);
  }

  [MTAnalytics incrementEventCount:kMTCASiriAlarmSearches];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_777C(id a1)
{
  v1 = +[NSCharacterSet punctuationCharacterSet];
  v2 = qword_1BDF8;
  qword_1BDF8 = v1;

  qword_1BE00 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];

  _objc_release_x1();
}

void sub_7818(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_7C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  _Block_object_dispose((v26 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_7C74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timer: %@", &v11, 0x16u);
  }

  v6 = SATimerObjectForMTTimer(v3);
  v7 = objc_alloc_init(SATimerGetCompleted);
  [v7 setTimer:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_7DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_D4BC(WeakRetained, v3, v5);
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t MTAlarmRepeatDayFromSAAlarmDayOfWeek(unsigned int a1)
{
  if (a1 > 8)
  {
    return 1;
  }

  else
  {
    return qword_FFD0[a1];
  }
}

id SAAlarmFrequencyFromRepeatSchedule(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    v6 = v2;
    MTAlarmRepeatScheduleEnumerateDays();
  }

  else
  {
    v4 = stringForSAAlarmDayOfWeek();
    [v3 addObject:v4];
  }

  return v3;
}

void sub_7F54(uint64_t a1, unint64_t a2)
{
  if (a2 <= 6)
  {
    v3 = *(a1 + 32);
    v4 = stringForSAAlarmDayOfWeek();
    [v3 addObject:v4];
  }
}

uint64_t MTValidateAlarmRelativeOffsetMinutes(unint64_t a1, void *a2)
{
  if (a1 < 0x2D1)
  {
    return 1;
  }

  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = +[NSTimeZone defaultTimeZone];
  [v4 setTimeZone:v5];

  v6 = +[NSDate date];
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:1];
  v8 = [v4 dateByAddingComponents:v7 toDate:v6 options:0];
  v9 = objc_alloc_init(NSDateComponents);
  [v9 setMinute:a1];
  v10 = [v4 dateByAddingComponents:v9 toDate:v6 options:0];
  v11 = [v8 laterDate:v10];

  v12 = v11 == v10;
  v13 = v11 != v10;
  if (v12)
  {
    [NSString stringWithFormat:@"Relative offset must not be more than one day. Offset: %lu", a1];
    v19 = v14 = a2;
    v20 = NSLocalizedDescriptionKey;
    v21 = v19;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:1 userInfo:v15];

    if (v14)
    {
      v17 = v16;
      *v14 = v16;
    }
  }

  return v13;
}

BOOL MTValidateAlarmHour(unint64_t a1, void *a2)
{
  if (a1 >= 0x18)
  {
    v4 = [NSString stringWithFormat:@"Hour must be between 0 and 23, inclusive. Hour = %lu", a1];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:2 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return a1 < 0x18;
}

BOOL MTValidateAlarmMinute(unint64_t a1, void *a2)
{
  if (a1 >= 0x3C)
  {
    v4 = [NSString stringWithFormat:@"Minute must be between 0 and 59, inclusive. Minute = %lu", a1];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:3 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return a1 < 0x3C;
}

uint64_t MTValidateAlarmFrequency(void *a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (SAAlarmDayOfWeekForString() == 1)
        {
          if ([v3 count] != &dword_0 + 1)
          {
            v14 = [NSString stringWithFormat:@"SAClockAlarmDayNever must be specified alone. Frequency: %@", v3];
            v28 = NSLocalizedDescriptionKey;
            v29 = v14;
            v15 = &v29;
            v16 = &v28;
LABEL_19:
            v17 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
            v12 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:4 userInfo:v17];

            v13 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          if (SAAlarmDayOfWeekForString() < 2 || SAAlarmDayOfWeekForString() >= 9)
          {
            v14 = [NSString stringWithFormat:@"Frequency contains invalid day: %@. Frequency: %@", v9, v3, v20];
            v26 = NSLocalizedDescriptionKey;
            v27 = v14;
            v15 = &v27;
            v16 = &v26;
            goto LABEL_19;
          }

          v10 = SAAlarmDayOfWeekForString();
          v11 = MTAlarmRepeatDayFromSAAlarmDayOfWeek(v10);
          if ((v11 & v6) != 0)
          {
            v14 = [NSString stringWithFormat:@"Frequency contains %@ multiple times. Frequency: %@", v9, v3, v20];
            v24 = NSLocalizedDescriptionKey;
            v25 = v14;
            v15 = &v25;
            v16 = &v24;
            goto LABEL_19;
          }

          v6 |= v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
      v12 = 0;
      v13 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

LABEL_20:

  if (a2)
  {
    v18 = v12;
    *a2 = v12;
  }

  return v13;
}

BOOL MTValidateAlarmLabel(void *a1, void *a2)
{
  v3 = [a1 length];
  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"A zero-length label is not allowed"];
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.assistant" code:5 userInfo:v5];

    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }
  }

  return v3 != 0;
}

void sub_8B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  _Block_object_dispose((v24 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_8BD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_8BF0(uint64_t a1, void *a2)
{
  v31 = a2;
  val = objc_loadWeakRetained((a1 + 40));
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = val;
    v48 = 2114;
    v49 = v31;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@", buf, 0x16u);
  }

  v29 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [val alarmIds];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v6 = *v41;
    *&v5 = 138543618;
    v27 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_920C;
        v39[3] = &unk_14698;
        v39[4] = v8;
        v9 = [v31 na_firstObjectPassingTest:{v39, v27}];
        if (v9)
        {
          [v29 addObject:v9];
        }

        else
        {
          v10 = MTLogForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v27;
            v47 = val;
            v48 = 2114;
            v49 = v8;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ Attempt to delete unknown alarm: %{public}@", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v4);
  }

  if (![v29 count])
  {
    v11 = MTLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_D714(val, v11);
    }
  }

  v12 = MTLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = val;
    v48 = 2114;
    v49 = v29;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ found alarms to delete: %{public}@", buf, 0x16u);
  }

  v13 = objc_opt_new();
  objc_initWeak(&location, val);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v29;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = MTLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v47 = val;
          v48 = 2114;
          v49 = v18;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ deleting alarm: %{public}@", buf, 0x16u);
        }

        v20 = [*(a1 + 32) removeAlarm:v18];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_9250;
        v32[3] = &unk_14848;
        objc_copyWeak(&v33, &location);
        v32[4] = v18;
        v21 = [v20 addCompletionBlock:v32];
        [v13 addObject:v20];
        objc_destroyWeak(&v33);
      }

      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

  v22 = MTLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v13 count];
    *buf = 138543618;
    v47 = val;
    v48 = 2048;
    v49 = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ combining delete futures. Count: %lu", buf, 0x16u);
  }

  v24 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
  v25 = [NAFuture combineAllFutures:v13 ignoringErrors:0 scheduler:v24];

  objc_destroyWeak(&location);

  return v25;
}

id sub_920C(uint64_t a1, void *a2)
{
  v3 = [a2 alarmURL];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_9250(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = MTLogForCategory();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543874;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%{public}@ delete alarm %{public}@ failed with error: %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ delete alarm %{public}@ succeeded", &v10, 0x16u);
  }
}

void sub_938C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 na_firstObjectPassingTest:&stru_14868];

  v6 = MTLogForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D78C(WeakRetained, v5, v7);
    }

    v8 = [SACommandFailed alloc];
    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v11 = [v8 initWithReason:v10];

    [v11 setErrorCode:{objc_msgSend(v5, "code")}];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = WeakRetained;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ combined alarm delete future succeeded", &v14, 0xCu);
    }

    [MTAnalytics incrementEventCount:kMTCASiriAlarmRemoves];
    v11 = objc_alloc_init(SAAlarmDeleteCompleted);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL sub_9550(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_9A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak((v30 + 40));
  _Block_object_dispose((v33 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_9A68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_9A80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timer: %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = [v3 timerByUpdatingWithState:1];
    v7 = MTLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = WeakRetained;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping timer: %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) updateTimer:v6];
  }

  else
  {
    v9 = MTLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_D9E4(WeakRetained, v9);
    }

    v13 = NSLocalizedDescriptionKey;
    v14 = @"No existing timer to cancel";
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.mobiletimer.SATimerCancel" code:1 userInfo:v10];

    v8 = [NAFuture futureWithError:v6];
  }

  v11 = v8;

  return v11;
}

void sub_9CB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel timer succeeded", &v7, 0xCu);
  }

  v4 = objc_alloc_init(SATimerCancelCompleted);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_9D98(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_DA5C(WeakRetained, v3, v5);
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_A380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_A398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v60 = v5;
    v61 = 2114;
    v62 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timers: %{public}@", buf, 0x16u);
  }

  v6 = [[NSSet alloc] initWithArray:*(a1 + 40)];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = v3;
  v9 = v7;
  obj = v8;
  v10 = [v8 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [v14 timerURL];
        v16 = [v6 containsObject:v15];

        if (v16)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v11);
  }

  v17 = [v9 count];
  v18 = MTLogForCategory();
  v19 = v18;
  if (v17)
  {
    v41 = v6;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 48);
      *buf = 138543618;
      v60 = v20;
      v61 = 2114;
      v62 = v9;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ found timers to dismiss: %{public}@", buf, 0x16u);
    }

    v21 = [[NSMutableArray alloc] initWithCapacity:v17];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v9;
    v42 = v9;
    v22 = [v42 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v42);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          v27 = MTLogForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 48);
            *buf = 138543618;
            v60 = v28;
            v61 = 2114;
            v62 = v26;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing timer: %{public}@", buf, 0x16u);
          }

          v29 = *(a1 + 56);
          v30 = [v26 timerID];
          v31 = [v30 UUIDString];
          v32 = [v29 dismissTimerWithIdentifier:v31];

          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_A95C;
          v44[3] = &unk_14418;
          v45 = *(a1 + 48);
          v46 = v26;
          v33 = [v32 addCompletionBlock:v44];
          [v21 addObject:v32];
        }

        v23 = [v42 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v23);
    }

    v34 = MTLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 48);
      v36 = [v21 count];
      *buf = 138543618;
      v60 = v35;
      v61 = 2048;
      v62 = v36;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ combining dismiss futures. Count: %tu", buf, 0x16u);
    }

    v37 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
    v38 = [NAFuture combineAllFutures:v21 ignoringErrors:0 scheduler:v37];
    v9 = v40;
    v6 = v41;
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_DCB4(a1, v19);
    }

    v56 = NSLocalizedDescriptionKey;
    v57 = @"No timer matches the timer IDs.";
    v21 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v37 = [NSError errorWithDomain:@"com.apple.mobiletimer.SATimerDismiss" code:2 userInfo:v21];
    v38 = [NAFuture futureWithError:v37];
  }

  return v38;
}

void sub_A95C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_DD30(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ dismiss timer %{public}@ succeeded", &v9, 0x16u);
  }
}

void sub_AA4C(uint64_t a1, void *a2)
{
  v3 = [a2 na_firstObjectPassingTest:&stru_148B0];
  v4 = MTLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_DDB0(a1);
    }

    v6 = [SACommandFailed alloc];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v9 = [v6 initWithReason:v8];

    [v9 setErrorCode:{objc_msgSend(v3, "code")}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ combined timer dismiss future succeeded", &v13, 0xCu);
    }

    v9 = objc_alloc_init(SACommandSucceeded);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_ABE0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_AC2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_DDB0(a1);
  }

  v5 = [SACommandFailed alloc];
  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  v8 = [v5 initWithReason:v7];

  [v8 setErrorCode:{objc_msgSend(v3, "code")}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_B1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v40 + 48));
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak((v38 + 48));
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v41 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_B250(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_B268(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = WeakRetained;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timer: %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = [v3 timerByUpdatingWithState:2];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = MTLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ pausing timer: %{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) updateTimer:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    v12 = MTLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_DFF8(WeakRetained, v12);
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = @"No existing timer to pause";
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.mobiletimer.SATimerPause" code:1 userInfo:v13];

    v11 = [NAFuture futureWithError:v14];
  }

  return v11;
}

void sub_B4BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ pause timer succeeded", &v9, 0xCu);
  }

  v4 = objc_alloc_init(SATimerPauseCompleted);
  if ([WeakRetained requiresResponse])
  {
    v5 = SATimerObjectForMTTimer(*(*(*(a1 + 40) + 8) + 40));
    [v4 setTimer:v5];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
  v8 = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E070(WeakRetained, v3, v5);
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

id SATimerObjectForMTTimer(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SATimerObject);
  v3 = [v1 state];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != (&dword_0 + 1))
      {
        goto LABEL_12;
      }

      v4 = &SATimerStateStoppedValue;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v3 != (&dword_0 + 2))
  {
    if (v3 != &dword_4)
    {
      if (v3 != (&dword_0 + 3))
      {
        goto LABEL_12;
      }

      v4 = &SATimerStateRunningValue;
      goto LABEL_11;
    }

LABEL_9:
    NSLog(@"Unexpected timer state %ld", [v1 state]);
    [v2 setState:SATimerStateUndefinedValue];
    [v2 setTimerValue:&off_14D28];
    goto LABEL_12;
  }

  v4 = &SATimerStatePausedValue;
LABEL_11:
  [v2 setState:*v4];
  [v1 remainingTime];
  v5 = [NSNumber numberWithDouble:?];
  [v2 setTimerValue:v5];

LABEL_12:
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isFiring]);
  [v2 setIsFiring:v6];

  return v2;
}

void sub_BC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v40 + 48));
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak((v38 + 48));
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v41 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_BD0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_BD24(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = WeakRetained;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fetch completed with timer: %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = [v3 timerByUpdatingWithState:3];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = MTLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming timer: %{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) updateTimer:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    v12 = MTLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_E2C8(WeakRetained, v12);
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = @"No existing timer to resume";
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.mobiletimer.SATimerResume" code:1 userInfo:v13];

    v11 = [NAFuture futureWithError:v14];
  }

  return v11;
}

void sub_BF78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resume timer succeeded", &v9, 0xCu);
  }

  v4 = objc_alloc_init(SATimerResumeCompleted);
  if ([WeakRetained requiresResponse])
  {
    v5 = SATimerObjectForMTTimer(*(*(*(a1 + 40) + 8) + 40));
    [v4 setTimer:v5];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
  v8 = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_C0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E340(WeakRetained, v3, v5);
  }

  v6 = objc_alloc_init(SACommandFailed);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_C144(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmDismiss performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_C1C8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmDismiss performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_C24C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_C2B0(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_C314(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ found no alarms to dismiss", &v3, 0xCu);
}

void sub_C390(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_C410(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_C488(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmSnooze performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_C50C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmSnooze performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_C590(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_C5F4(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_C658(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ found no alarms to snooze", &v3, 0xCu);
}

void sub_C6D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_C754(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_C7CC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmCreate performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_C850(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmCreate performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_C93C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_C9A0(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_CA6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerSet performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_CAF0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerSet performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_CB74(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ timer set failed: %{public}@", &v3, 0x16u);
}

void sub_CBFC(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_CC60(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_CCC4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmUpdate performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_CD48(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmUpdate performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_CE34(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_CE98(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_CF64(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 40);
  v4 = [v3 alarmId];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ no alarm found with alarmIDURL: %{public}@", &v5, 0x16u);
}

void sub_D018(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmSearch performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_D09C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmSearch performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_D120(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ alarm search failed: %{public}@", &v3, 0x16u);
}

void sub_D1A8(uint64_t a1, uint64_t a2)
{
  v2 = [sub_7800(a1 a2)];
  sub_77E0();
  sub_7818(&dword_0, v3, v4, "%s %{public}@ will call completion handler with %@", v5, v6, v7, v8, 2u);
}

void sub_D240(uint64_t a1, uint64_t a2)
{
  v2 = [sub_7800(a1 a2)];
  sub_77E0();
  sub_7818(&dword_0, v3, v4, "%s %{public}@ did call completion handler with %@", v5, v6, v7, v8, 2u);
}

void sub_D2EC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerGet performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_D370(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerGet performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_D3F4(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_D458(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_D4BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ timer fetch failed with error: %{public}@", &v3, 0x16u);
}

void sub_D544(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmDelete performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_D5C8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantAlarmDelete performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_D64C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_D6B0(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_D714(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ found no alarms to delete", &v2, 0xCu);
}

void sub_D78C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ combined alarm delete future failed with error: %{public}@", &v3, 0x16u);
}

void sub_D814(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerCancel performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_D898(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerCancel performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_D91C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_D980(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_D9E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ No existing timer to cancel", &v2, 0xCu);
}

void sub_DA5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ cancel timer failed with error: %{public}@", &v3, 0x16u);
}

void sub_DAE4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerDismiss performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_DB68(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerDismiss performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_DBEC(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_DC50(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_DCB4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ found no timers to dismiss", &v3, 0xCu);
}

void sub_DD30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_DDB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E84();
  sub_1EB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_DE28(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerPause performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_DEAC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerPause performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_DF30(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_DF94(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_DFF8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ No existing timer to pause", &v2, 0xCu);
}

void sub_E070(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ pause timer failed with error: %{public}@", &v3, 0x16u);
}

void sub_E0F8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerResume performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== %s =====", &v1, 0xCu);
}

void sub_E17C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MobileTimerAssistantTimerResume performWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "===== exiting %s =====", &v1, 0xCu);
}

void sub_E200(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ will call completion handler with %@", v4, 0x20u);
}

void sub_E264(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315650;
  sub_1E98(a1, a2, a3);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%s %{public}@ did call completion handler with %@", v4, 0x20u);
}

void sub_E2C8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ No existing timer to resumt", &v2, 0xCu);
}

void sub_E340(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ resume timer failed with error: %{public}@", &v3, 0x16u);
}