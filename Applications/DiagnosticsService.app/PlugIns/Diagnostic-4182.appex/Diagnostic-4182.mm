void sub_100000F34(uint64_t a1)
{
  v3 = [*(a1 + 32) inputs];
  [v3 runDelay];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"runDiagnostic" selector:0 userInfo:1 repeats:?];
  [*(a1 + 32) setRunTimer:v2];
}

void sub_1000010F0(uint64_t a1)
{
  v14 = [TouchIDManager runTouchIDDiagnostic:2 options:&__NSDictionary0__struct];
  v2 = [*(a1 + 32) allResults];
  v3 = [v14 objectForKeyedSubscript:@"testStatus"];
  [v2 addObject:v3];

  v4 = [*(a1 + 32) result];
  v5 = [v4 statusCode];
  if ([v5 integerValue] != 900)
  {
    v6 = [*(a1 + 32) result];
    v7 = [v6 statusCode];
    if ([v7 integerValue] == -901)
    {
    }

    else
    {
      v8 = [*(a1 + 32) result];
      v9 = [v8 statusCode];
      v10 = [v9 integerValue];

      if (v10 == -2)
      {
        goto LABEL_7;
      }

      v4 = [v14 objectForKeyedSubscript:@"testStatus"];
      v5 = [*(a1 + 32) result];
      [v5 setStatusCode:v4];
    }
  }

LABEL_7:
  [*(a1 + 32) setRunCount:{objc_msgSend(*(a1 + 32), "runCount") + 1}];
  v11 = [*(a1 + 32) runCount];
  v12 = [*(a1 + 32) inputs];
  v13 = [v12 numberOfRuns];

  if (v11 == v13)
  {
    [*(a1 + 32) finish];
  }
}

void sub_100001A50(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BiometricKit diagnostic encountered unexpected error code: %d", v2, 8u);
}