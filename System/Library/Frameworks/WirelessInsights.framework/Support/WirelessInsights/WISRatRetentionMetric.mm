@interface WISRatRetentionMetric
+ (id)getSharedInstance;
- (WISRatRetentionMetric)init;
- (id)CTCellularDataTechnologyToString:(int)a3;
- (id)deriveRAT:(id)a3 stewieState:(id)a4 isSatelliteSystem:(BOOL)a5 airplaneModeActive:(BOOL)a6 displayStatus:(id)a7;
- (id)deriveRegistrationStatus:(id)a3 airplaneModeActive:(BOOL)a4;
- (id)extractCellInfo:(id)a3 error:(id *)a4;
- (id)findContextsToDelete:(id)a3;
- (id)getFrequencyRangeFromArfcn:(id)a3;
- (id)getNSString:(const char *)a3;
- (id)getRadioStateString:(id)a3;
- (void)buildAndSubmitCAPayload:(id)a3 currentTime:(unint64_t)a4 changedFields:(id)a5;
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)currentDataSimChanged:(id)a3;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)initializeStateForContext:(id)a3 isDataPreferred:(BOOL)a4 currentTime:(unint64_t)a5;
- (void)populateSubscriptionContextsInUse;
- (void)radioStateChangedTo:(id)a3;
- (void)registrationStatusChanged:(id)a3 status:(id)a4;
- (void)satelliteProvisioningStatusForContext:(id)a3 changedTo:(id)a4;
- (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5;
- (void)setLastKnownGCI:(id)a3 forPayload:(id)a4;
- (void)stewieStateChangedTo:(id)a3;
- (void)subscriptionInfoDidChange;
@end

@implementation WISRatRetentionMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131008;
  block[3] = &unk_1002AB480;
  block[4] = a1;
  if (qword_1002D85F0 != -1)
  {
    dispatch_once(&qword_1002D85F0, block);
  }

  v2 = qword_1002D85E8;

  return v2;
}

- (WISRatRetentionMetric)init
{
  v10.receiver = self;
  v10.super_class = WISRatRetentionMetric;
  v2 = [(WISRatRetentionMetric *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(WISRatRetentionMetric *)v2 setContextUUIDToStateMap:v3];

    [(WISRatRetentionMetric *)v2 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.RatRetentionMetric", 0)];
    v4 = [(WISRatRetentionMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100131178;
    block[3] = &unk_1002AB4D0;
    v5 = v2;
    v9 = v5;
    dispatch_async(v4, block);
    v6 = v5;
  }

  return v2;
}

- (id)deriveRegistrationStatus:(id)a3 airplaneModeActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [(WISRatRetentionMetric *)self getNSString:"AirplaneMode"];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)deriveRAT:(id)a3 stewieState:(id)a4 isSatelliteSystem:(BOOL)a5 airplaneModeActive:(BOOL)a6 displayStatus:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a6)
  {
    v15 = "AirplaneMode";
LABEL_11:
    v17 = [(WISRatRetentionMetric *)self getNSString:v15];
    goto LABEL_12;
  }

  v16 = [v13 isStewieActive];
  if (v16)
  {
    v15 = "Satellite";
  }

  else
  {
    v15 = "LTE NTN";
  }

  if ((v16 | a5))
  {
    goto LABEL_11;
  }

  if ([v14 isEqualToString:kCTRegistrationStatusEmergencyOnly])
  {
    v15 = "EmergencyOnly";
    goto LABEL_11;
  }

  if ([v14 isEqualToString:kCTRegistrationStatusNotRegistered])
  {
    v15 = "NoService";
    goto LABEL_11;
  }

  v17 = v12;
LABEL_12:
  v18 = v17;

  return v18;
}

- (id)getRadioStateString:(id)a3
{
  v4 = a3;
  v5 = [v4 intValue];
  if (v5 >= 7)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_1002B3810[v5];
  }

  v7 = [(WISRatRetentionMetric *)self getNSString:v6];

  return v7;
}

- (id)extractCellInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WISTelephonyUtils getServingCellInfo:v6];
  v8 = [WISTelephonyUtils getBandFromCellInfo:v7 error:a4];
  v9 = [WISTelephonyUtils getBandwidthFromCellInfo:v7 error:a4];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [WISTelephonyUtils getArfcnFromCellInfo:v7 error:a4];
    if (*a4 || !v13)
    {

      *a4 = 0;
      v13 = &off_1002BF360;
    }

    v35 = v13;
    v14 = [(WISRatRetentionMetric *)self getNSString:"Unknown"];
    v15 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
    v12 = 0;
    v16 = &off_1002BF360;
    if (*a4 || !v15)
    {
      v21 = &off_1002BF360;
    }

    else
    {
      v33 = v15;
      v34 = v14;
      v30 = [WISTelephonyUtils getRATFromCellMonitorString:?];
      v32 = [(WISRatRetentionMetric *)self getNSString:"Unknown"];
      if ([WISTelephonyUtils isLteRat:v33])
      {
        v36 = 0;
        v17 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:&v36];
        v28 = v36;
        v29 = v17;
        if (!v28 && v17)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
          {
            sub_10020A3CC();
          }

          if (([v17 isEqualToNumber:&off_1002BF360] & 1) == 0 && (objc_msgSend(v17, "isEqualToNumber:", &off_1002BF378) & 1) == 0)
          {
            v18 = [(WISRatRetentionMetric *)self getNSString:"NR_NSA"];

            v30 = v18;
          }
        }

        v19 = [WISTelephonyUtils getMAVNRNSANeighborCellInfo:v6];
        if (v19)
        {
          v20 = [WISTelephonyUtils getBandwidthFromCellInfo:v19 error:a4];
          if (*a4 || !v20)
          {

            *a4 = 0;
            v31 = &off_1002BF360;
          }

          else
          {
            v31 = v20;
          }

          v23 = [WISTelephonyUtils getArfcnFromCellInfo:v19 error:a4];
          if (*a4 || !v23)
          {

            *a4 = 0;
          }

          else
          {
            v16 = v23;
          }

          v24 = [(WISRatRetentionMetric *)self getFrequencyRangeFromArfcn:v16];

          v34 = v24;
        }

        else
        {
          v31 = &off_1002BF360;
        }
      }

      else if ([WISTelephonyUtils isNrRat:v33])
      {
        v22 = [(WISRatRetentionMetric *)self getFrequencyRangeFromArfcn:v35];

        v31 = &off_1002BF360;
        v32 = v22;
      }

      else
      {
        v31 = &off_1002BF360;
      }

      v25 = [WISTelephonyUtils getGciFromCellInfo:v7 error:a4];
      v26 = v25;
      if (*a4)
      {

        v26 = 0;
        *a4 = 0;
      }

      v12 = [[ExtractedCellInfo alloc] init:v30 band:v8 frequencyRange:v32 nrnsaFrequencyRange:v34 bandwidth:v10 nrnsaBandwidth:v31 arfcn:v35 nrnsaArfcn:v16 gci:v26];
      if (!v12)
      {
        [(WISRatRetentionMetric *)self setError:a4 code:0 message:@"Could not allocate extracted cell info object"];
      }

      v15 = v33;
      v14 = v34;
      v21 = v31;
    }
  }

  return v12;
}

- (void)populateSubscriptionContextsInUse
{
  v3 = [(WISRatRetentionMetric *)self ctRelay];
  v4 = [v3 coreTelephonyClient];
  v32 = 0;
  v23 = [v4 getSubscriptionInfoWithError:&v32];
  v24 = v32;

  if (v24)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v24 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020A43C();
    }
  }

  else
  {
    v5 = [v23 subscriptionsInUse];
    v22 = [WISTelephonyUtils sanitizedSubscriptions:v5];

    if (v22)
    {
      v6 = [(WISRatRetentionMetric *)self ctRelay];
      v7 = [v6 coreTelephonyClient];
      v31 = 0;
      v21 = [v7 getCurrentDataSubscriptionContextSync:&v31];
      v24 = v31;

      if (v24)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v24 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10020A480();
        }
      }

      else
      {
        [(WISRatRetentionMetric *)self setIsDataInitSuccess:1];
        v26 = [v21 uuid];
        v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v20 = [(WISRatRetentionMetric *)self findContextsToDelete:v22];
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          sub_10020A4C4(v34, [v20 count], objc_msgSend(v22, "count"));
        }

        v8 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
        [v8 removeObjectsForKeys:v20];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = v22;
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v10)
        {
          v11 = *v28;
          do
          {
            v12 = 0;
            do
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v27 + 1) + 8 * v12);
              v14 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
              v15 = [v13 uuid];
              v16 = [v14 objectForKey:v15];
              v17 = v16 == 0;

              v18 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
              if (v17)
              {
                if (v18)
                {
                  [v13 uuid];
                  objc_claimAutoreleasedReturnValue();
                  sub_10020A56C();
                }

                v19 = [v13 uuid];
                -[WISRatRetentionMetric initializeStateForContext:isDataPreferred:currentTime:](self, "initializeStateForContext:isDataPreferred:currentTime:", v13, [v26 isEqual:v19], v25);
              }

              else if (v18)
              {
                [v13 uuid];
                objc_claimAutoreleasedReturnValue();
                sub_10020A518();
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
          }

          while (v10);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_10020A5C0();
      }

      v24 = 0;
    }
  }
}

- (void)buildAndSubmitCAPayload:(id)a3 currentTime:(unint64_t)a4 changedFields:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 startTime] > a4)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020A670();
    }

    goto LABEL_19;
  }

  v10 = a4 - [v8 startTime];
  v11 = v10 / 0xF4240;
  if (v10 <= 0x5F5E0FF)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020A600();
    }

    goto LABEL_19;
  }

  v12 = [v8 displayStatus];
  v90 = [(WISRatRetentionMetric *)self deriveRegistrationStatus:v12 airplaneModeActive:[(WISRatRetentionMetric *)self airplaneModeActive]];

  v13 = [v8 rat];
  v14 = [(WISRatRetentionMetric *)self stewieState];
  v15 = [v8 isSatelliteSystem];
  v16 = [(WISRatRetentionMetric *)self airplaneModeActive];
  v17 = [v8 displayStatus];
  v18 = [(WISRatRetentionMetric *)self deriveRAT:v13 stewieState:v14 isSatelliteSystem:v15 airplaneModeActive:v16 displayStatus:v17];

  v19 = [v8 dataConnectionType];
  v20 = [(WISRatRetentionMetric *)self stewieState];
  v88 = [TelephonyStateRelay deriveDataIcon:v19 stewieState:v20];

  v21 = [(WISRatRetentionMetric *)self radioState];
  v89 = [(WISRatRetentionMetric *)self getRadioStateString:v21];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isSatelliteProvisioned]);
  v23 = objc_alloc_init(NSMutableDictionary);
  v24 = [(WISRatRetentionMetric *)self getNSString:"registration_state"];
  [v23 setObject:v90 forKey:v24];

  v25 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
  [v23 setObject:v90 forKey:v25];

  v26 = [(WISRatRetentionMetric *)self getNSString:"radio_access_technology"];
  [v23 setObject:v18 forKey:v26];

  v27 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
  [v23 setObject:v18 forKey:v27];

  v28 = [v8 dataBearerTechnology];
  v29 = [(WISRatRetentionMetric *)self getNSString:"data_bearer_technology"];
  [v23 setObject:v28 forKey:v29];

  v30 = [v8 dataBearerTechnology];
  v31 = [(WISRatRetentionMetric *)self getNSString:"new_data_bearer_technology"];
  [v23 setObject:v30 forKey:v31];

  v32 = [v8 band];
  v33 = [(WISRatRetentionMetric *)self getNSString:"band"];
  [v23 setObject:v32 forKey:v33];

  v34 = [v8 band];
  v35 = [(WISRatRetentionMetric *)self getNSString:"new_band"];
  [v23 setObject:v34 forKey:v35];

  v36 = [v8 bandwidth];
  v37 = [(WISRatRetentionMetric *)self getNSString:"bandwidth"];
  [v23 setObject:v36 forKey:v37];

  v38 = [v8 bandwidth];
  v39 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
  [v23 setObject:v38 forKey:v39];

  v40 = [v8 frequencyRange];
  v41 = [(WISRatRetentionMetric *)self getNSString:"frequency_range"];
  [v23 setObject:v40 forKey:v41];

  v42 = [v8 frequencyRange];
  v43 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
  [v23 setObject:v42 forKey:v43];

  v44 = [v8 arfcn];
  v45 = [(WISRatRetentionMetric *)self getNSString:"arfcn"];
  [v23 setObject:v44 forKey:v45];

  v46 = [v8 arfcn];
  v47 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
  [v23 setObject:v46 forKey:v47];

  v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 dataPreferred]);
  v49 = [(WISRatRetentionMetric *)self getNSString:"is_data_preferred"];
  [v23 setObject:v48 forKey:v49];

  v50 = [v8 subsId];
  v51 = [(WISRatRetentionMetric *)self getNSString:"subs_id"];
  [v23 setObject:v50 forKey:v51];

  v52 = [(WISRatRetentionMetric *)self getNSString:"baseband_operating_mode"];
  [v23 setObject:v89 forKey:v52];

  v53 = [(WISRatRetentionMetric *)self getNSString:"new_baseband_operating_mode"];
  [v23 setObject:v89 forKey:v53];

  v54 = [(WISRatRetentionMetric *)self getNSString:"cellular_icon"];
  [v23 setObject:v88 forKey:v54];

  v55 = [(WISRatRetentionMetric *)self getNSString:"new_cellular_icon"];
  [v23 setObject:v88 forKey:v55];

  v56 = [(WISRatRetentionMetric *)self getNSString:"is_sim_present"];
  [v23 setObject:&__kCFBooleanTrue forKey:v56];

  v57 = [(WISRatRetentionMetric *)self getNSString:"is_sat_provisioned"];
  [v23 setObject:v22 forKey:v57];

  v58 = [(WISRatRetentionMetric *)self getNSString:"new_is_sat_provisioned"];
  [v23 setObject:v22 forKey:v58];

  v59 = [NSNumber numberWithUnsignedLongLong:v11];
  v60 = [(WISRatRetentionMetric *)self getNSString:"duration_ms"];
  [v23 setObject:v59 forKey:v60];

  v61 = [v8 dataBearerTechnology];
  v62 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
  LODWORD(v19) = [v61 isEqualToString:v62];

  if (v19)
  {
    v63 = [v8 nrnsaBandwidth];
    v64 = [(WISRatRetentionMetric *)self getNSString:"bandwidth"];
    [v23 setObject:v63 forKey:v64];

    v65 = [v8 nrnsaBandwidth];
    v66 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
    [v23 setObject:v65 forKey:v66];

    v67 = [v8 nrnsaArfcn];
    v68 = [(WISRatRetentionMetric *)self getNSString:"arfcn"];
    [v23 setObject:v67 forKey:v68];

    v69 = [v8 nrnsaArfcn];
    v70 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
    [v23 setObject:v69 forKey:v70];

    v71 = [v8 nrnsaFrequencyRange];
    v72 = [(WISRatRetentionMetric *)self getNSString:"frequency_range"];
    [v23 setObject:v71 forKey:v72];

    v73 = [v8 nrnsaFrequencyRange];
    v74 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
    [v23 setObject:v73 forKey:v74];
  }

  [v23 addEntriesFromDictionary:v9];
  v75 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
  v76 = [v23 valueForKey:v75];
  if (![v76 isEqualToString:kCTRegistrationStatusNotRegistered])
  {

    goto LABEL_13;
  }

  v77 = [(WISRatRetentionMetric *)self airplaneModeActive];

  if ((v77 & 1) == 0)
  {
    v75 = [v8 lastKnownGci];
    [(WISRatRetentionMetric *)self setLastKnownGCI:v75 forPayload:v23];
LABEL_13:
  }

  v78 = [(WISRatRetentionMetric *)self getNSString:"registration_state"];
  v79 = [v23 valueForKey:v78];
  v80 = [WISTelephonyUtils getShortenedRegistrationStateString:v79];

  if (v80)
  {
    v81 = [(WISRatRetentionMetric *)self getNSString:"registration_state"];
    [v23 setValue:v80 forKey:v81];
  }

  v82 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
  v83 = [v23 valueForKey:v82];
  v84 = [WISTelephonyUtils getShortenedRegistrationStateString:v83];

  if (v84)
  {
    v85 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
    [v23 setValue:v84 forKey:v85];
  }

  v86 = [(WISRatRetentionMetric *)self getNSString:"com.apple.Telephony.apRatRetention"];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_100132D48;
  v91[3] = &unk_1002B3750;
  v87 = v23;
  v92 = v87;
  sub_1000158DC(v86, v91);

LABEL_19:
}

- (void)stewieStateChangedTo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020A6AC();
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v6 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100132E8C;
  v8[3] = &unk_1002B3778;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  v10 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  [(WISRatRetentionMetric *)self setStewieState:v7];
}

- (void)radioStateChangedTo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020A71C();
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v6 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001331EC;
  v8[3] = &unk_1002B3778;
  v8[4] = self;
  v10 = v5;
  v7 = v4;
  v9 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  [(WISRatRetentionMetric *)self setRadioState:v7];
}

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 > 7)
  {
    if (a4 <= 12)
    {
      if (a4 == 8)
      {
        [(WISRatRetentionMetric *)self registrationStatusChanged:v10 status:v8];
      }

      else if (a4 == 12)
      {
        [(WISRatRetentionMetric *)self stewieStateChangedTo:v8];
      }
    }

    else
    {
      switch(a4)
      {
        case 13:
          -[WISRatRetentionMetric satelliteRegistrationStatusForContext:changedTo:](self, "satelliteRegistrationStatusForContext:changedTo:", v10, [v8 BOOLValue]);
          break;
        case 14:
          [(WISRatRetentionMetric *)self radioStateChangedTo:v8];
          break;
        case 15:
          [(WISRatRetentionMetric *)self satelliteProvisioningStatusForContext:v10 changedTo:v8];
          break;
      }
    }
  }

  else if (a4 <= 3)
  {
    if (a4)
    {
      if (a4 == 3)
      {
        [(WISRatRetentionMetric *)self currentDataSimChanged:v10];
      }
    }

    else
    {
      [(WISRatRetentionMetric *)self cellMonitorUpdate:v10 info:v8];
    }
  }

  else
  {
    switch(a4)
    {
      case 4:
        [(WISRatRetentionMetric *)self dataStatus:v10 dataStatusInfo:v8];
        break;
      case 6:
        [(WISRatRetentionMetric *)self subscriptionInfoDidChange];
        break;
      case 7:
        -[WISRatRetentionMetric airplaneModeStatusChanged:](self, "airplaneModeStatusChanged:", [v8 BOOLValue]);
        break;
    }
  }
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = a3;
  if ([WISTelephonyUtils isValidContext:v4])
  {
    if ([(WISRatRetentionMetric *)self isDataInitSuccess])
    {
      v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v4 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A854();
      }

      v6 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100133A24;
      v9[3] = &unk_1002B3778;
      v9[4] = self;
      v11 = v5;
      v10 = v4;
      [v6 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v7 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 uuid];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RatRetentionMetric:#I Current data context changed to %@, but we did not successfully initialize. Running initialization", buf, 0xCu);
      }

      [(WISRatRetentionMetric *)self populateSubscriptionContextsInUse];
    }
  }
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [WISTelephonyUtils isValidContext:v6];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = -[WISRatRetentionMetric CTCellularDataTechnologyToString:](self, "CTCellularDataTechnologyToString:", [v7 dataBearerTechnology]);
    v11 = [WISSystemStatusSimulacrum deriveConnectionTypeForDataStatus:v7];
    v12 = *(qword_1002DBE98 + 48);
    if (!v10)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [v7 dataBearerTechnology];
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A920();
      }

      goto LABEL_25;
    }

    v13 = v11;
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      v36 = [v6 uuid];
      *buf = 138412802;
      v39 = v36;
      v40 = 2112;
      v41 = v10;
      v42 = 2048;
      v43 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "RatRetentionMetric:#D Data status of context %@ changed. New Data Bearer Technology: %@, new data connection type %lu", buf, 0x20u);
    }

    v14 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    v15 = [v6 uuid];
    v16 = [v14 objectForKey:v15];

    if (!v16)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A8DC();
      }

      goto LABEL_24;
    }

    v17 = [v16 dataBearerTechnology];
    if ([v17 isEqualToString:v10])
    {
      v18 = [v16 dataConnectionType] == v13;

      if (v18)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_10020A898();
        }

LABEL_24:

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
    }

    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if ([v16 dataPreferred])
    {
      v37 = v19;
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = [(WISRatRetentionMetric *)self getNSString:"new_data_bearer_technology"];
      [v20 setObject:v10 forKey:v21];

      v22 = [(WISRatRetentionMetric *)self stewieState];
      v23 = [TelephonyStateRelay deriveDataIcon:v13 stewieState:v22];
      v24 = [(WISRatRetentionMetric *)self getNSString:"new_cellular_icon"];
      [v20 setObject:v23 forKey:v24];

      v25 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
      LODWORD(v22) = [v10 isEqualToString:v25];

      if (v22)
      {
        v26 = [v16 nrnsaBandwidth];
        v27 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
        [v20 setObject:v26 forKey:v27];

        v28 = [v16 nrnsaArfcn];
        v29 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
        [v20 setObject:v28 forKey:v29];

        [v16 nrnsaFrequencyRange];
      }

      else
      {
        v32 = [v16 bandwidth];
        v33 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
        [v20 setObject:v32 forKey:v33];

        v34 = [v16 arfcn];
        v35 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
        [v20 setObject:v34 forKey:v35];

        [v16 frequencyRange];
      }
      v30 = ;
      v31 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
      [v20 setObject:v30 forKey:v31];

      [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v16 currentTime:v37 changedFields:v20];
      v19 = v37;
    }

    [v16 setStartTime:v19];
    [v16 setDataBearerTechnology:v10];
    [v16 setDataConnectionType:v13];
    goto LABEL_24;
  }

LABEL_26:
}

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [WISTelephonyUtils isValidContext:v6];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020A970();
    }

    v10 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    v11 = [v6 uuid];
    v12 = [v10 objectForKey:v11];

    if (!v12)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AAF4();
      }

      goto LABEL_55;
    }

    v73 = 0;
    v13 = [(WISRatRetentionMetric *)self extractCellInfo:v7 error:&v73];
    v72 = v73;
    if (v72 || !v13)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        [v72 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10020A9B4();
      }

      goto LABEL_54;
    }

    v14 = [v13 gci];
    v15 = v14 == 0;

    if (!v15)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        [v13 gci];
        objc_claimAutoreleasedReturnValue();
        sub_10020AA04();
      }

      v16 = [v13 gci];
      [v12 setLastKnownGci:v16];
    }

    v17 = [v13 rat];
    v18 = [(WISRatRetentionMetric *)self stewieState];
    v19 = [v12 isSatelliteSystem];
    v20 = [(WISRatRetentionMetric *)self airplaneModeActive];
    v21 = [v12 displayStatus];
    v71 = [(WISRatRetentionMetric *)self deriveRAT:v17 stewieState:v18 isSatelliteSystem:v19 airplaneModeActive:v20 displayStatus:v21];

    v70 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v22 = [v12 rat];
    v23 = [v13 rat];
    v24 = [v22 isEqual:v23];
    if ((v24 & 1) == 0)
    {
      v69 = [v13 rat];
      if ([v69 isEqualToString:v71])
      {
        goto LABEL_29;
      }
    }

    v25 = [v12 band];
    v26 = [v13 band];
    if ([v25 isEqual:v26])
    {
      v68 = [v12 frequencyRange];
      v67 = v25;
      v66 = [v13 frequencyRange];
      if ([v68 isEqual:?])
      {
        v65 = [v12 bandwidth];
        v64 = [v13 bandwidth];
        if ([v65 isEqual:?])
        {
          v63 = [v12 arfcn];
          v62 = [v13 arfcn];
          if ([v63 isEqual:?])
          {
            v61 = [v12 dataBearerTechnology];
            v60 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
            if ([v61 isEqualToString:?])
            {
              v59 = [v12 nrnsaBandwidth];
              v58 = [v13 nrnsaBandwidth];
              if ([v59 isEqual:?])
              {
                v57 = [v12 nrnsaArfcn];
                v56 = [v13 nrnsaArfcn];
                if ([v57 isEqual:?])
                {
                  v55 = [v12 nrnsaFrequencyRange];
                  v27 = [v13 nrnsaFrequencyRange];
                  v54 = [v55 isEqualToString:v27];

                  v28 = v54 ^ 1;
                }

                else
                {
                  v28 = 1;
                }
              }

              else
              {
                v28 = 1;
              }
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v28 = 1;
        }
      }

      else
      {
        v28 = 1;
      }

      if ((v24 & 1) == 0)
      {
      }

      if ((v28 & 1) == 0)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_10020AA64();
        }

        goto LABEL_53;
      }

LABEL_45:
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AAA8();
      }

      if ([v12 dataPreferred])
      {
        v29 = objc_alloc_init(NSMutableDictionary);
        v30 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
        [v29 setObject:v71 forKey:v30];

        v31 = [v13 band];
        v32 = [(WISRatRetentionMetric *)self getNSString:"new_band"];
        [v29 setObject:v31 forKey:v32];

        v33 = [v12 dataBearerTechnology];
        v34 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
        v35 = [v33 isEqualToString:v34];

        if (v35)
        {
          v36 = [v13 nrnsaBandwidth];
          v37 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
          [v29 setObject:v36 forKey:v37];

          v38 = [v13 nrnsaArfcn];
          v39 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
          [v29 setObject:v38 forKey:v39];

          [v13 nrnsaFrequencyRange];
        }

        else
        {
          v42 = [v13 bandwidth];
          v43 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
          [v29 setObject:v42 forKey:v43];

          v44 = [v13 arfcn];
          v45 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
          [v29 setObject:v44 forKey:v45];

          [v13 frequencyRange];
        }
        v40 = ;
        v41 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
        [v29 setObject:v40 forKey:v41];

        [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v12 currentTime:v70 changedFields:v29];
      }

      v46 = [v13 rat];
      [v12 setRat:v46];

      v47 = [v13 band];
      [v12 setBand:v47];

      v48 = [v13 frequencyRange];
      [v12 setFrequencyRange:v48];

      v49 = [v13 bandwidth];
      [v12 setBandwidth:v49];

      v50 = [v13 arfcn];
      [v12 setArfcn:v50];

      [v12 setStartTime:v70];
LABEL_53:
      v51 = [v13 nrnsaBandwidth];
      [v12 setNrnsaBandwidth:v51];

      v52 = [v13 nrnsaArfcn];
      [v12 setNrnsaArfcn:v52];

      v53 = [v13 nrnsaFrequencyRange];
      [v12 setNrnsaFrequencyRange:v53];

LABEL_54:
LABEL_55:

      goto LABEL_56;
    }

    if ((v24 & 1) == 0)
    {
LABEL_29:
    }

    goto LABEL_45;
  }

LABEL_56:
}

- (void)registrationStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([WISTelephonyUtils isValidContext:v6])
  {
    v8 = *(qword_1002DBE98 + 48);
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AB38();
      }

      v9 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
      v10 = [v6 uuid];
      v11 = [v9 objectForKey:v10];

      if (v11)
      {
        v12 = [v11 displayStatus];
        v13 = [v12 isEqualToString:v7];

        if (v13)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
          {
            [v6 uuid];
            objc_claimAutoreleasedReturnValue();
            sub_10020AB84();
          }
        }

        else
        {
          if (![(WISRatRetentionMetric *)self airplaneModeActive])
          {
            v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            if ([v11 dataPreferred])
            {
              v21 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
              v22[0] = v21;
              v20 = [(WISRatRetentionMetric *)self deriveRegistrationStatus:v7 airplaneModeActive:[(WISRatRetentionMetric *)self airplaneModeActive]];
              v23[0] = v20;
              v15 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
              v22[1] = v15;
              v16 = [v11 rat];
              v17 = [(WISRatRetentionMetric *)self stewieState];
              v18 = -[WISRatRetentionMetric deriveRAT:stewieState:isSatelliteSystem:airplaneModeActive:displayStatus:](self, "deriveRAT:stewieState:isSatelliteSystem:airplaneModeActive:displayStatus:", v16, v17, [v11 isSatelliteSystem], -[WISRatRetentionMetric airplaneModeActive](self, "airplaneModeActive"), v7);
              v23[1] = v18;
              v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
              [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v11 currentTime:v14 changedFields:v19];
            }

            [v11 setStartTime:v14];
          }

          [v11 setDisplayStatus:v7];
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020ABC8();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AC0C();
    }
  }
}

- (void)subscriptionInfoDidChange
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020AC50();
  }

  [(WISRatRetentionMetric *)self populateSubscriptionContextsInUse];
}

- (void)satelliteProvisioningStatusForContext:(id)a3 changedTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([WISTelephonyUtils isValidContext:v6])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AD74();
    }

    v8 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    v9 = [v6 uuid];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v11 = [v10 isSatelliteProvisioned];
      if (v11 == [v7 BOOLValue])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_10020ADC0();
        }
      }

      else
      {
        v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        if ([v10 dataPreferred])
        {
          v13 = [(WISRatRetentionMetric *)self getNSString:"new_is_sat_provisioned"];
          v15 = v13;
          v16 = v7;
          v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v10 currentTime:v12 changedFields:v14];
        }

        [v10 setStartTime:v12];
        [v10 setIsSatelliteProvisioned:{objc_msgSend(v7, "BOOLValue")}];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AE04();
    }
  }
}

- (void)initializeStateForContext:(id)a3 isDataPreferred:(BOOL)a4 currentTime:(unint64_t)a5
{
  v8 = a3;
  v9 = [(WISRatRetentionMetric *)self ctRelay];
  v10 = [v9 coreTelephonyClient];
  v35 = 0;
  v11 = [v10 copyRegistrationDisplayStatus:v8 error:&v35];
  v12 = v35;

  if (v12)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v12 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020AE48();
    }
  }

  else
  {
    v13 = [(WISRatRetentionMetric *)self ctRelay];
    v14 = [v13 coreTelephonyClient];
    v34 = 0;
    v15 = [v14 getDataStatus:v8 error:&v34];
    v12 = v34;

    if (v12)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [v12 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10020AE8C();
      }
    }

    else
    {
      v23 = [WISSystemStatusSimulacrum deriveConnectionTypeForDataStatus:v15];
      v16 = [(WISRatRetentionMetric *)self ctRelay];
      v33 = 0;
      v17 = [v16 getIsSatelliteProvisioned:v8 error:&v33];
      v18 = v33;

      if (v18)
      {
        v19 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 localizedDescription];
          *buf = 138412290;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RatRetentionMetric:#N Error while fetching satellite provisioned status: %@", buf, 0xCu);
        }

        v17 = 0;
      }

      v21 = [(WISRatRetentionMetric *)self ctRelay];
      v22 = [v21 coreTelephonyClient];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100135C7C;
      v24[3] = &unk_1002B37F0;
      v25 = v8;
      v26 = self;
      v27 = v15;
      v29 = a5;
      v31 = a4;
      v32 = v17;
      v28 = v11;
      v30 = v23;
      [v22 copyCellInfo:v25 completion:v24];
    }
  }
}

- (id)CTCellularDataTechnologyToString:(int)a3
{
  if ((a3 - 1) > 5)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1002B3848[a3 - 1];
  }

  v6 = [(WISRatRetentionMetric *)self getNSString:v5, v3];

  return v6;
}

- (id)getFrequencyRangeFromArfcn:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isEqualToNumber:&off_1002BF360] & 1) != 0)
  {
    v6 = "Unknown";
LABEL_4:
    v7 = [(WISRatRetentionMetric *)self getNSString:v6];
    goto LABEL_5;
  }

  if ([v5 compare:&off_1002BF390] == -1)
  {
    v6 = "FR1";
    goto LABEL_4;
  }

  v7 = [(WISRatRetentionMetric *)self getNSString:"FR2"];
LABEL_5:
  v8 = v7;

  return v8;
}

- (id)findContextsToDelete:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) uuid];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  return v11;
}

- (id)getNSString:(const char *)a3
{
  v3 = [NSString stringWithUTF8String:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020B088();
    }

    v5 = @"ERROR";
  }

  return v5;
}

- (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5
{
  v10 = a5;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setValue:v10 forKey:NSLocalizedDescriptionKey];
  v9 = [(WISRatRetentionMetric *)self getNSString:"RatRetentionMetric"];
  *a3 = [NSError errorWithDomain:v9 code:a4 userInfo:v8];
}

- (void)setLastKnownGCI:(id)a3 forPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&stru_1002D47D8);
  v8 = xmmword_1002D4818;
  if (!xmmword_1002D4818)
  {
    sub_100082658(&v14);
    v9 = v14;
    v14 = 0uLL;
    v10 = *(&xmmword_1002D4818 + 1);
    xmmword_1002D4818 = v9;
    if (v10)
    {
      sub_100008350(v10);
      if (*(&v14 + 1))
      {
        sub_100008350(*(&v14 + 1));
      }
    }

    v8 = xmmword_1002D4818;
  }

  v11 = *(&xmmword_1002D4818 + 1);
  if (*(&xmmword_1002D4818 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4818 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D47D8);
  v12 = sub_10001409C(v8);
  if (v11)
  {
    sub_100008350(v11);
  }

  if (v12)
  {
    v13 = [(WISRatRetentionMetric *)self getNSString:"last_known_gci_before_oos"];
    [v7 setObject:v6 forKey:v13];
  }
}

@end