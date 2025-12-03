@interface RatDataUsageState
+ (BOOL)calculateDeltaAndUpdateInterfaceInfo:(id)info withCounters:(id)counters withResponseBlock:(id)block;
+ (BOOL)updateInterfaceInfo:(id)info withCounters:(id)counters;
+ (id)deriveCellularRadioTech:(id)tech andRegistrationState:(id)state andIsSatelliteSystem:(BOOL)system andIsStewieActive:(BOOL)active andIsAirplaneModeActive:(BOOL)modeActive;
+ (id)fetchInterfaceCounters;
- (RatDataUsageState)initWithContext:(id)context cellularRegistrationState:(id)state isCellularLowDataModeEnabled:(BOOL)enabled isCellularInterfaceExpensive:(BOOL)expensive isSatelliteSystem:(BOOL)system isStewieActive:(BOOL)active;
- (void)submitToCA;
- (void)submitToCAWithCounters:(id)counters;
- (void)updateCellularRadioTechTo:(id)to;
- (void)updateIsCellularInterfaceExpensiveTo:(BOOL)to;
- (void)updateIsLowDataModeEnabledTo:(BOOL)to;
- (void)updateNetworkPathsToPrimary:(id)primary secondary:(id)secondary;
- (void)updateRegistrationStateTo:(id)to;
@end

@implementation RatDataUsageState

- (RatDataUsageState)initWithContext:(id)context cellularRegistrationState:(id)state isCellularLowDataModeEnabled:(BOOL)enabled isCellularInterfaceExpensive:(BOOL)expensive isSatelliteSystem:(BOOL)system isStewieActive:(BOOL)active
{
  contextCopy = context;
  stateCopy = state;
  v25.receiver = self;
  v25.super_class = RatDataUsageState;
  v17 = [(RatDataUsageState *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextUUID, context);
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    rawCellularRadioTech = v18->_rawCellularRadioTech;
    v18->_startTime = v19;
    v18->_rawCellularRadioTech = 0;

    objc_storeStrong(&v18->_cellularRegistrationState, state);
    v18->_isCellularLowDataModeEnabled = enabled;
    v18->_isCellularInterfaceExpensive = expensive;
    v18->_isSatelliteSystem = system;
    v18->_isStewieActive = active;
    v18->_isAirplaneModeActive = 0;
    primary = v18->_primary;
    v18->_primary = 0;

    secondary = v18->_secondary;
    v18->_secondary = 0;

    v23 = v18;
  }

  return v18;
}

- (void)updateNetworkPathsToPrimary:(id)primary secondary:(id)secondary
{
  primaryCopy = primary;
  secondaryCopy = secondary;
  primary = [(RatDataUsageState *)self primary];
  if (primaryCopy | primary)
  {
    primary2 = [(RatDataUsageState *)self primary];
    if (!primaryCopy || !primary2)
    {
      goto LABEL_19;
    }

    primary3 = [(RatDataUsageState *)self primary];
    index = [primary3 index];
    if (index != [primaryCopy index])
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }
  }

  secondary = [(RatDataUsageState *)self secondary];
  if (!(secondaryCopy | secondary))
  {
    if (primaryCopy | primary)
    {
    }

    goto LABEL_15;
  }

  secondary2 = [(RatDataUsageState *)self secondary];
  v13 = secondary2;
  if (!secondaryCopy || !secondary2)
  {

    if (!(primaryCopy | primary))
    {
LABEL_20:

LABEL_21:
      v15 = +[RatDataUsageState fetchInterfaceCounters];
      [(RatDataUsageState *)self submitToCAWithCounters:v15];
      if (primaryCopy && ![RatDataUsageState updateInterfaceInfo:primaryCopy withCounters:v15])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_1001FBF84();
        }
      }

      else if (secondaryCopy && ![RatDataUsageState updateInterfaceInfo:secondaryCopy withCounters:v15])
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_1001FBFF4();
        }
      }

      else
      {
        objc_storeStrong(&self->_primary, primary);
        objc_storeStrong(&self->_secondary, secondary);
      }

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  secondary3 = [(RatDataUsageState *)self secondary];
  index2 = [secondary3 index];
  index3 = [secondaryCopy index];

  if (primaryCopy | primary)
  {
  }

  if (index2 != index3)
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

- (void)updateCellularRadioTechTo:(id)to
{
  toCopy = to;
  rawCellularRadioTech = [(RatDataUsageState *)self rawCellularRadioTech];
  if (!rawCellularRadioTech || (-[RatDataUsageState rawCellularRadioTech](self, "rawCellularRadioTech"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [toCopy isEqualToString:v7], v7, rawCellularRadioTech, (v8 & 1) == 0))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC0A0();
    }

    rawCellularRadioTech2 = [(RatDataUsageState *)self rawCellularRadioTech];
    cellularRegistrationState = [(RatDataUsageState *)self cellularRegistrationState];
    v11 = [RatDataUsageState deriveCellularRadioTech:rawCellularRadioTech2 andRegistrationState:cellularRegistrationState andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    cellularRegistrationState2 = [(RatDataUsageState *)self cellularRegistrationState];
    v13 = [RatDataUsageState deriveCellularRadioTech:toCopy andRegistrationState:cellularRegistrationState2 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    if (([v11 isEqualToString:v13] & 1) == 0)
    {
      [(RatDataUsageState *)self submitToCA];
    }

    objc_storeStrong(&self->_rawCellularRadioTech, to);
  }
}

- (void)updateRegistrationStateTo:(id)to
{
  toCopy = to;
  cellularRegistrationState = [(RatDataUsageState *)self cellularRegistrationState];
  v7 = [toCopy isEqual:cellularRegistrationState];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC110();
    }

    rawCellularRadioTech = [(RatDataUsageState *)self rawCellularRadioTech];
    cellularRegistrationState2 = [(RatDataUsageState *)self cellularRegistrationState];
    v10 = [RatDataUsageState deriveCellularRadioTech:rawCellularRadioTech andRegistrationState:cellularRegistrationState2 andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    rawCellularRadioTech2 = [(RatDataUsageState *)self rawCellularRadioTech];
    v12 = [RatDataUsageState deriveCellularRadioTech:rawCellularRadioTech2 andRegistrationState:toCopy andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

    if (([v10 isEqualToString:v12] & 1) == 0)
    {
      [(RatDataUsageState *)self submitToCA];
    }

    objc_storeStrong(&self->_cellularRegistrationState, to);
  }
}

- (void)updateIsLowDataModeEnabledTo:(BOOL)to
{
  if ([(RatDataUsageState *)self isCellularLowDataModeEnabled]!= to)
  {
    [(RatDataUsageState *)self submitToCA];
    self->_isCellularLowDataModeEnabled = to;
  }
}

- (void)updateIsCellularInterfaceExpensiveTo:(BOOL)to
{
  if ([(RatDataUsageState *)self isCellularInterfaceExpensive]!= to)
  {
    [(RatDataUsageState *)self submitToCA];
    self->_isCellularInterfaceExpensive = to;
  }
}

- (void)submitToCA
{
  v3 = +[RatDataUsageState fetchInterfaceCounters];
  [(RatDataUsageState *)self submitToCAWithCounters:?];
}

- (void)submitToCAWithCounters:(id)counters
{
  countersCopy = counters;
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

  if (!countersCopy)
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
  primary = [(RatDataUsageState *)self primary];
  v9 = primary == 0;

  if (!v9)
  {
    primary2 = [(RatDataUsageState *)self primary];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10002D800;
    v51[3] = &unk_1002AB438;
    v51[4] = &v80;
    v51[5] = &v76;
    v51[6] = &v72;
    v51[7] = &v68;
    v11 = [RatDataUsageState calculateDeltaAndUpdateInterfaceInfo:primary2 withCounters:countersCopy withResponseBlock:v51];

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

  secondary = [(RatDataUsageState *)self secondary];
  v14 = secondary == 0;

  if (!v14)
  {
    secondary2 = [(RatDataUsageState *)self secondary];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10002D834;
    v50[3] = &unk_1002AB438;
    v50[4] = &v64;
    v50[5] = &v60;
    v50[6] = &v56;
    v50[7] = &v52;
    v16 = [RatDataUsageState calculateDeltaAndUpdateInterfaceInfo:secondary2 withCounters:countersCopy withResponseBlock:v50];

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
        isCellularLowDataModeEnabled = [(RatDataUsageState *)self isCellularLowDataModeEnabled];
        v21 = @"Standard";
        if (isCellularLowDataModeEnabled)
        {
          v21 = @"Low";
        }
      }

      else
      {
        v21 = @"Allow More";
      }

      v45 = v21;
      rawCellularRadioTech = [(RatDataUsageState *)self rawCellularRadioTech];
      cellularRegistrationState = [(RatDataUsageState *)self cellularRegistrationState];
      v46 = [RatDataUsageState deriveCellularRadioTech:rawCellularRadioTech andRegistrationState:cellularRegistrationState andIsSatelliteSystem:[(RatDataUsageState *)self isSatelliteSystem] andIsStewieActive:[(RatDataUsageState *)self isStewieActive] andIsAirplaneModeActive:[(RatDataUsageState *)self isAirplaneModeActive]];

      if (v46)
      {
        v84[0] = @"cellular_radio_tech";
        v84[1] = @"data_mode_switch_status";
        v85[0] = v46;
        v85[1] = v45;
        v84[2] = @"primary_network_path";
        primary3 = [(RatDataUsageState *)self primary];
        if (primary3)
        {
          primary4 = [(RatDataUsageState *)self primary];
          typeAsString = [primary4 typeAsString];
        }

        else
        {
          typeAsString = +[NSNull null];
          primary4 = typeAsString;
        }

        v37 = typeAsString;
        v85[2] = typeAsString;
        v84[3] = @"secondary_network_path";
        secondary3 = [(RatDataUsageState *)self secondary];
        if (secondary3)
        {
          secondary4 = [(RatDataUsageState *)self secondary];
          typeAsString2 = [secondary4 typeAsString];
        }

        else
        {
          typeAsString2 = +[NSNull null];
          secondary4 = typeAsString2;
        }

        v85[3] = typeAsString2;
        v84[4] = @"duration_ms";
        v86 = [NSNumber numberWithUnsignedLongLong:v19, typeAsString2];
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

        if (secondary3)
        {
        }

        if (primary3)
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

+ (id)deriveCellularRadioTech:(id)tech andRegistrationState:(id)state andIsSatelliteSystem:(BOOL)system andIsStewieActive:(BOOL)active andIsAirplaneModeActive:(BOOL)modeActive
{
  modeActiveCopy = modeActive;
  activeCopy = active;
  techCopy = tech;
  stateCopy = state;
  v13 = modeActiveCopy || activeCopy;
  v14 = "Satellite";
  if (modeActiveCopy)
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

  if ((v13 & 1) != 0 || system)
  {
    goto LABEL_10;
  }

  if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:stateCopy])
  {
    v15 = "NoService";
LABEL_10:
    v16 = [NSString stringWithUTF8String:v15];
    goto LABEL_12;
  }

  v16 = techCopy;
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
          unsignedLongLongValue = [v12 unsignedLongLongValue];

          v14 = [v10 objectForKey:@"tx_bytes"];
          unsignedLongLongValue2 = [v14 unsignedLongLongValue];

          v16 = [v10 objectForKey:@"rx_packets"];
          unsignedLongLongValue3 = [v16 unsignedLongLongValue];

          v18 = [v31 objectForKey:@"tx_packets"];
          unsignedLongLongValue4 = [v18 unsignedLongLongValue];

          v8 += unsignedLongLongValue;
          v7 += unsignedLongLongValue2;
          v9 += unsignedLongLongValue3;
          v28 += unsignedLongLongValue4;
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

+ (BOOL)calculateDeltaAndUpdateInterfaceInfo:(id)info withCounters:(id)counters withResponseBlock:(id)block
{
  infoCopy = info;
  countersCopy = counters;
  blockCopy = block;
  if (!countersCopy)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v28 = blockCopy;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [infoCopy index]);
  v11 = [countersCopy objectForKey:v10];

  v12 = [v11 objectForKey:@"rx_bytes"];
  v13 = [v11 objectForKey:@"tx_bytes"];
  v14 = [v11 objectForKey:@"rx_packets"];
  v15 = [v11 objectForKey:@"tx_packets"];
  unsignedLongLongValue = [v12 unsignedLongLongValue];
  unsignedLongLongValue2 = [v13 unsignedLongLongValue];
  unsignedLongLongValue3 = [v14 unsignedLongLongValue];
  unsignedLongLongValue4 = [v15 unsignedLongLongValue];
  isCountersSet = [infoCopy isCountersSet];
  if (v12)
  {
    v19 = isCountersSet;
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
  if (unsignedLongLongValue < [infoCopy rxByteCounter])
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (unsignedLongLongValue2 < [infoCopy txByteCounter])
  {
    goto LABEL_14;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (unsignedLongLongValue3 < [infoCopy rxPacketCounter] || !v15)
  {
    goto LABEL_14;
  }

  if (unsignedLongLongValue4 >= [infoCopy txPacketCounter])
  {
    rxByteCounter = [infoCopy rxByteCounter];
    txByteCounter = [infoCopy txByteCounter];
    rxPacketCounter = [infoCopy rxPacketCounter];
    txPacketCounter = [infoCopy txPacketCounter];
    [infoCopy updateRxByteCounterTo:unsignedLongLongValue andTxByteCounterTo:unsignedLongLongValue2 andRxPacketCounterTo:unsignedLongLongValue3 andTxPacketCounterTo:unsignedLongLongValue4];
    v28[2](v28, unsignedLongLongValue - rxByteCounter, unsignedLongLongValue2 - txByteCounter, unsignedLongLongValue3 - rxPacketCounter, unsignedLongLongValue4 - txPacketCounter);
    v20 = 1;
  }

  else
  {
LABEL_13:
    v20 = 0;
  }

LABEL_14:

  blockCopy = v28;
LABEL_16:

  return v20;
}

+ (BOOL)updateInterfaceInfo:(id)info withCounters:(id)counters
{
  infoCopy = info;
  countersCopy = counters;
  if (countersCopy)
  {
    v19 = infoCopy;
    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [infoCopy index]);
    v8 = [countersCopy objectForKey:v7];

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

    infoCopy = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end