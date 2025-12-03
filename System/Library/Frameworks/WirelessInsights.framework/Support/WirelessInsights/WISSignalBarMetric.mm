@interface WISSignalBarMetric
+ (id)getSharedInstance;
- (WISSignalBarMetric)init;
- (id)signalStrengthInfoToString:(id)string;
- (int64_t)plmnPartStringToInt:(id)int error:(id *)error;
- (void)currentDataSimChanged:(id)changed;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)plmnChanged:(id)changed plmn:(id)plmn;
- (void)populateSubscriptionContextsInUse;
- (void)ratChanged:(id)changed rat:(id)rat;
- (void)registrationStatusChanged:(id)changed status:(id)status;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)subscriptionInfoDidChange;
- (void)triggerMetric:(id)metric currentTime:(unint64_t)time;
@end

@implementation WISSignalBarMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052AF0;
  block[3] = &unk_1002AB480;
  block[4] = self;
  if (qword_1002D82F8 != -1)
  {
    dispatch_once(&qword_1002D82F8, block);
  }

  v2 = qword_1002D82F0;

  return v2;
}

- (WISSignalBarMetric)init
{
  v14.receiver = self;
  v14.super_class = WISSignalBarMetric;
  v2 = [(WISSignalBarMetric *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(WISSignalBarMetric *)v2 setContextStates:v3];

    [(WISSignalBarMetric *)v2 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.SignalBarMonitor", 0)];
    v4 = +[TelephonyStateRelay sharedInstance];
    [(WISSignalBarMetric *)v2 setCtRelay:v4];

    ctRelay = [(WISSignalBarMetric *)v2 ctRelay];
    coreTelephonyClient = [ctRelay coreTelephonyClient];

    if (!coreTelephonyClient && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE7BC();
    }

    ctRelay2 = [(WISSignalBarMetric *)v2 ctRelay];
    [ctRelay2 addTelephonyStateDelegate:v2 withQueue:{-[WISSignalBarMetric queue](v2, "queue")}];

    queue = [(WISSignalBarMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052D04;
    block[3] = &unk_1002AB4D0;
    v9 = v2;
    v13 = v9;
    dispatch_async(queue, block);
    v10 = v9;
  }

  return v2;
}

- (id)signalStrengthInfoToString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    displayBars = [stringCopy displayBars];
    v6 = displayBars;
    if (displayBars)
    {
      [displayBars stringValue];
    }

    else
    {
      [NSString stringWithUTF8String:"UNKNOWN"];
    }
    v7 = ;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE7F0();
    }

    v7 = [NSString stringWithUTF8String:"UNKNOWN"];
  }

  return v7;
}

- (int64_t)plmnPartStringToInt:(id)int error:(id *)error
{
  intCopy = int;
  intValue = [intCopy intValue];
  v7 = intValue;
  if (intValue <= 0)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE830();
    }

    v8 = +[NSMutableDictionary dictionary];
    [v8 setValue:@"PLMN part less than or equal to zero" forKey:NSLocalizedDescriptionKey];
    v9 = [NSString stringWithUTF8String:"signalBarMonitor"];
    *error = [NSError errorWithDomain:v9 code:0 userInfo:v8];

    v7 = 0;
  }

  return v7;
}

- (void)populateSubscriptionContextsInUse
{
  ctRelay = [(WISSignalBarMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v107 = 0;
  v72 = [coreTelephonyClient getSubscriptionInfoWithError:&v107];
  v4 = v107;

  if (!v4)
  {
    subscriptionsInUse = [v72 subscriptionsInUse];
    if (!subscriptionsInUse)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FEA88();
      }

      v4 = 0;
      goto LABEL_75;
    }

    v79 = subscriptionsInUse;
    ctRelay2 = [(WISSignalBarMetric *)self ctRelay];
    coreTelephonyClient2 = [ctRelay2 coreTelephonyClient];
    v106 = 0;
    v70 = [coreTelephonyClient2 getCurrentDataSubscriptionContextSync:&v106];
    v4 = v106;

    if (v4)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [v4 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1001FE8E8();
      }

      goto LABEL_74;
    }

    [(WISSignalBarMetric *)self setDataInitializationSuccessful:1];
    uuid = [v70 uuid];
    v66 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v75 = objc_alloc_init(NSMutableArray);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = [(WISSignalBarMetric *)self contextStates];
    v8 = [obj countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v8)
    {
      v9 = *v103;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v103 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v102 + 1) + 8 * i);
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v12 = v79;
          v13 = [v12 countByEnumeratingWithState:&v98 objects:v113 count:16];
          if (v13)
          {
            v14 = *v99;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v99 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v98 + 1) + 8 * j);
                if (v16)
                {
                  if ([*(*(&v98 + 1) + 8 * j) slotID])
                  {
                    uuid2 = [v16 uuid];
                    v18 = [v11 isEqual:uuid2];

                    if (v18)
                    {

                      goto LABEL_28;
                    }
                  }
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v98 objects:v113 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          [v75 addObject:v11];
LABEL_28:
          ;
        }

        v8 = [obj countByEnumeratingWithState:&v102 objects:v114 count:16];
      }

      while (v8);
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE92C();
    }

    contextStates = [(WISSignalBarMetric *)self contextStates];
    [contextStates removeObjectsForKeys:v75];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obja = v79;
    v4 = 0;
    v20 = [obja countByEnumeratingWithState:&v94 objects:v112 count:16];
    if (!v20)
    {
LABEL_73:

LABEL_74:
      subscriptionsInUse = v79;
LABEL_75:

      goto LABEL_76;
    }

    v21 = *v95;
    v64 = v81;
LABEL_34:
    v22 = 0;
    while (1)
    {
      if (*v95 != v21)
      {
        objc_enumerationMutation(obja);
      }

      v23 = *(*(&v94 + 1) + 8 * v22);

      if (v23 && [v23 slotID])
      {
        contextStates2 = [(WISSignalBarMetric *)self contextStates];
        uuid3 = [v23 uuid];
        v26 = [contextStates2 objectForKey:uuid3];
        v27 = v26 == 0;

        v28 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
        if (v27)
        {
          if (v28)
          {
            [v23 uuid];
            objc_claimAutoreleasedReturnValue();
            sub_1001FE9E8();
          }

          ctRelay3 = [(WISSignalBarMetric *)self ctRelay];
          coreTelephonyClient3 = [ctRelay3 coreTelephonyClient];
          v93 = 0;
          v31 = [coreTelephonyClient3 copyRegistrationDisplayStatus:v23 error:&v93];
          v4 = v93;

          if (v4)
          {
            v32 = *(qword_1002DBE98 + 48);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              uuid4 = [v23 uuid];
              localizedDescription = [v4 localizedDescription];
              *buf = 138412546;
              v109 = uuid4;
              v110 = 2112;
              v111 = localizedDescription;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch registration display status for context %@: %@", buf, 0x16u);
            }
          }

          else
          {
            registrationDisplayStatus = [v31 registrationDisplayStatus];
            ctRelay4 = [(WISSignalBarMetric *)self ctRelay];
            coreTelephonyClient4 = [ctRelay4 coreTelephonyClient];
            v92 = 0;
            v37 = [coreTelephonyClient4 getSignalStrengthInfo:v23 error:&v92];
            v4 = v92;

            if (v4)
            {
              v38 = *(qword_1002DBE98 + 48);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                uuid5 = [v23 uuid];
                localizedDescription2 = [v4 localizedDescription];
                *buf = 138412546;
                v109 = uuid5;
                v110 = 2112;
                v111 = localizedDescription2;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch signal strength for context %@: %@", buf, 0x16u);
              }
            }

            else
            {
              v71 = [(WISSignalBarMetric *)self signalStrengthInfoToString:v37];
              ctRelay5 = [(WISSignalBarMetric *)self ctRelay];
              coreTelephonyClient5 = [ctRelay5 coreTelephonyClient];
              v91 = 0;
              v73 = [coreTelephonyClient5 copyMobileCountryCode:v23 error:&v91];
              v4 = v91;

              if (v4)
              {
                v43 = *(qword_1002DBE98 + 48);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  uuid6 = [v23 uuid];
                  localizedDescription3 = [v4 localizedDescription];
                  *buf = 138412546;
                  v109 = uuid6;
                  v110 = 2112;
                  v111 = localizedDescription3;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch MCC for context %@: %@", buf, 0x16u);
                }
              }

              else
              {
                v90 = 0;
                v69 = [(WISSignalBarMetric *)self plmnPartStringToInt:v73 error:&v90];
                v46 = v90;
                if (v46)
                {
                  v4 = v46;
                  v47 = *(qword_1002DBE98 + 48);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    uuid7 = [v23 uuid];
                    localizedDescription4 = [v4 localizedDescription];
                    *buf = 138412546;
                    v109 = uuid7;
                    v110 = 2112;
                    v111 = localizedDescription4;
                    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to convert MCC for context %@: %@", buf, 0x16u);
                  }
                }

                else
                {
                  ctRelay6 = [(WISSignalBarMetric *)self ctRelay];
                  coreTelephonyClient6 = [ctRelay6 coreTelephonyClient];
                  v89 = 0;
                  v68 = [coreTelephonyClient6 copyMobileNetworkCode:v23 error:&v89];
                  v4 = v89;

                  if (v4)
                  {
                    v52 = *(qword_1002DBE98 + 48);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      uuid8 = [v23 uuid];
                      localizedDescription5 = [v4 localizedDescription];
                      *buf = 138412546;
                      v109 = uuid8;
                      v110 = 2112;
                      v111 = localizedDescription5;
                      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch MNC for context %@: %@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v88 = 0;
                    v65 = [(WISSignalBarMetric *)self plmnPartStringToInt:v68 error:&v88];
                    v55 = v88;
                    if (v55)
                    {
                      v4 = v55;
                      v56 = *(qword_1002DBE98 + 48);
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        uuid9 = [v23 uuid];
                        localizedDescription6 = [v4 localizedDescription];
                        *buf = 138412546;
                        v109 = uuid9;
                        v110 = 2112;
                        v111 = localizedDescription6;
                        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to convert MNC for context %@: %@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      uuid10 = [v23 uuid];
                      v60 = [uuid isEqual:uuid10];

                      ctRelay7 = [(WISSignalBarMetric *)self ctRelay];
                      coreTelephonyClient7 = [ctRelay7 coreTelephonyClient];
                      v80[0] = _NSConcreteStackBlock;
                      v80[1] = 3221225472;
                      v81[0] = sub_100053D78;
                      v81[1] = &unk_1002AC098;
                      v81[2] = self;
                      v81[3] = v23;
                      v84 = v66;
                      v85 = v65;
                      v86 = v69;
                      v87 = v60;
                      v82 = v71;
                      v83 = registrationDisplayStatus;
                      [coreTelephonyClient7 copyCellInfo:v23 completion:v80];

                      v4 = 0;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }

        if (v28)
        {
          [v23 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1001FE998();
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v23 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FEA38();
      }

      v4 = 0;
LABEL_45:
      if (v20 == ++v22)
      {
        v63 = [obja countByEnumeratingWithState:&v94 objects:v112 count:16];
        v20 = v63;
        if (!v63)
        {
          goto LABEL_73;
        }

        goto LABEL_34;
      }
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    [v4 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_1001FE8A4();
  }

LABEL_76:
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  if (key > 5)
  {
    switch(key)
    {
      case 9:
        [(WISSignalBarMetric *)self ratChanged:updateCopy rat:stateCopy];
        break;
      case 8:
        [(WISSignalBarMetric *)self registrationStatusChanged:updateCopy status:stateCopy];
        break;
      case 6:
        [(WISSignalBarMetric *)self subscriptionInfoDidChange];
        break;
    }
  }

  else
  {
    switch(key)
    {
      case 1:
        [(WISSignalBarMetric *)self signalStrengthChanged:updateCopy info:stateCopy];
        break;
      case 2:
        [(WISSignalBarMetric *)self plmnChanged:updateCopy plmn:stateCopy];
        break;
      case 3:
        [(WISSignalBarMetric *)self currentDataSimChanged:updateCopy];
        break;
    }
  }
}

- (void)subscriptionInfoDidChange
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FEC18();
  }

  [(WISSignalBarMetric *)self populateSubscriptionContextsInUse];
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  if (changedCopy && (v8 = [changedCopy slotID], infoCopy) && v8)
  {
    contextStates = [(WISSignalBarMetric *)self contextStates];
    uuid = [changedCopy uuid];
    v11 = [contextStates objectForKey:uuid];

    if (v11)
    {
      v12 = [(WISSignalBarMetric *)self signalStrengthInfoToString:infoCopy];
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FEC58();
      }

      signalBarState = [v11 signalBarState];
      v14 = [signalBarState isEqualToString:v12];

      if (v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [changedCopy uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1001FECE0();
        }
      }

      else
      {
        v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v11 signalBarState];
          objc_claimAutoreleasedReturnValue();
          sub_1001FEC9C();
        }

        [(WISSignalBarMetric *)self triggerMetric:v11 currentTime:v15];
        [v11 setSignalBarState:v12];
        [v11 setStartTime:v15];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [changedCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FED24();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FED68();
  }
}

- (void)triggerMetric:(id)metric currentTime:(unint64_t)time
{
  metricCopy = metric;
  if ([metricCopy dataPreferred] && objc_msgSend(metricCopy, "startTime") < time)
  {
    v6 = time - [metricCopy startTime];
    v7 = v6 / 0xF4240;
    v8 = v6 / 0x3B9ACA00;
    v9 = *(qword_1002DBE98 + 48);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v6 <= 0x5F5E0FF)
    {
      if (v10)
      {
        sub_1001FED9C();
      }
    }

    else
    {
      if (v10)
      {
        signalBarState = [metricCopy signalBarState];
        v13 = [metricCopy rat];
        registrationState = [metricCopy registrationState];
        *buf = 138413314;
        v19 = signalBarState;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = registrationState;
        v24 = 2048;
        v25 = v8;
        v26 = 2048;
        v27 = v7;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SignalBarMetric:#D Metric triggered for previous state (signal bar %@, rat %@, registration state %@, duration %llu s (%llu ms)), submitting a CA event", buf, 0x34u);
      }

      v11 = [NSString stringWithUTF8String:"com.apple.Telephony.cellularSignalBarUsage"];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000549E0;
      v15[3] = &unk_1002AB2B0;
      v16 = metricCopy;
      v17 = v8;
      sub_1000158DC(v11, v15);
    }
  }
}

- (void)ratChanged:(id)changed rat:(id)rat
{
  changedCopy = changed;
  ratCopy = rat;
  if (changedCopy && [changedCopy slotID])
  {
    contextStates = [(WISSignalBarMetric *)self contextStates];
    uuid = [changedCopy uuid];
    v10 = [contextStates objectForKey:uuid];

    if (v10)
    {
      if (!ratCopy)
      {
        v11 = [NSString stringWithUTF8String:"Unknown"];
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FEE2C();
        }

        ratCopy = v11;
      }

      v12 = [v10 rat];
      v13 = [v12 isEqualToString:ratCopy];

      if (v13)
      {
        v14 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          uuid2 = [changedCopy uuid];
          v16 = [v10 rat];
          v18 = 138412802;
          v19 = uuid2;
          v20 = 2112;
          v21 = v16;
          v22 = 2112;
          v23 = ratCopy;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "SignalBarMetric:#D Received RAT change callback for context %@ but RAT did not change, old RAT: %@, new RAT: %@", &v18, 0x20u);
        }
      }

      else
      {
        v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v10 rat];
          objc_claimAutoreleasedReturnValue();
          sub_1001FEE98();
        }

        [(WISSignalBarMetric *)self triggerMetric:v10 currentTime:v17];
        [v10 setRat:ratCopy];
        [v10 setStartTime:v17];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [changedCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FEEDC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FEF20();
  }
}

- (void)plmnChanged:(id)changed plmn:(id)plmn
{
  changedCopy = changed;
  plmnCopy = plmn;
  v8 = plmnCopy;
  if (changedCopy && plmnCopy)
  {
    contextStates = [(WISSignalBarMetric *)self contextStates];
    uuid = [changedCopy uuid];
    v11 = [contextStates objectForKey:uuid];

    if (v11)
    {
      v12 = [v8 mnc];
      v19 = 0;
      v13 = [(WISSignalBarMetric *)self plmnPartStringToInt:v12 error:&v19];
      v14 = v19;

      if (v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v14 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1001FEF88();
        }
      }

      else
      {
        v15 = [v8 mcc];
        v18 = 0;
        v16 = [(WISSignalBarMetric *)self plmnPartStringToInt:v15 error:&v18];
        v17 = v18;

        if (v17)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
          {
            [v17 localizedDescription];
            objc_claimAutoreleasedReturnValue();
            sub_1001FEFCC();
          }
        }

        else
        {
          [v11 setMnc:v13];
          [v11 setMcc:v16];
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [changedCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FF010();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FEF54();
  }
}

- (void)registrationStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if (changedCopy && (v8 = [changedCopy slotID], statusCopy) && v8)
  {
    contextStates = [(WISSignalBarMetric *)self contextStates];
    uuid = [changedCopy uuid];
    v11 = [contextStates objectForKey:uuid];

    if (v11)
    {
      registrationState = [v11 registrationState];
      v13 = [registrationState isEqualToString:statusCopy];

      if (v13)
      {
        v14 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          uuid2 = [changedCopy uuid];
          registrationState2 = [v11 registrationState];
          v18 = 138412802;
          v19 = uuid2;
          v20 = 2112;
          v21 = registrationState2;
          v22 = 2112;
          v23 = statusCopy;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "SignalBarMetric:#D Received display status change callback for context %@ but registration status did not change, old display status: %@, new display status: %@", &v18, 0x20u);
        }
      }

      else
      {
        v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v11 registrationState];
          objc_claimAutoreleasedReturnValue();
          sub_1001FF054();
        }

        [(WISSignalBarMetric *)self triggerMetric:v11 currentTime:v17];
        [v11 setRegistrationState:statusCopy];
        [v11 setStartTime:v17];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [changedCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FF098();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FF0DC();
  }
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy && [changedCopy slotID])
  {
    dataInitializationSuccessful = [(WISSignalBarMetric *)self dataInitializationSuccessful];
    v7 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
    if (dataInitializationSuccessful)
    {
      if (v7)
      {
        [v5 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FF154();
      }

      contextStates = [(WISSignalBarMetric *)self contextStates];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000557E0;
      v9[3] = &unk_1002AC0C0;
      v10 = v5;
      [contextStates enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      if (v7)
      {
        [v5 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FF110();
      }

      [(WISSignalBarMetric *)self populateSubscriptionContextsInUse];
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FF198();
  }
}

@end