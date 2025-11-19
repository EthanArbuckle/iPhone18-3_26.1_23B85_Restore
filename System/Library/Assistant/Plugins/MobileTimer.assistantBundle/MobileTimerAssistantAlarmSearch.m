@interface MobileTimerAssistantAlarmSearch
+ (id)sanitizeAlarmLabelForComparison:(id)a3;
- (MobileTimerAssistantAlarmSearch)searchWithAlarms:(id)a3;
- (id)sanitizedAlarmLabelForComparison;
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MobileTimerAssistantAlarmSearch

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D018(v5);
  }

  [(MobileTimerAssistantAlarmSearch *)self _performWithCompletion:v4];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_D09C(v6);
  }
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileTimerAssistantAlarmSearch *)self validateCommandArguments];
  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D120(self, v5, v6);
    }

    v7 = [v5 dictionary];
    v4[2](v4, v7);
  }

  else
  {
    v8 = dispatch_group_create();
    v9 = dispatch_semaphore_create(0);
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[MobileTimerAssistantAlarmSearch _performWithCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
    }

    v11 = objc_opt_new();
    v18 = [v11 alarms];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_6680;
    v48 = sub_6690;
    v49 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_6680;
    v44[4] = sub_6690;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_6680;
    v42[4] = sub_6690;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = sub_6680;
    v40[4] = sub_6690;
    v41 = 0;
    if (MTShouldHandleForEucalyptus())
    {
      v12 = [(MobileTimerAssistantAlarmSearch *)self includesSleepAlarms];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = [v11 nextSleepAlarm];
        objc_initWeak(location, self);
        dispatch_group_enter(v8);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_6698;
        v35[3] = &unk_14738;
        objc_copyWeak(&v39, location);
        v37 = v42;
        v38 = v40;
        v36 = v8;
        v15 = [v14 addCompletionBlock:v35];

        objc_destroyWeak(&v39);
        objc_destroyWeak(location);
      }
    }

    objc_initWeak(&from, self);
    dispatch_group_enter(v8);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_67D4;
    v29[3] = &unk_14760;
    objc_copyWeak(&v33, &from);
    v31 = buf;
    v32 = v44;
    v7 = v8;
    v30 = v7;
    v16 = [v18 addCompletionBlock:v29];
    location[0] = 0;
    location[1] = location;
    location[2] = 0x3032000000;
    location[3] = sub_6680;
    location[4] = sub_6690;
    v28 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_690C;
    block[3] = &unk_14788;
    block[4] = self;
    v22 = v44;
    v23 = v40;
    v24 = location;
    v25 = v42;
    v26 = buf;
    v20 = v9;
    v21 = v4;
    v17 = v9;
    dispatch_group_notify(v7, &_dispatch_main_q, block);
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(location, 8);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
    _Block_object_dispose(v40, 8);

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);

    _Block_object_dispose(buf, 8);
  }
}

- (id)validateCommandArguments
{
  v3 = [(MobileTimerAssistantAlarmSearch *)self hour];

  if (v3)
  {
    v4 = [(MobileTimerAssistantAlarmSearch *)self hour];
    v24 = 0;
    v5 = MTValidateAlarmHour([v4 unsignedIntegerValue], &v24);
    v3 = v24;

    v6 = v3;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v7 = [(MobileTimerAssistantAlarmSearch *)self minute];

  if (v7)
  {
    v8 = [(MobileTimerAssistantAlarmSearch *)self minute];
    v23 = v3;
    v9 = MTValidateAlarmMinute([v8 unsignedIntegerValue], &v23);
    v6 = v23;

    v3 = v6;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v10 = [(MobileTimerAssistantAlarmSearch *)self frequency];

  if (v10)
  {
    v11 = [(MobileTimerAssistantAlarmSearch *)self frequency];
    v22 = v3;
    v12 = MTValidateAlarmFrequency(v11, &v22);
    v6 = v22;

    v3 = v6;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = [(MobileTimerAssistantAlarmSearch *)self label];

  if (v13)
  {
    v14 = [(MobileTimerAssistantAlarmSearch *)self label];
    v21 = v3;
    v15 = MTValidateAlarmLabel(v14, &v21);
    v6 = v21;

    if (v15)
    {
      v16 = 0;
LABEL_11:
      v3 = v6;
      goto LABEL_12;
    }

LABEL_10:
    v17 = [SACommandFailed alloc];
    v18 = [v6 userInfo];
    v19 = [v18 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v16 = [v17 initWithReason:v19];

    [v16 setErrorCode:{objc_msgSend(v6, "code")}];
    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (MobileTimerAssistantAlarmSearch)searchWithAlarms:(id)a3
{
  v4 = a3;
  v82 = objc_opt_new();
  v5 = [(MobileTimerAssistantAlarmSearch *)self sanitizedAlarmLabelForComparison];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v6 = v4;
  v7 = v5;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v92 objects:v98 count:16];
  v81 = v5;
  if (v8)
  {
    v9 = v8;
    v10 = *v93;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v93 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v92 + 1) + 8 * i);
        if (MTShouldHandleForEucalyptus() && [v12 isSleepAlarm])
        {
          if (![v12 isSingleTimeAlarm])
          {
            goto LABEL_42;
          }

          v13 = objc_alloc_init(NSDateComponents);
          [v13 setMinute:{objc_msgSend(v12, "bedtimeMinute")}];
          [v13 setHour:{objc_msgSend(v12, "bedtimeHour")}];
          [v13 setDay:{objc_msgSend(v12, "day")}];
          [v13 setMonth:{objc_msgSend(v12, "month")}];
          [v13 setYear:{objc_msgSend(v12, "year")}];
          v14 = +[NSCalendar currentCalendar];
          v15 = [v14 dateFromComponents:v13];

          v16 = +[NSDate date];
          v17 = [v15 compare:v16];

          if (v17 != -1)
          {
            [v82 addObject:v12];
          }

          continue;
        }

        v18 = [(MobileTimerAssistantAlarmSearch *)self identifier];
        if (v18)
        {
          v19 = v18;
          v20 = [(MobileTimerAssistantAlarmSearch *)self identifier];
          v21 = [v12 alarmURL];
          v22 = [v20 isEqual:v21];

          if (!v22)
          {
            continue;
          }
        }

        v23 = [(MobileTimerAssistantAlarmSearch *)self hour];
        if (v23)
        {
          v24 = v23;
          v25 = [(MobileTimerAssistantAlarmSearch *)self hour];
          v26 = [v25 unsignedIntegerValue];
          v27 = [v12 hour];

          if (v26 != v27)
          {
            continue;
          }
        }

        v28 = [(MobileTimerAssistantAlarmSearch *)self minute];
        if (v28)
        {
          v29 = v28;
          v30 = [(MobileTimerAssistantAlarmSearch *)self minute];
          v31 = [v30 unsignedIntegerValue];
          v32 = [v12 minute];

          if (v31 != v32)
          {
            continue;
          }
        }

        v33 = [(MobileTimerAssistantAlarmSearch *)self enabled];
        if (v33)
        {
          v34 = v33;
          v35 = [(MobileTimerAssistantAlarmSearch *)self enabled];
          v36 = [v35 BOOLValue];
          v37 = [v12 isEnabled];

          if (v36 != v37)
          {
            continue;
          }
        }

        v38 = [(MobileTimerAssistantAlarmSearch *)self frequency];

        if (v38)
        {
          v39 = [(MobileTimerAssistantAlarmSearch *)self frequency];
          if ([v39 count] != &dword_0 + 1)
          {

LABEL_26:
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v43 = [(MobileTimerAssistantAlarmSearch *)self frequency];
            v44 = [v43 countByEnumeratingWithState:&v88 objects:v97 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = 0;
              v47 = *v89;
              do
              {
                for (j = 0; j != v45; j = j + 1)
                {
                  if (*v89 != v47)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v49 = *(*(&v88 + 1) + 8 * j);
                  v50 = SAAlarmDayOfWeekForString();
                  v46 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v50);
                }

                v45 = [v43 countByEnumeratingWithState:&v88 objects:v97 count:16];
              }

              while (v45);
            }

            else
            {
              v46 = 0;
            }

            v51 = ([v12 repeatSchedule] & v46) == 0;
            v7 = v81;
            if (v51)
            {
              continue;
            }

            goto LABEL_36;
          }

          v40 = [(MobileTimerAssistantAlarmSearch *)self frequency];
          v41 = [v40 objectAtIndexedSubscript:0];
          v42 = SAAlarmDayOfWeekForString();

          if (v42 != 1)
          {
            goto LABEL_26;
          }

          if ([v12 repeatSchedule])
          {
            continue;
          }
        }

LABEL_36:
        if (v7)
        {
          v52 = v7;
          v53 = objc_opt_class();
          v54 = [v12 displayTitle];
          v55 = [v53 sanitizeAlarmLabelForComparison:v54];

          if ([&stru_14A20 isEqualToString:v52] && objc_msgSend(&stru_14A20, "isEqualToString:", v55))
          {
            v56 = [(MobileTimerAssistantAlarmSearch *)self label];

            v57 = [v12 displayTitle];

            v55 = v57;
          }

          else
          {
            v56 = v52;
          }

          v58 = [v52 length];
          v59 = +[NSLocale currentLocale];
          v60 = [v56 compare:v55 options:129 range:0 locale:{v58, v59}];

          if (v60)
          {
            continue;
          }
        }

LABEL_42:
        [v82 addObject:v12];
        continue;
      }

      v9 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v9);
  }

  v61 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v82, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v62 = v82;
  v63 = [v62 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v85;
    do
    {
      for (k = 0; k != v64; k = k + 1)
      {
        if (*v85 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v84 + 1) + 8 * k);
        if ([v67 isSleepAlarm])
        {
          v68 = objc_alloc_init(SAAlarmSleepAlarm);
          v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v67 bedtimeHour]);
          [v68 setBedtimeHour:v69];

          v70 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v67 bedtimeMinute]);
          [v68 setBedtimeMinute:v70];

          [v68 setIsFiringNext:&__kCFBooleanFalse];
          if (MTShouldHandleForEucalyptus())
          {
            v71 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v67 isSingleTimeAlarm]);
            [v68 setIsOverride:v71];
          }

          else
          {
            [v68 setIsOverride:&__kCFBooleanFalse];
          }
        }

        else
        {
          v68 = objc_alloc_init(SAAlarmObject);
        }

        v72 = [v67 alarmURL];
        [v68 setIdentifier:v72];

        v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v67 hour]);
        [v68 setHour:v73];

        v74 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v67 minute]);
        [v68 setMinute:v74];

        v75 = SAAlarmFrequencyFromRepeatSchedule([v67 repeatSchedule]);
        [v68 setFrequency:v75];

        v76 = [v67 displayTitle];
        [v68 setLabel:v76];

        v77 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v67 isEnabled]);
        [v68 setEnabled:v77];

        v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v67 isFiring]);
        [v68 setFiring:v78];

        [v61 addObject:v68];
      }

      v64 = [v62 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v64);
  }

  v79 = [[SAAlarmSearchCompleted alloc] initWithResults:v61];

  return v79;
}

- (id)sanitizedAlarmLabelForComparison
{
  v3 = objc_opt_class();
  v4 = [(MobileTimerAssistantAlarmSearch *)self label];
  v5 = [v3 sanitizeAlarmLabelForComparison:v4];

  return v5;
}

+ (id)sanitizeAlarmLabelForComparison:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (qword_1BE08 != -1)
    {
      sub_D2D8();
    }

    v4 = [v3 componentsSeparatedByCharactersInSet:qword_1BDF8];
    v5 = [v4 componentsJoinedByString:&stru_14A20];

    v6 = [v5 componentsSeparatedByCharactersInSet:qword_1BE00];
    v7 = [NSMutableArray arrayWithArray:v6];

    [v7 removeObject:&stru_14A20];
    v8 = [v7 componentsJoinedByString:@" "];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end