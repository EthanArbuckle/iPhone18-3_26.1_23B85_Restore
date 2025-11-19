void sub_DA8(uint64_t a1)
{
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1184;
    v24[3] = &unk_349B0;
    v24[4] = a1;
    v3 = objc_retainBlock(v24);
    v4 = v3;
    if (*(a1 + 300) == 1)
    {
      v5 = *(a1 + 304);
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        _HKInitializeLogging();
        v7 = HKLogActivityCache;
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&def_21990, v7, OS_LOG_TYPE_DEFAULT, "Workout is active taking accessibility assertion to update caches", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 8));
        v9 = [WeakRetained database];
        v23 = 0;
        v10 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:@"Activity Cache Update" contextType:3 error:&v23];
        v6 = v23;
        v11 = *(a1 + 304);
        *(a1 + 304) = v10;

        v5 = *(a1 + 304);
        if (!v5 && v6)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
          {
            sub_1F960();
          }

          v5 = *(a1 + 304);
        }
      }

      v12 = [HDMutableDatabaseTransactionContext contextForAccessibilityAssertion:v5];
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
      {
        sub_1F9C8();
      }

      v13 = objc_loadWeakRetained((a1 + 8));
      v14 = [v13 database];
      v22 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_7D34;
      v20[3] = &unk_349D8;
      v21 = v4;
      v15 = [v14 performWithTransactionContext:v12 error:&v22 block:v20];
      v16 = v22;

      if ((v15 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
        {
          sub_1F9FC();
        }
      }
    }

    else
    {
      (v3[2])(v3);
    }

    _HKInitializeLogging();
    v17 = HKLogActivityCache;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = CFAbsoluteTimeGetCurrent();
      *buf = 134218240;
      v26 = v18;
      v27 = 2048;
      v28 = v19 - Current;
      _os_log_impl(&def_21990, v17, OS_LOG_TYPE_DEFAULT, "Updated today (%lld) and yesterday caches in %.3f seconds", buf, 0x16u);
    }
  }
}

void sub_1184(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&def_21990, v2, OS_LOG_TYPE_DEBUG, "Updating caches", v5, 2u);
  }

  sub_1264(*(a1 + 32));
  sub_1458(*(a1 + 32));
  sub_1548(*(a1 + 32));
  sub_19F0(*(a1 + 32));
  sub_1D00(*(a1 + 32));
  sub_1F7C(*(a1 + 32));
  sub_2108(*(a1 + 32));
  sub_26FC(*(a1 + 32));
  sub_2994(*(a1 + 32));
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_2B20(*(a1 + 32));
    sub_2F4C(v3);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  sub_34C0(v4);
}

void sub_1264(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v2 = [HDActivityCacheManager calendar]_0(a1);
      v3 = [v2 timeZone];
      v4 = *(a1 + 64);
      *(a1 + 64) = v3;

      v5 = sub_1F7F4(a1);
      v6 = [v2 startOfDayForDate:v5];

      v7 = [v2 dateByAddingUnit:16 value:-1 toDate:v6 options:0];
      v8 = [v2 startOfDayForDate:v7];

      v9 = [v2 dateByAddingUnit:16 value:1 toDate:v6 options:0];
      v10 = [v2 startOfDayForDate:v9];

      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_7D5C(a1, &v18, &v17, &v16, v6, v8, v10, v2);
      v11 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v10];
      v12 = *(a1 + 72);
      *(a1 + 72) = v11;

      v13 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v6];
      v14 = *(a1 + 80);
      *(a1 + 80) = v13;

      v15 = v17;
      *(a1 + 32) = v18;
      *(a1 + 40) = v15;
      *(a1 + 48) = v16;
      *(a1 + 56) = 1;
    }
  }
}

void sub_1458(uint64_t a1)
{
  if (a1 && !*(a1 + 128))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained sourceManager];
    v7 = 0;
    v4 = [v3 localDeviceSourceWithError:&v7];
    v5 = v7;
    v6 = *(a1 + 128);
    *(a1 + 128) = v4;

    if (v5)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_20224();
      }
    }
  }
}

void sub_1548(uint64_t a1)
{
  if (a1 && (*(a1 + 88) & 1) == 0 && *(a1 + 56) == 1 && *(a1 + 128))
  {
    v2 = *(a1 + 32);
    v18 = HDActivityCacheEntityPredicateForCacheIndex();
    v3 = *(a1 + 40);
    v4 = HDActivityCacheEntityPredicateForCacheIndex();
    v5 = *(a1 + 48);
    v6 = HDActivityCacheEntityPredicateForCacheIndex();
    v7 = *(a1 + 128);
    v8 = HDDataEntityPredicateForSourceEntity();
    v40[0] = v18;
    v40[1] = v4;
    v40[2] = v6;
    v9 = [NSArray arrayWithObjects:v40 count:3];
    v10 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];

    v11 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v10 otherPredicate:v8];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_7ED8;
    v37 = sub_7EE8;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_7ED8;
    v31 = sub_7EE8;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_7ED8;
    v25 = sub_7EE8;
    v26 = 0;
    v12 = +[HKSampleType activityCacheType];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v14 = [HDActivityCacheEntity entityEnumeratorWithType:v12 profile:WeakRetained];

    [v14 setPredicate:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_7EF0;
    v19[3] = &unk_34A00;
    v19[4] = a1;
    v19[5] = &v33;
    v19[6] = &v27;
    v19[7] = &v21;
    v20 = 0;
    LODWORD(WeakRetained) = [v14 enumerateWithError:&v20 handler:v19];
    v15 = v20;
    if (WeakRetained)
    {
      objc_storeStrong((a1 + 104), v34[5]);
      objc_storeStrong((a1 + 96), v28[5]);
      *(a1 + 88) = 1;
      if (!v22[5])
      {
LABEL_12:
        sub_80A8(a1);

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v27, 8);

        _Block_object_dispose(&v33, 8);
        return;
      }

      v39 = v22[5];
      v16 = [NSArray arrayWithObjects:&v39 count:1];
      sub_7F9C(a1, v16);
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_2028C();
      }

      *(a1 + 88) = 0;
      v17 = *(a1 + 104);
      *(a1 + 104) = 0;

      v16 = *(a1 + 96);
      *(a1 + 96) = 0;
    }

    goto LABEL_12;
  }
}

void sub_1910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_19F0(uint64_t a1)
{
  if (a1 && *(a1 + 56) && (*(a1 + 248) & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "Loading pause ring samples", buf, 2u);
    }

    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = HDPauseRingsScheduleEntityPredicateForCacheIndexRange();
    v6 = +[HKSampleType pauseRingsScheduleType];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v8 = [HDPauseRingsScheduleEntity entityEnumeratorWithType:v6 profile:WeakRetained];

    [v8 setPredicate:v5];
    v9 = [HDSQLiteOrderingTerm orderingTermWithProperty:HDPauseRingsScheduleEntityPropertyEndDateIndex entityClass:objc_opt_class() ascending:0];
    v22 = v9;
    v10 = [NSArray arrayWithObjects:&v22 count:1];
    [v8 setOrderingTerms:v10];

    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12[6] = buf;
    v13 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_75B4;
    v12[3] = &unk_34900;
    v12[4] = a1;
    v12[5] = &v14;
    LODWORD(v10) = [v8 enumerateWithError:&v13 handler:v12];
    v11 = v13;
    if (v10)
    {
      *(a1 + 250) = *(v15 + 24);
      *(a1 + 249) = v19[24];
      *(a1 + 248) = 1;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_2001C();
      }
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1D00(uint64_t a1)
{
  if (a1 && (*(a1 + 232) & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "Loading activity move mode samples", buf, 2u);
    }

    *(a1 + 232) = 1;
    v3 = *(a1 + 208);
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
    v14 = 0;
    v5 = sub_6B44(a1, v3, v4, &v14);
    v6 = v14;
    v7 = *(a1 + 216);
    *(a1 + 216) = v5;

    if (!*(a1 + 216) && v6)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_1FF4C();
      }

      *(a1 + 232) = 0;
    }

    v8 = *(a1 + 208);
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 32)];
    v13 = 0;
    v10 = sub_6B44(a1, v8, v9, &v13);
    v11 = v13;
    v12 = *(a1 + 224);
    *(a1 + 224) = v10;

    if (!*(a1 + 224) && v11)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_1FFB4();
      }

      *(a1 + 232) = 0;
    }
  }
}

id sub_1EE8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayCalorieGoal"];

  if (!v2)
  {
    return 0;
  }

  v3 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayMoveMinuteGoal"];

  if (!v3 || !sub_1FF0(a1))
  {
    return 0;
  }

  return sub_207C(a1);
}

void sub_1F7C(uint64_t a1)
{
  if (a1 && (sub_1EE8(a1) & 1) == 0)
  {
    sub_64BC(a1, *(a1 + 144));
    sub_64BC(a1, *(a1 + 152));
    sub_64BC(a1, *(a1 + 160));
    v2 = *(a1 + 168);

    sub_64BC(a1, v2);
  }
}

id sub_1FF0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayExerciseGoal"];
  if (v1)
  {
    v2 = &def_21990 + 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    v2 = [v3 isStandalonePhoneFitnessMode];
  }

  return v2;
}

id sub_207C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayStandGoal"];
  if (v1)
  {
    v2 = &def_21990 + 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    v2 = [v3 isStandalonePhoneFitnessMode];
  }

  return v2;
}

void sub_2108(uint64_t a1)
{
  if (!a1 || (*(a1 + 200) & 1) != 0 || !sub_1EE8(a1))
  {
    return;
  }

  v2 = *(a1 + 192);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v38 = [HDSampleEntity entityEnumeratorWithType:v2 profile:WeakRetained];

  v50 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_7818;
  v48[3] = &unk_34968;
  v37 = objc_alloc_init(NSMutableArray);
  v49 = v37;
  [v38 enumerateWithError:&v50 handler:v48];
  v36 = v50;
  if (v36)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_20084();
    }

    goto LABEL_29;
  }

  v35 = [HDActivityCacheManager calendar]_0(a1);
  v4 = sub_1F7F4(a1);
  v5 = [v35 startOfDayForDate:v4];

  v39 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v37;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v6)
  {
    goto LABEL_24;
  }

  v41 = *v45;
  do
  {
    v42 = v6;
    for (i = 0; i != v42; i = i + 1)
    {
      if (*v45 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v44 + 1) + 8 * i);
      v9 = sub_78E0(a1, v8);
      v10 = sub_7AB8(a1, v8);
      v11 = [v10 startDate];
      [v11 timeIntervalSinceReferenceDate];
      v13 = v12;
      [v5 timeIntervalSinceReferenceDate];
      v15 = v14;

      v16 = [v8 startDate];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;
      [v5 timeIntervalSinceReferenceDate];
      if (v18 >= v19)
      {
        v21 = [v8 _creationDate];
        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;
        v24 = [v10 _creationDate];
        [v24 timeIntervalSinceReferenceDate];
        v20 = v23 >= v25;
      }

      else
      {
        v20 = 0;
      }

      v26 = [v10 quantity];
      [v26 _value];
      v28 = v27;
      [v9 _value];
      if (v28 != v29)
      {

        if (v13 >= v15 && !v20)
        {
          goto LABEL_22;
        }

        v26 = sub_7B80(a1, v8);
        v30 = [HKQuantitySample quantitySampleWithType:v26 quantity:v9 startDate:v5 endDate:v5];
        _HKInitializeLogging();
        v31 = HKLogActivityCache;
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v30;
          _os_log_impl(&def_21990, v31, OS_LOG_TYPE_DEFAULT, "Saving new scheduled goal: %@", buf, 0xCu);
        }

        [v39 addObject:{v30, v35}];
      }

LABEL_22:
    }

    v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  }

  while (v6);
LABEL_24:

  v32 = objc_loadWeakRetained((a1 + 8));
  v33 = [v32 dataManager];

  v43 = 0;
  LOBYTE(v32) = [v33 insertDataObjects:v39 error:&v43];
  v34 = v43;
  if (v32)
  {
    *(a1 + 200) = 1;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_200EC();
    }
  }

LABEL_29:
}

id *sub_26FC(id *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 56) == 1)
    {
      v2 = result[17];
      if (!v2)
      {
        v3 = [HDActivityCacheDataSource alloc];
        WeakRetained = objc_loadWeakRetained(v1 + 1);
        v5 = [(HDActivityCacheDataSource *)v3 initWithProfile:WeakRetained observedQuantityTypes:v1[22] updateOperation:v1[32] rebuildOperation:v1[33] queue:v1[2]];
        v6 = v1[17];
        v1[17] = v5;

        [v1[17] setTargetDayStatisticsBuilderTag:@"Today"];
        [v1[17] setPreviousDayStatisticsBuilderTag:@"Yesterday"];
        [v1[17] setTargetDayDateInterval:v1[9]];
        [v1[17] setPreviousDayDateInterval:v1[10]];
        [v1[17] setTargetDayCacheIndex:v1[4]];
        [v1[17] setPreviousDayCacheIndex:v1[5]];
        v2 = v1[17];
      }

      return [v2 updateWithError:0];
    }
  }

  return result;
}

BOOL sub_2808(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NRPairedDeviceRegistry sharedInstance];
    v3 = [v2 getActivePairedDevice];

    v4 = [v3 valueForProperty:NRDevicePropertyPairedDate];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = +[NSDate distantPast];
    }

    v7 = *(a1 + 448);
    *(a1 + 448) = v6;
  }

  return a1 != 0;
}

id sub_28CC(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 408) startDate];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [*(a1 + 400) startDate];
    }

    v5 = v4;

    v6 = [*(a1 + 400) endDate];
    v7 = [[NSDateInterval alloc] initWithStartDate:v5 endDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2994(uint64_t a1)
{
  if (a1)
  {
    v2 = [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierWheelchairUse];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = [WeakRetained userCharacteristicsManager];
    v7 = 0;
    v5 = [v4 userCharacteristicForType:v2 error:&v7];
    v6 = v7;

    if (v5)
    {
      *(a1 + 288) = [v5 integerValue];
    }

    else if (v6)
    {
      if ([v6 hk_isDatabaseAccessibilityError])
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
        {
          sub_2035C();
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
        {
          sub_202F4();
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
      {
        sub_203D0();
      }
    }
  }
}

BOOL sub_2B20(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((sub_2DB8(a1) & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
    {
      sub_1FA98();
    }

    return 0;
  }

  v15 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayCalorieGoal"];
  v16 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayMoveMinuteGoal"];
  v2 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayExerciseGoal"];
  v3 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerTodayStandGoal"];
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = [v4 value];
  }

  else
  {
    v5 = &def_21990 + 1;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 249);
  v9 = *(a1 + 72);
  v10 = *(a1 + 32);
  v11 = [*(a1 + 136) targetDayStatisticsBuilder];
  v12 = sub_56BC(a1, v9, v15, v16, v2, v3, v10, v7, v11, *(a1 + 288), v5, v8, 0);

  v6 = v12 == 0;
  if (v12)
  {
    objc_storeStrong((a1 + 104), v12);
    v13 = [*(a1 + 272) allObjects];
    sub_5F74(a1, v13);
  }

  return v6;
}

uint64_t sub_2D40(uint64_t a1)
{
  if (!a1 || *(a1 + 88) != 1 || *(a1 + 56) != 1 || *(a1 + 232) != 1 || *(a1 + 248) != 1 || !*(a1 + 72))
  {
    return 0;
  }

  [*(a1 + 136) targetDayStatisticsBuilder];
  objc_claimAutoreleasedReturnValue();
  sub_2F40();

  return v1;
}

id *sub_2DB8(uint64_t a1)
{
  v3 = a1;
  if (a1)
  {
    if (sub_2D40(a1) && sub_1EE8(v3))
    {
      v5 = [v3[23] objectForKeyedSubscript:@"HDActivityCacheManagerTodayCalorieGoal"];
      v6 = [v5 quantity];
      [v6 _value];
      v8 = v7;
      if (v7 <= 0.0 && ([v3[23] objectForKeyedSubscript:@"HDActivityCacheManagerTodayMoveMinuteGoal"], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "quantity"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "_value"), v9 <= 0.0))
      {
        v3 = 0;
      }

      else
      {
        v10 = [v3[17] activeDevicePairedDate];
        v11 = [v3[9] endDate];
        v3 = [v10 hk_isBeforeOrEqualToDate:v11];

        if (v8 > 0.0)
        {
          goto LABEL_12;
        }
      }

LABEL_12:
      return v3;
    }

    return 0;
  }

  return v3;
}

BOOL sub_2F4C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((sub_3194(a1) & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
    {
      sub_1FCFC();
    }

    return 0;
  }

  v2 = *(a1 + 288);
  if ([*(a1 + 96) hasWheelchairUse])
  {
    v2 = [*(a1 + 96) wheelchairUse];
  }

  v16 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayCalorieGoal"];
  v15 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayMoveMinuteGoal"];
  v17 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayExerciseGoal"];
  v3 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayStandGoal"];
  v4 = *(a1 + 224);
  if (v4)
  {
    v5 = [v4 value];
  }

  else
  {
    v5 = &def_21990 + 1;
  }

  v7 = *(a1 + 250);
  v8 = *(a1 + 80);
  v9 = *(a1 + 40);
  v10 = *(a1 + 96);
  v11 = [*(a1 + 136) previousDayStatisticsBuilder];
  v12 = sub_56BC(a1, v8, v16, v15, v17, v3, v9, v10, v11, v2, v5, v7, 1);

  v6 = v12 == 0;
  if (v12)
  {
    objc_storeStrong((a1 + 96), v12);
    v13 = [*(a1 + 272) allObjects];
    sub_5FFC(a1, v13);
  }

  return v6;
}

id *sub_3194(uint64_t a1)
{
  v3 = a1;
  if (a1)
  {
    if (sub_2D40(a1) && sub_3314(v3))
    {
      v5 = [v3[23] objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayCalorieGoal"];
      v6 = [v5 quantity];
      [v6 _value];
      v8 = v7;
      if (v7 <= 0.0 && ([v3[23] objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayMoveMinuteGoal"], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "quantity"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "_value"), v9 <= 0.0))
      {
        v3 = 0;
      }

      else
      {
        v10 = [v3[17] activeDevicePairedDate];
        v11 = [v3[10] endDate];
        v3 = [v10 hk_isBeforeOrEqualToDate:v11];

        if (v8 > 0.0)
        {
          goto LABEL_12;
        }
      }

LABEL_12:
      return v3;
    }

    return 0;
  }

  return v3;
}

id sub_3314(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayCalorieGoal"];

  if (!v2)
  {
    return 0;
  }

  v3 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayMoveMinuteGoal"];

  if (!v3 || !sub_33A8(a1))
  {
    return 0;
  }

  return sub_3434(a1);
}

id sub_33A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayExerciseGoal"];
  if (v1)
  {
    v2 = &def_21990 + 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    v2 = [v3 isStandalonePhoneFitnessMode];
  }

  return v2;
}

id sub_3434(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 184) objectForKeyedSubscript:@"HDActivityCacheManagerYesterdayStandGoal"];
  if (v1)
  {
    v2 = &def_21990 + 1;
  }

  else
  {
    v3 = +[_HKBehavior sharedBehavior];
    v2 = [v3 isStandalonePhoneFitnessMode];
  }

  return v2;
}

void sub_34C0(id *a1)
{
  if (a1)
  {
    v6 = [a1[34] allObjects];
    v2 = [a1[17] targetDayHeartRateStatisticsBuilder];
    v3 = [v2 heartRateSummary];

    if (v3 && ([a1[14] isEqual:v3] & 1) == 0)
    {
      objc_storeStrong(a1 + 14, v3);
      sub_6084(a1, v6, v3);
    }

    v4 = [a1[17] previousDayHeartRateStatisticsBuilder];
    v5 = [v4 heartRateSummary];

    if (v5 && ([a1[15] isEqual:v5] & 1) == 0)
    {
      objc_storeStrong(a1 + 15, v5);
      sub_6084(a1, v6, v5);
    }
  }
}

uint64_t sub_3744(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_A558(result, a4);
  }

  return result;
}

void sub_37A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_37C0(uint64_t a1)
{
  if (!a1 || (v2 = *(a1 + 24), *(a1 + 32) == v2))
  {
    v5 = 0;
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:*v2];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(*(a1 + 32) - 24)];
    v5 = [[NSDateInterval alloc] initWithStartDate:v3 endDate:v4];
  }

  return v5;
}

void *sub_3884(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[10];
    if (v2)
    {
LABEL_46:
      a1 = v2;
      goto LABEL_47;
    }

    __p = 0;
    v35 = 0;
    v36 = 0;
    v3 = a1[6];
    v4 = a1[7];
    if (v3 != v4)
    {
      v5 = 0;
      do
      {
        v32 = *v3;
        v6 = *(v3 + 2);
        v7 = *(v3 + 40);
        *v37 = *(v3 + 24);
        v38 = v7;
        v39 = *(v3 + 7);
        if (v6 == 52)
        {
          if (v5 >= v36)
          {
            v10 = (v5 - __p) >> 6;
            if ((v10 + 1) >> 58)
            {
              sub_A594();
            }

            v11 = (v36 - __p) >> 5;
            if (v11 <= v10 + 1)
            {
              v11 = v10 + 1;
            }

            if (v36 - __p >= 0x7FFFFFFFFFFFFFC0)
            {
              v12 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            if (v12)
            {
              sub_A820(&__p, v12);
            }

            v13 = v10 << 6;
            *v13 = v32;
            *(v13 + 16) = 52;
            *(v13 + 24) = *v37;
            *(v13 + 40) = v38;
            *(v13 + 56) = v39;
            v5 = (v10 << 6) + 64;
            memcpy(((v10 << 6) - (v35 - __p)), __p, v35 - __p);
            v14 = __p;
            __p = ((v10 << 6) - (v35 - __p));
            v35 = v5;
            v36 = 0;
            if (v14)
            {
              operator delete(v14);
            }
          }

          else
          {
            *v5 = *v3;
            *(v5 + 16) = 52;
            v8 = v39;
            v9 = v38;
            *(v5 + 24) = *v37;
            *(v5 + 40) = v9;
            *(v5 + 56) = v8;
            v5 += 64;
          }

          v35 = v5;
        }

        v3 += 4;
      }

      while (v3 != v4);
    }

    v37[0] = 0;
    v37[1] = 0;
    *&v38 = 0;
    v15 = v1[3];
    v16 = v1[4];
    if (v15 == v16)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      do
      {
        v17 = *v15;
        v33 = *(v15 + 2);
        v32 = v17;
        v18 = __p;
        if (__p != v35)
        {
          v19 = 0;
          do
          {
            v20 = *&v32 >= *v18;
            if (*&v32 >= v18[1])
            {
              v20 = 0;
            }

            v19 |= v20;
            if (v20)
            {
              break;
            }

            v18 += 8;
          }

          while (v18 != v35);
          if (v19)
          {
            goto LABEL_29;
          }
        }

        if (v33 == 4)
        {
LABEL_29:
          sub_144CC(v37, &v32 + 1);
        }

        v15 = (v15 + 24);
      }

      while (v15 != v16);
      v21 = v37[0];
      v22 = v37[1];
    }

    v23 = v22 - v21;
    v24 = (v22 - v21) >> 3;
    if (v24 <= 0)
    {
LABEL_41:
      if (v21)
      {
        v37[1] = v21;
        operator delete(v21);
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v2 = v1[10];
      goto LABEL_46;
    }

    std::__sort<std::__less<double,double> &,double *>();
    v25 = v24 >> 1;
    v26 = (v37[1] - v37[0]) >> 3;
    if ((v23 & 8) != 0)
    {
      if (v26 > v25)
      {
        v27 = *(v37[0] + v25);
        goto LABEL_40;
      }
    }

    else if (v26 > v25 && v26 > v25 - 1)
    {
      v27 = (*(v37[0] + v25) + *(v37[0] + v25 - 1)) * 0.5;
LABEL_40:
      v28 = +[HKUnit _countPerSecondUnit];
      v29 = [HKQuantity quantityWithUnit:v28 doubleValue:v27];
      v30 = v1[10];
      v1[10] = v29;

      v21 = v37[0];
      goto LABEL_41;
    }

    sub_16918();
  }

LABEL_47:

  return a1;
}

void sub_3BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = v16;

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_213D0(v20);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_3C7C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x3C84);
  }

  sub_55C4(a1);
}

const __CFString *sub_3CFC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if ([v2 isEqualToString:HKQuantityTypeIdentifierActiveEnergyBurned])
  {
    v3 = @"demoEnergyBurned";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierAppleExerciseTime])
  {
    v3 = @"demoExerciseMinutes";
  }

  else if ([v2 isEqualToString:HKCategoryTypeIdentifierAppleStandHour])
  {
    v3 = @"demoStandHours";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierStepCount])
  {
    v3 = @"demoSteps";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierPushCount])
  {
    v3 = @"demoPushes";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierDistanceWalkingRunning])
  {
    v3 = @"demoDistance";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierFlightsClimbed])
  {
    v3 = @"demoFlightsClimbed";
  }

  else if ([v2 isEqualToString:HKQuantityTypeIdentifierAppleMoveTime])
  {
    v3 = @"demoAppleMoveTime";
  }

  else if ([v2 isEqualToString:_HKCategoryTypeIdentifierActivityMoveModeChange])
  {
    v3 = @"demoActivityMoveMode";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_4264(uint64_t a1)
{
  v3 = [*(a1 + 32) profile];
  v2 = [v3 currentActivitySummaryHelper];
  [v2 addObserver:*(a1 + 32)];
}

void sub_44C8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [a3 doubleValue];
  [v4 startDataCollectionForType:v6 observer:v5 collectionInterval:?];
}

void sub_50E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v23 - 128));

  _Unwind_Resume(a1);
}

void sub_51C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [HDDaemonTransaction transactionWithOwner:WeakRetained activityName:@"ActivityCacheUpdate"];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1F92C();
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  sub_DA8(v4);

  [v3 invalidate];
}

void sub_5298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [HDDaemonTransaction transactionWithOwner:WeakRetained activityName:@"ActivityCacheRebuild"];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1FA64();
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    sub_1F83C(v4);
    sub_DA8(v5);
  }

  [v3 invalidate];
}

void sub_5350(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_5554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = HDActivityCacheManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_56BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char a13)
{
  v72 = a2;
  v77 = a3;
  v76 = a4;
  v74 = a5;
  v75 = a6;
  v19 = a8;
  v20 = a9;
  if (a1)
  {
    v21 = [v19 UUID];
    v22 = v21;
    if (v21)
    {
      v73 = v21;
    }

    else
    {
      v73 = +[NSUUID UUID];
    }

    if (v19)
    {
      v23 = [v19 sequence] + 1;
    }

    else
    {
      v23 = (&def_21990 + 1);
    }

    v24 = [v72 startDate];
    v25 = [v72 endDate];
    v26 = _HKActivityCacheDateComponentsFromCacheIndex();
    v27 = [HKActivityCache _activityCacheWithUUID:v73 startDate:v24 endDate:v25 dateComponents:v26 sequence:v23];

    v28 = [v20 activeEnergyValue];
    [v27 _setEnergyBurned:v28];

    v29 = [v77 quantity];
    [v27 _setEnergyBurnedGoal:v29];

    v30 = [v77 endDate];
    [v27 _setEnergyBurnedGoalDateOnly:v30];

    [v27 _setMoveMinutes:{objc_msgSend(v20, "moveMinuteValue")}];
    v31 = [v76 quantity];
    [v27 _setMoveMinutesGoal:v31];

    v32 = [v76 endDate];
    [v27 _setMoveMinutesGoalDateOnly:v32];

    v33 = [v20 distanceWalkingValue];
    [v27 _setWalkingAndRunningDistance:v33];

    v34 = +[_HKBehavior sharedBehavior];
    LOBYTE(v25) = [v34 isStandalonePhoneFitnessMode];

    if ((v25 & 1) == 0)
    {
      [v27 _setActiveHours:{objc_msgSend(v20, "standHourValue")}];
      v35 = [v75 quantity];
      [v27 _setActiveHoursGoal:v35];

      v36 = [v75 startDate];
      [v36 timeIntervalSinceReferenceDate];
      v38 = v37;
      v39 = +[NSDate distantPast];
      [v39 timeIntervalSinceReferenceDate];
      v41 = v40;

      if (v38 != v41)
      {
        v42 = [v75 startDate];
        [v27 _setActiveHoursGoalDateOnly:v42];
      }

      [v27 _setBriskMinutes:{objc_msgSend(v20, "exerciseMinuteValue")}];
      v43 = [v74 quantity];
      [v27 _setBriskMinutesGoal:v43];

      v44 = [v74 startDate];
      [v44 timeIntervalSinceReferenceDate];
      v46 = v45;
      v47 = +[NSDate distantPast];
      [v47 timeIntervalSinceReferenceDate];
      v49 = v48;

      if (v46 != v49)
      {
        v50 = [v74 startDate];
        [v27 _setBriskMinutesGoalDateOnly:v50];
      }
    }

    [v27 _setPushCount:{objc_msgSend(v20, "pushCountValue")}];
    [v27 _setWheelchairUse:a10];
    [v27 _setStepCount:{objc_msgSend(v20, "stepCountValue")}];
    [v20 deepBreathingDurationValue];
    [v27 _setDeepBreathingDuration:?];
    [v27 _setFlightsClimbed:{objc_msgSend(v20, "flightsClimbedValue")}];
    [v27 _setActivityMoveMode:a11];
    [v27 _setPaused:a12];
    v51 = [v27 _isEqualToActivityCache:v19];
    v52 = v51;
    if (a13)
    {
      if (![v19 hasDailyEnergyBurnedStatistics] || (v52 & objc_msgSend(v19, "hasDailyBriskMinutesStatistics") & 1) == 0)
      {
        v53 = objc_alloc_init(NSDateComponents);
        [v53 setMinute:kHKDailyStatisticsIntervalInMinutes];
        v54 = +[NSCalendar currentCalendar];
        v55 = [v20 createMoveStatisticsWithIntervalComponents:v53 calendar:v54];
        v56 = [v20 createMoveMinuteStatisticsWithIntervalComponents:v53 calendar:v54];
        v57 = [v20 createExerciseStatisticsWithIntervalComponents:v53 calendar:v54];
        [v27 _setDailyEnergyBurnedStatistics:v55];
        [v27 _setDailyMoveMinutesStatistics:v56];
        [v27 _setDailyBriskMinutesStatistics:v57];

LABEL_23:
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        v62 = [WeakRetained dataProvenanceManager];
        v63 = [v62 defaultLocalDataProvenance];

        if (v63)
        {
          v64 = objc_loadWeakRetained((a1 + 8));
          v65 = [v64 dataManager];
          v80 = v27;
          v66 = [NSArray arrayWithObjects:&v80 count:1];
          v78 = 0;
          v67 = [v65 insertDataObjects:v66 withProvenance:v63 creationDate:&v78 error:CFAbsoluteTimeGetCurrent()];
          v68 = v78;

          if (v67)
          {
            _HKInitializeLogging();
            v69 = HKLogActivityCache;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              sub_1FBBC(v27, buf, [v27 cacheIndex], v69);
            }

            v70 = v27;
          }

          else
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
            {
              sub_1FACC();
            }

            v70 = 0;
          }
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
          {
            sub_1FB34();
          }

          v70 = 0;
        }

        v60 = v70;

LABEL_36:
        goto LABEL_37;
      }
    }

    else if (!v51)
    {
      goto LABEL_23;
    }

    _HKInitializeLogging();
    v58 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
    {
      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        sub_1FB74(buf, [v27 cacheIndex], v59);
      }
    }

    v60 = v19;
    goto LABEL_36;
  }

  v60 = 0;
LABEL_37:

  return v60;
}

void sub_5F74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 104))
    {
      [v3 copy];
      sub_1FC6C((a1 + 104));
    }

    else
    {
      _HKInitializeLogging();
      sub_1FC14();
    }
  }
}

void sub_5FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 96))
    {
      [v3 copy];
      sub_1FD88((a1 + 96));
    }

    else
    {
      _HKInitializeLogging();
      sub_1FD30();
    }
  }
}

void sub_6084(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = [v5 copy];
      v9 = [v7 deepCopy];
      v10 = *(a1 + 24);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_9680;
      v13[3] = &unk_34AF0;
      v14 = v7;
      v15 = a1;
      v16 = v8;
      v17 = v9;
      v11 = v9;
      v12 = v8;
      dispatch_async(v10, v13);
    }

    else
    {
      _HKInitializeLogging();
      sub_1FE18();
    }
  }
}

id sub_61BC(uint64_t a1)
{
  if (a1 && (+[_HKBehavior sharedBehavior](_HKBehavior, "sharedBehavior"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isStandalonePhoneFitnessMode], v2, (v3 & 1) == 0))
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      v6 = [v5 value];
      v7 = &_HKDefaultTinkerDailyBriskMinutesGoal;
      if (v6 != &def_21990 + 2)
      {
        v7 = &_HKDefaultDailyBriskMinutesGoal;
      }
    }

    else
    {
      v7 = &_HKDefaultDailyBriskMinutesGoal;
    }

    v8 = *v7;
    v9 = *(a1 + 160);
    v10 = +[HKUnit minuteUnit];
    v11 = [HKQuantity quantityWithUnit:v10 doubleValue:v8];
    v12 = +[NSDate distantPast];
    v13 = +[NSDate distantPast];
    v4 = [HKQuantitySample quantitySampleWithType:v9 quantity:v11 startDate:v12 endDate:v13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_633C(uint64_t a1)
{
  if (a1 && (+[_HKBehavior sharedBehavior](_HKBehavior, "sharedBehavior"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isStandalonePhoneFitnessMode], v2, (v3 & 1) == 0))
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      v6 = [v5 value];
      v7 = &_HKDefaultTinkerDailyActiveHoursGoal;
      if (v6 != &def_21990 + 2)
      {
        v7 = &_HKDefaultDailyActiveHoursGoal;
      }
    }

    else
    {
      v7 = &_HKDefaultDailyActiveHoursGoal;
    }

    v8 = *v7;
    v9 = *(a1 + 168);
    v10 = +[HKUnit countUnit];
    v11 = [HKQuantity quantityWithUnit:v10 doubleValue:v8];
    v12 = +[NSDate distantPast];
    v13 = +[NSDate distantPast];
    v4 = [HKQuantitySample quantitySampleWithType:v9 quantity:v11 startDate:v12 endDate:v13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_64BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqual:*(a1 + 144)])
    {
      v5 = +[HKUnit kilocalorieUnit];
      v6 = @"HDActivityCacheManagerTodayCalorieGoal";
      v7 = @"HDActivityCacheManagerYesterdayCalorieGoal";
    }

    else if ([v4 isEqual:*(a1 + 152)])
    {
      v5 = +[HKUnit minuteUnit];
      v6 = @"HDActivityCacheManagerTodayMoveMinuteGoal";
      v7 = @"HDActivityCacheManagerYesterdayMoveMinuteGoal";
    }

    else if ([v4 isEqual:*(a1 + 160)])
    {
      v5 = +[HKUnit minuteUnit];
      v6 = @"HDActivityCacheManagerTodayExerciseGoal";
      v7 = @"HDActivityCacheManagerYesterdayExerciseGoal";
    }

    else
    {
      v5 = +[HKUnit countUnit];
      v6 = @"HDActivityCacheManagerTodayStandGoal";
      v7 = @"HDActivityCacheManagerYesterdayStandGoal";
    }

    v8 = [*(a1 + 72) endDate];
    v35 = 0;
    v9 = sub_6B44(a1, v4, v8, &v35);
    v10 = v35;
    [*(a1 + 184) setObject:v9 forKeyedSubscript:v6];

    if (v10)
    {
      sub_6C30(a1, v4);
      goto LABEL_11;
    }

    v11 = [*(a1 + 184) objectForKeyedSubscript:v6];
    v12 = v11 == 0;

    if (v12)
    {
      if (([v4 isEqual:*(a1 + 144)] & 1) != 0 || objc_msgSend(v4, "isEqual:", *(a1 + 152)))
      {
        v21 = [HKQuantity quantityWithUnit:v5 doubleValue:0.0];
        v22 = +[NSDate distantPast];
        v23 = +[NSDate distantPast];
        v24 = [HKQuantitySample quantitySampleWithType:v4 quantity:v21 startDate:v22 endDate:v23];
        [*(a1 + 184) setObject:v24 forKeyedSubscript:v6];
      }

      else
      {
        if ([v4 isEqual:*(a1 + 160)])
        {
          sub_61BC(a1);
        }

        else
        {
          sub_633C(a1);
        }
        v21 = ;
        [*(a1 + 184) setObject:v21 forKeyedSubscript:v6];
      }

      v20 = [*(a1 + 184) objectForKeyedSubscript:v6];
      [*(a1 + 184) setObject:v20 forKeyedSubscript:v7];
      goto LABEL_23;
    }

    v13 = [*(a1 + 184) objectForKeyedSubscript:v6];
    v14 = [v13 endDate];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = [*(a1 + 80) endDate];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v16 < v18;

    if (v19)
    {
      v20 = [*(a1 + 184) objectForKeyedSubscript:v6];
      [*(a1 + 184) setObject:v20 forKeyedSubscript:v7];
LABEL_23:

      goto LABEL_24;
    }

    v30 = [*(a1 + 80) endDate];
    v34 = 0;
    v31 = sub_6B44(a1, v4, v30, &v34);
    v10 = v34;
    [*(a1 + 184) setObject:v31 forKeyedSubscript:v7];

    v32 = [*(a1 + 184) objectForKeyedSubscript:v7];
    LODWORD(v30) = v32 == 0;

    if (v30)
    {
      if ([v4 isEqual:*(a1 + 160)])
      {
        v33 = sub_61BC(a1);
        [*(a1 + 184) setObject:v33 forKeyedSubscript:v7];
      }

      else
      {
        if (![v4 isEqual:*(a1 + 168)])
        {
          goto LABEL_40;
        }

        v33 = sub_633C(a1);
        [*(a1 + 184) setObject:v33 forKeyedSubscript:v7];
      }
    }

LABEL_40:
    if (v10)
    {
LABEL_11:
      sub_6C30(a1, v4);
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_1FE70();
      }

      goto LABEL_13;
    }

LABEL_24:
    _HKInitializeLogging();
    v25 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [*(a1 + 184) objectForKeyedSubscript:v6];
        *buf = 138543618;
        v37 = v4;
        v38 = 2112;
        v39 = v27;
        _os_log_impl(&def_21990, v26, OS_LOG_TYPE_INFO, "Primed today's %{public}@ goal: %@", buf, 0x16u);
      }
    }

    _HKInitializeLogging();
    v28 = HKLogActivityCache;
    if (!os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v10 = v28;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v29 = [*(a1 + 184) objectForKeyedSubscript:v7];
      sub_1FEE4(v4, v29, buf, v10);
    }

LABEL_13:

LABEL_14:
  }
}

id sub_6B44(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = HDSampleEntityPredicateForStartDate();
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v11 = [HDSampleEntity mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:v9 anchor:0 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_6C30(void *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    if ([v10 isEqual:a1[18]])
    {
      v4 = a1[23];
      v3 = (a1 + 23);
      [v4 setObject:0 forKeyedSubscript:@"HDActivityCacheManagerTodayCalorieGoal"];
      v5 = @"HDActivityCacheManagerYesterdayCalorieGoal";
    }

    else if ([v10 isEqual:a1[19]])
    {
      v6 = a1[23];
      v3 = (a1 + 23);
      [v6 setObject:0 forKeyedSubscript:@"HDActivityCacheManagerTodayMoveMinuteGoal"];
      v5 = @"HDActivityCacheManagerYesterdayMoveMinuteGoal";
    }

    else
    {
      v7 = [v10 isEqual:a1[20]];
      v9 = a1[23];
      v3 = (a1 + 23);
      v8 = v9;
      if (v7)
      {
        [v8 setObject:0 forKeyedSubscript:@"HDActivityCacheManagerTodayExerciseGoal"];
        v5 = @"HDActivityCacheManagerYesterdayExerciseGoal";
      }

      else
      {
        [v8 setObject:0 forKeyedSubscript:@"HDActivityCacheManagerTodayStandGoal"];
        v5 = @"HDActivityCacheManagerYesterdayStandGoal";
      }
    }

    [*v3 setObject:0 forKeyedSubscript:v5];
  }
}

uint64_t sub_6D44(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (a1 && (v4 = v3, (sub_1EE8(a1) & 1) != 0))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 sampleType];
          v11 = [v10 code];

          v12 = v11 - 67 > 0x26 || ((1 << (v11 - 67)) & 0x6000000001) == 0;
          if (!v12 || v11 == &stru_68.reserved3)
          {
            v13 = sub_6F18(a1, v9);
            goto LABEL_20;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v13 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_20:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_6F18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 quantityType];
    v6 = [v5 isEqual:*(a1 + 144)];

    if (v6)
    {
      v7 = @"HDActivityCacheManagerTodayCalorieGoal";
      v8 = @"HDActivityCacheManagerYesterdayCalorieGoal";
    }

    else
    {
      v9 = [v4 quantityType];
      v10 = [v9 isEqual:*(a1 + 152)];

      if (v10)
      {
        v7 = @"HDActivityCacheManagerTodayMoveMinuteGoal";
        v8 = @"HDActivityCacheManagerYesterdayMoveMinuteGoal";
      }

      else
      {
        v11 = [v4 quantityType];
        v12 = [v11 isEqual:*(a1 + 160)];

        if (v12)
        {
          v8 = @"HDActivityCacheManagerYesterdayExerciseGoal";
        }

        else
        {
          v8 = @"HDActivityCacheManagerYesterdayStandGoal";
        }

        if (v12)
        {
          v7 = @"HDActivityCacheManagerTodayExerciseGoal";
        }

        else
        {
          v7 = @"HDActivityCacheManagerTodayStandGoal";
        }
      }
    }

    v13 = [v4 startDate];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    v16 = [v4 _creationDate];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;

    v19 = [*(a1 + 184) objectForKeyedSubscript:v8];
    v20 = [v19 startDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    v23 = [*(a1 + 184) objectForKeyedSubscript:v7];
    v24 = [v23 startDate];
    [v24 timeIntervalSinceReferenceDate];
    v26 = v25;

    v27 = [*(a1 + 184) objectForKeyedSubscript:v7];
    v28 = [v27 _creationDate];
    [v28 timeIntervalSinceReferenceDate];
    v30 = v29;

    if (v15 > v26 || (v31 = 0, v15 == v26) && v18 > v30)
    {
      v32 = [*(a1 + 72) endDate];
      [v32 timeIntervalSinceReferenceDate];
      v34 = v33;

      if (v15 >= v34)
      {
        v31 = 0;
      }

      else
      {
        [*(a1 + 184) setObject:v4 forKeyedSubscript:v7];
        v31 = 1;
      }
    }

    if (v15 > v22)
    {
      v35 = [*(a1 + 80) endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      if (v15 < v37)
      {
        [*(a1 + 184) setObject:v4 forKeyedSubscript:v8];
        v31 = 1;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

uint64_t sub_7214(uint64_t a1, void *a2)
{
  v35 = a2;
  if (a1 && *(a1 + 232))
  {
    v3 = *(a1 + 224);
    location = (a1 + 224);
    if (v3)
    {
      [v3 startDate];
    }

    else
    {
      +[NSDate distantPast];
    }
    v4 = ;
    [v4 timeIntervalSinceReferenceDate];
    v7 = v6;

    if (*location)
    {
      [*location _creationDate];
    }

    else
    {
      +[NSDate distantPast];
    }
    v8 = ;
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v12 = (a1 + 216);
    v11 = *(a1 + 216);
    if (v11)
    {
      [v11 startDate];
    }

    else
    {
      +[NSDate distantPast];
    }
    v13 = ;
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    if (*v12)
    {
      [*v12 _creationDate];
    }

    else
    {
      +[NSDate distantPast];
    }
    v16 = ;
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v35;
    v5 = 0;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = [v23 sampleType];
          v25 = [v24 code];

          if (v25 == &stru_B8.sectname[6])
          {
            v26 = [v23 startDate];
            [v26 timeIntervalSinceReferenceDate];
            v28 = v27;

            v29 = [v23 _creationDate];
            [v29 timeIntervalSinceReferenceDate];
            v31 = v30;

            v32 = v31 <= v18 || v28 < v15;
            if (!v32 && v28 < *(a1 + 48))
            {
              objc_storeStrong((a1 + 216), v23);
              v5 = 1;
            }

            v33 = v31 <= v10 || v28 < v7;
            if (!v33 && v28 < *(a1 + 32))
            {
              objc_storeStrong(location, v23);
              v5 = 1;
            }
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_75B4(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 40);
  if (v4 >= [v3 startDateIndex])
  {
    v5 = *(a1[4] + 40);
    if (v5 < [v3 endDateIndex])
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  v6 = *(a1[4] + 32);
  if (v6 >= [v3 startDateIndex])
  {
    v7 = *(a1[4] + 32);
    if (v7 < [v3 endDateIndex])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  return 1;
}

uint64_t sub_7684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && *(a1 + 56) && *(a1 + 248))
  {
    v5 = [v3 hk_filter:&stru_34940];
    v6 = [v5 lastObject];
    v7 = v6;
    if (!v6)
    {
      v11 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v8 = *(a1 + 40);
    if (v8 < [v6 startDateIndex] || (v9 = *(a1 + 40), v9 >= objc_msgSend(v7, "endDateIndex")))
    {
      v10 = 0;
    }

    else
    {
      v10 = 1;
      *(a1 + 250) = 1;
    }

    v12 = *(a1 + 32);
    if (v12 >= [v7 startDateIndex])
    {
      v14 = *(a1 + 32);
      v15 = [v7 endDateIndex];
      v13 = v14 < v15;
      if (v14 < v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10;
      }

      if (v16)
      {
        goto LABEL_18;
      }
    }

    else if (v10)
    {
      v13 = 0;
LABEL_18:
      v11 = 1;
LABEL_20:
      *(a1 + 249) = v13;
      goto LABEL_21;
    }

    v13 = 0;
    v11 = *(a1 + 249);
    goto LABEL_20;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

BOOL sub_77C8(id a1, HKSample *a2)
{
  v2 = [(HKSample *)a2 sampleType];
  v3 = [v2 code] == &stru_108.addr + 4;

  return v3;
}

id sub_78E0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [HDActivityCacheManager calendar]_0(a1);
    v5 = sub_1F7F4(a1);
    v6 = [v4 startOfDayForDate:v5];

    v7 = [v4 component:512 fromDate:v6];
    if (v7 <= 3)
    {
      if (v7 == (&def_21990 + 1))
      {
        v8 = [v3 sundayGoal];
        goto LABEL_21;
      }

      if (v7 == (&def_21990 + 2))
      {
        v8 = [v3 mondayGoal];
        goto LABEL_21;
      }

      if (v7 == (&def_21990 + 3))
      {
        v8 = [v3 tuesdayGoal];
LABEL_21:
        v9 = v8;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      if (v7 <= 5)
      {
        if (v7 == &dword_4)
        {
          [v3 wednesdayGoal];
        }

        else
        {
          [v3 thursdayGoal];
        }
        v8 = ;
        goto LABEL_21;
      }

      if (v7 == (&dword_4 + 2))
      {
        v8 = [v3 fridayGoal];
        goto LABEL_21;
      }

      if (v7 == (&dword_4 + 3))
      {
        v8 = [v3 saturdayGoal];
        goto LABEL_21;
      }
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_20154();
    }

    v9 = 0;
    goto LABEL_22;
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void sub_7A80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_7AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 goalType];
    if (v5 < 4)
    {
      v6 = [*(a1 + 184) objectForKeyedSubscript:off_34B10[v5]];
      goto LABEL_7;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_201BC();
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

id sub_7B80(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = [v3 goalType];
  if (v5 > 1)
  {
    if (v5 == &def_21990 + 2)
    {
      v6 = a1[20];
      goto LABEL_14;
    }

    if (v5 == &def_21990 + 3)
    {
      v6 = a1[21];
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = a1[18];
    goto LABEL_14;
  }

  if (v5 != &def_21990 + 1)
  {
LABEL_9:
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_201BC();
    }

    goto LABEL_11;
  }

  v6 = a1[19];
LABEL_14:
  v7 = v6;
LABEL_15:

  return v7;
}

uint64_t sub_7C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 200) == 1)
    {
      v5 = [v3 hk_firstObjectPassingTest:&stru_34988];
      a1 = v5 != 0;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

BOOL sub_7CE4(id a1, HKSample *a2)
{
  v2 = [(HKSample *)a2 sampleType];
  v3 = [v2 code] == &stru_108.addr + 3;

  return v3;
}

void sub_7D5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8)
{
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a1)
  {
    v24 = v15;
    v18 = _HKActivityCacheDateComponentsFromDate();
    v19 = _HKActivityCacheDateComponentsFromDate();
    v20 = _HKActivityCacheDateComponentsFromDate();
    v21 = _HKCacheIndexFromDateComponents();
    v22 = _HKCacheIndexFromDateComponents();
    v23 = _HKCacheIndexFromDateComponents();
    if (a2)
    {
      *a2 = v21;
    }

    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v23;
    }

    v15 = v24;
  }
}

uint64_t sub_7ED8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_7EF0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 cacheIndex];
  v6 = *(a1 + 32);
  if (v5 == v6[4])
  {
    v7 = 40;
LABEL_7:
    objc_storeStrong((*(*(a1 + v7) + 8) + 40), a2);
    goto LABEL_8;
  }

  if (v5 == v6[5])
  {
    v7 = 48;
    goto LABEL_7;
  }

  if (v5 == v6[6])
  {
    v7 = 56;
    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

void sub_7F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v6 = [WeakRetained dataManager];
    v9 = 0;
    v7 = [v6 deleteDataObjects:v4 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:&v9];
    v8 = v9;

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
      {
        sub_20404();
      }
    }
  }
}

void sub_80A8(id *a1)
{
  if (a1)
  {
    if (a1[12] && a1[10])
    {
      v2 = [NSDateInterval alloc];
      v14 = [a1[12] startDate];
      v3 = [a1[10] endDate];
      v4 = [v2 initWithStartDate:v14 endDate:v3];
      v5 = a1[10];
      a1[10] = v4;
    }

    if (a1[13] && a1[9])
    {
      v6 = [NSDateInterval alloc];
      v15 = [a1[13] startDate];
      v7 = [a1[9] endDate];
      v8 = [v6 initWithStartDate:v15 endDate:v7];
      v9 = a1[9];
      a1[9] = v8;
    }

    if (a1[10] && a1[9])
    {
      v10 = [NSDateInterval alloc];
      v16 = [a1[10] startDate];
      v11 = [a1[9] startDate];
      v12 = [v10 initWithStartDate:v16 endDate:v11];
      v13 = a1[10];
      a1[10] = v12;
    }
  }
}

id sub_82FC(uint64_t a1)
{
  if (sub_7C6C(*(a1 + 32), *(a1 + 40)))
  {
    _HKInitializeLogging();
    v2 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "Goal schedules changed, rebuilding caches", buf, 2u);
    }

    v3 = 264;
    return [*(*(a1 + 32) + v3) execute];
  }

  if ((sub_6D44(*(a1 + 32), *(a1 + 40)) & 1) != 0 || (sub_7214(*(a1 + 32), *(a1 + 40)) & 1) != 0 || (result = sub_7684(*(a1 + 32), *(a1 + 40)), result))
  {
    _HKInitializeLogging();
    v5 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&def_21990, v5, OS_LOG_TYPE_DEFAULT, "Goals, paused state, or move mode changed, updating caches", v6, 2u);
    }

    v3 = 256;
    return [*(*(a1 + 32) + v3) execute];
  }

  return result;
}

void sub_8534(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained dataManager];

    [v3 addObserver:a1 forDataType:*(a1 + 144)];
    [v3 addObserver:a1 forDataType:*(a1 + 152)];
    [v3 addObserver:a1 forDataType:*(a1 + 160)];
    [v3 addObserver:a1 forDataType:*(a1 + 168)];
    [v3 addObserver:a1 forDataType:*(a1 + 208)];
    [v3 addObserver:a1 forDataType:*(a1 + 240)];
    [v3 addObserver:a1 forDataType:*(a1 + 192)];
  }
}

void sub_8630(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 280) & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_8788, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 addObserver:a1 selector:"_didReceiveSignificantTimeChangeNotification" name:NSCalendarDayChangedNotification object:0];

      objc_initWeak(&location, a1);
      v4 = *(a1 + 16);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_8790;
      v5[3] = &unk_34A50;
      objc_copyWeak(&v6, &location);
      notify_register_dispatch("HDActivityCacheForceRebuild", (a1 + 296), v4, v5);
      *(a1 + 280) = 1;
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void sub_8760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8790(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "Forcing cache rebuild", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_1F83C(WeakRetained);
    sub_DA8(v4);
  }
}

void sub_8900(uint64_t a1)
{
  if (a1)
  {
    v2 = [HDActivityCacheManager calendar]_0(a1);
    v3 = [v2 timeZone];
    v4 = sub_1F7F4(a1);
    v5 = _HKActivityCacheDateComponentsFromDate();
    v6 = _HKCacheIndexFromDateComponents();
    if (v6 == *(a1 + 32))
    {
      if ([v3 isEqual:*(a1 + 64)])
      {
LABEL_10:

        return;
      }

      _HKInitializeLogging();
      v7 = HKLogActivityCache;
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 64);
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&def_21990, v7, OS_LOG_TYPE_DEFAULT, "Time zone changed (%{public}@ -> %{public}@), rebuilding caches", &v11, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogActivityCache;
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 134218240;
        v12 = v10;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&def_21990, v9, OS_LOG_TYPE_DEFAULT, "Day changed (%lld -> %lld), rebuilding caches", &v11, 0x16u);
      }

      [*(a1 + 136) reportTargetDayHeartRateAnalytics];
    }

    [*(a1 + 264) execute];
    goto LABEL_10;
  }
}

void sub_8CB8(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&def_21990, v2, OS_LOG_TYPE_DEFAULT, "Workout manager did update current workout: %{public}@", &v7, 0xCu);
  }

  *(*(a1 + 40) + 300) = *(a1 + 32) != 0;
  if ((*(*(a1 + 40) + 300) & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&def_21990, v4, OS_LOG_TYPE_DEFAULT, "Workout no longer active, invalidating access assertion", &v7, 2u);
    }

    [*(*(a1 + 40) + 304) invalidate];
    v5 = *(a1 + 40);
    v6 = *(v5 + 304);
    *(v5 + 304) = 0;
  }
}

void sub_9098(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v2 == *(v3 + 32))
  {
    v4 = [*(v3 + 136) targetDayStatisticsBuilder];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (v2 == *(v3 + 40))
  {
    v4 = [*(v3 + 136) previousDayStatisticsBuilder];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  (*(a1[5] + 16))();
}

void sub_922C(uint64_t a1)
{
  [*(*(a1 + 32) + 272) addObject:*(a1 + 40)];
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    sub_204A0();
  }

  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  sub_5F74(*(a1 + 32), v2);
  sub_5FFC(*(a1 + 32), v2);
  sub_6084(*(a1 + 32), v2, *(*(a1 + 32) + 112));
  sub_6084(*(a1 + 32), v2, *(*(a1 + 32) + 120));
}

void sub_93D0(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
  {
    sub_204D4();
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) activityCacheManager:*(a1 + 40) changedTodayActivityCache:{*(a1 + 48), v6}];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_950C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        _HKInitializeLogging();
        v7 = HKLogActivityCache;
        if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEBUG))
        {
          sub_20508(&v8, v9, v7);
        }

        if (objc_opt_respondsToSelector())
        {
          [v6 activityCacheManager:*(a1 + 40) changedYesterdayActivityCache:*(a1 + 48)];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_9680(uint64_t a1)
{
  v2 = [*(a1 + 32) activityCacheIndex];
  v3 = *(*(a1 + 40) + 32);
  _HKInitializeLogging();
  v4 = HKLogHeartRate;
  if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 48);
    if (v2 == v3)
    {
      v5 = @"YES";
    }

    *buf = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&def_21990, v4, OS_LOG_TYPE_DEFAULT, "heart rate summary changed, is today = %{public}@, notifying observers: %{public}@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 activityCacheManager:*(a1 + 40) changedHeartRateSummary:*(a1 + 56) isToday:{v2 == v3, v12}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_9A88(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_9AB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_9AF8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

void sub_9B18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_9B50(void **a1)
{
  v2 = *a1;

  return v2;
}

void sub_9B70(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
}

uint64_t HDActivityCacheActiveSource::HDActivityCacheActiveSource(uint64_t a1, uint64_t a2, char **a3, double a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = a4;
  *(a1 + 8) = a2;
  if ((a1 + 16) != a3)
  {
    sub_A42C((a1 + 16), *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  return a1;
}

void sub_9BEC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_A1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    v20 = HKLogActivityCache;
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20598(v19, v20);
    }

    __cxa_rethrow();
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A2CC(uint64_t a1, __int128 *a2)
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
      sub_AE0C(a1, v11);
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

void *sub_A42C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_A558(v6, v10);
    }

    sub_A594();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_A558(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_A5AC(a1, a2);
  }

  sub_A594();
}

void sub_A5AC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_A684();
}

void sub_A5F4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_A650(exception, a1);
}

std::logic_error *sub_A650(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_A684()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_A6B8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_A7E4(v6, v10);
    }

    sub_A594();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_A7E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_A820(a1, a2);
  }

  sub_A594();
}

void sub_A820(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_A684();
}

void sub_A868(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_A9DC(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_AA1C(a1, v10);
    }

    sub_A594();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    sub_AC20(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 24);
        if (v15)
        {
          *(v14 - 16) = v15;
          operator delete(v15);
        }

        v14 -= 40;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_AC20(&v16, a2, a2 + v11, v8);
    a1[1] = sub_AA68(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_A9DC(uint64_t *a1)
{
  if (*a1)
  {
    sub_AC98(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_AA1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_ACE8(a1, a2);
  }

  sub_A594();
}

uint64_t sub_AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_AB24(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_A558(result, a4);
  }

  return result;
}

void sub_AB84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_ABA0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_ABD8(a1);
  }

  return a1;
}

void sub_ABD8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 40;
  }
}

uint64_t sub_AC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        sub_A42C((a4 + 16), *(v5 + 16), *(v5 + 24), (*(v5 + 24) - *(v5 + 16)) >> 3);
      }

      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_AC98(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_ACE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_A684();
}

uint64_t sub_AD40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_ADC0(result, a4);
  }

  return result;
}

void sub_ADA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_ADC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_AE0C(a1, a2);
  }

  sub_A594();
}

void sub_AE0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_A684();
}

__n128 sub_AE64(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  n128_f64 = a2[-3].n128_f64;
  v11 = &a2[-5].n128_f64[1];
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
        v76 = a2[-2].n128_f64[1];
        v71 = (a2 - 24);
        result.n128_f64[0] = v76;
        if (v76 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 3);
      v78 = v12[3];
      v79 = (v12 + 6);
      v80 = v12[6];
      if (v78 >= *v12)
      {
        if (v80 < v78)
        {
          v84 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
          *(v12 + 8) = v84;
          if (v12[3] < *v12)
          {
            v140 = *(v12 + 2);
            v112 = *v12;
            *v12 = *v70;
            v12[2] = v12[5];
            *v70 = v112;
            *(v12 + 5) = v140;
          }
        }
      }

      else
      {
        if (v80 < v78)
        {
          v139 = *(v12 + 2);
          v111 = *v12;
          *v12 = *v79;
          v12[2] = v12[8];
          *v79 = v111;
          v81 = v139;
          goto LABEL_102;
        }

        v141 = *(v12 + 2);
        v114 = *v12;
        *v12 = *v70;
        v12[2] = v12[5];
        *v70 = v114;
        *(v12 + 5) = v141;
        if (v80 < v12[3])
        {
          v81 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
LABEL_102:
          *(v12 + 8) = v81;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v79->n128_f64[0])
      {
        return result;
      }

      v88 = *(v12 + 8);
      result = *v79;
      v89 = a2[-1].n128_u64[1];
      *v79 = *v9;
      *(v12 + 8) = v89;
      *v9 = result;
      a2[-1].n128_u64[1] = v88;
      result.n128_u64[0] = v79->n128_u64[0];
      if (v79->n128_f64[0] >= v70->n128_f64[0])
      {
        return result;
      }

      v90 = *(v12 + 5);
      result = *v70;
      *v70 = *v79;
      v12[5] = v12[8];
      *v79 = result;
      *(v12 + 8) = v90;
LABEL_106:
      result.n128_f64[0] = v12[3];
      if (result.n128_f64[0] < *v12)
      {
        v142 = *(v12 + 2);
        v115 = *v12;
        *v12 = *v70;
        v12[2] = v70[1].n128_f64[0];
        result = v115;
        *v70 = v115;
        v70[1].n128_u64[0] = v142;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_B9EC(v12, (v12 + 3), v12 + 3, (v12 + 9), &a2[-2].n128_u64[1], result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        sub_BC34(v12, a2);
      }

      else if (v12 != a2)
      {
        v85 = v12 + 3;
        while (v85 != a2)
        {
          v86 = v85;
          result.n128_u64[0] = a1[1].n128_u64[1];
          if (result.n128_f64[0] < a1->n128_f64[0])
          {
            v113 = a1[2];
            do
            {
              *v85 = *(v85 - 3);
              v85[2] = *(v85 - 1);
              v87 = *(v85 - 6);
              v85 -= 3;
            }

            while (result.n128_f64[0] < v87);
            *v85 = result.n128_f64[0];
            result = v113;
            *(v85 + 1) = v113;
          }

          v85 = &v86[1].n128_f64[1];
          a1 = v86;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_C314(v12, a2, a2, a3, result);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[3 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = v18->n128_f64[0];
      if (v18->n128_f64[0] >= *v12)
      {
        if (v19 < v20)
        {
          v118 = v18[1].n128_u64[0];
          v94 = *v18;
          v24 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v24;
          *v9 = v94;
          a2[-1].n128_u64[1] = v118;
          if (v18->n128_f64[0] < *v12)
          {
            v119 = *(v12 + 2);
            v95 = *v12;
            v25 = *v18;
            v12[2] = v18[1].n128_f64[0];
            *v12 = v25;
            v18[1].n128_u64[0] = v119;
            *v18 = v95;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v116 = *(v12 + 2);
          v92 = *v12;
          v21 = *v9;
          v12[2] = a2[-1].n128_f64[1];
          *v12 = v21;
          goto LABEL_27;
        }

        v122 = *(v12 + 2);
        v98 = *v12;
        v28 = *v18;
        v12[2] = v18[1].n128_f64[0];
        *v12 = v28;
        v18[1].n128_u64[0] = v122;
        *v18 = v98;
        if (*v9 < v18->n128_f64[0])
        {
          v116 = v18[1].n128_u64[0];
          v92 = *v18;
          v29 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v29;
LABEL_27:
          *v9 = v92;
          a2[-1].n128_u64[1] = v116;
        }
      }

      v30 = (v12 + 3);
      v31 = &v12[3 * v17];
      v33 = *(v31 - 3);
      v32 = (v31 - 3);
      v34 = v33;
      v35 = *n128_f64;
      if (v33 >= v12[3])
      {
        if (v35 < v34)
        {
          v123 = v32[1].n128_u64[0];
          v99 = *v32;
          v39 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v39;
          *n128_f64 = v99;
          a2[-2].n128_u64[0] = v123;
          if (v32->n128_f64[0] < v30->n128_f64[0])
          {
            v40 = *v30;
            v124 = *(v12 + 5);
            v41 = v32[1].n128_i64[0];
            *v30 = *v32;
            *(v12 + 5) = v41;
            v32[1].n128_u64[0] = v124;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v34)
      {
        v44 = *v30;
        v126 = *(v12 + 5);
        v45 = v32[1].n128_i64[0];
        *v30 = *v32;
        *(v12 + 5) = v45;
        v32[1].n128_u64[0] = v126;
        *v32 = v44;
        if (*n128_f64 < v32->n128_f64[0])
        {
          v127 = v32[1].n128_u64[0];
          v101 = *v32;
          v46 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v46;
          *n128_f64 = v101;
          a2[-2].n128_u64[0] = v127;
        }
      }

      else
      {
        v36 = *(v12 + 5);
        v37 = *v30;
        v38 = a2[-2].n128_u64[0];
        *v30 = *n128_f64;
        *(v12 + 5) = v38;
        *n128_f64 = v37;
        a2[-2].n128_u64[0] = v36;
      }

      v47 = (v12 + 6);
      v48 = &v12[3 * v17];
      v50 = v48[3];
      v49 = (v48 + 3);
      v51 = v50;
      v52 = *v11;
      if (v50 >= v12[6])
      {
        if (v52 < v51)
        {
          v128 = v49[1].n128_u64[0];
          v102 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          *v11 = v102;
          a2[-4].n128_u64[1] = v128;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v129 = *(v12 + 8);
            v58 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 8) = v58;
            v49[1].n128_u64[0] = v129;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v51)
      {
        v59 = *v47;
        v130 = *(v12 + 8);
        v60 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 8) = v60;
        v49[1].n128_u64[0] = v130;
        *v49 = v59;
        if (*v11 < v49->n128_f64[0])
        {
          v131 = v49[1].n128_u64[0];
          v103 = *v49;
          v61 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v61;
          *v11 = v103;
          a2[-4].n128_u64[1] = v131;
        }
      }

      else
      {
        v53 = *(v12 + 8);
        v54 = *v47;
        v55 = a2[-4].n128_u64[1];
        *v47 = *v11;
        *(v12 + 8) = v55;
        *v11 = v54;
        a2[-4].n128_u64[1] = v53;
      }

      v62 = v18->n128_f64[0];
      v63 = v49->n128_f64[0];
      if (v18->n128_f64[0] >= v32->n128_f64[0])
      {
        if (v63 < v62)
        {
          v133 = v18[1].n128_u64[0];
          v105 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v133;
          *v49 = v105;
          if (v18->n128_f64[0] < v32->n128_f64[0])
          {
            v134 = v32[1].n128_u64[0];
            v106 = *v32;
            *v32 = *v18;
            v32[1].n128_u64[0] = v18[1].n128_u64[0];
            v18[1].n128_u64[0] = v134;
            *v18 = v106;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v132 = v32[1].n128_u64[0];
          v104 = *v32;
          *v32 = *v49;
          v32[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_55;
        }

        v135 = v32[1].n128_u64[0];
        v107 = *v32;
        *v32 = *v18;
        v32[1].n128_u64[0] = v18[1].n128_u64[0];
        v18[1].n128_u64[0] = v135;
        *v18 = v107;
        if (v49->n128_f64[0] < v18->n128_f64[0])
        {
          v132 = v18[1].n128_u64[0];
          v104 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_55:
          v49[1].n128_u64[0] = v132;
          *v49 = v104;
        }
      }

      v136 = *(v12 + 2);
      v108 = *v12;
      v64 = *v18;
      v12[2] = v18[1].n128_f64[0];
      *v12 = v64;
      v18[1].n128_u64[0] = v136;
      *v18 = v108;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v12 >= v18->n128_f64[0])
    {
      if (v19 < v22)
      {
        v120 = *(v12 + 2);
        v96 = *v12;
        v26 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v26;
        *v9 = v96;
        a2[-1].n128_u64[1] = v120;
        if (*v12 < v18->n128_f64[0])
        {
          v121 = v18[1].n128_u64[0];
          v97 = *v18;
          v27 = *v12;
          v18[1].n128_f64[0] = v12[2];
          *v18 = v27;
          *(v12 + 2) = v121;
          *v12 = v97;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v117 = v18[1].n128_u64[0];
        v93 = *v18;
        v23 = *v9;
        v18[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v18 = v23;
LABEL_36:
        *v9 = v93;
        a2[-1].n128_u64[1] = v117;
        goto LABEL_57;
      }

      v125 = v18[1].n128_u64[0];
      v100 = *v18;
      v42 = *v12;
      v18[1].n128_f64[0] = v12[2];
      *v18 = v42;
      *(v12 + 2) = v125;
      *v12 = v100;
      if (*v9 < *v12)
      {
        v117 = *(v12 + 2);
        v93 = *v12;
        v43 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = sub_BCD4(v12, a2->n128_f64);
      goto LABEL_64;
    }

    v65 = sub_BDBC(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = sub_BEA4(v12, v65, v66);
    v12 = (v65 + 24);
    if (sub_BEA4(v65 + 24, a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      sub_AE64(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 24);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 3);
  result.n128_f64[0] = v12[3];
  v72 = a2[-2].n128_f64[1];
  v71 = (a2 - 24);
  v73 = v72;
  if (result.n128_f64[0] >= *v12)
  {
    if (v73 >= result.n128_f64[0])
    {
      return result;
    }

    v82 = *(v12 + 5);
    result = *v70;
    v83 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v83;
    *v71 = result;
    v71[1].n128_u64[0] = v82;
    goto LABEL_106;
  }

  if (v73 < result.n128_f64[0])
  {
LABEL_75:
    v138 = *(v12 + 2);
    v110 = *v12;
    v77 = *v71;
    v12[2] = v71[1].n128_f64[0];
    *v12 = v77;
    result = v110;
    *v71 = v110;
    v71[1].n128_u64[0] = v138;
    return result;
  }

  v137 = *(v12 + 2);
  v109 = *v12;
  *v12 = *v70;
  v12[2] = v12[5];
  *v70 = v109;
  *(v12 + 5) = v137;
  result.n128_u64[0] = v71->n128_u64[0];
  if (v71->n128_f64[0] < v12[3])
  {
    v74 = *(v12 + 5);
    result = *v70;
    v75 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v75;
    *v71 = result;
    v71[1].n128_u64[0] = v74;
  }

  return result;
}

__n128 sub_B9EC(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
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
      if (a2->n128_f64[0] < a1->n128_f64[0])
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
    if (a3->n128_f64[0] < a2->n128_f64[0])
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
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
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

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
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

uint64_t sub_BC34(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (v6 < *v4)
        {
          v10 = *(v4 + 32);
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
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

double *sub_BCD4(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (*a1 >= *(a2 - 3))
  {
    v6 = (a1 + 3);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 = (v6 + 24);
    }

    while (v2 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[3];
      v4 += 3;
    }

    while (v2 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v7);
  }

  while (v4 < a2)
  {
    v15 = *(v4 + 2);
    v14 = *v4;
    v8 = *a2;
    v4[2] = a2[2];
    *v4 = v8;
    *(a2 + 2) = v15;
    *a2 = v14;
    do
    {
      v9 = v4[3];
      v4 += 3;
    }

    while (v2 >= v9);
    do
    {
      v10 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v10);
  }

  if (v4 - 3 != a1)
  {
    v11 = *(v4 - 3);
    a1[2] = *(v4 - 1);
    *a1 = v11;
  }

  *(v4 - 3) = v2;
  *(v4 - 1) = v13;
  return v4;
}

uint64_t sub_BDBC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v5 = *(a1 + v2 + 24);
    v2 += 24;
  }

  while (v5 < v3);
  v6 = a1 + v2;
  if (v2 == 24)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 24);
      a2 -= 24;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  v9 = (a1 + v2);
  if (v6 < a2)
  {
    v10 = a2;
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
        v14 = *(v9 + 3);
        v9 = (v9 + 24);
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 24);
        v10 -= 24;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  if ((v9 - 24) != a1)
  {
    v16 = *(v9 - 24);
    *(a1 + 16) = *(v9 - 1);
    *a1 = v16;
  }

  *(v9 - 3) = v3;
  *(v9 - 1) = v18;
  return v9 - 24;
}

BOOL sub_BEA4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_B9EC(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_C314(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = sub_C520(a1, a5, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if (v14->n128_f64[0] < *a1)
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = *(a1 + 16);
          *v14 = *a1;
          v14[1].n128_u64[0] = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          sub_C520(a1, v16, a4, v10, a1);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      do
      {
        v19 = 0;
        v31 = *a1;
        v32 = *(a1 + 16);
        v20 = a1;
        do
        {
          v21 = v20;
          v22 = v20 + 24 * v19;
          v20 = v22 + 24;
          v23 = 2 * v19;
          v19 = (2 * v19) | 1;
          v24 = v23 + 2;
          if (v24 < v18)
          {
            v26 = *(v22 + 48);
            v25 = v22 + 48;
            if (*(v25 - 24) < v26)
            {
              v20 = v25;
              v19 = v24;
            }
          }

          v27 = *v20;
          v21[1].n128_u64[0] = *(v20 + 16);
          *v21 = v27;
        }

        while (v19 <= ((v18 - 2) >> 1));
        v7 = (v7 - 24);
        if (v20 == v7)
        {
          *(v20 + 16) = v32;
          *v20 = v31;
        }

        else
        {
          v28 = *v7;
          *(v20 + 16) = v7[1].n128_u64[0];
          *v20 = v28;
          *v7 = v31;
          v7[1].n128_u64[0] = v32;
          sub_C620(a1, v20 + 24, v31, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_C520(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    if (v5 >= (0xAAAAAAAAAAAAAAABLL * ((a5 - a1) >> 3)))
    {
      v6 = (0x5555555555555556 * ((a5 - a1) >> 3)) | 1;
      v7 = (a1 + 24 * v6);
      if (0x5555555555555556 * ((a5 - a1) >> 3) + 2 < a4 && *v7 < *(v7 + 3))
      {
        v7 = (v7 + 24);
        v6 = 0x5555555555555556 * ((a5 - a1) >> 3) + 2;
      }

      result.n128_u64[0] = *a5;
      if (*v7 >= *a5)
      {
        v12 = *(a5 + 8);
        do
        {
          v8 = a5;
          a5 = v7;
          v9 = *v7;
          *(v8 + 2) = *(v7 + 2);
          *v8 = v9;
          if (v5 < v6)
          {
            break;
          }

          v10 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (a1 + 24 * v6);
          v11 = v10 + 2;
          if (v11 < a4 && *v7 < *(v7 + 3))
          {
            v7 = (v7 + 24);
            v6 = v11;
          }
        }

        while (*v7 >= result.n128_f64[0]);
        *a5 = result.n128_u64[0];
        result = v12;
        *(a5 + 8) = v12;
      }
    }
  }

  return result;
}

__n128 sub_C620(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 >= 2)
  {
    v5 = (a5 - 2) >> 1;
    v6 = (a1 + 24 * v5);
    v7 = (a2 - 24);
    result.n128_u64[0] = *(a2 - 24);
    if (*v6 < result.n128_f64[0])
    {
      v10 = *(a2 - 16);
      do
      {
        v8 = v7;
        v7 = v6;
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 24 * v5);
      }

      while (*v6 < result.n128_f64[0]);
      *v7 = result.n128_u64[0];
      result = v10;
      *(v7 + 8) = v10;
    }
  }

  return result;
}

uint64_t sub_C69C(uint64_t *a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_A594();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_ACE8(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  sub_C7E4(40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = 40 * v4 + *a1 - v9;
  sub_C87C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_C940(&v15);
  return v14;
}

void sub_C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_C940(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C7E4(uint64_t a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_AB24(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  HDActivityCacheActiveSource::HDActivityCacheActiveSource(a1, v6, &__p, v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_C860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }
  }

  return sub_ABA0(v9);
}

uint64_t sub_C940(uint64_t a1)
{
  sub_C978(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C978(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 40;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

uint64_t sub_C9D8(uint64_t *a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_A594();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_ACE8(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  sub_CB20(40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = 40 * v4 + *a1 - v9;
  sub_C87C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_C940(&v15);
  return v14;
}

void sub_CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_C940(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CB20(uint64_t a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_AB24(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  HDActivityCacheActiveSource::HDActivityCacheActiveSource(a1, v6, &__p, v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_CB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_CBB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_AC98(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_CC0C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_D184(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 createMoveStatisticsWithIntervalComponents:*(*(a1 + 40) + 8) calendar:*(*(a1 + 40) + 16)];
  [*(a1 + 32) setActiveEnergyResults:v3];

  v4 = [v7 createMoveMinuteStatisticsWithIntervalComponents:*(*(a1 + 40) + 8) calendar:*(*(a1 + 40) + 16)];
  [*(a1 + 32) setAppleMoveTimeResults:v4];

  v5 = [v7 createExerciseStatisticsWithIntervalComponents:*(*(a1 + 40) + 8) calendar:*(*(a1 + 40) + 16)];
  [*(a1 + 32) setAppleExerciseTimeResults:v5];

  v6 = [v7 createStandStatisticsWithCalendar:*(*(a1 + 40) + 16)];
  [*(a1 + 32) setAppleStandHourResults:v6];
}

uint64_t sub_DCE4(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*(result + 400) || (*(result + 32) & 1) != 0)
    {
      return 1;
    }

    v4 = sub_28CC(result);
    v5 = [v4 startDate];
    v6 = HDSampleEntityPredicateForStartDate();

    v7 = *(v2 + 96);
    WeakRetained = objc_loadWeakRetained((v2 + 360));
    v34 = 0;
    v9 = [HDSampleEntity mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:v6 anchor:0 error:&v34];
    v10 = v34;

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_F3A8;
    v33[3] = &unk_34B60;
    v33[4] = v2;
    v11 = objc_retainBlock(v33);
    v12 = v11;
    if (v10)
    {
      (v11[2])(v11, v10, @"Activation Sample error");
      v13 = v10;
    }

    else
    {
      if (v9)
      {
        v16 = objc_loadWeakRetained((v2 + 360));
        v32 = 0;
        v30 = [HDSampleEntity dataEntityForObject:v9 profile:v16 error:&v32];
        v17 = v32;

        if (!v30)
        {
          (v12)[2](v12, v17, @"Sample Entity lookup failure");
          v26 = v17;
          v13 = v26;
          if (v26)
          {
            if (a2)
            {
              v27 = v26;
              *a2 = v13;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v35 = v13 == 0;
          goto LABEL_19;
        }

        v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v30 persistentID]);
        v19 = objc_loadWeakRetained((v2 + 360));
        v31 = v17;
        v20 = [HDSampleEntity sourceIDForObjectID:v18 type:1 profile:v19 errorOut:&v31];
        v21 = v31;

        if (!v20)
        {
          (v12)[2](v12, v21, @"Source ID lookup failure");
          v28 = v21;
          v13 = v28;
          if (v28)
          {
            if (a2)
            {
              v29 = v28;
              *a2 = v13;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v35 = v13 == 0;
          goto LABEL_19;
        }

        [v9 _startTimestamp];
        v23 = v22;
        [v9 _endTimestamp];
        HDActivityCacheStatisticsBuilderSample::HDActivityCacheStatisticsBuilderSample(&buf, v23, v24, 0.0, [v20 longLongValue]);
        __src = buf;
        sub_12950((v2 + 8), &__src, &buf, 1uLL);
      }

      else
      {
        v21 = 0;
        sub_12950((v2 + 8), 0, 0, 0);
      }

      _HKInitializeLogging();
      v25 = HKLogActivityCache;
      v15 = 1;
      if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.var0) = 138412290;
        *(&buf.var0 + 4) = v9;
        _os_log_impl(&def_21990, v25, OS_LOG_TYPE_INFO, "Successfully primed previous activation log entry %@", &buf, 0xCu);
      }

      *(v2 + 32) = 1;
      v13 = v21;
      if (!v13)
      {
LABEL_18:

        v35 = v15;
LABEL_19:

        return v35;
      }
    }

    if (a2)
    {
      v14 = v13;
      v15 = 0;
      *a2 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_E1E8(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 400) || *(a1 + 32) != 1)
  {
    return 1;
  }

  if (!*(a1 + 368))
  {
    sub_20BBC(a1);
    v21 = [[HDActivityCacheStatisticsBuilder alloc] initWithDateInterval:*(a1 + 400) loggingName:*(a1 + 432)];
    v22 = *(a1 + 368);
    *(a1 + 368) = v21;

    v23 = [[HDActivityCacheHeartRateStatisticsBuilder alloc] initWithDateInterval:*(a1 + 400) activityCacheIndex:*(a1 + 416)];
    v24 = *(a1 + 384);
    *(a1 + 384) = v23;

    if (*(a1 + 408))
    {
      v25 = [[HDActivityCacheStatisticsBuilder alloc] initWithDateInterval:*(a1 + 408) loggingName:*(a1 + 440)];
      v26 = *(a1 + 376);
      *(a1 + 376) = v25;

      v27 = [[HDActivityCacheHeartRateStatisticsBuilder alloc] initWithDateInterval:*(a1 + 408) activityCacheIndex:*(a1 + 424)];
      v28 = 392;
    }

    else
    {
      v27 = 0;
      v28 = 376;
    }

    v29 = *(a1 + v28);
    *(a1 + v28) = v27;

    [*(a1 + 368) setSourceDelegate:a1];
    [*(a1 + 376) setSourceDelegate:a1];
    if (*(a1 + 16) != *(a1 + 8))
    {
      [*(a1 + 368) addActivationLogSamples:a1 + 8];
      [*(a1 + 376) addActivationLogSamples:a1 + 8];
    }
  }

  v4 = [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierDateOfBirth];
  WeakRetained = objc_loadWeakRetained((a1 + 360));
  v6 = [WeakRetained userCharacteristicsManager];
  v34 = 0;
  v7 = [v6 userCharacteristicForType:v4 error:&v34];
  v8 = v34;

  if (v7)
  {
    [*(a1 + 384) setDateOfBirthComponents:v7];
    [*(a1 + 392) setDateOfBirthComponents:v7];
  }

  else if (v8)
  {
    _HKInitializeLogging();
    v10 = HKLogActivityCache;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543874;
      v36 = v11;
      v37 = 2082;
      v38 = "[HDActivityCacheDataSource _updateStatisticsBuildersWithError:]";
      v39 = 2114;
      v40 = v8;
      v12 = v11;
      _os_log_impl(&def_21990, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@.%{public}s] Error fetching date of birth components: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    [*(a1 + 384) setDateOfBirthComponents:0];
    [*(a1 + 392) setDateOfBirthComponents:0];
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  v9 = sub_E6C8(a1, &v31, &v32);
  v13 = v31;
  v14 = v13;
  if (v9)
  {
    v30 = v13;
    v9 = sub_EE74(a1, &v30, &v33);
    v15 = v30;

    v14 = v15;
  }

  _HKInitializeLogging();
  v16 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v36 = v33;
    v37 = 2048;
    v38 = v32;
    _os_log_impl(&def_21990, v16, OS_LOG_TYPE_INFO, "Updated statistics builders with %ld quantity samples and %ld non-quantity samples", buf, 0x16u);
  }

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
    {
      sub_20C18();
    }

    sub_20BBC(a1);
  }

  v17 = v14;
  v18 = v17;
  if (v17)
  {
    if (a2)
    {
      v19 = v17;
      *a2 = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v9;
}

void sub_E5E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v8 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20C8C(v8);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

id sub_E6C8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 96);
  v105 = *(a1 + 88);
  v106 = *(a1 + 72);
  v7 = *(a1 + 104);
  v107 = v6;
  v108 = v7;
  v22 = [NSArray arrayWithObjects:&v105 count:5];
  v21 = sub_F70C(a1, v22);
  v96 = 0;
  v97 = &v96;
  v98 = 0x4812000000;
  v99 = sub_FA28;
  v100 = sub_FA4C;
  v101 = &unk_275D6;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x4812000000;
  v90 = sub_FA28;
  v91 = sub_FA4C;
  v92 = &unk_275D6;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x4812000000;
  v81 = sub_FA64;
  v82 = sub_FA88;
  v83 = &unk_275D6;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x4812000000;
  v72 = sub_FA64;
  v73 = sub_FA88;
  v74 = &unk_275D6;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x4812000000;
  v63 = sub_FAA0;
  v64 = sub_FAC4;
  v65 = &unk_275D6;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x4812000000;
  v54 = sub_FAA0;
  v55 = sub_FAC4;
  v56 = &unk_275D6;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4812000000;
  v45 = sub_FADC;
  v46 = sub_FB00;
  v47 = &unk_275D6;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v20 = objc_alloc_init(HKDateIntervalTree);
  v8 = [*(a1 + 400) startDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v19 = +[NSCalendar hk_gregorianCalendarWithUTCTimeZone];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 360));
  v12 = [WeakRetained database];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_FB18;
  v23[3] = &unk_34BD8;
  v13 = v21;
  v24 = v13;
  v14 = v22;
  v25 = v14;
  v26 = a1;
  v37 = v10;
  v29 = &v87;
  v30 = &v96;
  v31 = &v69;
  v32 = &v78;
  v33 = &v51;
  v34 = &v60;
  v15 = v19;
  v27 = v15;
  v35 = &v42;
  v16 = v20;
  v28 = v16;
  v36 = &v38;
  v17 = [HDDataEntity performReadTransactionWithHealthDatabase:v12 error:a2 block:v23];

  if (a3)
  {
    *a3 = v39[3];
  }

  if (v17)
  {
    if (v43[7] != v43[6])
    {
      [*(a1 + 368) addActivationLogSamples:v43 + 6];
      [*(a1 + 376) addActivationLogSamples:v43 + 6];
    }

    if (v97[7] != v97[6])
    {
      [*(a1 + 368) addWorkouts:v97 + 6];
      [*(a1 + 384) addWorkouts:v97 + 6];
    }

    if (v88[7] != v88[6])
    {
      [*(a1 + 376) addWorkouts:v88 + 6];
      [*(a1 + 392) addWorkouts:v88 + 6];
    }

    if (v61[7] != v61[6])
    {
      [*(a1 + 384) addBreatheSessions:v61 + 6];
    }

    if (v52[7] != v52[6])
    {
      [*(a1 + 392) addBreatheSessions:v52 + 6];
    }

    if (v79[7] != v79[6])
    {
      [*(a1 + 368) addStandHourSamples:v79 + 6];
    }

    if (v70[7] != v70[6])
    {
      [*(a1 + 376) addStandHourSamples:v70 + 6];
    }

    [*(a1 + 384) addAsleepTimeIntervals:{v16, v19}];
    [*(a1 + 392) addAsleepTimeIntervals:v16];
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v51, 8);
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  _Block_object_dispose(&v60, 8);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  _Block_object_dispose(&v69, 8);
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  _Block_object_dispose(&v78, 8);
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  _Block_object_dispose(&v87, 8);
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  _Block_object_dispose(&v96, 8);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  return v17;
}

void sub_ECF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose(&a35, 8);
  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a44, 8);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  _Block_object_dispose(&a53, 8);
  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  _Block_object_dispose(&a62, 8);
  if (a68)
  {
    a69 = a68;
    operator delete(a68);
  }

  _Block_object_dispose(&a71, 8);
  v75 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v75;
    operator delete(v75);
  }

  _Block_object_dispose(&STACK[0x238], 8);
  v76 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v76;
    operator delete(v76);
  }

  _Block_object_dispose((v73 - 224), 8);
  v77 = *(v73 - 176);
  if (v77)
  {
    *(v73 - 168) = v77;
    operator delete(v77);
  }

  _Unwind_Resume(a1);
}

id sub_EE74(id *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v23 = [a1[15] allObjects];
  v6 = +[_HKBehavior sharedBehavior];
  v7 = [v6 features];
  v8 = [v7 workoutSeriesAggregation];

  v9 = sub_10A00(a1, v23);
  v10 = [a1[50] startDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  [a1[56] timeIntervalSinceReferenceDate];
  v14 = v13;
  v53 = 0;
  v54 = &v53;
  v55 = 0x4812000000;
  v56 = sub_10EAC;
  v57 = sub_10ED0;
  v58 = &unk_275D6;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x4812000000;
  v47 = sub_10EAC;
  v48 = sub_10ED0;
  v49 = &unk_275D6;
  v51 = 0;
  v52 = 0;
  __p = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0xFFEFFFFFFFFFFFFFLL;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0x8000000000000000;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10EE8;
  v37[3] = &unk_34C00;
  v37[5] = v12;
  v37[4] = a1;
  v15 = objc_retainBlock(v37);
  WeakRetained = objc_loadWeakRetained(a1 + 45);
  v17 = [WeakRetained database];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1102C;
  v24[3] = &unk_34CC0;
  v18 = v9;
  v25 = v18;
  v19 = v23;
  v26 = v19;
  v27 = a1;
  v36 = v8;
  v34 = v14;
  v35 = v12;
  v29 = &v44;
  v30 = &v53;
  v31 = v43;
  v20 = v15;
  v28 = v20;
  v32 = v42;
  v33 = &v38;
  v21 = [HDDataEntity performReadTransactionWithHealthDatabase:v17 error:a2 block:v24];

  if (a3)
  {
    *a3 = v39[3];
  }

  if (v21)
  {
    if (v54[7] != v54[6])
    {
      [a1[48] addHeartRateSamples:v54 + 6];
    }

    if (v45[7] != v45[6])
    {
      [a1[49] addHeartRateSamples:v45 + 6];
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v44, 8);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v53, 8);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return v21;
}

void sub_F228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v56 - 192), 8);
  v59 = *(v56 - 144);
  if (v59)
  {
    *(v56 - 136) = v59;
    operator delete(v59);
  }

  if (a2 == 1)
  {
    v60 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20D34(v60);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_F3A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_12950((*(a1 + 32) + 8), 0, 0, 0);
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_ERROR))
  {
    sub_20DDC();
  }

  *(*(a1 + 32) + 32) = 0;
}

BOOL sub_F610(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 <= 74)
  {
    if ((a2 - 7) <= 0x3F)
    {
      if (((1 << (a2 - 7)) & 0x2B) == 0)
      {
        if (a2 != 70)
        {
          return 0;
        }

        goto LABEL_17;
      }

      goto LABEL_14;
    }

    return 0;
  }

  if (a2 <= 112)
  {
    if (a2 == 75)
    {
LABEL_17:
      v7 = +[_HKBehavior sharedBehavior];
      v6 = [v7 isStandalonePhoneFitnessMode] ^ 1;
LABEL_18:

      return v6;
    }

    if (a2 != 101)
    {
      return 0;
    }

LABEL_14:
    v7 = +[_HKBehavior sharedBehavior];
    v8 = [v7 isStandalonePhoneFitnessMode];
    if (a4 < a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    goto LABEL_18;
  }

  if (a2 == 113)
  {
    goto LABEL_14;
  }

  return a2 == 179;
}

id sub_F70C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = sub_F990(a1, [v3 count]);
      v8 = +[HDSampleEntity disambiguatedDatabaseTable];
      v9 = +[HDDataEntity disambiguatedDatabaseTable];
      v10 = +[HDDataProvenanceEntity disambiguatedDatabaseTable];
      v11 = +[HDCategorySampleEntity disambiguatedDatabaseTable];
      v12 = +[HDWorkoutActivityEntity disambiguatedDatabaseTable];
      v13 = [NSString stringWithFormat:@"SELECT o.%@, o.%@, s.%@, s.%@, s.%@, object_provenances.%@, (object_provenances.%@ LIKE '%%Watch%%'), object_provenances.%@, c.%@, activity.activity_type FROM %@ s INNER JOIN %@ o USING (%@) INNER JOIN %@ object_provenances on (o.%@ = object_provenances.rowid) LEFT JOIN %@ c USING (%@) LEFT JOIN %@ activity ON (o.%@ = activity.%@ AND activity.%@)WHERE o.%@ = ? AND s.%@ IN (%@) AND s.%@ > ? AND s.%@ < ? AND s.%@ > ? AND +o.%@ > ? GROUP BY o.%@ ORDER BY s.%@ ASC, o.%@ ASC", HDDataEntityPropertyDataID, HDDataEntityPropertyUUID, HDSampleEntityPropertyDataType, HDSampleEntityPropertyStartDate, HDSampleEntityPropertyEndDate, HDDataProvenanceEntityPropertySourceID, HDDataProvenanceEntityPropertyOriginProductType, HDDataProvenanceEntityPropertyDeviceID, HDCategorySampleEntityPropertyValue, v8, v9, HDDataEntityPropertyDataID, v10, HDDataEntityPropertyProvenance, v11, HDDataEntityPropertyDataID, v12, HDDataEntityPropertyDataID, HDWorkoutActivityEntityPropertyOwnerID, HDWorkoutActivityEntityPropertyIsPrimaryActivity, HDDataEntityPropertyType, HDSampleEntityPropertyDataType, v7, HDSampleEntityPropertyEndDate, HDSampleEntityPropertyStartDate, HDSampleEntityPropertyStartDate, HDDataEntityPropertyDataID, HDDataEntityPropertyDataID, HDSampleEntityPropertyStartDate, HDDataEntityPropertyDataID];;
      v14 = *(a1 + 56);
      *(a1 + 56) = v13;

      v6 = *(a1 + 56);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_F990(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = objc_alloc_init(NSMutableString);
    if (a2 >= 1)
    {
      do
      {
        if (a2 == 1)
        {
          v4 = @"?";
        }

        else
        {
          v4 = @"?, ";
        }

        [v3 appendString:v4];
        --a2;
      }

      while (a2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__n128 sub_FA28(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_FA4C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_FA64(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_FA88(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_FAA0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_FAC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_FADC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_FB00(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

id sub_FB18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_FCA4;
  v24[3] = &unk_34B88;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v25 = v7;
  v26 = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_FEB4;
  v15[3] = &unk_34BB0;
  v15[4] = v8;
  v23 = *(a1 + 136);
  v18 = *(a1 + 72);
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  v9 = *(a1 + 56);
  v10 = *(a1 + 120);
  v16 = v9;
  v21 = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 128);
  v17 = v11;
  v22 = v12;
  v13 = [v5 executeSQL:v6 error:a3 bindingHandler:v24 enumerationHandler:v15];

  return v13;
}

void sub_FCA4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = 2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        sqlite3_bind_int64(a2, v7++, [*(*(&v16 + 1) + 8 * i) code]);
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 2;
  }

  v9 = sub_28CC(*(a1 + 40));
  v10 = [v9 startDate];
  [v10 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7, v11);

  v12 = [v9 endDate];
  [v12 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7 + 1, v13);

  v14 = [v9 startDate];
  [v14 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7 + 2, v15 + -259200.0);

  sqlite3_bind_int64(a2, v7 + 3, *(*(a1 + 40) + 48));
}

uint64_t sub_FEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = HDSQLiteColumnAsInt64();
  v72 = HDSQLiteColumnAsUUID();
  v4 = HDSQLiteColumnAsInt64();
  HDSQLiteColumnAsDouble();
  v6 = v5;
  HDSQLiteColumnAsDouble();
  v8 = v7;
  v9 = HDSQLiteColumnAsInt64();
  v10 = HDSQLiteColumnAsBoolean();
  v11 = HDSQLiteColumnAsInt64();
  v12 = HDSQLiteColumnAsInt64();
  v13 = HDSQLiteColumnAsInt64();
  v14 = sub_1055C(*(a1 + 32), v9, a3);
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = *(a1 + 120);
  v16 = 64;
  if (v6 < v15)
  {
    v16 = 56;
  }

  v17 = 80;
  if (v6 < v15)
  {
    v17 = 72;
  }

  v18 = 96;
  if (v6 < v15)
  {
    v18 = 88;
  }

  v19 = *(a1 + 32);
  if (v6 >= v15)
  {
    v20 = 368;
  }

  else
  {
    v20 = 376;
  }

  if (v4 == 99)
  {
    v30 = *(*(a1 + v18) + 8);
    v31 = [NSDate dateWithTimeIntervalSinceReferenceDate:v8];
    v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    [v31 timeIntervalSinceDate:v32];
    v34 = v33;

    [*(v19 + v20) addDeepBreathingSessionDuration:v34];
    HDActivityCacheStatisticsBuilderBreatheSample::HDActivityCacheStatisticsBuilderBreatheSample(&v74, v6, v8, v72);
    v35 = v30[7];
    v36 = v30[8];
    if (v35 < v36)
    {
LABEL_46:
      v51 = *&v74.var2;
      *v35 = *&v74.var0;
      v35[1] = v51;
      v52 = (v35 + 2);
LABEL_60:
      v30[7] = v52;
      goto LABEL_61;
    }

    v37 = v30[6];
    v38 = (v35 - v37) >> 5;
    v39 = v38 + 1;
    if ((v38 + 1) >> 59)
    {
      sub_A594();
    }

    v40 = v36 - v37;
    if (v40 >> 4 > v39)
    {
      v39 = v40 >> 4;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFE0)
    {
      v41 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      sub_12AC0((v30 + 6), v41);
    }

LABEL_58:
    v61 = (32 * v38);
    v62 = 32 * v41;
    v63 = *&v74.var2;
    *v61 = *&v74.var0;
    v61[1] = v63;
    v52 = 32 * v38 + 32;
    v64 = v30[6];
    v65 = v30[7] - v64;
    v66 = 32 * v38 - v65;
    memcpy(v61 - v65, v64, v65);
    v67 = v30[6];
    v30[6] = v66;
    v30[7] = v52;
    v30[8] = v62;
    if (v67)
    {
      operator delete(v67);
    }

    goto LABEL_60;
  }

  if (v4 == 70)
  {
    v21 = *(*(a1 + v17) + 8);
    v22 = *(a1 + 40);
    v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    v24 = [v22 components:48 fromDate:v23];

    v25 = [v24 day];
    v26 = [v24 hour];
    v27 = v21[7];
    v28 = v21[8];
    if (v27 >= v28)
    {
      v45 = v21[6];
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v45) >> 3);
      v47 = v46 + 1;
      if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_A594();
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v45) >> 3);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        sub_12B08((v21 + 6), v49);
      }

      v53 = 24 * v46;
      *v53 = v25;
      *(v53 + 4) = v26;
      *(v53 + 8) = v12;
      *(v53 + 12) = 0;
      *(v53 + 16) = v6;
      v29 = 24 * v46 + 24;
      v54 = v21[6];
      v55 = v21[7] - v54;
      v56 = v53 - v55;
      memcpy((v53 - v55), v54, v55);
      v57 = v21[6];
      v21[6] = v56;
      v21[7] = v29;
      v21[8] = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v27 = v25;
      *(v27 + 4) = v26;
      *(v27 + 8) = v12;
      *(v27 + 12) = 0;
      v29 = v27 + 24;
      *(v27 + 16) = v6;
    }

    v21[7] = v29;

    goto LABEL_61;
  }

  v42 = *(*(a1 + v16) + 8);
  if (!v19 || (v10 & 1) != 0)
  {
    if (v4 == 63)
    {
      if (_HKCategoryValueSleepAnalysisIsAsleep())
      {
        [*(a1 + 48) insertIntervalWithStartTime:v6 endTime:v8];
      }

      goto LABEL_61;
    }

    if (v4 != 79)
    {
      if (v4 != 68)
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

LABEL_32:
    v43 = sub_106FC(v19, v11, a3);
    if (v43)
    {
      HDActivityCacheStatisticsBuilderWorkoutSample::HDActivityCacheStatisticsBuilderWorkoutSample(&v74, v6, v8, v13, v14 == 1, v43 == 1, v9, v71, v72);
      sub_10918(v42 + 48, &v74);
      if (v6 < v15 && v8 >= *(a1 + 120))
      {
        sub_10918(*(*(a1 + 64) + 8) + 48, &v74);
      }

      goto LABEL_61;
    }

LABEL_36:
    v44 = 0;
    goto LABEL_64;
  }

  if (v4 == 68)
  {
LABEL_45:
    HDActivityCacheStatisticsBuilderSample::HDActivityCacheStatisticsBuilderSample(&v74, v6, v8, 0.0, v9);
    v30 = *(*(a1 + 104) + 8);
    v35 = v30[7];
    v50 = v30[8];
    if (v35 < v50)
    {
      goto LABEL_46;
    }

    v58 = v30[6];
    v38 = (v35 - v58) >> 5;
    v59 = v38 + 1;
    if ((v38 + 1) >> 59)
    {
      sub_A594();
    }

    v60 = v50 - v58;
    if (v60 >> 4 > v59)
    {
      v59 = v60 >> 4;
    }

    if (v60 >= 0x7FFFFFFFFFFFFFE0)
    {
      v41 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v59;
    }

    if (v41)
    {
      sub_12AC0((v30 + 6), v41);
    }

    goto LABEL_58;
  }

  if (v4 == 79)
  {
    goto LABEL_32;
  }

LABEL_61:
  v68 = *(a1 + 32);
  v69 = *(v68 + 48);
  if (v69 <= v71)
  {
    v69 = v71;
  }

  *(v68 + 48) = v69;
  ++*(*(*(a1 + 112) + 8) + 24);
  v44 = 1;
LABEL_64:

  return v44;
}

void sub_10460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20E50(v11);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __cxa_end_catch();

  JUMPOUT(0x10554);
}

void sub_10540(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_55C4(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1055C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  if (result)
  {
    v4 = result;
    v11 = 0;
    v5 = sub_13990((result + 144), &v12);
    if (v5)
    {
      v6 = (v5 + 3);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v4 + 360));
      v8 = [WeakRetained sourceManager];
      v9 = [NSNumber numberWithLongLong:v12];
      v10 = [v8 clientSourceForPersistentID:v9 error:a3];

      if (!v10)
      {
        return 0;
      }

      v11 = [v10 _isAppleWatch];
      sub_13A44((v4 + 144), &v12);

      v6 = &v11;
    }

    if (*v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_10654(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20EF8(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_106FC(uint64_t result, unint64_t a2, void *a3)
{
  v18 = a2;
  if (result)
  {
    v4 = result;
    v17 = 0;
    v5 = sub_13990((result + 224), &v18);
    if (v5)
    {
      v6 = (v5 + 3);
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((v4 + 360));
    v8 = [WeakRetained deviceManager];
    v9 = [NSNumber numberWithLongLong:v18];
    v16 = 0;
    v10 = [v8 deviceForPersistentID:v9 error:&v16];
    v11 = v16;

    if (v10 || !v11)
    {
      v15 = [v10 localIdentifier];
      v17 = [v15 isEqualToString:HKDeviceConnectedGymIdentifier];

      sub_13A44((v4 + 224), &v18);
      v6 = &v17;
LABEL_9:
      if (*v6)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    v12 = v11;
    v13 = v12;
    if (a3)
    {
      v14 = v12;
      *a3 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    return 0;
  }

  return result;
}

void sub_1085C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_20FA0(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10918(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      sub_A594();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_A820(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

id sub_10A00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v33 = v3;
      v6 = +[_HKBehavior sharedBehavior];
      v7 = [v6 features];
      v8 = [v7 workoutSeriesAggregation];

      v34 = sub_F990(a1, [v3 count]);
      if (v8)
      {
        v32 = [NSString stringWithFormat:@", qss.%@", HDQuantitySampleSeriesEntityPropertyInsertionEra];
      }

      else
      {
        v32 = &stru_352B8;
      }

      v9 = +[HDQuantitySampleEntity disambiguatedDatabaseTable];
      v10 = +[HDSampleEntity disambiguatedDatabaseTable];
      v11 = +[HDDataEntity disambiguatedDatabaseTable];
      v30 = a1;
      v12 = +[HDDataProvenanceEntity disambiguatedDatabaseTable];
      v13 = +[HDQuantitySampleSeriesEntity disambiguatedDatabaseTable];
      v31 = +[HDAssociationEntity disambiguatedDatabaseTable];
      v14 = +[HDDataEntity disambiguatedDatabaseTable];
      v15 = +[HDMetadataValueEntity disambiguatedDatabaseTable];
      v16 = +[HDMetadataKeyEntity disambiguatedDatabaseTable];
      v17 = v16;
      if (v8)
      {
        v18 = &stru_352B8;
        v28 = v16;
      }

      else
      {
        v28 = [NSString stringWithFormat:@"qss.%@ IS NULL AND", HDQuantitySampleSeriesEntityPropertyInsertionEra];
        v18 = v28;
      }

      v27 = v9;
      v19 = v9;
      v20 = v32;
      v21 = [NSString stringWithFormat:@"SELECT o.%@, s.%@, workout_objects.rowid, s.%@, s.%@, qs.%@, qss.%@, object_provenances.%@, metadata_values.numerical_value as hr_context %@ FROM %@ qs INNER JOIN %@ s USING (%@) INNER JOIN %@ o USING (%@) INNER JOIN %@ object_provenances on (o.%@ = object_provenances.rowid) LEFT JOIN %@ qss USING (%@) LEFT JOIN %@ c on (c.%@ = o.%@) LEFT JOIN %@ workout_objects on (workout_objects.rowid = c.%@) LEFT JOIN %@ metadata_values on ((metadata_values.%@ = qs.%@) AND (metadata_values.key_id IN (SELECT rowid FROM %@ WHERE %@ = ?)))WHERE o.%@ = ? AND s.%@ IN (%@) AND s.%@ > ? AND s.%@ < ? AND s.%@ > ? AND %@ +qs.%@ > ? ORDER BY s.%@ ASC, o.%@ ASC", HDDataEntityPropertyDataID, HDSampleEntityPropertyDataType, HDSampleEntityPropertyStartDate, HDSampleEntityPropertyEndDate, HDQuantitySampleEntityPropertyQuantity, HDQuantitySampleSeriesEntityPropertyHFDKey, HDDataProvenanceEntityPropertySourceID, v32, v27, v10, HDDataEntityPropertyDataID, v11, HDDataEntityPropertyDataID, v12, HDDataEntityPropertyProvenance, v13, HDDataEntityPropertyDataID, v31, HDAssociationEntityPropertySourceObjectID, HDDataEntityPropertyDataID, v14, HDAssociationEntityPropertyDestinationObjectID, v15, HDMetadataValueEntityPropertyObjectID, HDDataEntityPropertyDataID, v17, HDMetadataKeyEntityPropertyKey, HDDataEntityPropertyType, HDSampleEntityPropertyDataType, v34, HDSampleEntityPropertyEndDate, HDSampleEntityPropertyStartDate, HDSampleEntityPropertyStartDate, v18, HDDataEntityPropertyDataID, HDSampleEntityPropertyStartDate, HDDataEntityPropertyDataID];;
      v22 = *(v30 + 64);
      *(v30 + 64) = v21;

      if (v8)
      {
        v17 = v15;
      }

      v23 = v14;
      if (v8)
      {
        v15 = v14;
        v23 = v31;
      }

      v29 = v23;
      if (v8)
      {
        v24 = v13;
      }

      else
      {
        v24 = v31;
      }

      v35 = v24;
      if (v8)
      {
        v13 = v12;
        v12 = v11;
        v11 = v10;
        v25 = v19;
      }

      else
      {
        v25 = v10;
      }

      if (!v8)
      {
        v20 = v19;
      }

      v5 = *(v30 + 64);
      v3 = v33;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10DC4(_Unwind_Exception *a1)
{
  if (*(v9 - 96))
  {
  }

  _Unwind_Resume(a1);
}

__n128 sub_10EAC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_10ED0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

double *sub_10EE8(double *result, uint64_t a2, int64_t a3, int64_t a4, char a5, int a6, int a7, int a8, double a9, double a10, double a11)
{
  v16 = result;
  v17 = result[5];
  v18 = *(result + 4);
  if (v17 > a9)
  {
    v19 = 376;
  }

  else
  {
    v19 = 368;
  }

  if (a5)
  {
    if (!a8)
    {
      goto LABEL_14;
    }
  }

  else if ((a6 | a7) != 1 || (a8 & 1) == 0)
  {
    goto LABEL_14;
  }

  HDActivityCacheStatisticsBuilderSample::HDActivityCacheStatisticsBuilderSample(&v27, a9, a10, a11, a3);
  v20 = *(v18 + v19);
  v26 = v27;
  result = [v20 addDeviceSample:&v26 typeCode:a2];
  if (v17 > a9 && v17 <= a10)
  {
    v22 = *(*(v16 + 4) + 368);
    v26 = v27;
    result = [v22 addDeviceSample:&v26 typeCode:a2];
  }

LABEL_14:
  if (a4)
  {
    HDActivityCacheStatisticsBuilderSample::HDActivityCacheStatisticsBuilderSample(&v27, a9, a10, a11, a4);
    v23 = *(v18 + v19);
    v26 = v27;
    result = [v23 addWorkoutSample:&v26 typeCode:a2];
    if (v17 > a9 && v17 <= a10)
    {
      v25 = *(*(v16 + 4) + 368);
      v26 = v27;
      return [v25 addWorkoutSample:&v26 typeCode:a2];
    }
  }

  return result;
}

id sub_1102C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_11370;
  v33[3] = &unk_34B88;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v34 = v8;
  v35 = v9;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_115A8;
  v25[3] = &unk_34C70;
  v25[4] = v9;
  v32 = *(a1 + 120);
  v31 = *(a1 + 104);
  v28 = *(a1 + 64);
  v10 = v5;
  v11 = *(a1 + 80);
  v26 = v10;
  v29 = v11;
  v27 = *(a1 + 56);
  v30 = *(a1 + 88);
  v12 = [v6 executeSQL:v7 error:a3 bindingHandler:v33 enumerationHandler:v25];

  if (*(a1 + 120) & v12)
  {
    v13 = [*(*(a1 + 48) + 344) count];
    if (v13)
    {
      v20 = v5;
      v14 = v13 - 1;
      do
      {
        v15 = [*(*(a1 + 48) + 344) objectAtIndexedSubscript:{v14, v20}];
        v16 = [v15 predicateForSeries];
        v24 = 0;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_121E4;
        v21[3] = &unk_34C98;
        v17 = v15;
        v22 = v17;
        v23 = *(a1 + 56);
        [HDQuantitySeriesDataEntity enumerateWithTransaction:v10 predicate:v16 error:&v24 handler:v21];
        v18 = v24;

        if ([v17 didFreeze])
        {
          [*(*(a1 + 48) + 344) removeObjectAtIndex:v14];
        }

        --v14;
      }

      while (v14 != -1);
    }

    v12 = &def_21990 + 1;
  }

  return v12;
}

void sub_11370(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [_HKPrivateMetadataKeyHeartRateContext UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 2, 1);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = 3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        sqlite3_bind_int64(a2, v7++, [*(*(&v16 + 1) + 8 * i) code]);
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 3;
  }

  v9 = sub_28CC(*(a1 + 40));
  v10 = [v9 startDate];
  [v10 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7, v11);

  v12 = [v9 endDate];
  [v12 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7 + 1, v13);

  v14 = [v9 startDate];
  [v14 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v7 + 2, v15 + -259200.0);

  sqlite3_bind_int64(a2, v7 + 3, *(*(a1 + 40) + 40));
}

uint64_t sub_115A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDSQLiteColumnAsInt64();
  result = sub_1055C(*(a1 + 32), v8, a3);
  if (!result)
  {
    return result;
  }

  v10 = result;
  result = sub_11BD0(*(a1 + 32), v8, a3);
  if (!result)
  {
    return result;
  }

  v11 = result;
  result = sub_11D70(*(a1 + 32), v8, a3);
  if (!result)
  {
    return result;
  }

  v12 = result;
  v51 = v5;
  HDSQLiteColumnAsDouble();
  v14 = v13;
  HDSQLiteColumnAsDouble();
  v16 = v15;
  v17 = *(a1 + 32);
  v18 = v17 != 0;
  if (v10 != 1 && v17)
  {
    v18 = v6 == 10 && v7 != 0;
  }

  v20 = sub_F610(v17, v6, *(a1 + 96), v15);
  if (*(a1 + 112) == 1)
  {
    v50 = v18;
    v21 = v11;
    v22 = v6;
    v23 = v7;
    v24 = v20;
    v25 = HDSQLiteColumnIsNull() ^ 1;
    v20 = v24;
    v7 = v23;
    v6 = v22;
    v11 = v21;
    v18 = v50;
  }

  else
  {
    v25 = 0;
  }

  if (v12 != 1 && v11 != 1 && !v18 && !v20)
  {
    goto LABEL_46;
  }

  v26 = v25;
  HIDWORD(v49) = v20;
  HDSQLiteColumnAsDouble();
  v28 = v27;
  v30 = v10 == 1 || v12 == 1;
  if (v6 != 5 || !v30)
  {
    v35 = v51;
    if (*(a1 + 112) == 1)
    {
      v36 = HDSQLiteColumnAsInt64();
      if (v36)
      {
        v37 = v36;
        v38 = *(*(a1 + 32) + 344);
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_121B0;
        v52[3] = &unk_34C48;
        v52[4] = v37;
        v39 = [v38 hk_firstObjectPassingTest:v52];
        v40 = v39;
        if (v26)
        {
          if (!v39)
          {
            LOBYTE(v49) = BYTE4(v49);
            v41 = [[HDACUnfrozenSeriesCacheEntry alloc] initWithSeriesId:v37 timestamp:v6 dataTypeCode:v7 workoutSourceIdentifier:v8 sourceIdentifier:v10 == 1 isWatchSource:v11 == 1 isConnectedGymSource:v14 typeIsValidForAllDayFromCompanion:v49];
            [*(*(a1 + 32) + 344) addObject:v41];
          }
        }

        else if (v39)
        {
          [v39 setFrozen];

LABEL_45:
          *(*(*(a1 + 80) + 8) + 24) = v35;
LABEL_46:
          v45 = *(a1 + 32);
          v46 = *(v45 + 40);
          if (v46 <= v51)
          {
            v46 = v51;
          }

          *(v45 + 40) = v46;
          ++*(*(*(a1 + 88) + 8) + 24);
          return 1;
        }
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v6, v8, v7, v10 == 1, HIDWORD(v49), v11 == 1, v51 != *(*(*(a1 + 80) + 8) + 24), v14, v16, v28);
    goto LABEL_45;
  }

  if (v26)
  {
    return 1;
  }

  v31 = *(a1 + 104);
  v32 = HDSQLiteColumnAsInt64();
  v33 = 64;
  if (v14 < v31)
  {
    v33 = 56;
  }

  v34 = *(*(a1 + v33) + 8);
  v35 = v51;
  if (HDSQLiteColumnIsNull())
  {
    if (v28 >= 0.0)
    {
      HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::HDActivityCacheHeartRateStatisticsBuilderHeartRateSample(&v58, v14, v28, v32);
      if (v14 <= *(*(*(a1 + 72) + 8) + 24))
      {
        v66 = v58;
        v67 = v59;
        v55 = 0;
        v56 = 0;
        v54 = 0;
        sub_12CC4(&v54, &v66, &v68, 1uLL);
        sub_120E8(&v54, (v34 + 48));
        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }
      }

      else
      {
        sub_12BB8(v34 + 48, &v58);
      }

      v47 = *(*(a1 + 72) + 8);
      v48 = *(v47 + 24);
      if (v48 < v14)
      {
        v48 = v14;
      }

      *(v47 + 24) = v48;
    }

    goto LABEL_45;
  }

  v42 = HDSQLiteColumnAsInt64();
  *&v58 = 0;
  *(&v58 + 1) = &v58;
  v59 = 0x4812000000;
  v60 = sub_10EAC;
  v61 = sub_10ED0;
  v62 = &unk_275D6;
  v64 = 0;
  v65 = 0;
  __p = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = v14;
  v43 = *(a1 + 40);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_11F10;
  v53[3] = &unk_34C28;
  v44 = *(a1 + 72);
  v53[4] = &v54;
  v53[5] = v44;
  v53[6] = &v58;
  v53[7] = v32;
  if (([HDQuantitySampleSeriesEntity enumerateRawDataWithTransaction:v43 HFDKey:v42 error:a3 handler:v53]& 1) != 0)
  {
    sub_120E8((*(&v58 + 1) + 48), (v34 + 48));
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    goto LABEL_45;
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t sub_11BD0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  if (result)
  {
    v4 = result;
    v11 = 0;
    v5 = sub_13990((result + 184), &v12);
    if (v5)
    {
      v6 = (v5 + 3);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v4 + 360));
      v8 = [WeakRetained sourceManager];
      v9 = [NSNumber numberWithLongLong:v12];
      v10 = [v8 clientSourceForPersistentID:v9 error:a3];

      if (!v10)
      {
        return 0;
      }

      v11 = [v10 _isConnectedGymSource];
      sub_13A44((v4 + 184), &v12);

      v6 = &v11;
    }

    if (*v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_11CC8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21048(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11D70(uint64_t result, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  if (result)
  {
    v4 = result;
    v11 = 0;
    v5 = sub_13990((result + 304), &v12);
    if (v5)
    {
      v6 = (v5 + 3);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v4 + 360));
      v8 = [WeakRetained sourceManager];
      v9 = [NSNumber numberWithLongLong:v12];
      v10 = [v8 clientSourceForPersistentID:v9 error:a3];

      if (!v10)
      {
        return 0;
      }

      v11 = [v10 _isPeripheralSource];
      sub_13A44((v4 + 304), &v12);

      v6 = &v11;
    }

    if (*v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_11E68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_210F0(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11F10(uint64_t a1, double a2, double a3, float a4)
{
  v7 = _HDQuantitySampleSeriesEntityNilDuration;
  v8 = a2;
  if (_HDQuantitySampleSeriesEntityNilDuration == a4)
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (a3 >= 0.0)
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 24);
    if (v10 < v8)
    {
      v10 = v8;
    }

    *(v9 + 24) = v10;
    v11 = *(*(a1 + 48) + 8);
    v13 = v11[7];
    v12 = v11[8];
    if (v13 >= v12)
    {
      v15 = v11[6];
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 3);
      if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_A594();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_12B60((v11 + 6), v19);
      }

      HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::HDActivityCacheHeartRateStatisticsBuilderHeartRateSample((24 * v16), v8, a3, *(a1 + 56));
      v14 = v20 + 24;
      v21 = v11[6];
      v22 = v11[7] - v21;
      v23 = v20 - v22;
      memcpy((v20 - v22), v21, v22);
      v24 = v11[6];
      v11[6] = v23;
      v11[7] = v14;
      v11[8] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::HDActivityCacheHeartRateStatisticsBuilderHeartRateSample(v11[7], v8, a3, *(a1 + 56));
      v14 = v13 + 24;
      v11[7] = v13 + 24;
    }

    v11[7] = v14;
  }

  v25 = a4 + a2;
  if (v7 == a4)
  {
    v25 = a2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v25;
  return 1;
}

void sub_120C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_120E8(char **a1, char **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = *a2;
    v7 = a2[1];
    v9 = v7 - v6;
    if (v7 == v6)
    {

      sub_12E50(a2, v6, v2, v3, v5);
    }

    else
    {
      sub_12D90(a2, v5 - 0x5555555555555555 * (v9 >> 3));
      sub_12E50(a2, a2[1], *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
      sub_130C8(*a2, &(*a2)[v9], a2[1], &v11);
    }
  }
}

uint64_t sub_121E4(uint64_t a1, double a2, double a3, double a4)
{
  [*(a1 + 32) setTimestamp:?];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) dataTypeCode], objc_msgSend(*(a1 + 32), "sourceIdentifier"), objc_msgSend(*(a1 + 32), "workoutSourceIdentifier"), objc_msgSend(*(a1 + 32), "isWatchSource"), objc_msgSend(*(a1 + 32), "typeIsValidForAllDayFromCompanion"), objc_msgSend(*(a1 + 32), "isConnectedGymSource"), 1, a2, a2 + a4, a3);
  return 1;
}

void sub_124B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_2120C(v7);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void *sub_12950(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_12A84(v6, v10);
    }

    sub_A594();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 32;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

void sub_12A84(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_12AC0(a1, a2);
  }

  sub_A594();
}

void sub_12AC0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_A684();
}

void sub_12B08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_A684();
}

void sub_12B60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_A684();
}

uint64_t sub_12BB8(uint64_t a1, __int128 *a2)
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
      sub_12B60(a1, v11);
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
  return v7 - 24;
}

uint64_t sub_12CC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_12D44(result, a4);
  }

  return result;
}

void sub_12D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_12D44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_12B60(a1, a2);
  }

  sub_A594();
}

void *sub_12D90(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_12B60(result, a2);
    }

    sub_A594();
  }

  return result;
}

void *sub_12E50(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3)) >= a5)
    {
      v16 = v9 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __dst) >> 3)) >= a5)
      {
        v21 = &__dst[24 * a5];
        v22 = &v9[-24 * a5];
        v23 = a1[1];
        while (v22 < v9)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v9 != v21)
        {
          memmove(v21, __dst, v9 - v21 - 4);
        }

        v29 = 24 * a5 - 4;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *v17;
          *(v19 + 16) = *(v17 + 2);
          *v19 = v20;
          v19 += 24;
          v17 += 24;
          v18 += 24;
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v18 - 24 * a5;
        v27 = v18;
        while (v26 < v9)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v19 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v18 - v25 - 4);
        }

        v29 = v16 - 4;
      }

      memmove(v5, v7, v29);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (&v9[-*a1] >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_A594();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_12B60(a1, v15);
    }

    v30 = 8 * (v13 >> 3);
    v31 = (v30 + 24 * a5);
    v32 = 24 * a5;
    v33 = v30;
    do
    {
      v34 = *v7;
      *(v33 + 16) = v7[2];
      *v33 = v34;
      v33 += 24;
      v7 += 3;
      v32 -= 24;
    }

    while (v32);
    memcpy(v31, v5, a1[1] - v5);
    v35 = *a1;
    v36 = &v31[a1[1] - v5];
    a1[1] = v5;
    v37 = v5 - v35;
    v38 = (v30 - (v5 - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {
      operator delete(v39);
    }

    return v30;
  }

  return v5;
}

void sub_130C8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  v9 = (a3 - a2) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if ((0xAAAAAAAAAAAAAAABLL * v9) >= v8)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  if (v11 < 1)
  {
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v12 = operator new(24 * v11, &std::nothrow);
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
  sub_131F8(a1, a2, a3, a4, v8, v10, v15, v11);
  if (v15)
  {

    operator delete(v15);
  }
}

void sub_131E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_131F8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    do
    {
      if (v10 <= a8 || a5 <= a8)
      {
        sub_134A0(a1, a2, a3, a4, a5, v10, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (!HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::operator<(a2, &a1[v14]))
      {
        v14 += 3;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v40 = a8;
      v41 = a7;
      if (-v15 >= v10)
      {
        if (v15 == -1)
        {
          v36 = &a1[v14];
          v45 = a1[v14 + 2];
          v44 = *&a1[v14];
          v37 = *a2;
          *(v36 + 4) = *(a2 + 16);
          *v36 = v37;
          result = *&v44;
          *a2 = v44;
          *(a2 + 16) = LODWORD(v45);
          return result;
        }

        v38 = v10;
        v22 = -v15 / 2;
        v20 = a2;
        if (a2 != a3)
        {
          v23 = &a1[3 * v22];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v20 = a2;
          do
          {
            v25 = &v20[3 * (v24 >> 1)];
            v26 = HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::operator<(v25, &v23[v14]);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v20 = v25 + 3;
            }
          }

          while (v24);
          v22 = -v15 / 2;
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v20 - a2) >> 3);
        v21 = &a1[3 * v22 + v14];
        v19 = v38;
      }

      else
      {
        v18 = v10 / 2;
        v19 = v10;
        v20 = (a2 + 24 * (v10 / 2));
        v21 = sub_13610(&a1[v14], a2, v20);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - a1 - v14 * 8) >> 3);
      }

      a5 = -v15 - v22;
      v27 = v19 - v18;
      v39 = v21;
      v28 = a2;
      v29 = v22;
      v30 = sub_136A0(v21, v28, v20);
      v31 = v29;
      v32 = v30;
      if (v31 + v18 >= v19 - (v31 + v18) - v15)
      {
        v34 = v31;
        v35 = v19 - v18;
        a7 = v41;
        sub_131F8(v30, v20, a3, a4, a5, v35, v41, v40);
        a1 = (a1 + v14 * 8);
        v20 = v39;
        v27 = v18;
        a8 = v40;
        a5 = v34;
        a3 = v32;
      }

      else
      {
        a7 = v41;
        v33 = v18;
        a8 = v40;
        sub_131F8(&a1[v14], v39, v30, a4, v31, v33, v41, v40);
        a1 = v32;
      }

      a2 = v20;
      v10 = v27;
    }

    while (v27);
  }

  return result;
}

void sub_134A0(double *__dst, double *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v9 = a2;
  v10 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v14 = 4 - __src;
      v15 = __src;
      v16 = __dst;
      do
      {
        v17 = *v16;
        v15[2] = v16[2];
        *v15 = v17;
        v15 += 3;
        v16 += 3;
        v14 -= 24;
      }

      while (v16 != a2);
      while (v9 != a3)
      {
        if (HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::operator<(v9, v7))
        {
          v18 = *v9;
          *(v10 + 4) = *(v9 + 4);
          *v10 = v18;
          v9 += 3;
        }

        else
        {
          v19 = *v7;
          *(v10 + 4) = *(v7 + 4);
          *v10 = v19;
          v7 += 3;
        }

        v10 += 3;
        if (v15 == v7)
        {
          return;
        }
      }

      memmove(v10, v7, -(v7 + v14));
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
        v11[2] = *(v12 + 2);
        *v11 = v13;
        v11 += 3;
        v12 += 3;
      }

      while (v12 != a3);
    }

    sub_137A0(v11, v11, __src, __src, a2, a2, v10, v10, a3, a3);
  }
}

uint64_t sub_13610(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      if (HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::operator<(a3, (v3 + 24 * (v5 >> 1))))
      {
        v5 >>= 1;
      }

      else
      {
        v3 += 24 * (v5 >> 1) + 24;
        v5 += ~(v5 >> 1);
      }
    }

    while (v5);
  }

  return v3;
}

__int128 *sub_136A0(__int128 *__src, __int128 *a2, __int128 *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if ((__src + 24) == a2)
    {
      v7 = *__src;
      v9 = *(__src + 2);
      memmove(__src, __src + 24, v5 - 4);
      v3 = (__src + v5);
      *v3 = v7;
      *(v3 + 4) = v9;
    }

    else if ((a2 + 24) == a3)
    {
      v3 = (__src + 24);
      v8 = *(a3 - 24);
      v10 = *(a3 - 1);
      if ((a3 - 24) != __src)
      {
        memmove(__src + 24, __src, a3 - 24 - __src - 4);
      }

      *__src = v8;
      *(__src + 4) = v10;
    }

    else
    {
      return sub_13874(__src, a2, a3);
    }
  }

  return v3;
}

void sub_137A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    while (a6 != a8)
    {
      v15 = HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::operator<((v13 - 24), (a6 - 24));
      if (v15)
      {
        v16 = a6 - 24;
      }

      else
      {
        v16 = v13 - 24;
      }

      v17 = *(v16 + 16);
      *(a10 - 24) = *v16;
      *(a10 - 8) = v17;
      a10 -= 24;
      if (v15)
      {
        a6 -= 24;
      }

      else
      {
        v13 -= 24;
      }

      if (v13 == a4)
      {
        return;
      }
    }

    if (a4 != v13)
    {
      v18 = -24;
      do
      {
        v19 = *(v13 - 24);
        v20 = a10 + v18;
        *(v20 + 16) = *(v13 - 8);
        *v20 = v19;
        v18 -= 24;
        v13 -= 24;
      }

      while (v13 != a4);
    }
  }
}

__int128 *sub_13874(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3) == v4)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = (a1 + 24);
      v6 = (a2 + 24);
      do
      {
        v7 = *(v5 - 24);
        v8 = *(v5 - 1);
        v9 = *(v6 - 2);
        *(v5 - 24) = *(v6 - 24);
        *(v5 - 2) = v9;
        *(v6 - 2) = v8;
        *(v6 - 24) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 = (v5 + 24);
        v10 = v6 == a3;
        v6 = (v6 + 24);
      }

      while (!v10);
    }
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      v12 = v11;
      v11 = v4;
      v4 = v12 % v4;
    }

    while (v4);
    v13 = (a1 + 24 * v11);
    do
    {
      v14 = *(v13 - 24);
      v15 = *(v13 - 1);
      v13 = (v13 - 24);
      v22 = v14;
      v23 = v15;
      v16 = (v13 + v3);
      v17 = v13;
      do
      {
        v18 = v16;
        v19 = *v16;
        *(v17 + 4) = *(v16 + 4);
        *v17 = v19;
        v20 = a3 - v16;
        v16 = (v16 + 8 * ((a2 - a1) >> 3));
        if (v3 >= v20)
        {
          v16 = (a2 - v20);
        }

        v17 = v18;
      }

      while (v16 != v13);
      *(v18 + 4) = v23;
      *v18 = v22;
    }

    while (v13 != a1);
    return (a1 + a3 - a2);
  }

  return a2;
}

void *sub_13990(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_13A44(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_13C84(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_13D74(a1, prime);
    }
  }
}

void sub_13D74(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_A684();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_13ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void HDActivityCacheHeartRateStatisticsBuilderHeartRateSample::HDActivityCacheHeartRateStatisticsBuilderHeartRateSample(HDActivityCacheHeartRateStatisticsBuilderHeartRateSample *this, double a2, double a3, int a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = a4;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = a4;
}

void *sub_1417C(void *a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, void *a6)
{
  if (a1)
  {
    v11 = a1;
    v12 = a1[20];
    if (v12 && (+[NSDate date](NSDate, "date"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 hk_ageWithCurrentDate:v13], v15 = kHKHeartAgeGatingAge, v13, v14 < v15))
    {
      a1 = 0;
    }

    else
    {
      v16 = v11[9];
      if (!v16)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v17 = v11[3];
        v18 = v11[4];
        if (v17 == v18)
        {
          v23 = 0;
          v22 = 0;
        }

        else
        {
          do
          {
            v19 = *v17;
            v20 = *(v17 + 2);
            v37 = v20;
            v36 = v19;
            if (v20 == 3)
            {
              v21 = v11[21];
              if (!v21 || ([v21 hasOverlapWithStartTime:*&v36 endTime:*&v36] & 1) == 0)
              {
                sub_144CC(&v41, &v36 + 1);
              }

              sub_144CC(&v38, &v36 + 1);
            }

            else if (a5 && v20 == 11)
            {
              *a5 = 1;
            }

            v17 = (v17 + 24);
          }

          while (v17 != v18);
          v22 = v41;
          v23 = v42;
        }

        __p = 0;
        v34 = 0;
        v35 = 0;
        sub_3744(&__p, v22, v23, (v23 - v22) >> 3);
        v24 = sub_145AC(v11, &__p, a2, a3, a4);
        v25 = v11[9];
        v11[9] = v24;

        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_3744(&v30, v38, v39, (v39 - v38) >> 3);
        v26 = sub_145AC(v11, &v30, a2, 0, 0);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (v26)
        {
          v27 = +[HKUnit _countPerMinuteUnit];
          [v26 doubleValueForUnit:v27];
          *a6 = v28;
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        v16 = v11[9];
      }

      a1 = v16;
    }
  }

  return a1;
}

void sub_143D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_FAULT))
    {
      sub_21328(v27);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_144CC(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_A594();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_A5AC(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

id sub_145AC(uint64_t a1, double **a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = a2[1] - *a2;
  v8 = v7 >> 3;
  if (a4)
  {
    *a4 = v7 >> 3;
  }

  if (v8 < a3)
  {
    goto LABEL_5;
  }

  std::__sort<std::__less<double,double> &,double *>();
  if (v8 <= 20)
  {
    v13 = a2[1];
  }

  else
  {
    v10 = *a2;
    v11 = &(*a2)[v8 >> 1];
    if ((v7 & 8) != 0)
    {
      v12 = *v11;
    }

    else
    {
      v12 = (*(v11 - 1) + *v11) * 0.5;
    }

    v13 = a2[1];
    if (v10 != v13)
    {
      v14 = v12 * 0.7;
      v15 = v12 * 1.4;
      while (v14 < *v10 && v15 > *v10)
      {
        if (++v10 == v13)
        {
          goto LABEL_32;
        }
      }

      if (v10 != v13)
      {
        for (i = v10 + 1; i != v13; ++i)
        {
          v18 = *i;
          if (v14 < *i && v15 > v18)
          {
            *v10++ = v18;
          }
        }
      }
    }

    if (v10 != v13)
    {
      v13 = v10;
      a2[1] = v10;
    }
  }

LABEL_32:
  v20 = *a2;
  if (a5)
  {
    *a5 = (v13 - v20) >> 3;
  }

  if (v8 > 20)
  {
    v21 = v13 - v20;
    if (!v21)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_40;
    }

    v22 = vcvtmd_s64_f64((v21 >> 3) * 0.05);
  }

  else
  {
    v21 = v13 - v20;
    v22 = 1;
  }

  if (v22 >= v21 >> 3)
  {
    sub_16918();
  }

  v23 = v20[v22];
  v24 = +[HKUnit _countPerSecondUnit];
  v9 = [HKQuantity quantityWithUnit:v24 doubleValue:v23];

LABEL_40:

  return v9;
}