@interface HealthHTNCustomerDiagnosticExtension
- (HAHypertensivePatternAnalysis)_analyzeMeasurements:(id)measurements withDateInterval:(id)interval;
- (id)_HTPMeasurementsWithHealthStore:(id)store startDate:(id)date endDate:(id)endDate;
- (id)_attachmentItemWithFileURL:(id)l;
- (id)_attachmentsWithFileURLs:(id)ls;
- (id)_heartDataWithQuantityType:(id)type healthStore:(id)store startDate:(id)date endDate:(id)endDate predicates:(id)predicates;
- (id)_lastAnalysisMeasurementsRerunAnalysisWithHealthStore:(id)store;
- (id)_sleepDataWithHealthStore:(id)store endDate:(id)date;
- (id)_writeJSON:(id)n logDirectoryURL:(id)l fileName:(id)name;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation HealthHTNCustomerDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Started", buf, 2u);
  }

  v5 = +[NSDate now];
  v6 = objc_alloc_init(HKHealthStore);
  v7 = +[NSFileManager defaultManager];
  temporaryDirectory = [v7 temporaryDirectory];
  v9 = [temporaryDirectory URLByAppendingPathComponent:@"HealthHTNCustomerDiagnosticExtension" isDirectory:1];

  v76 = NSFileProtectionKey;
  v77 = NSFileProtectionCompleteUnlessOpen;
  v10 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v72 = 0;
  [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v10 error:&v72];
  v11 = v72;
  _HKInitializeLogging();
  v12 = HKLogDefault;
  if (v11)
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_1000033F0();
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Created directory for logs", buf, 2u);
    }

    v67 = v10;
    v68 = v7;
    v14 = objc_alloc_init(NSDateFormatter);
    v15 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [v14 setLocale:v15];

    [v14 setDateFormat:@"yyyy.MM.dd.HH.mm.ss.SSS"];
    _HKInitializeLogging();
    v16 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering historical HTP scores", buf, 2u);
    }

    v71 = [v5 dateByAddingTimeInterval:-7776000.0];
    v17 = [HealthHTNCustomerDiagnosticExtension _HTPMeasurementsWithHealthStore:"_HTPMeasurementsWithHealthStore:startDate:endDate:" startDate:v6 endDate:?];
    v18 = [v14 stringFromDate:v5];
    v19 = [NSString stringWithFormat:@"HTPMeasurements-%@.json", v18];

    v65 = v19;
    v66 = v17;
    v69 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v17 logDirectoryURL:v9 fileName:v19];
    _HKInitializeLogging();
    v20 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering HTP scores from the last analysis and re-running analysis", buf, 2u);
    }

    v21 = [(HealthHTNCustomerDiagnosticExtension *)self _lastAnalysisMeasurementsRerunAnalysisWithHealthStore:v6];
    v22 = [v14 stringFromDate:v5];
    v23 = [NSString stringWithFormat:@"HTPMeasurementsLastAnalysisAndRerunResult-%@.json", v22];

    v63 = v23;
    v64 = v21;
    v62 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v21 logDirectoryURL:v9 fileName:v23];
    _HKInitializeLogging();
    v24 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering historical background heart rate", buf, 2u);
    }

    v25 = [HKQuery predicateForObjectsWithMetadataKey:_HKPrivateMetadataKeyHeartRateContext allowedValues:&off_100008850];
    v26 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v61 = v25;
    v75 = v25;
    v27 = [NSArray arrayWithObjects:&v75 count:1];
    v28 = [(HealthHTNCustomerDiagnosticExtension *)self _heartDataWithQuantityType:v26 healthStore:v6 startDate:v71 endDate:v5 predicates:v27];

    v29 = [v14 stringFromDate:v5];
    v30 = [NSString stringWithFormat:@"BackgroundHeartRate-%@.json", v29];

    v59 = v30;
    v60 = v28;
    v70 = v9;
    v58 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v28 logDirectoryURL:v9 fileName:v30];
    _HKInitializeLogging();
    v31 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering historical resting heart rate", buf, 2u);
    }

    v32 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRestingHeartRate];
    v33 = [(HealthHTNCustomerDiagnosticExtension *)self _heartDataWithQuantityType:v32 healthStore:v6 startDate:v71 endDate:v5 predicates:0];

    v34 = v14;
    v35 = [v14 stringFromDate:v5];
    v36 = [NSString stringWithFormat:@"RestingHeartRate-%@.json", v35];

    v56 = v36;
    v57 = v33;
    v55 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v33 logDirectoryURL:v70 fileName:v36];
    _HKInitializeLogging();
    v37 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering historical HRV", buf, 2u);
    }

    v38 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateVariabilitySDNN];
    v39 = v6;
    v40 = [(HealthHTNCustomerDiagnosticExtension *)self _heartDataWithQuantityType:v38 healthStore:v6 startDate:v71 endDate:v5 predicates:0];

    v41 = [v34 stringFromDate:v5];
    v42 = [NSString stringWithFormat:@"HeartRateVariability-%@.json", v41];

    v53 = v42;
    v43 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v40 logDirectoryURL:v70 fileName:v42];
    _HKInitializeLogging();
    v44 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Gathering historical sleep intervals", buf, 2u);
    }

    v52 = v39;
    v45 = [(HealthHTNCustomerDiagnosticExtension *)self _sleepDataWithHealthStore:v39 endDate:v5];
    v54 = v34;
    v46 = [v34 stringFromDate:v5];
    v47 = [NSString stringWithFormat:@"SleepSummary-%@.json", v46];

    v48 = [(HealthHTNCustomerDiagnosticExtension *)self _writeJSON:v45 logDirectoryURL:v70 fileName:v47];
    v74[0] = v69;
    v74[1] = v62;
    v74[2] = v58;
    v74[3] = v55;
    v74[4] = v43;
    v74[5] = v48;
    [NSArray arrayWithObjects:v74 count:6];
    v50 = v49 = v43;
    v13 = [(HealthHTNCustomerDiagnosticExtension *)self _attachmentsWithFileURLs:v50];

    v9 = v70;
    v6 = v52;

    v10 = v67;
    v7 = v68;
    v11 = 0;
  }

  return v13;
}

- (id)_attachmentsWithFileURLs:(id)ls
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000168C;
  v5[3] = &unk_1000082B0;
  v5[4] = self;
  v3 = [ls hk_map:v5];

  return v3;
}

- (id)_attachmentItemWithFileURL:(id)l
{
  v3 = [DEAttachmentItem attachmentWithPathURL:l];
  [v3 setDeleteOnAttach:&__kCFBooleanTrue];
  [v3 setShouldCompress:&__kCFBooleanFalse];

  return v3;
}

- (id)_writeJSON:(id)n logDirectoryURL:(id)l fileName:(id)name
{
  nameCopy = name;
  v17 = 0;
  lCopy = l;
  v9 = [NSJSONSerialization dataWithJSONObject:n options:1 error:&v17];
  v10 = v17;
  v11 = [lCopy URLByAppendingPathComponent:nameCopy];

  v16 = v10;
  [v9 writeToURL:v11 options:1 error:&v16];
  v12 = v16;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_100003430(nameCopy, v12, v13);
    }

    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

- (id)_sleepDataWithHealthStore:(id)store endDate:(id)date
{
  storeCopy = store;
  dateCopy = date;
  v50 = [dateCopy dateByAddingTimeInterval:-7776000.0];
  v46 = +[NSCalendar hk_gregorianCalendar];
  v48 = [v50 hk_dayIndexWithCalendar:v46];
  v47 = [dateCopy hk_dayIndexWithCalendar:v46];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100002064;
  v80 = sub_100002074;
  v81 = 0;
  v73 = 0;
  v74[0] = &v73;
  v74[1] = 0x3032000000;
  v74[2] = sub_100002064;
  v74[3] = sub_100002074;
  v75 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [HKSleepDaySummaryQuery alloc];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10000207C;
  v69[3] = &unk_1000082D8;
  v71 = &v73;
  v72 = &v76;
  dsema = v5;
  v70 = dsema;
  v7 = [v6 initWithMorningIndexRange:v48 ascending:v47 limit:1 options:0 resultsHandler:{3, v69}];
  [storeCopy executeQuery:v7];
  v42 = v7;
  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(dsema, v8);
  v56 = [NSMutableArray arrayWithArray:&__NSArray0__struct];
  if (v77[5])
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v77[5] count];
        *buf = 67109120;
        v90 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] daySummaries count: %d", buf, 8u);
      }
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v77[5];
    v39 = [obj countByEnumeratingWithState:&v65 objects:v88 count:16];
    if (v39)
    {
      v40 = *v66;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v65 + 1) + 8 * i);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          periods = [v12 periods];
          v53 = [periods countByEnumeratingWithState:&v61 objects:v87 count:16];
          if (v53)
          {
            v52 = *v62;
            do
            {
              for (j = 0; j != v53; j = j + 1)
              {
                if (*v62 != v52)
                {
                  objc_enumerationMutation(periods);
                }

                v13 = *(*(&v61 + 1) + 8 * j);
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                segments = [v13 segments];
                v15 = [segments countByEnumeratingWithState:&v57 objects:v86 count:16];
                if (v15)
                {
                  v16 = *v58;
                  v55 = segments;
                  do
                  {
                    for (k = 0; k != v15; k = k + 1)
                    {
                      if (*v58 != v16)
                      {
                        objc_enumerationMutation(v55);
                      }

                      v18 = *(*(&v57 + 1) + 8 * k);
                      if (v18)
                      {
                        v84[0] = @"startDate";
                        dateInterval = [v18 dateInterval];
                        startDate = [dateInterval startDate];
                        v21 = [startDate description];
                        v85[0] = v21;
                        v84[1] = @"endDate";
                        dateInterval2 = [v18 dateInterval];
                        endDate = [dateInterval2 endDate];
                        v24 = [endDate description];
                        v85[1] = v24;
                        v25 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
                        [v56 addObject:v25];
                      }
                    }

                    segments = v55;
                    v15 = [v55 countByEnumeratingWithState:&v57 objects:v86 count:16];
                  }

                  while (v15);
                }
              }

              v53 = [periods countByEnumeratingWithState:&v61 objects:v87 count:16];
            }

            while (v53);
          }
        }

        v39 = [obj countByEnumeratingWithState:&v65 objects:v88 count:16];
      }

      while (v39);
    }
  }

  else if (*(v74[0] + 40))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_1000034B8(v74);
    }
  }

  else
  {
    _HKInitializeLogging();
    v26 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Sleep day summaries count: 0", buf, 2u);
    }
  }

  _HKInitializeLogging();
  v27 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v28 = v27;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v56 count];
      *buf = 67109120;
      v90 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[HealthHTNCustomerDiagnostics] Asleep segments count: %d", buf, 8u);
    }
  }

  v83[0] = v56;
  v82[0] = @"asleepSegments";
  v82[1] = @"startDayIndex";
  v30 = [NSNumber numberWithInteger:v48, v39];
  v83[1] = v30;
  v82[2] = @"endDayIndex";
  v31 = [NSNumber numberWithInteger:v47];
  v83[2] = v31;
  v82[3] = @"startDate";
  v32 = [v50 description];
  v83[3] = v32;
  v82[4] = @"endDate";
  v33 = [dateCopy description];
  v83[4] = v33;
  v82[5] = @"count";
  v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 count]);
  v83[5] = v34;
  v82[6] = @"error";
  v35 = *(v74[0] + 40);
  if (v35)
  {
    v36 = [*(v74[0] + 40) description];
  }

  else
  {
    v36 = @"nil";
  }

  v83[6] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:7];
  if (v35)
  {
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v76, 8);

  return v37;
}

- (id)_lastAnalysisMeasurementsRerunAnalysisWithHealthStore:(id)store
{
  storeCopy = store;
  v5 = [HKKeyValueDomain alloc];
  v32 = storeCopy;
  v34 = 0;
  v27 = [v5 initWithCategory:4 domainName:HKHRHypertensionNotificationsDefaultsDomain healthStore:storeCopy];
  v6 = [v27 dateForKey:HKHRHypertensionNotificationsLastAnalysisWindowEndDateKey error:&v34];
  v7 = v34;
  v29 = v7;
  if (v6)
  {
    v31 = [v6 dateByAddingTimeInterval:-2592000.0];
    v28 = [[NSDateInterval alloc] initWithStartDate:v31 endDate:v6];
    v30 = +[HKQuantityType hypertensiveMeasurementType];
    v33 = 0;
    v8 = [(HealthHTNCustomerDiagnosticExtension *)self _samplesWithQuantityType:v30 dateInterval:v28 healthStore:storeCopy predicates:0 ascending:1 error:&v33];
    v9 = v33;
    if (v8)
    {
      v10 = [v8 count];
      v26 = [v8 hk_map:&stru_100008318];
      v11 = [(HealthHTNCustomerDiagnosticExtension *)self _measurementsFromSamples:v8];
      v12 = v11;
      if (v11 && [v11 count])
      {
        v13 = [(HealthHTNCustomerDiagnosticExtension *)self _analyzeMeasurements:v12 withDateInterval:v28];
        v37[0] = @"hypertensivePatternDetected";
        v14 = @"No";
        if (v15)
        {
          v14 = @"Yes";
        }

        v16 = [NSString stringWithFormat:@"%@", v14];
        v37[1] = @"coreAnalytics";
        v38[0] = v16;
        if (v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = @"nil";
        }

        v38[1] = v17;
        v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
      }

      else
      {
        v25 = &off_100008890;
      }
    }

    else
    {
      v10 = 0;
      v26 = &__NSArray0__struct;
      v25 = &__NSDictionary0__struct;
    }

    v35[0] = @"quantityType";
    v19 = [v30 description];
    v36[0] = v19;
    v35[1] = @"lastAnalysisWindowStartDate";
    v20 = [v31 description];
    v36[1] = v20;
    v35[2] = @"lastAnalysisWindowEndDate";
    v21 = [v6 description];
    v36[2] = v21;
    v35[3] = @"samplesError";
    if (v9)
    {
      v22 = [v9 description];
    }

    else
    {
      v22 = @"nil";
    }

    v36[3] = v22;
    v35[4] = @"samplesCount";
    v23 = [NSNumber numberWithInt:v10];
    v36[4] = v23;
    v35[5] = @"samples";
    v35[6] = @"rerunAnalysisResult";
    v36[5] = v26;
    v36[6] = v25;
    v18 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];

    if (v9)
    {
    }

LABEL_24:
    goto LABEL_25;
  }

  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_100003534();
    }

    v39 = @"lastAnalysisEndDateError";
    v40 = v29;
    v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v18 = [&off_100008868 hk_dictionaryByAddingEntriesFromDictionary:v9];
    goto LABEL_24;
  }

  v18 = &off_100008868;
LABEL_25:

  return v18;
}

- (id)_heartDataWithQuantityType:(id)type healthStore:(id)store startDate:(id)date endDate:(id)endDate predicates:(id)predicates
{
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  predicatesCopy = predicates;
  storeCopy = store;
  v28 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v17 = [HealthHTNCustomerDiagnosticExtension _samplesWithQuantityType:"_samplesWithQuantityType:dateInterval:healthStore:predicates:ascending:error:" dateInterval:typeCopy healthStore:? predicates:? ascending:? error:?];

  v18 = 0;
  if (v17)
  {
    v19 = [v17 count];
    v20 = [v17 hk_map:&stru_100008338];
  }

  else
  {
    v19 = 0;
    v20 = &__NSArray0__struct;
  }

  v31[0] = @"quantityType";
  v30 = typeCopy;
  v21 = [typeCopy description];
  v32[0] = v21;
  v31[1] = @"startDate";
  v29 = dateCopy;
  v22 = [dateCopy description];
  v32[1] = v22;
  v31[2] = @"endDate";
  v23 = [endDateCopy description];
  v32[2] = v23;
  v31[3] = @"count";
  v24 = [NSNumber numberWithInt:v19];
  v32[3] = v24;
  v31[4] = @"error";
  if (v18)
  {
    v25 = [v18 description];
  }

  else
  {
    v25 = @"nil";
  }

  v31[5] = @"samples";
  v32[4] = v25;
  v32[5] = v20;
  v26 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:6];
  if (v18)
  {
  }

  return v26;
}

- (id)_HTPMeasurementsWithHealthStore:(id)store startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  storeCopy = store;
  v11 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v12 = +[HKQuantityType hypertensiveMeasurementType];
  v27 = 0;
  v24 = v11;
  v13 = [(HealthHTNCustomerDiagnosticExtension *)self _samplesWithQuantityType:v12 dateInterval:v11 healthStore:storeCopy predicates:0 ascending:0 error:&v27];

  v14 = v27;
  if (v13)
  {
    v15 = [v13 count];
    v16 = [v13 hk_map:&stru_100008358];
  }

  else
  {
    v15 = 0;
    v16 = &__NSArray0__struct;
  }

  v28[0] = @"quantityType";
  v17 = [v12 description];
  v29[0] = v17;
  v28[1] = @"startDate";
  v26 = dateCopy;
  v18 = [dateCopy description];
  v29[1] = v18;
  v28[2] = @"endDate";
  v25 = endDateCopy;
  v19 = [endDateCopy description];
  v29[2] = v19;
  v28[3] = @"count";
  v20 = [NSNumber numberWithInt:v15];
  v29[3] = v20;
  v28[4] = @"error";
  if (v14)
  {
    v21 = [v14 description];
  }

  else
  {
    v21 = @"nil";
  }

  v28[5] = @"samples";
  v29[4] = v21;
  v29[5] = v16;
  v22 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:6];
  if (v14)
  {
  }

  return v22;
}

- (HAHypertensivePatternAnalysis)_analyzeMeasurements:(id)measurements withDateInterval:(id)interval
{
  if (measurements)
  {
    v4 = [HAHypertensivePatternAnalyzer analyzeMeasurements:measurements forDateInterval:interval];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_100003624();
    }

    v5 = 0;
    v4 = &__NSDictionary0__struct;
  }

  result.var1 = v5;
  result.var0 = v4;
  return result;
}

@end