void sub_100002004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000207C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v10 = a4;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000025A4(id a1, HKQuantitySample *a2)
{
  v9[0] = @"value";
  v2 = a2;
  v3 = [(HKQuantitySample *)v2 quantity];
  [v3 _value];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = @"date";
  v10[0] = v4;
  v5 = [(HKQuantitySample *)v2 startDate];

  v6 = [v5 description];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

id sub_10000293C(id a1, HKQuantitySample *a2)
{
  v9[0] = @"value";
  v2 = a2;
  v3 = [(HKQuantitySample *)v2 quantity];
  [v3 _value];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = @"date";
  v10[0] = v4;
  v5 = [(HKQuantitySample *)v2 startDate];

  v6 = [v5 description];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

id sub_100002CD0(id a1, HKQuantitySample *a2)
{
  v9[0] = @"value";
  v2 = a2;
  v3 = [(HKQuantitySample *)v2 quantity];
  [v3 _value];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = @"date";
  v10[0] = v4;
  v5 = [(HKQuantitySample *)v2 startDate];

  v6 = [v5 description];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

void sub_100003174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000031A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  _HKInitializeLogging();
  v9 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 48) + 8) + 40);
      if (v11)
      {
        LODWORD(v11) = [v11 count];
      }

      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] samples count: %d", v12, 8u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000032E4(id a1, HKQuantitySample *a2)
{
  v2 = a2;
  v3 = [HAHypertensivePatternMeasurement alloc];
  v4 = [(HKQuantitySample *)v2 endDate];
  v5 = [(HKQuantitySample *)v2 quantity];

  [v5 _value];
  v6 = [v3 initWithDate:v4 value:?];

  return v6;
}

void sub_100003430(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[HealthHTNCustomerDiagnostics] Failed to write %@ with error: %@", &v3, 0x16u);
}

void sub_1000034B8(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_1000033E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000035A8(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_1000033E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}