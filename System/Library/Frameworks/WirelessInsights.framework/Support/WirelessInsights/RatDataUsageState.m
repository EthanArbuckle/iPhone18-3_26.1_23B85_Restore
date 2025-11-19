@interface RatDataUsageState
+ (BOOL)calculateDeltaAndUpdateInterfaceInfo:(id)a3 withCounters:(id)a4 withResponseBlock:(id)a5;
+ (BOOL)updateInterfaceInfo:(id)a3 withCounters:(id)a4;
+ (id)deriveCellularRadioTech:(id)a3 andRegistrationState:(id)a4 andIsSatelliteSystem:(BOOL)a5 andIsStewieActive:(BOOL)a6 andIsAirplaneModeActive:(BOOL)a7;
+ (id)fetchInterfaceCounters;
- (RatDataUsageState)initWithContext:(id)a3 cellularRegistrationState:(id)a4 isCellularLowDataModeEnabled:(BOOL)a5 isCellularInterfaceExpensive:(BOOL)a6 isSatelliteSystem:(BOOL)a7 isStewieActive:(BOOL)a8;
- (void)submitToCA;
- (void)submitToCAWithCounters:(id)a3;
- (void)updateCellularRadioTechTo:(id)a3;
- (void)updateIsCellularInterfaceExpensiveTo:(BOOL)a3;
- (void)updateIsLowDataModeEnabledTo:(BOOL)a3;
- (void)updateNetworkPathsToPrimary:(id)a3 secondary:(id)a4;
- (void)updateRegistrationStateTo:(id)a3;
@end

@implementation RatDataUsageState

- (RatDataUsageState)initWithContext:(id)a3 cellularRegistrationState:(id)a4 isCellularLowDataModeEnabled:(BOOL)a5 isCellularInterfaceExpensive:(BOOL)a6 isSatelliteSystem:(BOOL)a7 isStewieActive:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v25.receiver = self;
  v25.super_class = RatDataUsageState;
  v17 = [(RatDataUsageState *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextUUID, a3);
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    rawCellularRadioTech = v18->_rawCellularRadioTech;
    v18->_startTime = v19;
    v18->_rawCellularRadioTech = 0;

    objc_storeStrong(&v18->_cellularRegistrationState, a4);
    v18->_isCellularLowDataModeEnabled = a5;
    v18->_isCellularInterfaceExpensive = a6;
    v18->_isSatelliteSystem = a7;
    v18->_isStewieActive = a8;
    v18->_isAirplaneModeActive = 0;
    primary = v18->_primary;
    v18->_primary = 0;

    secondary = v18->_secondary;
    v18->_secondary = 0;

    v23 = v18;
  }

  return v18;
}

- (void)updateNetworkPathsToPrimary:(id)a3 secondary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RatDataUsageState *)self primary];
  if (v7 | v9)
  {
    v19 = [(RatDataUsageState *)self primary];
    if (!v7 || !v19)
    {
      goto LABEL_19;
    }

    v18 = [(RatDataUsageState *)self primary];
    v10 = [v18 index];
    if (v10 != [v7 index])
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }
  }

  v11 = [(RatDataUsageState *)self secondary];
  if (!(v8 | v11))
  {
    if (v7 | v9)
    {
    }

    goto LABEL_15;
  }

  v12 = [(RatDataUsageState *)self secondary];
  v13 = v12;
  if (!v8 || !v12)
  {

    if (!(v7 | v9))
    {
LABEL_20:

LABEL_21:
      v15 = +[RatDataUsageState fetchInterfaceCounters];
      [(RatDataUsageState *)self submitToCAWithCounters:v15];
      if (v7 && ![RatDataUsageState updateInterfaceInfo:v7 withCounters:v15])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_1001FBF84();
        }
      }

      else if (v8 && ![RatDataUsageState updateInterfaceInfo:v8 withCounters:v15])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_1001FBFF4();
        }
      }

      else
      {
        objc_storeStrong(&self->_primary, a3);
        objc_storeStrong(&self->_secondary, a4);
      }

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  v14 = [(RatDataUsageState *)self secondary];
  v17 = [v14 index];
  v16 = [v8 index];

  if (v7 | v9)
  {
  }

  if (v17 != v16)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC064();
  }

LABEL_31:
}

- (void)updateCellularRadioTechTo:(id)a3
{
  v5 = a3;
  v6 = [(RatDataUsageState *)self rawCellularRadioTech];
  if (!v6 || (-[RatDataUsageState rawCellularRadioTech](self, "rawCellularRadioTech"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v5 isEqualToString:v7], v7, v6, (v8 & 1) == 0))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC0A0();
    }

    v9 = [(RatDataUsageState *)self rawCellularRadioTech];
    v10 = [(RatDataUsageState *)self cellularRegistrationState];
    v11 = [RatDataUsageState deriveCellularRadioTech:v9 andRegistrationState:v10 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    v12 = [(RatDataUsageState *)self cellularRegistrationState];
    v13 = [RatDataUsageState deriveCellularRadioTech:v5 andRegistrationState:v12 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    if (([v11 isEqualToString:v13] & 1) == 0)
    {
      [(RatDataUsageState *)self submitToCA];
    }

    objc_storeStrong(&self->_rawCellularRadioTech, a3);
  }
}

- (void)updateRegistrationStateTo:(id)a3
{
  v5 = a3;
  v6 = [(RatDataUsageState *)self cellularRegistrationState];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC110();
    }

    v8 = [(RatDataUsageState *)self rawCellularRadioTech];
    v9 = [(RatDataUsageState *)self cellularRegistrationState];
    v10 = [RatDataUsageState deriveCellularRadioTech:v8 andRegistrationState:v9 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    v11 = [(RatDataUsageState *)self rawCellularRadioTech];
    v12 = [RatDataUsageState deriveCellularRadioTech:v11 andRegistrationState:v5 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    if (([v10 isEqualToString:v12] & 1) == 0)
    {
      [(RatDataUsageState *)self submitToCA];
    }

    objc_storeStrong(&self->_cellularRegistrationState, a3);
  }
}

- (void)updateIsLowDataModeEnabledTo:(BOOL)a3
{
  if ([(RatDataUsageState *)self isCellularLowDataModeEnabled]!= a3)
  {
    [(RatDataUsageState *)self submitToCA];
    self->_isCellularLowDataModeEnabled = a3;
  }
}

- (void)updateIsCellularInterfaceExpensiveTo:(BOOL)a3
{
  if ([(RatDataUsageState *)self isCellularInterfaceExpensive]!= a3)
  {
    [(RatDataUsageState *)self submitToCA];
    self->_isCellularInterfaceExpensive = a3;
  }
}

- (void)submitToCA
{
  v3 = +[RatDataUsageState fetchInterfaceCounters];
  [(RatDataUsageState *)self submitToCAWithCounters:?];
}

- (void)submitToCAWithCounters:(id)a3
{
  v4 = a3;
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (v5 < [(RatDataUsageState *)self startTime])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC2E0();
    }

LABEL_4:
    self->_startTime = v5;
    primary = self->_primary;
    self->_primary = 0;

    secondary = self->_secondary;
    self->_secondary = 0;

    goto LABEL_47;
  }

  if (!v4)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FC2A4();
    }

    goto LABEL_4;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v8 = [(RatDataUsageState *)self primary];
  v9 = v8 == 0;

  if (!v9)
  {
    v10 = [(RatDataUsageState *)self primary];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10002D800;
    v51[3] = &unk_1002AB438;
    v51[4] = &v80;
    v51[5] = &v76;
    v51[6] = &v72;
    v51[7] = &v68;
    v11 = [RatDataUsageState calculateDeltaAndUpdateInterfaceInfo:v10 withCounters:v4 withResponseBlock:v51];

    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FC180();
      }

      v12 = self->_primary;
      self->_primary = 0;
    }
  }

  v13 = [(RatDataUsageState *)self secondary];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [(RatDataUsageState *)self secondary];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10002D834;
    v50[3] = &unk_1002AB438;
    v50[4] = &v64;
    v50[5] = &v60;
    v50[6] = &v56;
    v50[7] = &v52;
    v16 = [RatDataUsageState calculateDeltaAndUpdateInterfaceInfo:v15 withCounters:v4 withResponseBlock:v50];

    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FC1BC();
      }

      v17 = self->_secondary;
      self->_secondary = 0;
    }
  }

  v18 = v5 - [(RatDataUsageState *)self startTime];
  v19 = v18 / 0xF4240;
  self->_startTime = v5;
  if (v18 > 0x5F5E0FF)
  {
    if ([(RatDataUsageState *)self isCellularInterfaceExpensive]|| ![(RatDataUsageState *)self isCellularLowDataModeEnabled])
    {
      if ([(RatDataUsageState *)self isCellularInterfaceExpensive])
      {
        v20 = [(RatDataUsageState *)self isCellularLowDataModeEnabled];
        v21 = @"Standard";
        if (v20)
        {
          v21 = @"Low";
        }
      }

      else
      {
        v21 = @"Allow More";
      }

      v45 = v21;
      v22 = [(RatDataUsageState *)self rawCellularRadioTech];
      v23 = [(RatDataUsageState *)self cellularRegistrationState];
      v46 = [RatDataUsageState deriveCellularRadioTech:v22 andRegistrationState:v23 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

      if (v46)
      {
        v84[0] = @"cellular_radio_tech";
        v84[1] = @"data_mode_switch_status";
        v85[0] = v46;
        v85[1] = v45;
        v84[2] = @"primary_network_path";
        v43 = [(RatDataUsageState *)self primary];
        if (v43)
        {
          v42 = [(RatDataUsageState *)self primary];
          v24 = [v42 typeAsString];
        }

        else
        {
          v24 = +[NSNull null];
          v42 = v24;
        }

        v37 = v24;
        v85[2] = v24;
        v84[3] = @"secondary_network_path";
        v44 = [(RatDataUsageState *)self secondary];
        if (v44)
        {
          v41 = [(RatDataUsageState *)self secondary];
          v26 = [v41 typeAsString];
        }

        else
        {
          v26 = +[NSNull null];
          v41 = v26;
        }

        v85[3] = v26;
        v84[4] = @"duration_ms";
        v86 = [NSNumber numberWithUnsignedLongLong:v19, v26];
        v84[5] = @"rx_primary_bytes";
        v40 = v86;
        v39 = [NSNumber numberWithUnsignedLongLong:v81[3]];
        v87 = v39;
        v84[6] = @"tx_primary_bytes";
        v27 = [NSNumber numberWithUnsignedLongLong:v77[3]];
        v88 = v27;
        v84[7] = @"rx_primary_packets";
        v28 = [NSNumber numberWithUnsignedLongLong:v73[3]];
        v89 = v28;
        v84[8] = @"tx_primary_packets";
        v29 = [NSNumber numberWithUnsignedLongLong:v69[3]];
        v90 = v29;
        v84[9] = @"rx_secondary_bytes";
        v30 = [NSNumber numberWithUnsignedLongLong:v65[3]];
        v91 = v30;
        v84[10] = @"tx_secondary_bytes";
        v31 = [NSNumber numberWithUnsignedLongLong:v61[3]];
        v92 = v31;
        v84[11] = @"rx_secondary_packets";
        v32 = [NSNumber numberWithUnsignedLongLong:v57[3]];
        v93 = v32;
        v84[12] = @"tx_secondary_packets";
        v33 = [NSNumber numberWithUnsignedLongLong:v53[3]];
        v94 = v33;
        v38 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:13];

        if (v44)
        {
        }

        if (v43)
        {
        }

        v34 = [NSString stringWithUTF8String:"com.apple.Telephony.ratDataUsage"];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10002D868;
        v47[3] = &unk_1002AB460;
        v35 = v38;
        v48 = v35;
        sub_1000158DC(v34, v47);
      }

      else
      {
        v25 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "RatDataUsageMetric:#I cellularRadioTech not available yet, skipping submission", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC1F8();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC234();
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
LABEL_47:
}

+ (id)deriveCellularRadioTech:(id)a3 andRegistrationState:(id)a4 andIsSatelliteSystem:(BOOL)a5 andIsStewieActive:(BOOL)a6 andIsAirplaneModeActive:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = v7 || v8;
  v14 = "Satellite";
  if (v7)
  {
    v14 = "AirplaneMode";
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = "LTE NTN";
  }

  if ((v13 & 1) != 0 || a5)
  {
    goto LABEL_10;
  }

  if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v12])
  {
    v15 = "NoService";
LABEL_10:
    v16 = [NSString stringWithUTF8String:v15];
    goto LABEL_12;
  }

  v16 = v11;
LABEL_12:
  v17 = v16;

  return v17;
}

+ (id)fetchInterfaceCounters
{
  v2 = objc_alloc_init(NSMutableDictionary);
  *v38 = xmmword_100240164;
  v39 = 6;
  size = 0;
  if (sysctl(v38, 6u, 0, &size, 0, 0) < 0)
  {
    goto LABEL_18;
  }

  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v3)
  {
    goto LABEL_19;
  }

  if (sysctl(v38, 6u, v3, &size, 0, 0) < 0)
  {
    free(v3);
LABEL_18:
    v3 = 0;
    goto LABEL_19;
  }

  v27 = v3;
  v29 = v2;
  if (size < 1)
  {
LABEL_16:
    free(v27);
    v2 = v29;
    v3 = [[NSDictionary alloc] initWithDictionary:v29];
  }

  else
  {
    v5 = v3;
    v32 = v3 + size;
    *&v4 = 138412290;
    v26 = v4;
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      if (*(v5 + 3) == 18 && *(v5 + 161) == 18 && v5[81])
      {
        v8 = *(v5 + 12);
        v7 = *(v5 + 13);
        v9 = *(v5 + 7);
        v28 = *(v5 + 9);
        v30 = [NSNumber numberWithUnsignedShort:?];
        v10 = [v29 objectForKey:?];
        v31 = v10;
        if (v10)
        {
          v11 = *(qword_1002DBE98 + 48);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v37 = v30;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RatDataUsageMetric:#N Duplicate byte counter entry for index %@", buf, 0xCu);
          }

          v12 = [v10 objectForKey:{@"rx_bytes", v26}];
          v13 = [v12 unsignedLongLongValue];

          v14 = [v10 objectForKey:@"tx_bytes"];
          v15 = [v14 unsignedLongLongValue];

          v16 = [v10 objectForKey:@"rx_packets"];
          v17 = [v16 unsignedLongLongValue];

          v18 = [v31 objectForKey:@"tx_packets"];
          v19 = [v18 unsignedLongLongValue];

          v8 += v13;
          v7 += v15;
          v9 += v17;
          v28 += v19;
        }

        v34[0] = @"rx_bytes";
        v20 = [NSNumber numberWithUnsignedLongLong:v8, v26];
        v35[0] = v20;
        v34[1] = @"tx_bytes";
        v21 = [NSNumber numberWithUnsignedLongLong:v7];
        v35[1] = v21;
        v34[2] = @"rx_packets";
        v22 = [NSNumber numberWithUnsignedLongLong:v9];
        v35[2] = v22;
        v34[3] = @"tx_packets";
        v23 = [NSNumber numberWithUnsignedLongLong:v28];
        v35[3] = v23;
        v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
        [v29 setObject:v24 forKey:v30];
      }

      v5 = (v5 + v6);
      if (v5 >= v32)
      {
        goto LABEL_16;
      }
    }

    free(v27);
    v3 = 0;
    v2 = v29;
  }

LABEL_19:

  return v3;
}

+ (BOOL)calculateDeltaAndUpdateInterfaceInfo:(id)a3 withCounters:(id)a4 withResponseBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v28 = v9;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 index]);
  v11 = [v8 objectForKey:v10];

  v12 = [v11 objectForKey:@"rx_bytes"];
  v13 = [v11 objectForKey:@"tx_bytes"];
  v14 = [v11 objectForKey:@"rx_packets"];
  v15 = [v11 objectForKey:@"tx_packets"];
  v16 = [v12 unsignedLongLongValue];
  v17 = [v13 unsignedLongLongValue];
  v27 = [v14 unsignedLongLongValue];
  v26 = [v15 unsignedLongLongValue];
  v18 = [v7 isCountersSet];
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 != 1)
  {
    goto LABEL_13;
  }

  v20 = 0;
  if (v16 < [v7 rxByteCounter])
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (v17 < [v7 txByteCounter])
  {
    goto LABEL_14;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (v27 < [v7 rxPacketCounter] || !v15)
  {
    goto LABEL_14;
  }

  if (v26 >= [v7 txPacketCounter])
  {
    v25 = [v7 rxByteCounter];
    v24 = [v7 txByteCounter];
    v23 = [v7 rxPacketCounter];
    v22 = [v7 txPacketCounter];
    [v7 updateRxByteCounterTo:v16 andTxByteCounterTo:v17 andRxPacketCounterTo:v27 andTxPacketCounterTo:v26];
    v28[2](v28, v16 - v25, v17 - v24, v27 - v23, v26 - v22);
    v20 = 1;
  }

  else
  {
LABEL_13:
    v20 = 0;
  }

LABEL_14:

  v9 = v28;
LABEL_16:

  return v20;
}

+ (BOOL)updateInterfaceInfo:(id)a3 withCounters:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v19 = v5;
    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 index]);
    v8 = [v6 objectForKey:v7];

    v9 = [v8 objectForKey:@"rx_bytes"];
    v10 = [v8 objectForKey:@"tx_bytes"];
    v11 = [v8 objectForKey:@"rx_packets"];
    v12 = [v8 objectForKey:@"tx_packets"];
    v13 = v12;
    if (v9)
    {
      v14 = v10 == 0;
    }

    else
    {
      v14 = 1;
    }

    v16 = v14 || v11 == 0 || v12 == 0;
    v17 = !v16;
    if (!v16)
    {
      [v19 updateRxByteCounterTo:objc_msgSend(v9 andTxByteCounterTo:"unsignedLongLongValue") andRxPacketCounterTo:objc_msgSend(v10 andTxPacketCounterTo:{"unsignedLongLongValue"), objc_msgSend(v11, "unsignedLongLongValue"), objc_msgSend(v12, "unsignedLongLongValue")}];
    }

    v5 = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end