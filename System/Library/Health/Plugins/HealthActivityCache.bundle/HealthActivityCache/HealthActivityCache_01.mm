void sub_14948(uint64_t a1, double **a2)
{
  if (a1)
  {
    v4 = [NSMutableArray arrayWithObject:*(a1 + 88)];
    [v4 addObjectsFromArray:*(a1 + 96)];
    [v4 addObjectsFromArray:*(a1 + 104)];
    [v4 addObjectsFromArray:*(a1 + 112)];
    sub_149F8(a1, a2, v4);
  }
}

void sub_149F8(id *a1, double **a2, void *a3)
{
  v20 = a3;
  if (a1)
  {
    v5 = [[NSHashTable alloc] initWithOptions:512 capacity:{objc_msgSend(v20, "count")}];
    v7 = *a2;
    v6 = a2[1];
    v19 = v6;
    while (v7 != v6)
    {
      context = objc_autoreleasePoolPush();
      v8 = v7[1];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v20;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v8 * 60.0;
        v12 = *v23;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 dateInterval];
            v16 = [v15 hk_containsTime:*v7];

            if (v16)
            {
              [v14 addHeartRateInBeatsPerMinute:v11 forTime:*v7];
              v17 = [v14 sessionUUID];
              v18 = v17 == 0;

              if (!v18)
              {
                sub_14CB4(a1, v14, v7[1], *v7);
              }

              [v5 addObject:v14];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(context);
      v7 += 3;
      v6 = v19;
    }

    sub_15058(a1, v5);
  }
}

void sub_14BF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21520(v14);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_14CB4(uint64_t a1, void *a2, double a3, double a4)
{
  v20 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_15440(a1, v20);
      [v7 addSampleValue:0 startTime:0 endTime:a3 sourceID:a4 error:a4];
LABEL_7:

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_155BC(a1, v20);
      v8 = [HKHeartRateSummaryReading alloc];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
      v10 = +[HKUnit _countPerSecondUnit];
      v11 = [HKQuantity quantityWithUnit:v10 doubleValue:a3];
      v12 = [v8 initWithDate:v9 quantity:v11];

      [v7 addObject:v12];
LABEL_6:

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = *(a1 + 152);
      v14 = [v20 sessionUUID];
      v7 = [v13 objectForKeyedSubscript:v14];

      if (![v7 hk_containsTime:a4])
      {
        goto LABEL_7;
      }

      v12 = sub_15698(a1, v20);
      v15 = [HKHeartRateSummaryReading alloc];
      v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
      v17 = +[HKUnit _countPerSecondUnit];
      v18 = [HKQuantity quantityWithUnit:v17 doubleValue:a3];
      v19 = [v15 initWithDate:v16 quantity:v18];

      [v12 addObject:v19];
      goto LABEL_6;
    }
  }

LABEL_8:
}

void sub_14F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v11;

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_215C8(v16);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_15058(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = a1[12];
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v5)
    {
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          if ([v3 containsObject:v8])
          {
            sub_15774(a1, v8);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v5);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = a1[13];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * j);
          if ([v3 containsObject:v13])
          {
            sub_15870(a1, v13);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v10);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = a1[14];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (k = 0; k != v15; k = k + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v19 + 1) + 8 * k);
          if ([v3 containsObject:{v18, v19}])
          {
            sub_159C8(a1, v18);
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v15);
    }
  }
}

id sub_15440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 sessionUUID];
    v6 = [*(a1 + 128) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
      v6 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v7 intervalCollection:0 options:14 mergeStrategy:1 computationMethod:3];

      [*(a1 + 128) setObject:v6 forKeyedSubscript:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_15528(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21670(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

id sub_155BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 sessionUUID];
    v6 = [*(a1 + 136) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = +[NSMutableArray array];
      [*(a1 + 136) setObject:v6 forKeyedSubscript:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_15698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 sessionUUID];
    v6 = [*(a1 + 144) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = +[NSMutableArray array];
      [*(a1 + 144) setObject:v6 forKeyedSubscript:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_15774(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    v4 = sub_15440(a1, v3);
    v5 = [v4 currentStatistics];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 averageQuantity];
      [v9 _setAverageHeartRate:v7];

      v8 = [v6 maximumQuantity];
      [v9 _setMaximumHeartRate:v8];
    }

    v3 = v9;
  }
}

void sub_15830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_15870(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    v4 = sub_155BC(a1, v3);
    v5 = sub_16100(a1, v4);

    v6 = [v10 dateInterval];
    v7 = [v6 startDate];
    v8 = [_HKHeartRateRecoveryQueryUtility perMinuteWorkoutRecoveryHeartRateFromReadings:v5 workoutEndDate:v7];

    [v10 _setPerMinuteReadings:v8];
    v9 = [v8 allValues];
    [v10 _setHighlightedReadings:v9];

    v3 = v10;
  }
}

void sub_159C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_15698(a1, v3);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v4 = v15 = 0u;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (!v5 || ([*(*(&v14 + 1) + 8 * v8) date], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "date"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "hk_isAfterDate:", v11), v11, v10, v12))
          {
            v13 = v9;

            v5 = v13;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [v3 _setFinalReading:v5];
    [v3 _setHighlightedReadings:v4];
  }
}

void sub_15CE0(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v25 = +[NSMutableArray array];
    v4 = *a2;
    v23 = a2[1];
    if (*a2 != v23)
    {
      v5 = kHKWorkoutHeartRateRecoveryDisplayInterval;
      do
      {
        v26 = [[NSUUID alloc] initWithUUIDBytes:v4 + 48];
        v6 = [NSDateInterval alloc];
        v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:*v4];
        v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(v4 + 8)];
        v9 = [v6 initWithStartDate:v7 endDate:v8];

        v10 = [HKHeartRateSummaryWorkoutStatistics alloc];
        v24 = [v10 initWithDateInterval:v9 numberOfBuckets:HDActivityCacheHeartRateStatisticsBuilderNumberOfHeartRateBuckets workoutUUID:v26 workoutActivityType:*(v4 + 16)];
        [*(a1 + 96) addObject:v24];
        [v25 addObject:v24];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = *(a1 + 104);
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 dateInterval];
              v17 = [v16 intersectsDateInterval:v9];

              if (v17)
              {
                sub_15870(a1, v15);
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v12);
        }

        v18 = [NSDateInterval alloc];
        v19 = [v9 endDate];
        v20 = [v18 initWithStartDate:v19 duration:v5];

        v21 = [HKHeartRateSummaryWorkoutRecoveryStatistics alloc];
        v22 = [v21 initWithDateInterval:v20 numberOfBuckets:HDActivityCacheHeartRateStatisticsBuilderNumberOfHeartRateBuckets workoutUUID:v26 workoutActivityType:*(v4 + 16)];
        [*(a1 + 104) addObject:v22];
        [v25 addObject:v22];

        v4 += 64;
      }

      while (v4 != v23);
    }

    sub_149F8(a1, (a1 + 24), v25);
  }
}

void sub_15FBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_217C0(v13);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

id sub_16100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 96) hk_map:&stru_34D00];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_16234;
    v8 = v7[3] = &unk_34D28;
    v4 = v8;
    v5 = [v3 hk_filter:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_16204(id a1, HKHeartRateSummaryWorkoutStatistics *a2)
{
  v2 = [(HKHeartRateSummaryWorkoutStatistics *)a2 dateInterval];

  return v2;
}

uint64_t sub_16234(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [v3 date];
        LOBYTE(v8) = [v8 containsDate:v9];

        if (v8)
        {
          v10 = 0;
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

void sub_16558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21868(v12);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_16930(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1698C(exception, a1);
}

std::logic_error *sub_1698C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_169C0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      v2 = result[1] - *result;
      sub_A820(result, a2);
    }

    sub_A594();
  }

  return result;
}

char *sub_16A60(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 6);
    if (v12 >> 58)
    {
      sub_A594();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 6;
    if (v15)
    {
      sub_A820(a1, v15);
    }

    v39 = v16 << 6;
    v40 = a5 << 6;
    v41 = (v16 << 6);
    do
    {
      v42 = *v7;
      v43 = v7[1];
      v44 = v7[3];
      v41[2] = v7[2];
      v41[3] = v44;
      *v41 = v42;
      v41[1] = v43;
      v41 += 4;
      v7 += 4;
      v40 -= 64;
    }

    while (v40);
    memcpy((v39 + (a5 << 6)), v5, a1[1] - v5);
    v45 = *a1;
    v46 = v39 + (a5 << 6) + a1[1] - v5;
    a1[1] = v5;
    v47 = v5 - v45;
    v48 = (v39 - (v5 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return (v16 << 6);
  }

  v17 = (v10 - __dst) >> 6;
  if (v17 >= a5)
  {
    v24 = &__dst[64 * a5];
    v25 = &v10[-64 * a5];
    v26 = a1[1];
    while (v25 < v10)
    {
      v27 = *v25;
      v28 = *(v25 + 1);
      v29 = *(v25 + 3);
      v26[2] = *(v25 + 2);
      v26[3] = v29;
      *v26 = v27;
      v26[1] = v28;
      v26 += 4;
      v25 += 64;
    }

    a1[1] = v26;
    if (v10 != v24)
    {
      memmove(&__dst[64 * a5], __dst, v10 - v24);
    }

    v36 = a5 << 6;
    v37 = v5;
    v38 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v22 = *(v18 + 1);
    v23 = *(v18 + 3);
    *(v20 + 2) = *(v18 + 2);
    *(v20 + 3) = v23;
    *v20 = v21;
    *(v20 + 1) = v22;
    v20 += 64;
    v18 += 64;
    v19 += 64;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v30 = &__dst[64 * a5];
    v31 = &v19[-64 * a5];
    v32 = v19;
    while (v31 < v10)
    {
      v33 = *v31;
      v34 = *(v31 + 1);
      v35 = *(v31 + 3);
      *(v32 + 2) = *(v31 + 2);
      *(v32 + 3) = v35;
      *v32 = v33;
      *(v32 + 1) = v34;
      v32 += 64;
      v31 += 64;
    }

    a1[1] = v32;
    if (v20 != v30)
    {
      memmove(&__dst[64 * a5], __dst, v19 - v30);
    }

    if (v10 != v5)
    {
      v37 = v5;
      v38 = v7;
      v36 = v10 - v5;
LABEL_34:
      memmove(v37, v38, v36);
    }
  }

  return v5;
}

void sub_16C90(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 - a1) >> 6;
  v9 = (a3 - a2) >> 6;
  if (v9 >= v8)
  {
    v10 = (a2 - a1) >> 6;
  }

  else
  {
    v10 = (a3 - a2) >> 6;
  }

  if (v10 < 1)
  {
    v14 = 0;
  }

  else
  {
    while (1)
    {
      v11 = operator new(v10 << 6, &std::nothrow);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_10;
      }
    }

    v14 = v11;
  }

LABEL_10:
  sub_16DAC(a1, a2, a3, a4, v8, v9, v14, v10);
  if (v14)
  {

    operator delete(v14);
  }
}

void sub_16D94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_16DAC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a6;
  if (a6)
  {
    do
    {
      if (v44 <= a8 || a5 <= a8)
      {
        sub_17084(a1, a2, a3, a4, a5, v44, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (!HDActivityCacheStatisticsBuilderWorkoutSample::operator<(a2, &a1[v14]))
      {
        v14 += 8;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v38 = a4;
      v39 = a7;
      v18 = -v15;
      v19 = v44;
      v42 = a8;
      if (-v15 >= v44)
      {
        if (v15 == -1)
        {
          v34 = &a1[v14];
          v48 = *&a1[v14 + 4];
          v49 = *&a1[v14 + 6];
          v46 = *&a1[v14];
          v47 = *&a1[v14 + 2];
          v35 = *a2;
          v36 = *(a2 + 16);
          v37 = *(a2 + 48);
          *(v34 + 2) = *(a2 + 32);
          *(v34 + 3) = v37;
          *v34 = v35;
          *(v34 + 1) = v36;
          *a2 = v46;
          *(a2 + 16) = v47;
          *(a2 + 32) = v48;
          result = *&v49;
          *(a2 + 48) = v49;
          return result;
        }

        v22 = v18 / 2;
        v21 = &a1[8 * (v18 / 2) + v14];
        v20 = a2;
        if (a2 != a3)
        {
          v41 = v18 / 2;
          v23 = (a3 - a2) >> 6;
          v20 = a2;
          do
          {
            v24 = &v20[8 * (v23 >> 1)];
            v25 = HDActivityCacheStatisticsBuilderWorkoutSample::operator<(v24, v21);
            if (v25)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v25)
            {
              v20 = v24 + 8;
            }
          }

          while (v23);
          v19 = v44;
          v22 = v41;
        }

        v40 = (v20 - a2) >> 6;
      }

      else
      {
        v40 = v44 / 2;
        v20 = (a2 + ((v44 / 2) << 6));
        v21 = sub_171F0(&a1[v14], a2, v20);
        v22 = (v21 - a1 - v14 * 8) >> 6;
      }

      a5 = -(v22 + v15);
      *v45 = v19 - v40;
      v26 = a2;
      v27 = v22;
      v28 = sub_17268(v21, v26, v20);
      v29 = v27;
      v30 = v28;
      if (v29 + v40 >= v19 - (v29 + v40) - v15)
      {
        a7 = v39;
        v33 = v29;
        sub_16DAC(v28, v20, a3, v38, a5, *v45, v39, v42);
        a1 = (a1 + v14 * 8);
        v20 = v21;
        a4 = v38;
        v32 = v40;
        a5 = v33;
        a3 = v30;
      }

      else
      {
        v31 = v21;
        a4 = v38;
        a7 = v39;
        sub_16DAC(&a1[v14], v31, v28, v38, v29, v40, v39, v42);
        a1 = v30;
        v32 = *v45;
      }

      v44 = v32;
      a2 = v20;
      a8 = v42;
    }

    while (v32);
  }

  return result;
}

void sub_17084(double *__dst, double *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v9 = a2;
  v10 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v16 = -__src;
      v17 = __src;
      v18 = __dst;
      do
      {
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[3];
        *(v17 + 2) = v18[2];
        *(v17 + 3) = v21;
        *v17 = v19;
        *(v17 + 1) = v20;
        v17 += 8;
        v18 += 4;
        v16 -= 64;
      }

      while (v18 != a2);
      while (v9 != a3)
      {
        if (HDActivityCacheStatisticsBuilderWorkoutSample::operator<(v9, v7))
        {
          v22 = *v9;
          v23 = *(v9 + 1);
          v24 = *(v9 + 3);
          *(v10 + 2) = *(v9 + 2);
          *(v10 + 3) = v24;
          *v10 = v22;
          *(v10 + 1) = v23;
          v9 += 8;
        }

        else
        {
          v25 = *v7;
          v26 = *(v7 + 1);
          v27 = *(v7 + 3);
          *(v10 + 2) = *(v7 + 2);
          *(v10 + 3) = v27;
          *v10 = v25;
          *(v10 + 1) = v26;
          v7 += 8;
        }

        v10 += 8;
        if (v17 == v7)
        {
          return;
        }
      }

      memmove(v10, v7, -(v7 + v16));
    }
  }

  else
  {
    v11 = __src;
    if (a2 != a3)
    {
      v11 = __src;
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[3];
        v11[2] = v12[2];
        v11[3] = v15;
        *v11 = v13;
        v11[1] = v14;
        v11 += 4;
        v12 += 4;
      }

      while (v12 != a3);
    }

    sub_17390(v11, v11, __src, __src, a2, a2, v10, v10, a3, a3);
  }
}

uint64_t sub_171F0(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = (a2 - a1) >> 6;
    do
    {
      if (HDActivityCacheStatisticsBuilderWorkoutSample::operator<(a3, (v3 + (v5 >> 1 << 6))))
      {
        v5 >>= 1;
      }

      else
      {
        v3 += (v5 >> 1 << 6) + 64;
        v5 += ~(v5 >> 1);
      }
    }

    while (v5);
  }

  return v3;
}

char *sub_17268(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 64 == a2)
    {
      v9 = *__src;
      v11 = *(__src + 1);
      v13 = *(__src + 2);
      v15 = *(__src + 3);
      memmove(__src, __src + 64, v6);
      v4 = &__src[v6];
      *v4 = v9;
      *(v4 + 1) = v11;
      *(v4 + 2) = v13;
      *(v4 + 3) = v15;
    }

    else if (a2 + 64 == a3)
    {
      v4 = __src + 64;
      v10 = *(a3 - 4);
      v12 = *(a3 - 3);
      v14 = *(a3 - 2);
      v16 = *(a3 - 1);
      v7 = a3 - 64 - __src;
      if (a3 - 64 != __src)
      {
        memmove(__src + 64, __src, v7);
      }

      *__src = v10;
      *(__src + 1) = v12;
      *(__src + 2) = v14;
      *(__src + 3) = v16;
    }

    else
    {
      return sub_17460(__src, a2, a3);
    }
  }

  return v4;
}

void sub_17390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    while (a6 != a8)
    {
      v15 = HDActivityCacheStatisticsBuilderWorkoutSample::operator<((v13 - 64), (a6 - 64));
      if (v15)
      {
        v16 = (a6 - 64);
      }

      else
      {
        v16 = (v13 - 64);
      }

      v17 = v16[3];
      v19 = *v16;
      v18 = v16[1];
      *(a10 - 32) = v16[2];
      *(a10 - 16) = v17;
      *(a10 - 64) = v19;
      *(a10 - 48) = v18;
      a10 -= 64;
      if (v15)
      {
        a6 -= 64;
      }

      else
      {
        v13 -= 64;
      }

      if (v13 == a4)
      {
        return;
      }
    }

    if (a4 != v13)
    {
      v20 = -64;
      do
      {
        v21 = *(v13 - 64);
        v22 = *(v13 - 48);
        v23 = *(v13 - 16);
        v24 = (a10 + v20);
        v24[2] = *(v13 - 32);
        v24[3] = v23;
        *v24 = v21;
        v24[1] = v22;
        v20 -= 64;
        v13 -= 64;
      }

      while (v13 != a4);
    }
  }
}

char *sub_17460(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 6;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 6)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 64;
      v6 = a2 + 64;
      do
      {
        v8 = *(v5 - 2);
        v7 = *(v5 - 1);
        v10 = *(v5 - 4);
        v9 = *(v5 - 3);
        v11 = *(v6 - 1);
        v13 = *(v6 - 4);
        v12 = *(v6 - 3);
        *(v5 - 2) = *(v6 - 2);
        *(v5 - 1) = v11;
        *(v5 - 4) = v13;
        *(v5 - 3) = v12;
        *(v6 - 4) = v10;
        *(v6 - 3) = v9;
        *(v6 - 2) = v8;
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 64;
        v14 = v6 == a3;
        v6 += 64;
      }

      while (!v14);
    }
  }

  else
  {
    v15 = v4 >> 6;
    v16 = (a2 - a1) >> 6;
    do
    {
      v17 = v16;
      v16 = v15;
      v15 = v17 % v15;
    }

    while (v15);
    v18 = &a1[64 * v16];
    do
    {
      v19 = *(v18 - 4);
      v20 = *(v18 - 3);
      v21 = *(v18 - 2);
      v22 = *(v18 - 1);
      v18 -= 64;
      v35 = v19;
      v36 = v20;
      v37 = v22;
      v23 = &v18[a2 - a1];
      v24 = v18;
      do
      {
        v25 = v23;
        v26 = *v23;
        v27 = *(v23 + 1);
        v28 = *(v23 + 3);
        *(v24 + 2) = *(v23 + 2);
        *(v24 + 3) = v28;
        *v24 = v26;
        *(v24 + 1) = v27;
        v29 = a3 - v23;
        v23 += 64 * v3;
        v30 = __OFSUB__(v3, v29 >> 6);
        v32 = v3 - (v29 >> 6);
        v31 = (v32 < 0) ^ v30;
        v33 = &a1[64 * v32];
        if (!v31)
        {
          v23 = v33;
        }

        v24 = v25;
      }

      while (v23 != v18);
      *(v25 + 2) = v21;
      *(v25 + 3) = v37;
      *v25 = v35;
      *(v25 + 1) = v36;
    }

    while (v18 != a1);
    return &a1[v4];
  }

  return a2;
}

void HDActivityCacheStatisticsBuilderSample::HDActivityCacheStatisticsBuilderSample(HDActivityCacheStatisticsBuilderSample *this, double a2, double a3, double a4, int64_t a5)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = a5;
}

{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = a5;
}

void HDActivityCacheStatisticsBuilderWorkoutSample::HDActivityCacheStatisticsBuilderWorkoutSample(HDActivityCacheStatisticsBuilderWorkoutSample *this, double a2, double a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, NSUUID *a9)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 24) = a5;
  *(this + 25) = a6;
  *(this + 4) = a7;
  *(this + 5) = a8;
  [(NSUUID *)a9 getUUIDBytes:this + 48];
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 24) = a5;
  *(this + 25) = a6;
  *(this + 4) = a7;
  *(this + 5) = a8;
  [(NSUUID *)a9 getUUIDBytes:this + 48];
}

void HDActivityCacheStatisticsBuilderBreatheSample::HDActivityCacheStatisticsBuilderBreatheSample(HDActivityCacheStatisticsBuilderBreatheSample *this, double a2, double a3, NSUUID *a4)
{
  *this = a2;
  *(this + 1) = a3;
  [(NSUUID *)a4 getUUIDBytes:this + 16];
}

{
  *this = a2;
  *(this + 1) = a3;
  [(NSUUID *)a4 getUUIDBytes:this + 16];
}

BOOL HDActivityCacheStatisticsBuilderStandHourSample::operator<(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  return v2;
}

BOOL HDActivityCacheStatisticsBuilderStandHourSample::operator>(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 <= *a2;
  if (*a1 == *a2)
  {
    v2 = a1[1] <= a2[1];
  }

  return !v2;
}

BOOL HDActivityCacheStatisticsBuilderStandHourSample::operator<=(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 <= *a2;
  if (*a1 == *a2)
  {
    return a1[1] <= a2[1];
  }

  return v2;
}

BOOL HDActivityCacheStatisticsBuilderStandHourSample::operator>=(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v2 = a1[1] < a2[1];
  }

  return !v2;
}

void sub_17910(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_179D8(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [HKObjectType dataTypeWithCode:a2];
    WeakRetained = objc_loadWeakRetained((a1 + 232));
    v9 = [WeakRetained activityCacheStatisticsBuilder:a1 sourceOrderForObjectType:v7];
    context = v6;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = *v29;
      v13 = v7;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v28 + 1) + 8 * i) longLongValue];
          v17 = a3[1];
          v16 = a3[2];
          if (v17 >= v16)
          {
            v19 = *a3;
            v20 = v17 - *a3;
            v21 = v20 >> 3;
            v22 = (v20 >> 3) + 1;
            if (v22 >> 61)
            {
              sub_A594();
            }

            v23 = v16 - v19;
            if (v23 >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
            v25 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v22;
            }

            if (v25)
            {
              sub_A5AC(a3, v25);
            }

            *(8 * v21) = v15;
            v18 = 8 * v21 + 8;
            memcpy(0, v19, v20);
            v26 = *a3;
            *a3 = 0;
            a3[1] = v18;
            a3[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }

            v7 = v13;
          }

          else
          {
            *v17 = v15;
            v18 = (v17 + 8);
          }

          a3[1] = v18;
        }

        v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(context);
  }
}

void sub_17BFC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(exception_object);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21D28(v4);
    }

    __cxa_rethrow();
  }

  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_17CA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_55C4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_17DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_17E28(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = +[NSDate distantPast];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = +[NSDate distantFuture];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_AB24(&__p, *a3, a3[1], (a3[1] - *a3) >> 3);
  v12 = sub_19580(a1, a2, &__p, v8, v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_17F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1817C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_182B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_183D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HDActivityCacheStatisticsBuilderStandHoursStatisticsForSamples(uint64_t **a1)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    do
    {
      v6 = *v1;
      if (!*(v1 + 2))
      {
        sub_1DBF4(&v7, &v6);
      }

      v1 += 3;
    }

    while (v1 != v2);
    v3 = v8;
    v4 = v9;
  }

  sub_1CA40(&v7, v3);
  return v4;
}

void sub_18784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_187C4(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 152);
    if (*(a1 + 160) == *(a1 + 152))
    {
      __src = 0;
      v30 = 0;
      v31 = 0;
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          if (!*(v3 + 24) || *(v3 + 25) == 1)
          {
            if (v5 >= v31)
            {
              v9 = __src;
              v10 = v5 - __src;
              v11 = (v5 - __src) >> 6;
              v12 = v11 + 1;
              if ((v11 + 1) >> 58)
              {
                sub_A594();
              }

              v13 = v31 - __src;
              if ((v31 - __src) >> 5 > v12)
              {
                v12 = v13 >> 5;
              }

              if (v13 >= 0x7FFFFFFFFFFFFFC0)
              {
                v14 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v12;
              }

              if (v14)
              {
                sub_A820(&__src, v14);
              }

              v15 = (v5 - __src) >> 6;
              v16 = (v11 << 6);
              v17 = *v3;
              v18 = v3[1];
              v19 = v3[3];
              v16[2] = v3[2];
              v16[3] = v19;
              *v16 = v17;
              v16[1] = v18;
              v5 = ((v11 << 6) + 64);
              v20 = ((v11 << 6) - (v15 << 6));
              memcpy(&v16[-4 * v15], v9, v10);
              v21 = __src;
              __src = v20;
              v30 = v5;
              v31 = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              v6 = *v3;
              v7 = v3[1];
              v8 = v3[3];
              *(v5 + 2) = v3[2];
              *(v5 + 3) = v8;
              *v5 = v6;
              *(v5 + 1) = v7;
              v5 += 64;
            }

            v30 = v5;
          }

          v3 += 4;
        }

        while (v3 != v4);
      }

      v22 = objc_alloc_init(HDActivityCacheActiveSourceCalculator);
      v23 = +[_HKBehavior sharedBehavior];
      v24 = [v23 isStandalonePhoneFitnessMode];

      if (v24)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 232));
        v26 = [WeakRetained localDeviceSourceIdentifier];

        [(HDActivityCacheActiveSourceCalculator *)v22 setLocalDeviceSourceIdentifier:v26];
      }

      [(HDActivityCacheActiveSourceCalculator *)v22 setWorkouts:&__src];
      [(HDActivityCacheActiveSourceCalculator *)v22 setActivationLogEntries:a1 + 56];
      if (v22)
      {
        [(HDActivityCacheActiveSourceCalculator *)v22 createActiveSourceLog];
      }

      else
      {
        v27 = 0uLL;
        v28 = 0;
      }

      sub_A9DC(v2);
      *(a1 + 152) = v27;
      *(a1 + 168) = v28;
      v28 = 0;
      v27 = 0uLL;
      v32 = &v27;
      sub_CBB8(&v32);

      if (__src)
      {
        v30 = __src;
        operator delete(__src);
      }
    }
  }
}

void sub_18D60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_CBB8(&a14);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_22070(v16);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18DE0(uint64_t a1@<X0>, double **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1)
  {
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      do
      {
        v6 = *v3;
        v7 = *(v3 + 3);
        v9 = 0;
        v10 = 0;
        v8 = 0;
        HDActivityCacheActiveSource::HDActivityCacheActiveSource(v11, v7, &v8, v6);
        sub_190C8(a3, v11);
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }

        if (v8)
        {
          v9 = v8;
          operator delete(v8);
        }

        v3 += 4;
      }

      while (v3 != v4);
    }
  }
}

void sub_18E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_22118(v17);
    }

    __cxa_rethrow();
  }

  sub_CBB8(&a12);
  _Unwind_Resume(a1);
}

double *sub_18F18(double *result, uint64_t a2, double *a3, int a4)
{
  if (result)
  {
    v7 = result;
    v8 = result[25];
    v9 = *(a2 + 8);
    if (*a2 >= v8)
    {
      v10 = *a2;
    }

    else
    {
      v10 = result[25];
    }

    v11 = result[28];
    v12 = vcvtmd_s64_f64((v10 - v8) / v11);
    if (result[26] >= v9)
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = result[26];
    }

    v14 = vcvtmd_s64_f64((v13 - v8) / v11);
    if (v12 == v14)
    {
      return sub_1A6D8(a3, v12, *(a2 + 24), a4, *(a2 + 16));
    }

    else
    {
      v15 = v12 - v14;
      if (v12 <= v14)
      {
        v16 = 0;
        v17 = v14;
        v18 = (v12 + 1);
        v19 = *(a2 + 16) / (v9 - *a2);
        do
        {
          if (v16)
          {
            if (v15)
            {
              v20 = v7[28];
            }

            else
            {
              v20 = v13 - (v7[25] + v17 * v7[28]);
            }
          }

          else
          {
            v20 = v7[25] + v18 * v7[28] - v10;
          }

          result = sub_1A6D8(a3, v12++, *(a2 + 24), a4, v19 * v20);
          ++v15;
          --v16;
        }

        while (v15 != 1);
      }
    }
  }

  return result;
}

void sub_19054(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_221C0(v2);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_190C8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1ABC0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_19434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_22268(v25);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

double sub_19580(uint64_t a1, void *a2, uint64_t *a3, double a4, double a5)
{
  v5 = 0.0;
  if (a1)
  {
    sub_187C4(a1);
    v13 = *a2;
    v11 = a2 + 1;
    v12 = v13;
    if (v13 != v11)
    {
      v14 = *(a1 + 152);
      v15 = *(a1 + 160);
      v16 = *(a1 + 200);
      v17 = *(a1 + 224);
      v18 = vcvtmd_s64_f64((a4 - v16) / v17);
      v19 = vcvtmd_s64_f64((a5 - v16) / v17);
      if (v14 == v15)
      {
        v20 = *(a1 + 152);
      }

      else
      {
        v20 = v14 + 5;
      }

      while (1)
      {
        v21 = v12[4];
        if (v21 >= v18)
        {
          break;
        }

        v22 = v12[1];
        if (v22)
        {
          do
          {
            v12 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v12;
            v12 = v12[2];
          }

          while (*v12 != v23);
        }

LABEL_84:
        if (v12 == v11)
        {
          return v5;
        }
      }

      if (v21 > v19)
      {
        return v5;
      }

      v24 = *(a1 + 200);
      v25 = *(a1 + 224);
      if (v18 == v19)
      {
        v26 = (a5 - a4) / v25;
      }

      else
      {
        v27 = v24 + v21 * v25;
        if (v21 == v18)
        {
          v26 = 1.0 - (a4 - v27) / v25;
        }

        else
        {
          v26 = 1.0;
          if (v21 == v19)
          {
            v26 = (a5 - v27) / v25;
          }
        }
      }

      if (v20 != v15)
      {
        v28 = v24 + (v21 + 1) * v25;
        do
        {
          if (v28 < *v20)
          {
            break;
          }

          v14 = v20;
          v20 += 5;
        }

        while (v15 != v20);
      }

      __p = 0;
      v55 = 0;
      v56 = 0;
      sub_AB24(&__p, *a3, a3[1], (a3[1] - *a3) >> 3);
      v30 = *(v14 + 2);
      v29 = *(v14 + 3);
      if (v29 == v30)
      {
LABEL_32:
        v34 = (v12 + 6);
        v35 = v12[6];
        if (!v35)
        {
          goto LABEL_39;
        }

        v36 = *(v14 + 1);
        v32 = (v12 + 6);
        v37 = v12[6];
        do
        {
          if (*(v37 + 4) >= v36)
          {
            v32 = v37;
          }

          v37 = *&v37[*(v37 + 4) < v36];
        }

        while (v37);
        if (v32 == v34 || v36 < *(v32 + 4))
        {
LABEL_39:
          v38 = __p;
          if (__p == v55)
          {
LABEL_56:
            v43 = v12[5];
            v44 = 0.0;
            if (v43 != v34)
            {
              do
              {
                if (v44 < v43[5])
                {
                  v44 = v43[5];
                }

                v45 = *(v43 + 1);
                if (v45)
                {
                  do
                  {
                    v46 = v45;
                    v45 = *v45;
                  }

                  while (v45);
                }

                else
                {
                  do
                  {
                    v46 = *(v43 + 2);
                    v47 = *v46 == v43;
                    v43 = v46;
                  }

                  while (!v47);
                }

                v43 = v46;
              }

              while (v46 != v34);
            }

            v48 = v12[8];
            if (v48 != (v12 + 9))
            {
              do
              {
                if (v44 < v48[5])
                {
                  v44 = v48[5];
                }

                v49 = *(v48 + 1);
                if (v49)
                {
                  do
                  {
                    v50 = v49;
                    v49 = *v49;
                  }

                  while (v49);
                }

                else
                {
                  do
                  {
                    v50 = *(v48 + 2);
                    v47 = *v50 == v48;
                    v48 = v50;
                  }

                  while (!v47);
                }

                v48 = v50;
              }

              while (v50 != (v12 + 9));
            }

            goto LABEL_76;
          }

          v39 = __p;
          while (1)
          {
            v40 = *v39;
            if (v35)
            {
              v32 = (v12 + 6);
              v41 = v12[6];
              do
              {
                if (*(v41 + 4) >= v40)
                {
                  v32 = v41;
                }

                v41 = *&v41[*(v41 + 4) < v40];
              }

              while (v41);
              if (v32 != v34 && v40 >= *(v32 + 4))
              {
                break;
              }
            }

            if (v12[9])
            {
              v32 = (v12 + 9);
              v42 = v12[9];
              do
              {
                if (*(v42 + 4) >= v40)
                {
                  v32 = v42;
                }

                v42 = *&v42[*(v42 + 4) < v40];
              }

              while (v42);
              if (v32 != (v12 + 9) && v40 >= *(v32 + 4))
              {
                break;
              }
            }

            if (++v39 == v55)
            {
              goto LABEL_56;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          --v29;
          if (v12[9])
          {
            v31 = *v29;
            v32 = (v12 + 9);
            v33 = v12[9];
            do
            {
              if (*(v33 + 4) >= v31)
              {
                v32 = v33;
              }

              v33 = *&v33[*(v33 + 4) < v31];
            }

            while (v33);
            if (v32 != (v12 + 9) && v31 >= *(v32 + 4))
            {
              break;
            }
          }

          if (v29 == v30)
          {
            goto LABEL_32;
          }
        }
      }

      v44 = v32[5];
      v38 = __p;
LABEL_76:
      if (v38)
      {
        v55 = v38;
        operator delete(v38);
      }

      v51 = v12[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v12[2];
          v47 = *v52 == v12;
          v12 = v52;
        }

        while (!v47);
      }

      v5 = v5 + v44 * v26;
      v12 = v52;
      goto LABEL_84;
    }
  }

  return v5;
}

void sub_1995C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_22310(v2);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id sub_199C0(double *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v41 = v7;
    v42 = v8;
    v44 = objc_alloc_init(NSMutableArray);
    v50[0] = [v7 code];
    v43 = [v7 canonicalUnit];
    sub_179D8(a1, v50[0], &v48);
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1[25]];
    v11 = [v9 dateByAddingComponents:v8 toDate:v10 options:0];
    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1[26]];
    v50[2] = v50;
    v13 = sub_1CB64((a1 + 22), v50);
    v14 = v13;
    v40 = v13[7];
    if (v40)
    {
      v15 = v13 + 6;
      v16 = v13[6];
      v17 = a1[25];
      v18 = a1[28];
      if (v16)
      {
        do
        {
          v19 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v19 = v15[2];
          v20 = *v19 == v15;
          v15 = v19;
        }

        while (v20);
      }

      v21 = v17 + *(v13[5] + 32) * v18;
      v22 = v17 + (v19[4] + 1) * v18;
      while (1)
      {
        [v10 timeIntervalSinceReferenceDate];
        v24 = v23;
        [v12 timeIntervalSinceReferenceDate];
        if (v24 >= v25)
        {
          break;
        }

        [v10 timeIntervalSinceReferenceDate];
        v27 = v26;
        [v11 timeIntervalSinceReferenceDate];
        if (v27 >= v22)
        {
          break;
        }

        v29 = v28;
        if (v28 > v21)
        {
          __p = 0;
          v46 = 0;
          v47 = 0;
          sub_AB24(&__p, v48, v49, (v49 - v48) >> 3);
          v30 = sub_19580(a1, v14 + 5, &__p, v27, v29);
          if (__p)
          {
            v46 = __p;
            operator delete(__p);
          }

          v31 = [_HKActivityStatisticsQuantityInfo alloc];
          v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:v27];
          v33 = [NSDate dateWithTimeIntervalSinceReferenceDate:v29];
          v34 = [v31 initWithStartDate:v32 endDate:v33];

          v8 = v42;
          v35 = [HKQuantity quantityWithUnit:v43 doubleValue:v30];
          [v34 setQuantityValue:v35];

          [v44 addObject:v34];
        }

        v36 = v11;

        v37 = [v9 dateByAddingComponents:v8 toDate:v36 options:0];

        v11 = v37;
        v10 = v36;
      }
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    v7 = v41;
    if (v40)
    {
      v38 = [NSArray arrayWithArray:v44];
    }

    else
    {
      v38 = &__NSArray0__struct;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void sub_1A354(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_A594();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_12B08(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

double *sub_1A6D8(double *result, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v8 = a3;
  v9 = a2;
  if (a5 >= 0.0)
  {
    v10 = &v9;
    v7 = sub_1C764(result, &v9);
    v10 = &v8;
    if (a4)
    {
      result = sub_1CA94((v7 + 8), &v8);
    }

    else
    {
      result = sub_1CA94((v7 + 5), &v8);
    }

    result[5] = result[5] + a5;
  }

  return result;
}

char *sub_1A950(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        v21 = &__dst[24 * a5];
        v22 = &v8[-24 * a5];
        v23 = a1[1];
        while (v22 < v8)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v8 != v21)
        {
          memmove(&__dst[24 * a5], __dst, v8 - v21);
        }

        v29 = 8 * v20;
        v30 = v5;
        v31 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          *(v18 + 16) = *(v16 + 2);
          *v18 = v19;
          v18 += 24;
          v16 += 24;
          v17 += 24;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v17 - 24 * a5;
        v27 = v17;
        while (v26 < v8)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v18 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v17 - v25);
        }

        v30 = v5;
        v31 = v6;
        v29 = v15;
      }

      memmove(v30, v31, v29);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_A594();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_12B08(a1, v14);
    }

    v32 = 8 * (v12 >> 3);
    v33 = (v32 + 24 * a5);
    v34 = 24 * a5;
    v35 = v32;
    do
    {
      v36 = *v6;
      *(v35 + 16) = *(v6 + 2);
      *v35 = v36;
      v35 += 24;
      v6 += 24;
      v34 -= 24;
    }

    while (v34);
    memcpy(v33, v5, a1[1] - v5);
    v37 = *a1;
    v38 = &v33[a1[1] - v5];
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v32 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  return v5;
}

uint64_t sub_1ABC0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_A594();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_ACE8(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *&v16 = 40 * v2 + 40;
  v8 = a1[1];
  v9 = 40 * v2 + *a1 - v8;
  sub_C87C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_C940(&v14);
  return v13;
}

void sub_1ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_C940(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AD08(__int128 *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        result.n128_u64[0] = *(a2 - 1);
        if (result.n128_f64[0] < *(v12 + 2))
        {
          v130 = *(v12 + 2);
          v105 = *v12;
          v72 = *(a2 - 24);
          *(v12 + 2) = *(a2 - 1);
          *v12 = v72;
          result = v105;
          *(a2 - 24) = v105;
          *(a2 - 1) = v130;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v73 = *(v12 + 5);
      v74 = *(v12 + 8);
      if (v73 >= *(v12 + 2))
      {
        if (v74 < v73)
        {
          v78 = *(v12 + 5);
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          *(v12 + 5) = *(v12 + 8);
          v12[3] = result;
          *(v12 + 8) = v78;
          if (*(v12 + 5) < *(v12 + 2))
          {
            v132 = *(v12 + 2);
            v107 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 2) = *(v12 + 5);
            *(v12 + 24) = v107;
            *(v12 + 5) = v132;
          }
        }
      }

      else
      {
        if (v74 < v73)
        {
          v131 = *(v12 + 2);
          v106 = *v12;
          *v12 = v12[3];
          *(v12 + 2) = *(v12 + 8);
          v12[3] = v106;
          v75 = v131;
          goto LABEL_106;
        }

        v134 = *(v12 + 2);
        v110 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 2) = *(v12 + 5);
        *(v12 + 24) = v110;
        *(v12 + 5) = v134;
        if (v74 < *(v12 + 5))
        {
          v75 = *(v12 + 5);
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          *(v12 + 5) = *(v12 + 8);
          v12[3] = result;
LABEL_106:
          *(v12 + 8) = v75;
        }
      }

      result.n128_u64[0] = *(a2 - 1);
      if (result.n128_f64[0] >= *(v12 + 8))
      {
        return result;
      }

      v83 = *(v12 + 8);
      result = v12[3];
      v84 = *(a2 - 1);
      v12[3] = *v9;
      *(v12 + 8) = v84;
      *v9 = result;
      *(a2 - 1) = v83;
      result.n128_u64[0] = *(v12 + 8);
      if (result.n128_f64[0] >= *(v12 + 5))
      {
        return result;
      }

      v85 = *(v12 + 5);
      result = *(v12 + 24);
      *(v12 + 24) = v12[3];
      *(v12 + 5) = *(v12 + 8);
      v12[3] = result;
      *(v12 + 8) = v85;
LABEL_110:
      result.n128_u64[0] = *(v12 + 5);
      if (result.n128_f64[0] < *(v12 + 2))
      {
        v135 = *(v12 + 2);
        v111 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 2) = *(v12 + 5);
        result = v111;
        *(v12 + 24) = v111;
        *(v12 + 5) = v135;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_1B918(v12, (v12 + 24), v12 + 3, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        sub_1BB60(v12, a2);
      }

      else if (v12 != a2)
      {
        while (a1 + 24 != a2)
        {
          result.n128_u64[0] = *(a1 + 5);
          v79 = *(a1 + 2);
          v81 = a1 + 24;
          a1 = (a1 + 24);
          if (result.n128_f64[0] < v79)
          {
            v108 = *v81;
            do
            {
              *v81 = *(v81 - 24);
              *(v81 + 2) = *(v81 - 1);
              v80 = *(v81 - 4);
              v81 -= 24;
            }

            while (result.n128_f64[0] < v80);
            *v81 = v108;
            *(v81 + 2) = result.n128_u64[0];
          }
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_1C364(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = (v12 + 24 * (v16 >> 1));
    v19 = *(a2 - 1);
    if (v15 >= 0xC01)
    {
      v20 = v18[1].n128_f64[0];
      if (v20 >= *(v12 + 2))
      {
        if (v19 < v20)
        {
          v114 = v18[1].n128_u64[0];
          v89 = *v18;
          v24 = *v9;
          v18[1].n128_u64[0] = *(a2 - 1);
          *v18 = v24;
          *v9 = v89;
          *(a2 - 1) = v114;
          if (v18[1].n128_f64[0] < *(v12 + 2))
          {
            v115 = *(v12 + 2);
            v90 = *v12;
            v25 = *v18;
            *(v12 + 2) = v18[1].n128_u64[0];
            *v12 = v25;
            v18[1].n128_u64[0] = v115;
            *v18 = v90;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v112 = *(v12 + 2);
          v87 = *v12;
          v21 = *v9;
          *(v12 + 2) = *(a2 - 1);
          *v12 = v21;
          goto LABEL_27;
        }

        v118 = *(v12 + 2);
        v93 = *v12;
        v28 = *v18;
        *(v12 + 2) = v18[1].n128_u64[0];
        *v12 = v28;
        v18[1].n128_u64[0] = v118;
        *v18 = v93;
        if (*(a2 - 1) < v18[1].n128_f64[0])
        {
          v112 = v18[1].n128_u64[0];
          v87 = *v18;
          v29 = *v9;
          v18[1].n128_u64[0] = *(a2 - 1);
          *v18 = v29;
LABEL_27:
          *v9 = v87;
          *(a2 - 1) = v112;
        }
      }

      v30 = v12 + 3 * v17;
      v31 = (v30 - 3);
      v32 = *(v30 - 1);
      v33 = *(a2 - 4);
      if (v32 >= *(v12 + 5))
      {
        if (v33 < v32)
        {
          v119 = *(v30 - 1);
          v94 = *v31;
          v37 = *v10;
          *(v30 - 1) = *(a2 - 4);
          *v31 = v37;
          *v10 = v94;
          *(a2 - 4) = v119;
          if (*(v30 - 1) < *(v12 + 5))
          {
            v38 = *(v12 + 24);
            v39 = *(v12 + 5);
            v40 = *(v31 + 2);
            *(v12 + 24) = *v31;
            *(v12 + 5) = v40;
            *(v31 + 2) = v39;
            *v31 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *(v12 + 5);
          v35 = *(v12 + 24);
          v36 = *(a2 - 4);
          *(v12 + 24) = *v10;
          *(v12 + 5) = v36;
          *v10 = v35;
          goto LABEL_39;
        }

        v43 = *(v12 + 24);
        v44 = *(v12 + 5);
        v45 = *(v31 + 2);
        *(v12 + 24) = *v31;
        *(v12 + 5) = v45;
        *(v31 + 2) = v44;
        *v31 = v43;
        if (*(a2 - 4) < *(v31 + 2))
        {
          v121 = *(v31 + 2);
          v96 = *v31;
          v46 = *v10;
          *(v31 + 2) = *(a2 - 4);
          *v31 = v46;
          *v10 = v96;
          v34 = v121;
LABEL_39:
          *(a2 - 4) = v34;
        }
      }

      v47 = v12 + 24 * v17;
      v48 = *(v47 + 5);
      v49 = *(a2 - 7);
      if (v48 >= *(v12 + 8))
      {
        if (v49 < v48)
        {
          v122 = *(v47 + 5);
          v97 = *(v47 + 24);
          v53 = *v11;
          *(v47 + 5) = *(a2 - 7);
          *(v47 + 24) = v53;
          *v11 = v97;
          *(a2 - 7) = v122;
          if (*(v47 + 5) < *(v12 + 8))
          {
            v54 = v12[3];
            v55 = *(v12 + 8);
            v56 = *(v47 + 5);
            v12[3] = *(v47 + 24);
            *(v12 + 8) = v56;
            *(v47 + 5) = v55;
            *(v47 + 24) = v54;
          }
        }
      }

      else
      {
        if (v49 < v48)
        {
          v50 = *(v12 + 8);
          v51 = v12[3];
          v52 = *(a2 - 7);
          v12[3] = *v11;
          *(v12 + 8) = v52;
          *v11 = v51;
          goto LABEL_48;
        }

        v57 = v12[3];
        v58 = *(v12 + 8);
        v59 = *(v47 + 5);
        v12[3] = *(v47 + 24);
        *(v12 + 8) = v59;
        *(v47 + 5) = v58;
        *(v47 + 24) = v57;
        if (*(a2 - 7) < *(v47 + 5))
        {
          v123 = *(v47 + 5);
          v98 = *(v47 + 24);
          v60 = *v11;
          *(v47 + 5) = *(a2 - 7);
          *(v47 + 24) = v60;
          *v11 = v98;
          v50 = v123;
LABEL_48:
          *(a2 - 7) = v50;
        }
      }

      v61 = v18[1].n128_f64[0];
      v62 = *(v47 + 5);
      if (v61 >= *(v31 + 2))
      {
        if (v62 < v61)
        {
          v125 = v18[1].n128_u64[0];
          v100 = *v18;
          *v18 = *(v47 + 24);
          v18[1].n128_u64[0] = *(v47 + 5);
          *(v47 + 5) = v125;
          *(v47 + 24) = v100;
          if (v18[1].n128_f64[0] < *(v31 + 2))
          {
            v126 = *(v31 + 2);
            v101 = *v31;
            *v31 = *v18;
            *(v31 + 2) = v18[1].n128_u64[0];
            v18[1].n128_u64[0] = v126;
            *v18 = v101;
          }
        }
      }

      else
      {
        if (v62 < v61)
        {
          v124 = *(v31 + 2);
          v99 = *v31;
          *v31 = *(v47 + 24);
          *(v31 + 2) = *(v47 + 5);
          goto LABEL_57;
        }

        v127 = *(v31 + 2);
        v102 = *v31;
        *v31 = *v18;
        *(v31 + 2) = v18[1].n128_u64[0];
        v18[1].n128_u64[0] = v127;
        *v18 = v102;
        if (*(v47 + 5) < v18[1].n128_f64[0])
        {
          v124 = v18[1].n128_u64[0];
          v99 = *v18;
          *v18 = *(v47 + 24);
          v18[1].n128_u64[0] = *(v47 + 5);
LABEL_57:
          *(v47 + 5) = v124;
          *(v47 + 24) = v99;
        }
      }

      v128 = *(v12 + 2);
      v103 = *v12;
      v63 = *v18;
      *(v12 + 2) = v18[1].n128_u64[0];
      *v12 = v63;
      v18[1].n128_u64[0] = v128;
      *v18 = v103;
      goto LABEL_59;
    }

    v22 = *(v12 + 2);
    if (v22 >= v18[1].n128_f64[0])
    {
      if (v19 < v22)
      {
        v116 = *(v12 + 2);
        v91 = *v12;
        v26 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v26;
        *v9 = v91;
        *(a2 - 1) = v116;
        if (*(v12 + 2) < v18[1].n128_f64[0])
        {
          v117 = v18[1].n128_u64[0];
          v92 = *v18;
          v27 = *v12;
          v18[1].n128_u64[0] = *(v12 + 2);
          *v18 = v27;
          *(v12 + 2) = v117;
          *v12 = v92;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v113 = v18[1].n128_u64[0];
        v88 = *v18;
        v23 = *v9;
        v18[1].n128_u64[0] = *(a2 - 1);
        *v18 = v23;
LABEL_36:
        *v9 = v88;
        *(a2 - 1) = v113;
        goto LABEL_59;
      }

      v120 = v18[1].n128_u64[0];
      v95 = *v18;
      v41 = *v12;
      v18[1].n128_u64[0] = *(v12 + 2);
      *v18 = v41;
      *(v12 + 2) = v120;
      *v12 = v95;
      if (*(a2 - 1) < *(v12 + 2))
      {
        v113 = *(v12 + 2);
        v88 = *v12;
        v42 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v42;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 1) >= *(v12 + 2))
    {
      v12 = sub_1BC38(v12, a2);
      goto LABEL_66;
    }

    v64 = sub_1BD80(v12, a2);
    if ((v66 & 1) == 0)
    {
      goto LABEL_64;
    }

    v67 = sub_1BEC4(v12, v64, v65);
    v12 = (v64 + 3);
    if (sub_1BEC4((v64 + 3), a2, v68))
    {
      a4 = -v14;
      a2 = v64;
      if (v67)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v67)
    {
LABEL_64:
      sub_1AD08(a1, v64, a3, -v14, a5 & 1);
      v12 = (v64 + 3);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u64[0] = *(v12 + 5);
  v69 = *(a2 - 1);
  if (result.n128_f64[0] >= *(v12 + 2))
  {
    if (v69 >= result.n128_f64[0])
    {
      return result;
    }

    v76 = *(v12 + 5);
    result = *(v12 + 24);
    v77 = *(a2 - 1);
    *(v12 + 24) = *v9;
    *(v12 + 5) = v77;
    *v9 = result;
    *(a2 - 1) = v76;
    goto LABEL_110;
  }

  if (v69 >= result.n128_f64[0])
  {
    v133 = *(v12 + 2);
    v109 = *v12;
    *v12 = *(v12 + 24);
    *(v12 + 2) = *(v12 + 5);
    *(v12 + 24) = v109;
    *(v12 + 5) = v133;
    result.n128_u64[0] = *(a2 - 1);
    if (result.n128_f64[0] >= *(v12 + 5))
    {
      return result;
    }

    v71 = *(v12 + 5);
    result = *(v12 + 24);
    v82 = *(a2 - 1);
    *(v12 + 24) = *v9;
    *(v12 + 5) = v82;
    *v9 = result;
  }

  else
  {
    v129 = *(v12 + 2);
    v104 = *v12;
    v70 = *v9;
    *(v12 + 2) = *(a2 - 1);
    *v12 = v70;
    result = v104;
    *v9 = v104;
    v71 = v129;
  }

  *(a2 - 1) = v71;
  return result;
}

__n128 sub_1B918(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f64[0];
  v7 = a3[1].n128_f64[0];
  if (v6 >= a1[1].n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2[1].n128_f64[0] < a1[1].n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3[1].n128_f64[0] < a2[1].n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f64[0] < a3[1].n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3[1].n128_f64[0] < a2[1].n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2[1].n128_f64[0] < a1[1].n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = a5[1].n128_u64[0];
  if (result.n128_f64[0] < a4[1].n128_f64[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    result.n128_u64[0] = a4[1].n128_u64[0];
    if (result.n128_f64[0] < a3[1].n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3[1].n128_u64[0];
      if (result.n128_f64[0] < a2[1].n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2[1].n128_u64[0];
        if (result.n128_f64[0] < a1[1].n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BB60(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 24);
    if ((result + 24) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 5);
        v6 = *(v4 + 2);
        v4 = v2;
        if (v5 < v6)
        {
          v10 = *v2;
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v5 >= *(v8 - 8))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v10;
          *(v9 + 16) = v5;
        }

        v2 = (v4 + 24);
        v3 += 24;
      }

      while ((v4 + 24) != a2);
    }
  }

  return result;
}

__int128 *sub_1BC38(__int128 *a1, double *a2)
{
  v18 = *a1;
  v2 = *(a1 + 2);
  if (v2 >= *(a2 - 1))
  {
    v6 = (a1 + 24);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 2);
      v6 = (v6 + 24);
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 24);
      v5 = *(v3 + 5);
      v3 = (v3 + 24);
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 3;
      v9 = *(a2 - 1);
      a2 -= 3;
    }

    while (v2 < v9);
  }

  while (v4 < v8)
  {
    v17 = *(v4 + 2);
    v16 = *v4;
    v10 = *v8;
    *(v4 + 2) = v8[2];
    *v4 = v10;
    *(v8 + 2) = v17;
    *v8 = v16;
    do
    {
      v11 = *(v4 + 5);
      v4 = (v4 + 24);
    }

    while (v2 >= v11);
    do
    {
      v12 = *(v8 - 1);
      v8 -= 3;
    }

    while (v2 < v12);
  }

  v13 = (v4 - 24);
  if ((v4 - 24) != a1)
  {
    v14 = *v13;
    *(a1 + 2) = *(v4 - 1);
    *a1 = v14;
  }

  *v13 = v18;
  *(v4 - 1) = v2;
  return v4;
}

double *sub_1BD80(double *a1, unint64_t a2)
{
  v2 = 0;
  v19 = *a1;
  v3 = a1[2];
  do
  {
    v4 = a1[v2 + 5];
    v2 += 3;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 3)
  {
    while (v5 < a2)
    {
      v6 = a2 - 24;
      v8 = *(a2 - 8);
      a2 -= 24;
      if (v8 < v3)
      {
        goto LABEL_9;
      }
    }

    v6 = a2;
  }

  else
  {
    do
    {
      v6 = a2 - 24;
      v7 = *(a2 - 8);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

LABEL_9:
  v9 = &a1[v2];
  if (v5 < v6)
  {
    v10 = v6;
    do
    {
      v11 = *v9;
      v12 = *(v9 + 2);
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v14 = v9[5];
        v9 += 3;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 8);
        v10 -= 24;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  v16 = (v9 - 3);
  if (v9 - 3 != a1)
  {
    v17 = *v16;
    a1[2] = *(v9 - 1);
    *a1 = v17;
  }

  *v16 = v19;
  *(v9 - 1) = v3;
  return v9 - 3;
}

BOOL sub_1BEC4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 40);
      v9 = *(a2 - 8);
      if (v8 < *(a1 + 16))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 8) >= *(a1 + 40))
          {
            return 1;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 8) = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 8) = v24;
LABEL_50:
      if (*(a1 + 40) < *(a1 + 16))
      {
        v55 = *(a1 + 16);
        v56 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v56;
        *(a1 + 40) = v55;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1B918(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 40);
    v20 = *(a1 + 16);
    v21 = *(a1 + 64);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 40) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v47 = *(a1 + 16);
      v48 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v48;
      *(a1 + 40) = v47;
      if (v21 >= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 8) >= *(a1 + 64))
    {
      return 1;
    }

    v49 = a2 - 24;
    v50 = *(a1 + 64);
    v51 = *(a1 + 48);
    v52 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v52;
    *v49 = v51;
    *(v49 + 16) = v50;
    if (*(a1 + 64) >= *(a1 + 40))
    {
      return 1;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v54;
    *(a1 + 64) = v53;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 8) < *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 8);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 8) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 40);
  v15 = *(a1 + 16);
  v16 = *(a1 + 64);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 40) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 16);
    if (v43 < *(v13 + 16))
    {
      v58 = *v40;
      v44 = v41;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 72) = *(a1 + v44 + 48);
        *(v45 + 88) = *(a1 + v44 + 64);
        if (v44 == -48)
        {
          break;
        }

        v44 -= 24;
        if (v43 >= *(v45 + 40))
        {
          v46 = a1 + v44 + 72;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v58;
      *(v46 + 16) = v43;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_1C364(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_1C574(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*(v13 + 2) < *(a1 + 16))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_1C574(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        v18 = 0;
        v30 = *a1;
        v31 = *(a1 + 16);
        v19 = a1;
        do
        {
          v20 = v19 + 24 * v18;
          v21 = v20 + 24;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v23 = *(v20 + 40);
            v24 = *(v20 + 64);
            v25 = v20 + 48;
            if (v23 >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v25;
            }
          }

          v26 = *v21;
          *(v19 + 16) = *(v21 + 16);
          *v19 = v26;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 = (v6 - 24);
        if (v21 == v6)
        {
          *(v21 + 16) = v31;
          *v21 = v30;
        }

        else
        {
          v27 = *v6;
          *(v21 + 16) = *(v6 + 2);
          *v21 = v27;
          *v6 = v30;
          *(v6 + 2) = v31;
          sub_1C6A8(a1, v21 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v21 + 24 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_1C574(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3 && *(v6 + 2) < *(v6 + 5))
      {
        v6 = (v6 + 24);
        v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      }

      v7 = a4[2];
      if (*(v6 + 2) >= v7)
      {
        v12 = *a4;
        do
        {
          v8 = a4;
          a4 = v6;
          v9 = *v6;
          v8[2] = *(v6 + 2);
          *v8 = v9;
          if (v4 < v5)
          {
            break;
          }

          v10 = 2 * v5;
          v5 = (2 * v5) | 1;
          v6 = (result + 24 * v5);
          v11 = v10 + 2;
          if (v11 < a3 && *(v6 + 2) < *(v6 + 5))
          {
            v6 = (v6 + 24);
            v5 = v11;
          }
        }

        while (*(v6 + 2) >= v7);
        *a4 = v12;
        a4[2] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1C6A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 24 * v4);
    v6 = *(a2 - 8);
    if (v5[2] < v6)
    {
      v7 = (a2 - 24);
      v10 = *(a2 - 24);
      do
      {
        v8 = v7;
        v7 = v5;
        v9 = *v5;
        v8[2] = v5[2];
        *v8 = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 24 * v4);
      }

      while (v5[2] < v6);
      *v7 = v10;
      v7[2] = v6;
    }
  }

  return result;
}

void *sub_1C764(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1C84C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1C8A4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1C8A4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_1CA40(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1CA40(a1, *a2);
    sub_1CA40(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_1CA94(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1CB64(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1CC40(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1CC40(a1, *a2);
    sub_1CC40(a1, a2[1]);
    sub_1CA40((a2 + 8), a2[9]);
    sub_1CA40((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_1CCAC(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_ACE8(result, a2);
    }

    sub_A594();
  }

  return result;
}

void sub_1CD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C940(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1CD88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 5 * a5;
        sub_1CF58(a1, a2, a1[1], a2 + 40 * a5);
        v17 = a3 + 8 * v18;
      }

      else
      {
        a1[1] = sub_1D160(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_1CF58(a1, v5, v10, v5 + 40 * a5);
        v17 = v16 + a3;
      }

      sub_AC20(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_A594();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_ACE8(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    sub_1D008(&v20, a3, a5);
    v5 = sub_1D0A4(a1, &v20, v5);
    sub_C940(&v20);
  }

  return v5;
}

void sub_1CF58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 16) = *(v5 + 16);
    *(v6 + 32) = *(v5 + 32);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    v5 += 40;
    v6 += 40;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 40);
    v8 = a2 + v4 - 40 - a4;
    v9 = a4 - v4;
    do
    {
      *v7 = *v8;
      sub_1D21C((v7 + 1), (v8 + 16));
      v7 = (v7 - 40);
      v8 -= 40;
      v9 += 40;
    }

    while (v9);
  }
}

uint64_t sub_1D008(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = v4 + 40 * a3;
    v7 = (v4 + 16);
    v8 = 40 * a3;
    do
    {
      *(v7 - 1) = *a2;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      result = sub_AB24(v7, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
      a2 += 40;
      v7 += 5;
      v8 -= 40;
    }

    while (v8);
  }

  else
  {
    v6 = *(result + 16);
  }

  *(v3 + 16) = v6;
  return result;
}

uint64_t sub_1D0A4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_C87C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_C87C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      sub_AB24(v4 + 16, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 3);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_ABA0(v8);
  return v4;
}

__n128 sub_1D21C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1D270(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v9 = (a3 - a2) >> 3;
  v10 = 0xCCCCCCCCCCCCCCCDLL * v9;
  if ((0xCCCCCCCCCCCCCCCDLL * v9) >= v8)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  }

  else
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * v9;
  }

  if (v11 < 1)
  {
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v12 = operator new(40 * v11, &std::nothrow);
      if (v12)
      {
        break;
      }

      v13 = v11 >> 1;
      v14 = v11 > 1;
      v11 >>= 1;
      if (!v14)
      {
        v15 = 0;
        v11 = v13;
        goto LABEL_10;
      }
    }

    v15 = v12;
  }

LABEL_10:
  sub_1D3A0(a1, a2, a3, a4, v8, v10, v15, v11);
  if (v15)
  {

    operator delete(v15);
  }
}

void sub_1D388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D3A0(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, uint64_t a8)
{
  v35 = a2;
  v36 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        sub_1D650(v36, v13, a3, a4, a5, v9, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = v36;
      v16 = -a5;
      while (!HDActivityCacheActiveSource::operator<(v13->n128_f64, &v15->n128_f64[v14 / 8]))
      {
        v36 = (v15 + v14 + 40);
        v14 += 40;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v32 = a8;
      v33 = a4;
      v31 = a3;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          *&result = sub_1D854(&v36, &v35).n128_u64[0];
          return result;
        }

        v21 = -v16 / 2;
        if (a3 == v13)
        {
          v26 = a3;
        }

        else
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v13) >> 3);
          do
          {
            v24 = &v13->n128_f64[5 * (v23 >> 1)];
            v25 = HDActivityCacheActiveSource::operator<(v24, &v15->n128_f64[5 * v21 + v14 / 8]);
            if (v25)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v25)
            {
              v13 = (v24 + 5);
            }
          }

          while (v23);
          v26 = v13;
          v13 = v35;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v13) >> 3);
        v20 = (v15 + 40 * v21 + v14);
        v22 = v13;
        v13 = v26;
      }

      else
      {
        v19 = v9 / 2;
        v20 = sub_1D7C4(v15 + v14, v13, &v13->n128_f64[5 * (v9 / 2)]);
        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v15 - v14) >> 3);
        v22 = v13;
        v13 = (v13 + 40 * (v9 / 2));
      }

      v27 = v13;
      if (v20 != v22)
      {
        v27 = v20;
        if (v13 != v22)
        {
          v27 = sub_1DAE4(v20, v22, v13);
        }
      }

      a5 = -v16 - v21;
      v28 = v9 - v19;
      if (v21 + v19 >= v9 - (v21 + v19) - v16)
      {
        sub_1D3A0(v27, v13, v31, v33, a5, v28, a7, v32);
        v13 = v20;
        a4 = v33;
        v28 = v19;
        a5 = v21;
        a8 = v32;
        a3 = v27;
      }

      else
      {
        v29 = v20;
        a4 = v33;
        v30 = v21;
        a8 = v32;
        sub_1D3A0(v36, v29, v27, v33, v30, v19, a7, v32);
        v36 = v27;
        a3 = v31;
      }

      v35 = v13;
      v9 = v28;
    }

    while (v28);
  }

  return result;
}

void sub_1D650(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  if (a5 <= a6)
  {
    if (a1 == a2)
    {
      v12 = 0;
      v13 = a7;
    }

    else
    {
      v12 = 0;
      v13 = a7;
      v15 = a1;
      do
      {
        *v13 = *v15;
        v13[1].n128_u64[1] = 0;
        v13[2].n128_u64[0] = 0;
        v13[1].n128_u64[0] = 0;
        v13[1] = v15[1];
        v13[2].n128_u64[0] = v15[2].n128_u64[0];
        v15[1].n128_u64[0] = 0;
        v15[1].n128_u64[1] = 0;
        v15[2].n128_u64[0] = 0;
        ++v12;
        v15 = (v15 + 40);
        v13 = (v13 + 40);
      }

      while (v15 != a2);
    }

    v16 = v12;
    sub_1D8D0(a7, v13, a2, a3, a1);
  }

  else
  {
    if (a2 == a3)
    {
      v10 = 0;
      v11 = a7;
    }

    else
    {
      v10 = 0;
      v11 = a7;
      v14 = a2;
      do
      {
        *v11 = *v14;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 16) = 0;
        *(v11 + 16) = v14[1];
        *(v11 + 32) = v14[2].n128_u64[0];
        v14[1].n128_u64[0] = 0;
        v14[1].n128_u64[1] = 0;
        v14[2].n128_u64[0] = 0;
        ++v10;
        v14 = (v14 + 40);
        v11 += 40;
      }

      while (v14 != a3);
    }

    v16 = v10;
    sub_1D9A8(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    sub_1DA84(&v16, a7);
  }
}

void sub_1D7A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DA84((v2 - 24), v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D7C4(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    do
    {
      if (HDActivityCacheActiveSource::operator<(a3, (v3 + 40 * (v5 >> 1))))
      {
        v5 >>= 1;
      }

      else
      {
        v3 += 40 * (v5 >> 1) + 40;
        v5 += ~(v5 >> 1);
      }
    }

    while (v5);
  }

  return v3;
}

__n128 sub_1D854(__n128 **a1, __n128 **a2)
{
  v3 = *a2;
  v4 = **a1;
  v2 = *a1;
  v6 = (*a1)[1];
  v5 = *a1 + 1;
  v10 = v6;
  v11 = v4;
  v7 = v2[2].n128_i64[0];
  v5->n128_u64[0] = 0;
  v2[1].n128_u64[1] = 0;
  v2[2].n128_u64[0] = 0;
  *v2 = *v3;
  sub_1D21C(v5, v3 + 1);
  *v3 = v11;
  v8 = v3[1].n128_u64[0];
  if (v8)
  {
    v3[1].n128_u64[1] = v8;
    operator delete(v8);
  }

  result = v10;
  v3[1] = v10;
  v3[2].n128_u64[0] = v7;
  return result;
}

void sub_1D8D0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    while (a3 != a4)
    {
      if (HDActivityCacheActiveSource::operator<(a3->n128_f64, v9->n128_f64))
      {
        *a5 = *a3;
        sub_1D21C(&a5[1], a3 + 1);
        a3 = (a3 + 40);
      }

      else
      {
        *a5 = *v9;
        sub_1D21C(&a5[1], v9 + 1);
        v9 = (v9 + 40);
      }

      a5 = (a5 + 40);
      if (v9 == a2)
      {
        return;
      }
    }

    v10 = 0;
    do
    {
      v11 = v9 + v10;
      *(a5 + v10) = *(v9 + v10);
      sub_1D21C(&a5[1] + v10, (v9 + v10 + 16));
      v10 += 40;
    }

    while (v11 + 40 != a2);
  }
}

void sub_1D9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = (a10 - 40);
    while (a6 != a8)
    {
      v15 = HDActivityCacheActiveSource::operator<((v13 - 40), (a6 - 40));
      if (v15)
      {
        v16 = (a6 - 40);
      }

      else
      {
        v16 = (v13 - 40);
      }

      if (v15)
      {
        v17 = a6;
      }

      else
      {
        v17 = v13;
      }

      if (v15)
      {
        a6 -= 40;
      }

      else
      {
        v13 -= 40;
      }

      *v14 = *v16;
      sub_1D21C((v14 + 1), (v17 - 24));
      v14 = (v14 - 40);
      if (v13 == a4)
      {
        return;
      }
    }

    for (; v13 != a4; v13 -= 40)
    {
      *v14 = *(v13 - 40);
      sub_1D21C((v14 + 1), (v13 - 24));
      v14 = (v14 - 40);
    }
  }
}

void sub_1DA84(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = (a2 + 24);
    do
    {
      v6 = *(v5 - 1);
      if (v6)
      {
        *v5 = v6;
        operator delete(v6);
        v2 = *a1;
      }

      ++v4;
      v5 += 5;
    }

    while (v4 < v2);
  }
}

__n128 *sub_1DAE4(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    sub_1D854(&v11, &v10);
    v5 = (v11 + 40);
    v6 = (v10 + 40);
    v10 = v6;
    v11 = (v11 + 40);
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        sub_1D854(&v11, &v10);
        v7 = (v11 + 40);
        v8 = (v10 + 40);
        v10 = v8;
        v11 = (v11 + 40);
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void sub_1DB94(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1DB94(a1, *a2);
    sub_1DB94(a1, a2[1]);
    sub_1CC40((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_1DBF4(uint64_t a1, int *a2)
{
  v2 = *sub_1DC88(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1DC88(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      v8 = v4;
      v9 = *(v4 + 7);
      if (v6 == v9)
      {
        v10 = *(v8 + 8);
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

__n128 sub_1DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = *a3;
  v12 = *(a3 + 16);
  *(v10 - 24) = &a10;
  return result;
}

void *sub_1DD24(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v3 = a1 + 176;

  return sub_1CB64(v3, va);
}

void sub_1E080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E09C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v2 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "HealthActivityCacheProfileExtension did receive HKStandalonePhoneFitnessModeDidUpdateNotification notification", v5, 2u);
    }

    v3 = [WeakRetained _activityCacheManager];
    v4 = WeakRetained[2];
    WeakRetained[2] = v3;
  }
}

void sub_1E69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v27 + 32));

  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1E724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1E780(WeakRetained);
}

void sub_1E780(void *a1)
{
  if (a1 && [a1 queryState] == &def_21990 + 2)
  {
    sub_1EA14(a1);
    v4 = 0;
    v2 = sub_1EB9C(a1, &v4);
    v3 = v4;
    if (v2)
    {
      sub_1EEB0(a1, v2);
    }

    else
    {
      sub_1EE00(a1, v3);
    }
  }
}

void sub_1E828(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_225B0(WeakRetained);
}

id sub_1E924(uint64_t a1)
{
  if (a1)
  {
    v1 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v2 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
    v3 = +[HKObjectType briskMinuteDataType];
    v4 = [NSSet setWithObjects:v1, v2, v3, 0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1EA14(void *a1)
{
  if (a1 && !a1[9])
  {
    v2 = [HDActivityCacheDataSource alloc];
    v10 = [a1 profile];
    v3 = sub_1E924(a1);
    v4 = a1[3];
    v5 = a1[4];
    v6 = [a1 queryQueue];
    v7 = [(HDActivityCacheDataSource *)v2 initWithProfile:v10 observedQuantityTypes:v3 updateOperation:v4 rebuildOperation:v5 queue:v6];
    v8 = a1[9];
    a1[9] = v7;

    v9 = a1[9];
    v11 = [[NSDateInterval alloc] initWithStartDate:a1[5] endDate:a1[6]];
    [v9 setTargetDayDateInterval:?];
  }
}

id sub_1EB9C(uint64_t a1, uint64_t a2)
{
  if (a1 && [*(a1 + 72) updateWithError:a2])
  {
    v3 = [*(a1 + 56) calendar];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = +[NSCalendar currentCalendar];
    }

    v7 = v5;

    v6 = objc_alloc_init(_HKActivityStatisticsQueryResult);
    v8 = [*(a1 + 72) targetDayStatisticsBuilder];
    v9 = [v8 createMoveStatisticsWithIntervalComponents:*(a1 + 56) calendar:v7];
    [v6 setActiveEnergyResults:v9];

    v10 = [*(a1 + 72) targetDayStatisticsBuilder];
    v11 = [v10 createMoveMinuteStatisticsWithIntervalComponents:*(a1 + 56) calendar:v7];
    [v6 setAppleMoveTimeResults:v11];

    v12 = [*(a1 + 72) targetDayStatisticsBuilder];
    v13 = [v12 createExerciseStatisticsWithIntervalComponents:*(a1 + 64) calendar:v7];
    [v6 setAppleExerciseTimeResults:v13];

    v14 = [*(a1 + 72) targetDayStatisticsBuilder];
    v15 = [v14 createStandStatisticsWithCalendar:v7];
    [v6 setAppleStandHourResults:v15];

    v16 = [*(a1 + 72) targetDayStatisticsBuilder];
    v17 = [v16 workoutSamplesWithSourceManager:*(a1 + 80)];
    [v6 setWorkoutResults:v17];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1EE00(void *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = [a1 clientProxy];
    v4 = [a1 queryUUID];
    [v3 client_deliverError:v5 forQuery:v4];
  }
}

void sub_1EE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1EEB0(void *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = [a1 clientProxy];
    v4 = [a1 queryUUID];
    [v3 client_deliverResult:v5 query:v4];
  }
}

void sub_1EF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1F040(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&def_21990, a2, OS_LOG_TYPE_DEBUG, "Calling query client with todayActivitySummary: %@", &v2, 0xCu);
}

id sub_1F0B8(uint64_t a1)
{
  if (a1)
  {
    v43 = +[HKUnit kilocalorieUnit];
    v1 = +[HKUnit minuteUnit];
    v41 = +[HKUnit countUnit];
    v48 = +[HKUnit meterUnit];
    v2 = objc_alloc_init(HKActivitySummary);
    v3 = +[NSDate date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 startOfDayForDate:v3];
    v6 = [v4 dateByAddingUnit:16 value:1 toDate:v5 options:0];
    v33 = v4;
    v34 = v3;
    v30 = _HKActivityCacheDateComponentsFromDate();
    [v2 _setActivitySummaryIndex:_HKCacheIndexFromDateComponents()];
    v32 = v5;
    [v2 _setStartDate:v5];
    v31 = v6;
    [v2 _setEndDate:v6];
    v7 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:_HKCategoryTypeIdentifierActivityMoveModeChange];
    if (![v7 integerValue])
    {

      v7 = &off_35498;
    }

    v8 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v47 = [HDActivityDemoDataStore demoValueForKey:@".goal" withDataTypeIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v46 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
    v45 = [HDActivityDemoDataStore demoValueForKey:@".goal" withDataTypeIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
    v44 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
    v9 = [HDActivityDemoDataStore demoValueForKey:@".goal" withDataTypeIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
    if (![v9 integerValue])
    {
      v10 = [NSNumber numberWithInteger:_HKDefaultDailyBriskMinutesGoal];

      v9 = v10;
    }

    v42 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKCategoryTypeIdentifierAppleStandHour];
    v11 = [HDActivityDemoDataStore demoValueForKey:@".goal" withDataTypeIdentifier:HKCategoryTypeIdentifierAppleStandHour];
    if (![v11 integerValue])
    {
      v12 = [NSNumber numberWithInteger:_HKDefaultDailyActiveHoursGoal];
      v13 = v11;
      v11 = v12;
    }

    v26 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierStepCount];
    v25 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierPushCount];
    v40 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];
    v39 = [HDActivityDemoDataStore demoValueForKey:@".current" withDataTypeIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
    v14 = [v7 integerValue];
    v29 = v7;
    v27 = v8;
    [v8 doubleValue];
    v38 = [HKQuantity quantityWithUnit:v43 doubleValue:?];
    [v47 doubleValue];
    v37 = [HKQuantity quantityWithUnit:v43 doubleValue:?];
    [v46 doubleValue];
    v36 = [HKQuantity quantityWithUnit:v1 doubleValue:?];
    [v45 doubleValue];
    v24 = [HKQuantity quantityWithUnit:v1 doubleValue:?];
    [v44 doubleValue];
    v23 = [HKQuantity quantityWithUnit:v1 doubleValue:?];
    [v9 doubleValue];
    v22 = [sub_4C38() quantityWithUnit:? doubleValue:?];
    [v42 doubleValue];
    [HKQuantity quantityWithUnit:v41 doubleValue:?];
    v15 = v28 = v9;
    [v11 doubleValue];
    v16 = [sub_4C38() quantityWithUnit:? doubleValue:?];
    [v26 doubleValue];
    v21 = [sub_4C38() quantityWithUnit:? doubleValue:?];
    [v25 doubleValue];
    v17 = [sub_4C38() quantityWithUnit:? doubleValue:?];
    [v40 doubleValue];
    v18 = [HKQuantity quantityWithUnit:v48 doubleValue:?];
    [v39 doubleValue];
    v19 = [HKQuantity quantityWithUnit:v41 doubleValue:?];
    [v2 setActivityMoveMode:v14];
    [v2 setActiveEnergyBurned:v38];
    [v2 setActiveEnergyBurnedGoal:v37];
    [v2 setAppleMoveTime:v36];
    [v2 setAppleMoveTimeGoal:v24];
    [v2 setAppleExerciseTime:v23];
    [v2 setExerciseTimeGoal:v22];
    [v2 setAppleStandHours:v15];
    [v2 setStandHoursGoal:v16];
    [v2 setStepCount:v21];
    [v2 _setPushCount:v17];
    [v2 setDistanceWalkingRunning:v18];
    v35 = v2;
    [v2 _setFlightsClimbed:v19];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void sub_1F778(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 312), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 320), *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1F83C(*(a1 + 32));
    sub_DA8(v2);
  }

  if (*(a1 + 56))
  {

    _HKDispatchAsyncOnGlobalConcurrentQueue(21);
  }
}

void *sub_1F7F4(void *a1)
{
  if (a1)
  {
    v2 = a1[39];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = +[NSDate date];
    }

    v1 = vars8;
  }

  return a1;
}

void sub_1F83C(uint64_t a1)
{
  if (a1)
  {
    sub_9B70(a1);
    v2 = *(v1 + 96);
    *(v1 + 96) = 0;

    *(v1 + 56) = 0;
    sub_6C30(v1, *(v1 + 144));
    sub_6C30(v1, *(v1 + 152));
    sub_6C30(v1, *(v1 + 160));
    sub_6C30(v1, *(v1 + 168));
    v3 = *(v1 + 216);
    *(v1 + 216) = 0;

    v4 = *(v1 + 224);
    *(v1 + 224) = 0;

    *(v1 + 232) = 0;
    *(v1 + 250) = 0;
    *(v1 + 248) = 0;
    *(v1 + 200) = 0;
    v5 = *(v1 + 136);
    *(v1 + 136) = 0;
  }
}

void *sub_1F8E4(void *a1)
{
  if (a1)
  {
    v2 = a1[40];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = +[NSTimeZone systemTimeZone];
    }

    v1 = vars8;
  }

  return a1;
}

void sub_1FB74(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&def_21990, log, OS_LOG_TYPE_DEBUG, "Suppressing save because caches are the same (%ld).", buf, 0xCu);
}

void sub_1FBBC(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_impl(&def_21990, log, OS_LOG_TYPE_DEFAULT, "Saved activity cache (%ld): %@", buf, 0x16u);
}

void sub_1FC14()
{
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
  {
    sub_9AF8(&def_21990, v0, v1, "Not alerting activity cache observers, _existingTodayActivityCache is nil", v2, v3, v4, v5, 0);
  }
}

void sub_1FC6C(void **a1)
{
  sub_9B50(a1);
  sub_9ACC();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_93D0;
  *(v2 + 24) = &unk_34AC8;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = v5;
  v6 = v5;
  v7 = v1;
  dispatch_async(v4, v2);
}

void sub_1FD30()
{
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
  {
    sub_9AF8(&def_21990, v0, v1, "Not alerting activity cache observers, _existingYesterdayActivityCache is nil", v2, v3, v4, v5, 0);
  }
}

void sub_1FD88(void **a1)
{
  sub_9B50(a1);
  sub_9ACC();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_950C;
  *(v2 + 24) = &unk_34AC8;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = v5;
  v6 = v5;
  v7 = v1;
  dispatch_async(v4, v2);
}

void sub_1FE18()
{
  if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_INFO))
  {
    sub_9AF8(&def_21990, v0, v1, "not alerting activity cache observers, heartRateSummary is nil", v2, v3, v4, v5, 0);
  }
}

void sub_1FEE4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&def_21990, log, OS_LOG_TYPE_INFO, "Primed yesterday's %{public}@ goal: %@", buf, 0x16u);
}

void sub_20508(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&def_21990, log, OS_LOG_TYPE_DEBUG, "Alerting observers that Yesterday Activity Cache Changed", buf, 2u);
}

void sub_20598(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = a2;
  v3(a1);
  sub_CC0C(&def_21990, v5, v6, "Unexpected C++ exception: %{public}s", v7, v8, v9, v10, 2u);
}

void sub_20650(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = a2;
  v3(a1);
  sub_CC0C(&def_21990, v5, v6, "Unexpected C++ exception: %{public}s", v7, v8, v9, v10, 2u);
}

id sub_20708(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  if (a1)
  {
    v5 = [HDActivityDemoDataStore demoStatisticsDataForTypeIdentifier:a2];
    v24 = objc_alloc_init(NSMutableArray);
    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v23 = v6;
    v8 = [v6 startOfDayForDate:v7];

    v9 = v8;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    v26 = v9;
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      v13 = 1;
      do
      {
        v14 = 0;
        v15 = 30 * v13;
        v16 = v9;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * v14);
          v9 = [v23 dateByAddingUnit:64 value:v15 toDate:v26 options:0];
          v18 = [[_HKActivityStatisticsQuantityInfo alloc] initWithStartDate:v16 endDate:v9];
          [v17 doubleValue];
          v19 = [HKQuantity quantityWithUnit:v25 doubleValue:?];
          [v18 setQuantityValue:v19];
          [v24 addObject:v18];

          ++v13;
          v14 = v14 + 1;
          v15 += 30;
          v16 = v9;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }

    v20 = [v24 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id sub_20980(uint64_t a1)
{
  if (a1)
  {
    v1 = [HDActivityDemoDataStore demoStatisticsDataForTypeIdentifier:HKCategoryTypeIdentifierAppleStandHour];
    v2 = objc_alloc_init(NSMutableArray);
    v3 = +[NSCalendar currentCalendar];
    v4 = +[NSDate date];
    v5 = [v3 startOfDayForDate:v4];

    v6 = v5;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v1;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v9 = v6;
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = v8;
    v11 = *v21;
    v12 = 1;
    v9 = v6;
    while (1)
    {
      v13 = 0;
      v14 = v9;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = [*(*(&v20 + 1) + 8 * v13) intValue];
        [v14 timeIntervalSinceReferenceDate];
        if (v15 == 1)
        {
          v17 = 0;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_12;
          }

          v17 = 1;
        }

        v18 = [[_HKActivityStatisticsStandHourInfo alloc] initWithTimeStamp:v17 state:v16];
        [v2 addObject:v18];

LABEL_12:
        v9 = [v3 dateByAddingUnit:32 value:v12 toDate:v6 options:0];

        ++v12;
        v13 = v13 + 1;
        v14 = v9;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v10)
      {
LABEL_14:

        goto LABEL_15;
      }
    }
  }

  v2 = 0;
LABEL_15:

  return v2;
}

void sub_20BBC(void *a1)
{
  if (a1)
  {
    v2 = a1[46];
    a1[46] = 0;

    v3 = a1[47];
    a1[47] = 0;

    v4 = a1[48];
    a1[48] = 0;

    v5 = a1[49];
    a1[49] = 0;

    a1[5] = 0;
    a1[6] = 0;
  }
}

void sub_20C8C(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_20D34(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_20E50(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_20EF8(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_20FA0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21048(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_210F0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_2120C(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21328(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_213D0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21478(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21520(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_215C8(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21670(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21718(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_217C0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21868(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21910(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  if (!(!v3 & v2))
  {
    switch(a2)
    {
      case 7:
        v6 = a1[14];
        a1[14] = 0;
        goto LABEL_20;
      case 8:
        v6 = a1[12];
        a1[12] = 0;
        goto LABEL_20;
      case 9:
      case 11:
        goto LABEL_14;
      case 10:
        v6 = a1[10];
        a1[10] = 0;
        goto LABEL_20;
      case 12:
        v6 = a1[13];
        a1[13] = 0;
        goto LABEL_20;
      default:
        JUMPOUT(0);
    }
  }

  switch(a2)
  {
    case 70:
      v6 = a1[16];
      a1[16] = 0;
LABEL_20:

      return;
    case 75:
      v6 = a1[17];
      a1[17] = 0;
      goto LABEL_20;
    case 101:
      v6 = a1[15];
      a1[15] = 0;
      goto LABEL_20;
    case 179:
      v6 = a1[11];
      a1[11] = 0;
      goto LABEL_20;
  }

LABEL_14:
  _HKInitializeLogging();
  v5 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_error_impl(&def_21990, v5, OS_LOG_TYPE_ERROR, "Unsupported data type encountered: %ld", &v7, 0xCu);
  }
}

void sub_21AA0(void *a1)
{
  if (a1)
  {
    v2 = a1[10];
    a1[10] = 0;

    v3 = a1[11];
    a1[11] = 0;

    v4 = a1[12];
    a1[12] = 0;

    v5 = a1[13];
    a1[13] = 0;

    v6 = a1[14];
    a1[14] = 0;

    v7 = a1[15];
    a1[15] = 0;

    v8 = a1[16];
    a1[16] = 0;

    v9 = a1[17];
    a1[17] = 0;
  }
}

double *sub_21C08(double *result, __int128 **a2, double *a3, int a4)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v8 = result;
      do
      {
        v9 = *v4;
        v10 = v4[1];
        v4 += 2;
        v11[0] = v9;
        v11[1] = v10;
        result = sub_18F18(v8, v11, a3, a4);
      }

      while (v4 != v5);
    }
  }

  return result;
}

double sub_21CD4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = *(a2 + 8);
  v2 = (a2 + 8);
  v3 = v4;
  if (v4)
  {
    do
    {
      v5 = v3;
      v3 = v3[1];
    }

    while (v3);
  }

  else
  {
    do
    {
      v5 = v2[2];
      v6 = *v5 == v2;
      v2 = v5;
    }

    while (v6);
  }

  return *(a1 + 200) + (v5[4] + 1) * *(a1 + 224);
}

void sub_21D28(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21DD0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21E78(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21F20(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_21FC8(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22070(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22118(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_221C0(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22268(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22310(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_223B8(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22460(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_22508(uint64_t *a1)
{
  sub_13F24(a1);
  v3 = *(v2 + 16);
  v5 = v4;
  v6 = sub_13F34();
  v3(v6);
  sub_9AA4();
  sub_CC0C(&def_21990, v7, v8, "Unexpected C++ exception: %{public}s", v9, v10, v11, v12, v13);
}

void sub_225B0(void *a1)
{
  if (a1)
  {
    v2 = a1[9];
    a1[9] = 0;

    sub_1E780(a1);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}