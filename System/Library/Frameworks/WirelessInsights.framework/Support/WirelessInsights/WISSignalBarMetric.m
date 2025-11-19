@interface WISSignalBarMetric
+ (id)getSharedInstance;
- (WISSignalBarMetric)init;
- (id)signalStrengthInfoToString:(id)a3;
- (int64_t)plmnPartStringToInt:(id)a3 error:(id *)a4;
- (void)currentDataSimChanged:(id)a3;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)plmnChanged:(id)a3 plmn:(id)a4;
- (void)populateSubscriptionContextsInUse;
- (void)ratChanged:(id)a3 rat:(id)a4;
- (void)registrationStatusChanged:(id)a3 status:(id)a4;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)subscriptionInfoDidChange;
- (void)triggerMetric:(id)a3 currentTime:(unint64_t)a4;
@end

@implementation WISSignalBarMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052AF0;
  block[3] = &unk_1002AB480;
  block[4] = a1;
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

    v5 = [(WISSignalBarMetric *)v2 ctRelay];
    v6 = [v5 coreTelephonyClient];

    if (!v6 && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE7BC();
    }

    v7 = [(WISSignalBarMetric *)v2 ctRelay];
    [v7 addTelephonyStateDelegate:v2 withQueue:{-[WISSignalBarMetric queue](v2, "queue")}];

    v8 = [(WISSignalBarMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052D04;
    block[3] = &unk_1002AB4D0;
    v9 = v2;
    v13 = v9;
    dispatch_async(v8, block);
    v10 = v9;
  }

  return v2;
}

- (id)signalStrengthInfoToString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayBars];
    v6 = v5;
    if (v5)
    {
      [v5 stringValue];
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

- (int64_t)plmnPartStringToInt:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 intValue];
  v7 = v6;
  if (v6 <= 0)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE830();
    }

    v8 = +[NSMutableDictionary dictionary];
    [v8 setValue:@"PLMN part less than or equal to zero" forKey:NSLocalizedDescriptionKey];
    v9 = [NSString stringWithUTF8String:"signalBarMonitor"];
    *a4 = [NSError errorWithDomain:v9 code:0 userInfo:v8];

    v7 = 0;
  }

  return v7;
}

- (void)populateSubscriptionContextsInUse
{
  v2 = [(WISSignalBarMetric *)self ctRelay];
  v3 = [v2 coreTelephonyClient];
  v107 = 0;
  v72 = [v3 getSubscriptionInfoWithError:&v107];
  v4 = v107;

  if (!v4)
  {
    v5 = [v72 subscriptionsInUse];
    if (!v5)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FEA88();
      }

      v4 = 0;
      goto LABEL_75;
    }

    v79 = v5;
    v6 = [(WISSignalBarMetric *)self ctRelay];
    v7 = [v6 coreTelephonyClient];
    v106 = 0;
    v70 = [v7 getCurrentDataSubscriptionContextSync:&v106];
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
    v67 = [v70 uuid];
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
                    v17 = [v16 uuid];
                    v18 = [v11 isEqual:v17];

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

    v19 = [(WISSignalBarMetric *)self contextStates];
    [v19 removeObjectsForKeys:v75];

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
      v5 = v79;
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
        v24 = [(WISSignalBarMetric *)self contextStates];
        v25 = [v23 uuid];
        v26 = [v24 objectForKey:v25];
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

          v29 = [(WISSignalBarMetric *)self ctRelay];
          v30 = [v29 coreTelephonyClient];
          v93 = 0;
          v31 = [v30 copyRegistrationDisplayStatus:v23 error:&v93];
          v4 = v93;

          if (v4)
          {
            v32 = *(qword_1002DBE98 + 48);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = [v23 uuid];
              v34 = [v4 localizedDescription];
              *buf = 138412546;
              v109 = v33;
              v110 = 2112;
              v111 = v34;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch registration display status for context %@: %@", buf, 0x16u);
            }
          }

          else
          {
            v74 = [v31 registrationDisplayStatus];
            v35 = [(WISSignalBarMetric *)self ctRelay];
            v36 = [v35 coreTelephonyClient];
            v92 = 0;
            v37 = [v36 getSignalStrengthInfo:v23 error:&v92];
            v4 = v92;

            if (v4)
            {
              v38 = *(qword_1002DBE98 + 48);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = [v23 uuid];
                v40 = [v4 localizedDescription];
                *buf = 138412546;
                v109 = v39;
                v110 = 2112;
                v111 = v40;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to fetch signal strength for context %@: %@", buf, 0x16u);
              }
            }

            else
            {
              v71 = [(WISSignalBarMetric *)self signalStrengthInfoToString:v37];
              v41 = [(WISSignalBarMetric *)self ctRelay];
              v42 = [v41 coreTelephonyClient];
              v91 = 0;
              v73 = [v42 copyMobileCountryCode:v23 error:&v91];
              v4 = v91;

              if (v4)
              {
                v43 = *(qword_1002DBE98 + 48);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  v44 = [v23 uuid];
                  v45 = [v4 localizedDescription];
                  *buf = 138412546;
                  v109 = v44;
                  v110 = 2112;
                  v111 = v45;
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
                    v48 = [v23 uuid];
                    v49 = [v4 localizedDescription];
                    *buf = 138412546;
                    v109 = v48;
                    v110 = 2112;
                    v111 = v49;
                    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to convert MCC for context %@: %@", buf, 0x16u);
                  }
                }

                else
                {
                  v50 = [(WISSignalBarMetric *)self ctRelay];
                  v51 = [v50 coreTelephonyClient];
                  v89 = 0;
                  v68 = [v51 copyMobileNetworkCode:v23 error:&v89];
                  v4 = v89;

                  if (v4)
                  {
                    v52 = *(qword_1002DBE98 + 48);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      v53 = [v23 uuid];
                      v54 = [v4 localizedDescription];
                      *buf = 138412546;
                      v109 = v53;
                      v110 = 2112;
                      v111 = v54;
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
                        v57 = [v23 uuid];
                        v58 = [v4 localizedDescription];
                        *buf = 138412546;
                        v109 = v57;
                        v110 = 2112;
                        v111 = v58;
                        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "SignalBarMetric:Unable to convert MNC for context %@: %@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v59 = [v23 uuid];
                      v60 = [v67 isEqual:v59];

                      v61 = [(WISSignalBarMetric *)self ctRelay];
                      v62 = [v61 coreTelephonyClient];
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
                      v83 = v74;
                      [v62 copyCellInfo:v23 completion:v80];

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

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4 > 5)
  {
    switch(a4)
    {
      case 9:
        [(WISSignalBarMetric *)self ratChanged:v9 rat:v8];
        break;
      case 8:
        [(WISSignalBarMetric *)self registrationStatusChanged:v9 status:v8];
        break;
      case 6:
        [(WISSignalBarMetric *)self subscriptionInfoDidChange];
        break;
    }
  }

  else
  {
    switch(a4)
    {
      case 1:
        [(WISSignalBarMetric *)self signalStrengthChanged:v9 info:v8];
        break;
      case 2:
        [(WISSignalBarMetric *)self plmnChanged:v9 plmn:v8];
        break;
      case 3:
        [(WISSignalBarMetric *)self currentDataSimChanged:v9];
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

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = [v6 slotID], v7) && v8)
  {
    v9 = [(WISSignalBarMetric *)self contextStates];
    v10 = [v6 uuid];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v12 = [(WISSignalBarMetric *)self signalStrengthInfoToString:v7];
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FEC58();
      }

      v13 = [v11 signalBarState];
      v14 = [v13 isEqualToString:v12];

      if (v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
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
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FED24();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FED68();
  }
}

- (void)triggerMetric:(id)a3 currentTime:(unint64_t)a4
{
  v5 = a3;
  if ([v5 dataPreferred] && objc_msgSend(v5, "startTime") < a4)
  {
    v6 = a4 - [v5 startTime];
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
        v12 = [v5 signalBarState];
        v13 = [v5 rat];
        v14 = [v5 registrationState];
        *buf = 138413314;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
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
      v16 = v5;
      v17 = v8;
      sub_1000158DC(v11, v15);
    }
  }
}

- (void)ratChanged:(id)a3 rat:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 slotID])
  {
    v8 = [(WISSignalBarMetric *)self contextStates];
    v9 = [v6 uuid];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      if (!v7)
      {
        v11 = [NSString stringWithUTF8String:"Unknown"];
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FEE2C();
        }

        v7 = v11;
      }

      v12 = [v10 rat];
      v13 = [v12 isEqualToString:v7];

      if (v13)
      {
        v14 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v6 uuid];
          v16 = [v10 rat];
          v18 = 138412802;
          v19 = v15;
          v20 = 2112;
          v21 = v16;
          v22 = 2112;
          v23 = v7;
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
        [v10 setRat:v7];
        [v10 setStartTime:v17];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FEEDC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FEF20();
  }
}

- (void)plmnChanged:(id)a3 plmn:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(WISSignalBarMetric *)self contextStates];
    v10 = [v6 uuid];
    v11 = [v9 objectForKey:v10];

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
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FF010();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FEF54();
  }
}

- (void)registrationStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = [v6 slotID], v7) && v8)
  {
    v9 = [(WISSignalBarMetric *)self contextStates];
    v10 = [v6 uuid];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v12 = [v11 registrationState];
      v13 = [v12 isEqualToString:v7];

      if (v13)
      {
        v14 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v6 uuid];
          v16 = [v11 registrationState];
          v18 = 138412802;
          v19 = v15;
          v20 = 2112;
          v21 = v16;
          v22 = 2112;
          v23 = v7;
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
        [v11 setRegistrationState:v7];
        [v11 setStartTime:v17];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1001FF098();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FF0DC();
  }
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 slotID])
  {
    v6 = [(WISSignalBarMetric *)self dataInitializationSuccessful];
    v7 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v7)
      {
        [v5 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1001FF154();
      }

      v8 = [(WISSignalBarMetric *)self contextStates];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000557E0;
      v9[3] = &unk_1002AC0C0;
      v10 = v5;
      [v8 enumerateKeysAndObjectsUsingBlock:v9];
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