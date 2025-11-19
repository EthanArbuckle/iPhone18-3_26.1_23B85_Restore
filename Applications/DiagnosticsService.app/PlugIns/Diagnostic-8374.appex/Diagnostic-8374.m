void sub_100001384(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CellularThroughput: Error count in startMetadataCollectionWithCompletion: %{public}lu", buf, 0xCu);
  }

  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = DiagnosticsKitLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 objectAtIndexedSubscript:v6];
        *buf = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CellularThroughput: Error in startMetadataCollectionWithCompletion: %{public}@", buf, 0xCu);
      }

      ++v6;
    }

    while ([v4 count] > v6);
  }
}

void sub_1000014F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CellularThroughput: Download task starting", buf, 2u);
  }

  v8 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CellularThroughput: Metadata collection arrived at semaphore", buf, 2u);
  }

  v9 = *(a1 + 32);
  v10 = dispatch_walltime(0, 10000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CellularThroughput: Metadata collection after semaphore wait", buf, 2u);
  }

  [*(*(a1 + 40) + 16) stopMetadataCollection];
  [*(*(a1 + 40) + 16) saveToAWD];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100001778;
  v25 = &unk_100004160;
  v26 = *(a1 + 40);
  AnalyticsSendEventLazy();
  v12 = dispatch_queue_create("com.apple.wirelessdataanalytics.CellularDataDiagnosticsSuite", 0);
  v13 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001784;
  block[3] = &unk_100004188;
  v18 = v6;
  v19 = v5;
  v14 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = v14;
  v15 = v5;
  v16 = v6;
  dispatch_after(v13, v12, block);
}

uint64_t sub_100001784(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CellularThroughput: save results to AWD", &v10, 2u);
  }

  v3 = *(a1 + 32);
  v4 = DiagnosticsKitLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) localizedDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CellularThroughput: Download task errored out: %{public}@", &v10, 0xCu);
    }

    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);
LABEL_12:
      result = v8();
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 40) speed];
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CellularThroughput: Download task completed, throughput %f Mbps", &v10, 0xCu);
    }

    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);
      goto LABEL_12;
    }
  }

  *(*(a1 + 48) + 8) = 0;
  return result;
}

id sub_100001A64(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CellularThroughput: speed test passed", &v8, 2u);
  }

  v3 = [*(a1 + 32) result];
  [v3 setStatusCode:&off_1000042F0];

  v4 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) result];
    v6 = [v5 statusCode];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CellularThroughput: status code: %@", &v8, 0xCu);
  }

  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) setFinished:1];
  }

  return result;
}