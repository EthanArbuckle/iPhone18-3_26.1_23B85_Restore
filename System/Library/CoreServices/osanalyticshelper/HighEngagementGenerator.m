@interface HighEngagementGenerator
+ (id)_DHIDto95thPercentile;
+ (id)_DHIDtoCategoryDisplayNameMap;
+ (id)_OverrideIfNeeded:(id)a3 givenCategory:(id)a4;
+ (id)generateLastDayAppUsage;
+ (id)generateTopThreeCategories:(id)a3;
+ (id)getAppUsageArray:(id)a3 to:(id)a4;
+ (id)processDailyUsage:(id)a3 from:(id)a4 to:(id)a5;
+ (void)createBiomeFeed;
+ (void)generateTotalByCategory:(id)a3 completionHandler:(id)a4;
+ (void)setAlarm:(int64_t)a3;
@end

@implementation HighEngagementGenerator

+ (id)_DHIDtoCategoryDisplayNameMap
{
  if (qword_10002A3C8 != -1)
  {
    sub_100014B6C();
  }

  v3 = qword_10002A3C0;

  return v3;
}

+ (id)_DHIDto95thPercentile
{
  if (qword_10002A3D8 != -1)
  {
    sub_100014B80();
  }

  v3 = qword_10002A3D0;

  return v3;
}

+ (id)_OverrideIfNeeded:(id)a3 givenCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_10002A3E8 != -1)
  {
    sub_100014B94();
  }

  v7 = [qword_10002A3E0 objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = v6;
  }

  if (v7 == CTCategoryIdentifierSystemUnblockable || v7 == CTCategoryIdentifierSystemBlockable || v7 == CTCategoryIdentifierSystemHidden)
  {

    v7 = 0;
  }

  return v7;
}

+ (void)setAlarm:(int64_t)a3
{
  v4 = +[NSDate date];
  v5 = +[NSCalendar currentCalendar];
  v6 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  if (a3 == 1)
  {
    v7 = objc_opt_new();
    [v7 setDay:1];
    v8 = [v5 dateByAddingComponents:v7 toDate:v4 options:0];

    v4 = v8;
  }

  v9 = [v5 components:28 fromDate:v4];
  v10 = arc4random_uniform(0x14u);
  v11 = arc4random_uniform(0x3Cu);
  [v9 setHour:23];
  [v9 setMinute:v10 + 30];
  [v9 setSecond:v11];
  v12 = [v5 dateFromComponents:v9];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Setting Alarm for %@", &v23, 0xCu);
  }

  [v12 timeIntervalSince1970];
  v14 = v13;
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v15, "Date", (ceil(v14) * 1000000000.0));
  xpc_dictionary_set_BOOL(v15, "ShouldWake", 0);
  [@"com.apple.osanalytics.highengagementtimer" UTF8String];
  xpc_set_event();
  v16 = arc4random_uniform(0xAu);
  v17 = arc4random_uniform(0x3Cu);
  [v9 setHour:23];
  [v9 setMinute:v16 + 50];
  [v9 setSecond:v17];
  v18 = [v5 dateFromComponents:v9];

  v19 = v18;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Setting Hard Alarm for %@", &v23, 0xCu);
  }

  [v18 timeIntervalSince1970];
  v21 = v20;
  v22 = xpc_dictionary_create(0, 0, 0);

  xpc_dictionary_set_date(v22, "Date", (ceil(v21) * 1000000000.0));
  xpc_dictionary_set_BOOL(v22, "ShouldWake", 1);
  [@"com.apple.osanalytics.hardhighengagementtimer" UTF8String];
  xpc_set_event();
}

+ (void)createBiomeFeed
{
  if (objc_opt_class() && objc_opt_class())
  {
    v3 = [a1 generateLastDayAppUsage];
    if (v3)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100003164;
      v5[3] = &unk_100024CD0;
      v5[4] = a1;
      [a1 generateTotalByCategory:v3 completionHandler:v5];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Usage Data is Nil", v4, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100014BA8();
  }
}

+ (id)generateTopThreeCategories:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003E98;
  v11[3] = &unk_100024CF8;
  v5 = v3;
  v12 = v5;
  v6 = [v4 sortedArrayUsingComparator:v11];
  v7 = [v6 count];
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 subarrayWithRange:{0, v8}];

  return v9;
}

+ (void)generateTotalByCategory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Entering generateTotalByCategory", buf, 2u);
  }

  if (!objc_opt_class())
  {
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Categories framework not available.";
    v9 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v10 = [NSError errorWithDomain:@"osanalyticshelper" code:0 userInfo:v9];

    v7[2](v7, v8, v10);
  }

  if (v6)
  {
    v11 = +[CTCategories sharedCategories];
    v12 = [v6 allKeys];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000426C;
    v18 = &unk_100024D20;
    v22 = a1;
    v13 = v8;
    v19 = v13;
    v20 = v6;
    v21 = v7;
    [v11 categoriesForBundleIDs:v12 completionHandler:&v15];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 count]);
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: generateTotalByCategory outside completion handler. Categories total count: %@", buf, 0xCu);
    }
  }
}

+ (id)generateLastDayAppUsage
{
  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    sub_100014C68(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [a1 getAppUsageArray:v4 to:v3];
  v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    sub_100014CA4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = [a1 processDailyUsage:v13 from:v4 to:v3];

  return v22;
}

+ (id)getAppUsageArray:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: getAppUsageArray from: %@ to: %@", buf, 0x16u);
    }

    v7 = objc_opt_new();
    v8 = +[_DKSystemEventStreams appInFocusStream];
    v22 = v8;
    v9 = [NSArray arrayWithObjects:&v22 count:1];
    [v7 setEventStreams:v9];

    v10 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:v5 to:v6];
    [v7 setPredicate:v10];

    v11 = [_DKQuery startDateSortDescriptorAscending:1];
    v21[0] = v11;
    v12 = [_DKQuery endDateSortDescriptorAscending:1];
    v21[1] = v12;
    v13 = [NSArray arrayWithObjects:v21 count:2];
    [v7 setSortDescriptors:v13];

    v14 = +[_DKKnowledgeStore knowledgeStore];
    v20 = 0;
    v15 = [v14 executeQuery:v7 error:&v20];
    v16 = v20;

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v17 = [v16 description];
        sub_100014CE0(v17, buf);
      }

      v18 = 0;
    }

    else
    {
      v18 = v15;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100014D3C();
    }

    v18 = 0;
  }

  return v18;
}

+ (id)processDailyUsage:(id)a3 from:(id)a4 to:(id)a5
{
  v7 = a3;
  v8 = a4;
  v41 = v7;
  v42 = a5;
  v43 = objc_opt_new();
  if (v7)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v10)
    {
      v11 = *v45;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          v14 = [v13 startDate];
          if (!v14 || ([v13 endDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v14, v16))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v13 stringValue];
              *buf = 138412290;
              v49 = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Skipping event for %@ due to missing start or end date", buf, 0xCu);
            }
          }

          else
          {
            v17 = [v13 endDate];
            v18 = [v13 startDate];
            [v17 timeIntervalSinceDate:v18];
            v20 = v19;

            v21 = [v13 startDate];
            LODWORD(v17) = v21 < v8;

            if (v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v13 startDate];
              *buf = 138412546;
              v49 = v22;
              v50 = 2112;
              v51 = *&v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Start date before from dates event.startDate :%@ fromDate %@", buf, 0x16u);
            }

            if (v20 >= 0.0)
            {
              v25 = [v13 endDate];
              [v42 timeIntervalSinceDate:v25];
              v27 = v26 < 0.0;

              if (v27)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v13 stringValue];
                  v39 = [v13 endDate];
                  *buf = 138412546;
                  v49 = v38;
                  v50 = 2112;
                  v51 = *&v39;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Stopping iteration with %@ that ends in the future at %@", buf, 0x16u);
                }

                goto LABEL_34;
              }

              v28 = [v13 stringValue];
              v29 = [v28 copy];

              if ([v29 containsString:@"/"])
              {
                v30 = [v29 lastPathComponent];
              }

              else
              {
                v30 = v29;
              }

              v31 = v30;
              if (v30)
              {
                v32 = [v43 objectForKeyedSubscript:v30];
                v33 = v32 == 0;

                if (v33)
                {
                  v35 = [NSNumber numberWithDouble:v20];
                  [v43 setObject:v35 forKeyedSubscript:v31];
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = [NSNumber numberWithDouble:v20];
                    *buf = 138412546;
                    v49 = v31;
                    v50 = 2112;
                    v51 = *&v34;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Adding bundle to appUsage bundleID: %@  duration: %@", buf, 0x16u);
                  }

                  v35 = [v43 objectForKeyedSubscript:v31];
                  [v35 doubleValue];
                  v37 = [NSNumber numberWithDouble:v20 + v36];
                  [v43 setObject:v37 forKeyedSubscript:v31];
                }
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v13 stringValue];
              *buf = 138412546;
              v49 = v23;
              v50 = 2048;
              v51 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Skipping event for %@ with negative time interval of %f", buf, 0x16u);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:
  }

  return v43;
}

@end