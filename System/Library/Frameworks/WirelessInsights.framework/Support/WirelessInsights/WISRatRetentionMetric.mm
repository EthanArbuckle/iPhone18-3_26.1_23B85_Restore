@interface WISRatRetentionMetric
+ (id)getSharedInstance;
- (WISRatRetentionMetric)init;
- (id)CTCellularDataTechnologyToString:(int)string;
- (id)deriveRAT:(id)t stewieState:(id)state isSatelliteSystem:(BOOL)system airplaneModeActive:(BOOL)active displayStatus:(id)status;
- (id)deriveRegistrationStatus:(id)status airplaneModeActive:(BOOL)active;
- (id)extractCellInfo:(id)info error:(id *)error;
- (id)findContextsToDelete:(id)delete;
- (id)getFrequencyRangeFromArfcn:(id)arfcn;
- (id)getNSString:(const char *)string;
- (id)getRadioStateString:(id)string;
- (void)buildAndSubmitCAPayload:(id)payload currentTime:(unint64_t)time changedFields:(id)fields;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)currentDataSimChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)initializeStateForContext:(id)context isDataPreferred:(BOOL)preferred currentTime:(unint64_t)time;
- (void)populateSubscriptionContextsInUse;
- (void)radioStateChangedTo:(id)to;
- (void)registrationStatusChanged:(id)changed status:(id)status;
- (void)satelliteProvisioningStatusForContext:(id)context changedTo:(id)to;
- (void)setError:(id *)error code:(int64_t)code message:(id)message;
- (void)setLastKnownGCI:(id)i forPayload:(id)payload;
- (void)stewieStateChangedTo:(id)to;
- (void)subscriptionInfoDidChange;
@end

@implementation WISRatRetentionMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131008;
  block[3] = &unk_1002AB480;
  block[4] = self;
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
    queue = [(WISRatRetentionMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100131178;
    block[3] = &unk_1002AB4D0;
    v5 = v2;
    v9 = v5;
    dispatch_async(queue, block);
    v6 = v5;
  }

  return v2;
}

- (id)deriveRegistrationStatus:(id)status airplaneModeActive:(BOOL)active
{
  activeCopy = active;
  statusCopy = status;
  v7 = statusCopy;
  if (activeCopy)
  {
    v8 = [(WISRatRetentionMetric *)self getNSString:"AirplaneMode"];
  }

  else
  {
    v8 = statusCopy;
  }

  v9 = v8;

  return v9;
}

- (id)deriveRAT:(id)t stewieState:(id)state isSatelliteSystem:(BOOL)system airplaneModeActive:(BOOL)active displayStatus:(id)status
{
  tCopy = t;
  stateCopy = state;
  statusCopy = status;
  if (active)
  {
    v15 = "AirplaneMode";
LABEL_11:
    v17 = [(WISRatRetentionMetric *)self getNSString:v15];
    goto LABEL_12;
  }

  isStewieActive = [stateCopy isStewieActive];
  if (isStewieActive)
  {
    v15 = "Satellite";
  }

  else
  {
    v15 = "LTE NTN";
  }

  if ((isStewieActive | system))
  {
    goto LABEL_11;
  }

  if ([statusCopy isEqualToString:kCTRegistrationStatusEmergencyOnly])
  {
    v15 = "EmergencyOnly";
    goto LABEL_11;
  }

  if ([statusCopy isEqualToString:kCTRegistrationStatusNotRegistered])
  {
    v15 = "NoService";
    goto LABEL_11;
  }

  v17 = tCopy;
LABEL_12:
  v18 = v17;

  return v18;
}

- (id)getRadioStateString:(id)string
{
  stringCopy = string;
  intValue = [stringCopy intValue];
  if (intValue >= 7)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_1002B3810[intValue];
  }

  v7 = [(WISRatRetentionMetric *)self getNSString:v6];

  return v7;
}

- (id)extractCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [WISTelephonyUtils getServingCellInfo:infoCopy];
  v8 = [WISTelephonyUtils getBandFromCellInfo:v7 error:error];
  v9 = [WISTelephonyUtils getBandwidthFromCellInfo:v7 error:error];
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
    v13 = [WISTelephonyUtils getArfcnFromCellInfo:v7 error:error];
    if (*error || !v13)
    {

      *error = 0;
      v13 = &off_1002BF360;
    }

    v35 = v13;
    v14 = [(WISRatRetentionMetric *)self getNSString:"Unknown"];
    v15 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
    v12 = 0;
    v16 = &off_1002BF360;
    if (*error || !v15)
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

        v19 = [WISTelephonyUtils getMAVNRNSANeighborCellInfo:infoCopy];
        if (v19)
        {
          v20 = [WISTelephonyUtils getBandwidthFromCellInfo:v19 error:error];
          if (*error || !v20)
          {

            *error = 0;
            v31 = &off_1002BF360;
          }

          else
          {
            v31 = v20;
          }

          v23 = [WISTelephonyUtils getArfcnFromCellInfo:v19 error:error];
          if (*error || !v23)
          {

            *error = 0;
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

      v25 = [WISTelephonyUtils getGciFromCellInfo:v7 error:error];
      v26 = v25;
      if (*error)
      {

        v26 = 0;
        *error = 0;
      }

      v12 = [[ExtractedCellInfo alloc] init:v30 band:v8 frequencyRange:v32 nrnsaFrequencyRange:v34 bandwidth:v10 nrnsaBandwidth:v31 arfcn:v35 nrnsaArfcn:v16 gci:v26];
      if (!v12)
      {
        [(WISRatRetentionMetric *)self setError:error code:0 message:@"Could not allocate extracted cell info object"];
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
  ctRelay = [(WISRatRetentionMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v32 = 0;
  v23 = [coreTelephonyClient getSubscriptionInfoWithError:&v32];
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
    subscriptionsInUse = [v23 subscriptionsInUse];
    v22 = [WISTelephonyUtils sanitizedSubscriptions:subscriptionsInUse];

    if (v22)
    {
      ctRelay2 = [(WISRatRetentionMetric *)self ctRelay];
      coreTelephonyClient2 = [ctRelay2 coreTelephonyClient];
      v31 = 0;
      v21 = [coreTelephonyClient2 getCurrentDataSubscriptionContextSync:&v31];
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
        uuid = [v21 uuid];
        v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v20 = [(WISRatRetentionMetric *)self findContextsToDelete:v22];
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          sub_10020A4C4(v34, [v20 count], objc_msgSend(v22, "count"));
        }

        contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
        [contextUUIDToStateMap removeObjectsForKeys:v20];

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
              contextUUIDToStateMap2 = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
              uuid2 = [v13 uuid];
              v16 = [contextUUIDToStateMap2 objectForKey:uuid2];
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

                uuid3 = [v13 uuid];
                -[WISRatRetentionMetric initializeStateForContext:isDataPreferred:currentTime:](self, "initializeStateForContext:isDataPreferred:currentTime:", v13, [uuid isEqual:uuid3], v25);
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

- (void)buildAndSubmitCAPayload:(id)payload currentTime:(unint64_t)time changedFields:(id)fields
{
  payloadCopy = payload;
  fieldsCopy = fields;
  if ([payloadCopy startTime] > time)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020A670();
    }

    goto LABEL_19;
  }

  v10 = time - [payloadCopy startTime];
  v11 = v10 / 0xF4240;
  if (v10 <= 0x5F5E0FF)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020A600();
    }

    goto LABEL_19;
  }

  displayStatus = [payloadCopy displayStatus];
  v90 = [(WISRatRetentionMetric *)self deriveRegistrationStatus:displayStatus airplaneModeActive:[(WISRatRetentionMetric *)self airplaneModeActive]];

  v13 = [payloadCopy rat];
  stewieState = [(WISRatRetentionMetric *)self stewieState];
  isSatelliteSystem = [payloadCopy isSatelliteSystem];
  airplaneModeActive = [(WISRatRetentionMetric *)self airplaneModeActive];
  displayStatus2 = [payloadCopy displayStatus];
  v18 = [(WISRatRetentionMetric *)self deriveRAT:v13 stewieState:stewieState isSatelliteSystem:isSatelliteSystem airplaneModeActive:airplaneModeActive displayStatus:displayStatus2];

  dataConnectionType = [payloadCopy dataConnectionType];
  stewieState2 = [(WISRatRetentionMetric *)self stewieState];
  v88 = [TelephonyStateRelay deriveDataIcon:dataConnectionType stewieState:stewieState2];

  radioState = [(WISRatRetentionMetric *)self radioState];
  v89 = [(WISRatRetentionMetric *)self getRadioStateString:radioState];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy isSatelliteProvisioned]);
  v23 = objc_alloc_init(NSMutableDictionary);
  v24 = [(WISRatRetentionMetric *)self getNSString:"registration_state"];
  [v23 setObject:v90 forKey:v24];

  v25 = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
  [v23 setObject:v90 forKey:v25];

  v26 = [(WISRatRetentionMetric *)self getNSString:"radio_access_technology"];
  [v23 setObject:v18 forKey:v26];

  v27 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
  [v23 setObject:v18 forKey:v27];

  dataBearerTechnology = [payloadCopy dataBearerTechnology];
  v29 = [(WISRatRetentionMetric *)self getNSString:"data_bearer_technology"];
  [v23 setObject:dataBearerTechnology forKey:v29];

  dataBearerTechnology2 = [payloadCopy dataBearerTechnology];
  v31 = [(WISRatRetentionMetric *)self getNSString:"new_data_bearer_technology"];
  [v23 setObject:dataBearerTechnology2 forKey:v31];

  band = [payloadCopy band];
  v33 = [(WISRatRetentionMetric *)self getNSString:"band"];
  [v23 setObject:band forKey:v33];

  band2 = [payloadCopy band];
  v35 = [(WISRatRetentionMetric *)self getNSString:"new_band"];
  [v23 setObject:band2 forKey:v35];

  bandwidth = [payloadCopy bandwidth];
  v37 = [(WISRatRetentionMetric *)self getNSString:"bandwidth"];
  [v23 setObject:bandwidth forKey:v37];

  bandwidth2 = [payloadCopy bandwidth];
  v39 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
  [v23 setObject:bandwidth2 forKey:v39];

  frequencyRange = [payloadCopy frequencyRange];
  v41 = [(WISRatRetentionMetric *)self getNSString:"frequency_range"];
  [v23 setObject:frequencyRange forKey:v41];

  frequencyRange2 = [payloadCopy frequencyRange];
  v43 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
  [v23 setObject:frequencyRange2 forKey:v43];

  arfcn = [payloadCopy arfcn];
  v45 = [(WISRatRetentionMetric *)self getNSString:"arfcn"];
  [v23 setObject:arfcn forKey:v45];

  arfcn2 = [payloadCopy arfcn];
  v47 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
  [v23 setObject:arfcn2 forKey:v47];

  v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy dataPreferred]);
  v49 = [(WISRatRetentionMetric *)self getNSString:"is_data_preferred"];
  [v23 setObject:v48 forKey:v49];

  subsId = [payloadCopy subsId];
  v51 = [(WISRatRetentionMetric *)self getNSString:"subs_id"];
  [v23 setObject:subsId forKey:v51];

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

  dataBearerTechnology3 = [payloadCopy dataBearerTechnology];
  v62 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
  LODWORD(dataConnectionType) = [dataBearerTechnology3 isEqualToString:v62];

  if (dataConnectionType)
  {
    nrnsaBandwidth = [payloadCopy nrnsaBandwidth];
    v64 = [(WISRatRetentionMetric *)self getNSString:"bandwidth"];
    [v23 setObject:nrnsaBandwidth forKey:v64];

    nrnsaBandwidth2 = [payloadCopy nrnsaBandwidth];
    v66 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
    [v23 setObject:nrnsaBandwidth2 forKey:v66];

    nrnsaArfcn = [payloadCopy nrnsaArfcn];
    v68 = [(WISRatRetentionMetric *)self getNSString:"arfcn"];
    [v23 setObject:nrnsaArfcn forKey:v68];

    nrnsaArfcn2 = [payloadCopy nrnsaArfcn];
    v70 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
    [v23 setObject:nrnsaArfcn2 forKey:v70];

    nrnsaFrequencyRange = [payloadCopy nrnsaFrequencyRange];
    v72 = [(WISRatRetentionMetric *)self getNSString:"frequency_range"];
    [v23 setObject:nrnsaFrequencyRange forKey:v72];

    nrnsaFrequencyRange2 = [payloadCopy nrnsaFrequencyRange];
    v74 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
    [v23 setObject:nrnsaFrequencyRange2 forKey:v74];
  }

  [v23 addEntriesFromDictionary:fieldsCopy];
  lastKnownGci = [(WISRatRetentionMetric *)self getNSString:"new_registration_state"];
  v76 = [v23 valueForKey:lastKnownGci];
  if (![v76 isEqualToString:kCTRegistrationStatusNotRegistered])
  {

    goto LABEL_13;
  }

  airplaneModeActive2 = [(WISRatRetentionMetric *)self airplaneModeActive];

  if ((airplaneModeActive2 & 1) == 0)
  {
    lastKnownGci = [payloadCopy lastKnownGci];
    [(WISRatRetentionMetric *)self setLastKnownGCI:lastKnownGci forPayload:v23];
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

- (void)stewieStateChangedTo:(id)to
{
  toCopy = to;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020A6AC();
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100132E8C;
  v8[3] = &unk_1002B3778;
  v8[4] = self;
  v7 = toCopy;
  v9 = v7;
  v10 = v5;
  [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v8];

  [(WISRatRetentionMetric *)self setStewieState:v7];
}

- (void)radioStateChangedTo:(id)to
{
  toCopy = to;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020A71C();
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001331EC;
  v8[3] = &unk_1002B3778;
  v8[4] = self;
  v10 = v5;
  v7 = toCopy;
  v9 = v7;
  [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v8];

  [(WISRatRetentionMetric *)self setRadioState:v7];
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  v9 = stateCopy;
  if (key > 7)
  {
    if (key <= 12)
    {
      if (key == 8)
      {
        [(WISRatRetentionMetric *)self registrationStatusChanged:updateCopy status:stateCopy];
      }

      else if (key == 12)
      {
        [(WISRatRetentionMetric *)self stewieStateChangedTo:stateCopy];
      }
    }

    else
    {
      switch(key)
      {
        case 13:
          -[WISRatRetentionMetric satelliteRegistrationStatusForContext:changedTo:](self, "satelliteRegistrationStatusForContext:changedTo:", updateCopy, [stateCopy BOOLValue]);
          break;
        case 14:
          [(WISRatRetentionMetric *)self radioStateChangedTo:stateCopy];
          break;
        case 15:
          [(WISRatRetentionMetric *)self satelliteProvisioningStatusForContext:updateCopy changedTo:stateCopy];
          break;
      }
    }
  }

  else if (key <= 3)
  {
    if (key)
    {
      if (key == 3)
      {
        [(WISRatRetentionMetric *)self currentDataSimChanged:updateCopy];
      }
    }

    else
    {
      [(WISRatRetentionMetric *)self cellMonitorUpdate:updateCopy info:stateCopy];
    }
  }

  else
  {
    switch(key)
    {
      case 4:
        [(WISRatRetentionMetric *)self dataStatus:updateCopy dataStatusInfo:stateCopy];
        break;
      case 6:
        [(WISRatRetentionMetric *)self subscriptionInfoDidChange];
        break;
      case 7:
        -[WISRatRetentionMetric airplaneModeStatusChanged:](self, "airplaneModeStatusChanged:", [stateCopy BOOLValue]);
        break;
    }
  }
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  if ([WISTelephonyUtils isValidContext:changedCopy])
  {
    if ([(WISRatRetentionMetric *)self isDataInitSuccess])
    {
      v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A854();
      }

      contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100133A24;
      v9[3] = &unk_1002B3778;
      v9[4] = self;
      v11 = v5;
      v10 = changedCopy;
      [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v7 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        uuid = [changedCopy uuid];
        *buf = 138412290;
        v13 = uuid;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RatRetentionMetric:#I Current data context changed to %@, but we did not successfully initialize. Running initialization", buf, 0xCu);
      }

      [(WISRatRetentionMetric *)self populateSubscriptionContextsInUse];
    }
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  statusCopy = status;
  infoCopy = info;
  v8 = [WISTelephonyUtils isValidContext:statusCopy];
  if (infoCopy)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = -[WISRatRetentionMetric CTCellularDataTechnologyToString:](self, "CTCellularDataTechnologyToString:", [infoCopy dataBearerTechnology]);
    v11 = [WISSystemStatusSimulacrum deriveConnectionTypeForDataStatus:infoCopy];
    v12 = *(qword_1002DBE98 + 48);
    if (!v10)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [infoCopy dataBearerTechnology];
        [statusCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A920();
      }

      goto LABEL_25;
    }

    v13 = v11;
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      uuid = [statusCopy uuid];
      *buf = 138412802;
      v39 = uuid;
      v40 = 2112;
      v41 = v10;
      v42 = 2048;
      v43 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "RatRetentionMetric:#D Data status of context %@ changed. New Data Bearer Technology: %@, new data connection type %lu", buf, 0x20u);
    }

    contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    uuid2 = [statusCopy uuid];
    v16 = [contextUUIDToStateMap objectForKey:uuid2];

    if (!v16)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [statusCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020A8DC();
      }

      goto LABEL_24;
    }

    dataBearerTechnology = [v16 dataBearerTechnology];
    if ([dataBearerTechnology isEqualToString:v10])
    {
      v18 = [v16 dataConnectionType] == v13;

      if (v18)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [statusCopy uuid];
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

      stewieState = [(WISRatRetentionMetric *)self stewieState];
      v23 = [TelephonyStateRelay deriveDataIcon:v13 stewieState:stewieState];
      v24 = [(WISRatRetentionMetric *)self getNSString:"new_cellular_icon"];
      [v20 setObject:v23 forKey:v24];

      v25 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
      LODWORD(stewieState) = [v10 isEqualToString:v25];

      if (stewieState)
      {
        nrnsaBandwidth = [v16 nrnsaBandwidth];
        v27 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
        [v20 setObject:nrnsaBandwidth forKey:v27];

        nrnsaArfcn = [v16 nrnsaArfcn];
        v29 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
        [v20 setObject:nrnsaArfcn forKey:v29];

        [v16 nrnsaFrequencyRange];
      }

      else
      {
        bandwidth = [v16 bandwidth];
        v33 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
        [v20 setObject:bandwidth forKey:v33];

        arfcn = [v16 arfcn];
        v35 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
        [v20 setObject:arfcn forKey:v35];

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

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  v8 = [WISTelephonyUtils isValidContext:updateCopy];
  if (infoCopy)
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
      [updateCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020A970();
    }

    contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    uuid = [updateCopy uuid];
    v12 = [contextUUIDToStateMap objectForKey:uuid];

    if (!v12)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [updateCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AAF4();
      }

      goto LABEL_55;
    }

    v73 = 0;
    v13 = [(WISRatRetentionMetric *)self extractCellInfo:infoCopy error:&v73];
    v72 = v73;
    if (v72 || !v13)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        [updateCopy uuid];
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
        [updateCopy uuid];
        objc_claimAutoreleasedReturnValue();
        [v13 gci];
        objc_claimAutoreleasedReturnValue();
        sub_10020AA04();
      }

      v16 = [v13 gci];
      [v12 setLastKnownGci:v16];
    }

    v17 = [v13 rat];
    stewieState = [(WISRatRetentionMetric *)self stewieState];
    isSatelliteSystem = [v12 isSatelliteSystem];
    airplaneModeActive = [(WISRatRetentionMetric *)self airplaneModeActive];
    displayStatus = [v12 displayStatus];
    v71 = [(WISRatRetentionMetric *)self deriveRAT:v17 stewieState:stewieState isSatelliteSystem:isSatelliteSystem airplaneModeActive:airplaneModeActive displayStatus:displayStatus];

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

    band = [v12 band];
    band2 = [v13 band];
    if ([band isEqual:band2])
    {
      frequencyRange = [v12 frequencyRange];
      v67 = band;
      frequencyRange2 = [v13 frequencyRange];
      if ([frequencyRange isEqual:?])
      {
        bandwidth = [v12 bandwidth];
        bandwidth2 = [v13 bandwidth];
        if ([bandwidth isEqual:?])
        {
          arfcn = [v12 arfcn];
          arfcn2 = [v13 arfcn];
          if ([arfcn isEqual:?])
          {
            dataBearerTechnology = [v12 dataBearerTechnology];
            v60 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
            if ([dataBearerTechnology isEqualToString:?])
            {
              nrnsaBandwidth = [v12 nrnsaBandwidth];
              nrnsaBandwidth2 = [v13 nrnsaBandwidth];
              if ([nrnsaBandwidth isEqual:?])
              {
                nrnsaArfcn = [v12 nrnsaArfcn];
                nrnsaArfcn2 = [v13 nrnsaArfcn];
                if ([nrnsaArfcn isEqual:?])
                {
                  nrnsaFrequencyRange = [v12 nrnsaFrequencyRange];
                  nrnsaFrequencyRange2 = [v13 nrnsaFrequencyRange];
                  v54 = [nrnsaFrequencyRange isEqualToString:nrnsaFrequencyRange2];

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
          [updateCopy uuid];
          objc_claimAutoreleasedReturnValue();
          sub_10020AA64();
        }

        goto LABEL_53;
      }

LABEL_45:
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [updateCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AAA8();
      }

      if ([v12 dataPreferred])
      {
        v29 = objc_alloc_init(NSMutableDictionary);
        v30 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
        [v29 setObject:v71 forKey:v30];

        band3 = [v13 band];
        v32 = [(WISRatRetentionMetric *)self getNSString:"new_band"];
        [v29 setObject:band3 forKey:v32];

        dataBearerTechnology2 = [v12 dataBearerTechnology];
        v34 = [(WISRatRetentionMetric *)self getNSString:"NRNSA"];
        v35 = [dataBearerTechnology2 isEqualToString:v34];

        if (v35)
        {
          nrnsaBandwidth3 = [v13 nrnsaBandwidth];
          v37 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
          [v29 setObject:nrnsaBandwidth3 forKey:v37];

          nrnsaArfcn3 = [v13 nrnsaArfcn];
          v39 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
          [v29 setObject:nrnsaArfcn3 forKey:v39];

          [v13 nrnsaFrequencyRange];
        }

        else
        {
          bandwidth3 = [v13 bandwidth];
          v43 = [(WISRatRetentionMetric *)self getNSString:"new_bandwidth"];
          [v29 setObject:bandwidth3 forKey:v43];

          arfcn3 = [v13 arfcn];
          v45 = [(WISRatRetentionMetric *)self getNSString:"new_arfcn"];
          [v29 setObject:arfcn3 forKey:v45];

          [v13 frequencyRange];
        }
        v40 = ;
        v41 = [(WISRatRetentionMetric *)self getNSString:"new_frequency_range"];
        [v29 setObject:v40 forKey:v41];

        [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v12 currentTime:v70 changedFields:v29];
      }

      v46 = [v13 rat];
      [v12 setRat:v46];

      band4 = [v13 band];
      [v12 setBand:band4];

      frequencyRange3 = [v13 frequencyRange];
      [v12 setFrequencyRange:frequencyRange3];

      bandwidth4 = [v13 bandwidth];
      [v12 setBandwidth:bandwidth4];

      arfcn4 = [v13 arfcn];
      [v12 setArfcn:arfcn4];

      [v12 setStartTime:v70];
LABEL_53:
      nrnsaBandwidth4 = [v13 nrnsaBandwidth];
      [v12 setNrnsaBandwidth:nrnsaBandwidth4];

      nrnsaArfcn4 = [v13 nrnsaArfcn];
      [v12 setNrnsaArfcn:nrnsaArfcn4];

      nrnsaFrequencyRange3 = [v13 nrnsaFrequencyRange];
      [v12 setNrnsaFrequencyRange:nrnsaFrequencyRange3];

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

- (void)registrationStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if ([WISTelephonyUtils isValidContext:changedCopy])
  {
    v8 = *(qword_1002DBE98 + 48);
    if (statusCopy)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020AB38();
      }

      contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
      uuid = [changedCopy uuid];
      v11 = [contextUUIDToStateMap objectForKey:uuid];

      if (v11)
      {
        displayStatus = [v11 displayStatus];
        v13 = [displayStatus isEqualToString:statusCopy];

        if (v13)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
          {
            [changedCopy uuid];
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
              v20 = [(WISRatRetentionMetric *)self deriveRegistrationStatus:statusCopy airplaneModeActive:[(WISRatRetentionMetric *)self airplaneModeActive]];
              v23[0] = v20;
              v15 = [(WISRatRetentionMetric *)self getNSString:"new_radio_access_technology"];
              v22[1] = v15;
              v16 = [v11 rat];
              stewieState = [(WISRatRetentionMetric *)self stewieState];
              v18 = -[WISRatRetentionMetric deriveRAT:stewieState:isSatelliteSystem:airplaneModeActive:displayStatus:](self, "deriveRAT:stewieState:isSatelliteSystem:airplaneModeActive:displayStatus:", v16, stewieState, [v11 isSatelliteSystem], -[WISRatRetentionMetric airplaneModeActive](self, "airplaneModeActive"), statusCopy);
              v23[1] = v18;
              v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
              [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v11 currentTime:v14 changedFields:v19];
            }

            [v11 setStartTime:v14];
          }

          [v11 setDisplayStatus:statusCopy];
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020ABC8();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [changedCopy uuid];
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

- (void)satelliteProvisioningStatusForContext:(id)context changedTo:(id)to
{
  contextCopy = context;
  toCopy = to;
  if ([WISTelephonyUtils isValidContext:contextCopy])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [contextCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AD74();
    }

    contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
    uuid = [contextCopy uuid];
    v10 = [contextUUIDToStateMap objectForKey:uuid];

    if (v10)
    {
      isSatelliteProvisioned = [v10 isSatelliteProvisioned];
      if (isSatelliteProvisioned == [toCopy BOOLValue])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [contextCopy uuid];
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
          v16 = toCopy;
          v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          [(WISRatRetentionMetric *)self buildAndSubmitCAPayload:v10 currentTime:v12 changedFields:v14];
        }

        [v10 setStartTime:v12];
        [v10 setIsSatelliteProvisioned:{objc_msgSend(toCopy, "BOOLValue")}];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [contextCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_10020AE04();
    }
  }
}

- (void)initializeStateForContext:(id)context isDataPreferred:(BOOL)preferred currentTime:(unint64_t)time
{
  contextCopy = context;
  ctRelay = [(WISRatRetentionMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v35 = 0;
  v11 = [coreTelephonyClient copyRegistrationDisplayStatus:contextCopy error:&v35];
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
    ctRelay2 = [(WISRatRetentionMetric *)self ctRelay];
    coreTelephonyClient2 = [ctRelay2 coreTelephonyClient];
    v34 = 0;
    v15 = [coreTelephonyClient2 getDataStatus:contextCopy error:&v34];
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
      ctRelay3 = [(WISRatRetentionMetric *)self ctRelay];
      v33 = 0;
      v17 = [ctRelay3 getIsSatelliteProvisioned:contextCopy error:&v33];
      v18 = v33;

      if (v18)
      {
        v19 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          localizedDescription = [v18 localizedDescription];
          *buf = 138412290;
          v37 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RatRetentionMetric:#N Error while fetching satellite provisioned status: %@", buf, 0xCu);
        }

        v17 = 0;
      }

      ctRelay4 = [(WISRatRetentionMetric *)self ctRelay];
      coreTelephonyClient3 = [ctRelay4 coreTelephonyClient];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100135C7C;
      v24[3] = &unk_1002B37F0;
      v25 = contextCopy;
      selfCopy = self;
      v27 = v15;
      timeCopy = time;
      preferredCopy = preferred;
      v32 = v17;
      v28 = v11;
      v30 = v23;
      [coreTelephonyClient3 copyCellInfo:v25 completion:v24];
    }
  }
}

- (id)CTCellularDataTechnologyToString:(int)string
{
  if ((string - 1) > 5)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1002B3848[string - 1];
  }

  v6 = [(WISRatRetentionMetric *)self getNSString:v5, v3];

  return v6;
}

- (id)getFrequencyRangeFromArfcn:(id)arfcn
{
  arfcnCopy = arfcn;
  v5 = arfcnCopy;
  if (!arfcnCopy || ([arfcnCopy isEqualToNumber:&off_1002BF360] & 1) != 0)
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

- (id)findContextsToDelete:(id)delete
{
  deleteCopy = delete;
  v5 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = deleteCopy;
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

        uuid = [*(*(&v22 + 1) + 8 * i) uuid];
        [v5 addObject:uuid];
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
  contextUUIDToStateMap = [(WISRatRetentionMetric *)self contextUUIDToStateMap];
  v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(contextUUIDToStateMap);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  return v11;
}

- (id)getNSString:(const char *)string
{
  v3 = [NSString stringWithUTF8String:string];
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

- (void)setError:(id *)error code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setValue:messageCopy forKey:NSLocalizedDescriptionKey];
  v9 = [(WISRatRetentionMetric *)self getNSString:"RatRetentionMetric"];
  *error = [NSError errorWithDomain:v9 code:code userInfo:v8];
}

- (void)setLastKnownGCI:(id)i forPayload:(id)payload
{
  iCopy = i;
  payloadCopy = payload;
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
    [payloadCopy setObject:iCopy forKey:v13];
  }
}

@end