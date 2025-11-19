void sub_100001590(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = a2;
  v7 = [a3 dk_dictionaryFromRequiredKey:*(a1 + 32) limitedToKeys:*(a1 + 40) failed:*(*(a1 + 64) + 8) + 24];
  v8 = objc_opt_new();
  v9 = [*(a1 + 48) boundOffsetMin];
  v10 = [*(a1 + 48) boundOffsetMax];
  v11 = [v7 dk_numberFromRequiredKey:@"lowerBoundOffsetX" lowerBound:v9 upperBound:v10 failed:*(*(a1 + 64) + 8) + 24];
  [v11 floatValue];
  [v8 setLowerBoundOffsetThresholdX:?];

  v12 = [*(a1 + 48) boundOffsetMin];
  v13 = [*(a1 + 48) boundOffsetMax];
  v14 = [v7 dk_numberFromRequiredKey:@"upperBoundOffsetX" lowerBound:v12 upperBound:v13 failed:*(*(a1 + 64) + 8) + 24];
  [v14 floatValue];
  [v8 setUpperBoundOffsetThresholdX:?];

  v15 = [*(a1 + 48) boundOffsetMin];
  v16 = [*(a1 + 48) boundOffsetMax];
  v17 = [v7 dk_numberFromRequiredKey:@"lowerBoundOffsetY" lowerBound:v15 upperBound:v16 failed:*(*(a1 + 64) + 8) + 24];
  [v17 floatValue];
  [v8 setLowerBoundOffsetThresholdY:?];

  v18 = [*(a1 + 48) boundOffsetMin];
  v19 = [*(a1 + 48) boundOffsetMax];
  v20 = [v7 dk_numberFromRequiredKey:@"upperBoundOffsetY" lowerBound:v18 upperBound:v19 failed:*(*(a1 + 64) + 8) + 24];
  [v20 floatValue];
  [v8 setUpperBoundOffsetThresholdY:?];

  v21 = [*(a1 + 48) boundOffsetMin];
  v22 = [*(a1 + 48) boundOffsetMax];
  v23 = [v7 dk_numberFromRequiredKey:@"lowerBoundOffsetZ" lowerBound:v21 upperBound:v22 failed:*(*(a1 + 64) + 8) + 24];
  [v23 floatValue];
  [v8 setLowerBoundOffsetThresholdZ:?];

  v24 = [*(a1 + 48) boundOffsetMin];
  v25 = [*(a1 + 48) boundOffsetMax];
  v26 = [v7 dk_numberFromRequiredKey:@"upperBoundOffsetZ" lowerBound:v24 upperBound:v25 failed:*(*(a1 + 64) + 8) + 24];
  [v26 floatValue];
  [v8 setUpperBoundOffsetThresholdZ:?];

  v27 = [v7 dk_numberFromRequiredKey:@"zeroRangeThreshold" lowerBound:&off_100010BA8 upperBound:&off_100010B98 failed:*(*(a1 + 64) + 8) + 24];
  [v27 floatValue];
  [v8 setZeroRangeThreshold:?];

  v28 = [v7 dk_numberFromRequiredKey:@"degreesShiftRangeThreshold" lowerBound:&off_100010BA8 upperBound:&off_100010B98 failed:*(*(a1 + 64) + 8) + 24];
  [v28 floatValue];
  [v8 setDegreesShiftRangeThreshold:?];

  if (v8 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 56) setObject:v8 forKeyedSubscript:v29];
  }

  else if (a4)
  {
    *a4 = 1;
  }
}

void sub_100007798(id a1)
{
  qword_100015F48 = objc_alloc_init(DAHIDEventMonitor);

  _objc_release_x1();
}

void sub_100007CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007D08(uint64_t a1)
{
  v2 = [*(a1 + 32) HIDEvents];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKeyedSubscript:@"HIDServiceClient"];
  v5 = [v4 pointerValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v5, *(a1 + 56), *(a1 + 64)) != 0;
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100008660();
    }
  }
}

uint64_t _HIDEventFilterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 delegate];
    [v5 handleHIDEvent:a4];
  }

  return 0;
}

void sub_100008528(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id numberOrNullForDouble()
{
  v0 = [NSNumber numberWithDouble:?];

  return v0;
}

void sub_1000086C8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] - Could not find plugin.", buf, 2u);
}