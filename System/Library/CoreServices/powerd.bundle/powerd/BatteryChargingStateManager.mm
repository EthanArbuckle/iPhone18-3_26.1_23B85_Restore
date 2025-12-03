@interface BatteryChargingStateManager
+ (id)InstanceManager;
- (BOOL)isInThermallyLimitedChargingState;
- (id)chargingIconoGraphyStateGet;
- (id)getBatteryProperties;
- (id)getBatteryUISOC;
- (id)getNotChargingReason:(id)reason;
- (id)getTlcCounter:(id)counter;
- (id)initBatteryChargingStateData;
- (id)parseChargeLimitAndOverrideReasons;
- (void)handleChargingStateUpdate;
- (void)handleConnectionStateUpdate;
- (void)notifyChargingIconographyStateChanges;
- (void)setChargingIconographyChargeState:(id)state andUISOC:(id)c andIsEOC:(id)oC andTLCState:(BOOL)cState;
- (void)updateChncOnHoldArray:(BOOL)array andName:(id)name;
@end

@implementation BatteryChargingStateManager

+ (id)InstanceManager
{
  dispatch_assert_queue_V2(qword_1000AD330);
  if (qword_1000AD378 != -1)
  {
    sub_10006D854();
  }

  v2 = qword_1000AD370;

  return v2;
}

- (void)handleChargingStateUpdate
{
  dispatch_assert_queue_V2(qword_1000AD330);
  getBatteryProperties = [(BatteryChargingStateManager *)self getBatteryProperties];
  v4 = getBatteryProperties;
  if (getBatteryProperties && [getBatteryProperties count])
  {
    v5 = [(BatteryChargingStateManager *)self getNotChargingReason:v4];
    if (v5)
    {
      getBatteryUISOC = [(BatteryChargingStateManager *)self getBatteryUISOC];
      if (getBatteryUISOC)
      {
        v7 = [(BatteryChargingStateManager *)self getTlcCounter:v4];
        if (v7)
        {
          prevTlcCounter = self->_prevTlcCounter;
          if (!prevTlcCounter || [(NSNumber *)prevTlcCounter compare:v7]<= NSOrderedDescending)
          {
            v9 = +[NSDate date];
            tlcStartTimestamp = self->_tlcStartTimestamp;
            self->_tlcStartTimestamp = v9;
          }

          objc_storeStrong(&self->_prevTlcCounter, v7);
          isInThermallyLimitedChargingState = [(BatteryChargingStateManager *)self isInThermallyLimitedChargingState];
          [(BatteryChargingStateManager *)self setChncOnHoldReasons:v5 andTLCState:isInThermallyLimitedChargingState];
          parseChargeLimitAndOverrideReasons = [(BatteryChargingStateManager *)self parseChargeLimitAndOverrideReasons];
          [(BatteryChargingStateManager *)self setChargingIconographyChargeState:v5 andUISOC:getBatteryUISOC andIsEOC:parseChargeLimitAndOverrideReasons andTLCState:isInThermallyLimitedChargingState];
          chncOnHoldReasons = self->_chncOnHoldReasons;
          if (chncOnHoldReasons | qword_1000AD348 && ![(NSMutableArray *)chncOnHoldReasons isEqualToArray:?]|| (chargeLimitOnHoldReasons = self->_chargeLimitOnHoldReasons, chargeLimitOnHoldReasons | qword_1000AD350) && ![(NSMutableArray *)chargeLimitOnHoldReasons isEqualToArray:?]|| (chargingToFullOverrides = self->_chargingToFullOverrides, chargingToFullOverrides | qword_1000AD358) && ![(NSMutableArray *)chargingToFullOverrides isEqualToArray:?]|| (v16 = self->_chargeState, v16 | qword_1000AD340) && ![(NSString *)v16 isEqualToString:?])
          {
            v17 = [(NSString *)self->_chargeState copy];
            v18 = qword_1000AD340;
            qword_1000AD340 = v17;

            v19 = [(NSMutableArray *)self->_chncOnHoldReasons copy];
            v20 = qword_1000AD348;
            qword_1000AD348 = v19;

            v21 = [(NSMutableArray *)self->_chargeLimitOnHoldReasons copy];
            v22 = qword_1000AD350;
            qword_1000AD350 = v21;

            v23 = [(NSMutableArray *)self->_chargingToFullOverrides copy];
            v24 = qword_1000AD358;
            qword_1000AD358 = v23;

            [(BatteryChargingStateManager *)self notifyChargingIconographyStateChanges];
            v25 = qword_1000AC990;
            if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_DEFAULT))
            {
              chargeState = self->_chargeState;
              v27 = v25;
              uTF8String = [(NSString *)chargeState UTF8String];
              bOOLValue = [(NSNumber *)self->_connectionState BOOLValue];
              intValue = [getBatteryUISOC intValue];
              longLongValue = [v5 longLongValue];
              v32 = self->_tlcStartTimestamp;
              v33 = 136316162;
              v34 = uTF8String;
              v35 = 1024;
              v36 = bOOLValue;
              v37 = 1024;
              v38 = intValue;
              v39 = 2048;
              v40 = longLongValue;
              v41 = 2112;
              v42 = v32;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "handleChargingStateUpdate State:%s VBUS:%d UISOC:%d CHNC:%llx TLC:%@\n", &v33, 0x2Cu);
            }
          }
        }

        else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
        {
          sub_10006D678();
        }
      }

      else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
      {
        sub_10006D6AC();
      }
    }

    else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D6E0();
    }
  }

  else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
  {
    sub_10006D714();
  }
}

- (id)getBatteryProperties
{
  dispatch_assert_queue_V2(qword_1000AD330);
  v2 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    properties = 0;
    IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
    v5 = properties;
    IOObjectRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getBatteryUISOC
{
  dispatch_assert_queue_V2(qword_1000AD330);
  if (IOPSGetPercentRemaining())
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D4F8();
    }

    v2 = 0;
  }

  else
  {
    v2 = [NSNumber numberWithInt:0];
  }

  return v2;
}

- (id)parseChargeLimitAndOverrideReasons
{
  dispatch_assert_queue_V2(qword_1000AD330);
  v3 = sub_100012904();
  v4 = +[NSMutableArray array];
  chargeLimitOnHoldReasons = self->_chargeLimitOnHoldReasons;
  self->_chargeLimitOnHoldReasons = v4;

  v6 = +[NSMutableArray array];
  chargingToFullOverrides = self->_chargingToFullOverrides;
  self->_chargingToFullOverrides = v6;

  chargeLimitEndSoc = self->_chargeLimitEndSoc;
  selfCopy = self;
  self->_chargeLimitEndSoc = &off_1000A2CD8;

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v98 objects:v110 count:16];
  if (!v10)
  {
    v83 = &__kCFBooleanFalse;
    goto LABEL_51;
  }

  v11 = v10;
  v83 = &__kCFBooleanFalse;
  v12 = *v99;
  v94 = v9;
  v84 = *v99;
  do
  {
    v13 = 0;
    v85 = v11;
    do
    {
      if (*v99 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v87 = v13;
      v14 = *(*(&v98 + 1) + 8 * v13);
      v15 = [v9 objectForKeyedSubscript:v14];
      v16 = [v15 count];

      if (!v16)
      {
        goto LABEL_44;
      }

      v97 = v14;
      if ([v14 compare:@"chargeSocLimitChargeLimit"])
      {
        if ([v14 compare:@"chargeSocLimitChargeOverride"])
        {
          v17 = qword_1000AC990;
          if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
          {
            sub_10006D5F4(v102, v14, v17, &v103);
          }

          goto LABEL_44;
        }

        v51 = 0;
        v91 = v16;
        while (1)
        {
          v52 = [v9 objectForKeyedSubscript:v14];
          v53 = [v52 objectAtIndexedSubscript:v51];
          v54 = [v53 objectForKey:@"chargeSocLimitOverrideOwner"];
          if (!v54)
          {
            goto LABEL_34;
          }

          v55 = v54;
          v95 = [v9 objectForKeyedSubscript:v14];
          v56 = [v95 objectAtIndexedSubscript:v51];
          v57 = [v56 objectForKey:@"chargeSocLimitOverrideName"];
          if (!v57)
          {
            goto LABEL_33;
          }

          v92 = [v9 objectForKeyedSubscript:v14];
          v58 = [v92 objectAtIndexedSubscript:v51];
          v59 = [v58 objectForKey:@"chargeSocLimitOverrideEnable"];
          if (!v59)
          {
            break;
          }

          v60 = [v9 objectForKeyedSubscript:v14];
          v61 = [v60 objectAtIndexedSubscript:v51];
          [v61 objectForKey:@"chargeSocLimitOverrideTerminated"];
          v62 = v88 = v56;

          v9 = v94;
          v14 = v97;

          v16 = v91;
          if (!v62)
          {
            goto LABEL_35;
          }

          v104[0] = @"owner";
          v96 = [v94 objectForKeyedSubscript:v97];
          v93 = [v96 objectAtIndexedSubscript:v51];
          v89 = [v93 objectForKeyedSubscript:@"chargeSocLimitOverrideOwner"];
          v105[0] = v89;
          v104[1] = @"reason";
          v86 = [v94 objectForKeyedSubscript:v97];
          v63 = [v86 objectAtIndexedSubscript:v51];
          v64 = [v63 objectForKeyedSubscript:@"chargeSocLimitOverrideName"];
          v105[1] = v64;
          v104[2] = @"enable";
          v65 = [v94 objectForKeyedSubscript:v97];
          v66 = [v65 objectAtIndexedSubscript:v51];
          v67 = [v66 objectForKeyedSubscript:@"chargeSocLimitOverrideEnable"];
          v105[2] = v67;
          v104[3] = @"terminated";
          v68 = [v94 objectForKeyedSubscript:v97];
          v69 = [v68 objectAtIndexedSubscript:v51];
          v70 = [v69 objectForKeyedSubscript:@"chargeSocLimitOverrideTerminated"];
          v105[3] = v70;
          v71 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:4];

          v9 = v94;
          v16 = v91;

          v14 = v97;
          [(NSMutableArray *)selfCopy->_chargingToFullOverrides addObject:v71];

LABEL_37:
          if (v16 == ++v51)
          {
            goto LABEL_43;
          }
        }

        v16 = v91;
LABEL_33:

LABEL_34:
LABEL_35:
        v72 = qword_1000AC990;
        if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v109 = v9;
          _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Invalid charge limit override array, missing keys: %@\n", buf, 0xCu);
        }

        goto LABEL_37;
      }

      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        while (1)
        {
          v20 = [v9 objectForKeyedSubscript:v14];
          v21 = [v20 objectAtIndexedSubscript:v19];
          v22 = [v21 objectForKey:@"chargeSocLimitReason"];
          if (!v22)
          {
            break;
          }

          v23 = v22;
          v24 = [v9 objectForKeyedSubscript:v14];
          v25 = [v24 objectAtIndexedSubscript:v19];
          v26 = [v25 objectForKey:@"chargeSocLimitIsEOC"];

          v14 = v97;
          if (!v26)
          {
            goto LABEL_17;
          }

          v106[0] = @"name";
          v27 = [v9 objectForKeyedSubscript:v97];
          v28 = [v27 objectAtIndexedSubscript:v19];
          v29 = [v28 objectForKeyedSubscript:@"chargeSocLimitReason"];
          v106[1] = @"isEoc";
          v107[0] = v29;
          v30 = [v9 objectForKeyedSubscript:v97];
          v31 = [v30 objectAtIndexedSubscript:v19];
          v32 = [v31 objectForKeyedSubscript:@"chargeSocLimitIsEOC"];
          v107[1] = v32;
          v33 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:2];

          v14 = v97;
          [(NSMutableArray *)selfCopy->_chargeLimitOnHoldReasons addObject:v33];

          v9 = v94;
LABEL_19:
          if (v18 == ++v19)
          {
            goto LABEL_20;
          }
        }

LABEL_17:
        v34 = qword_1000AC990;
        if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v109 = v9;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Invalid charge limit array, missing keys: %@\n", buf, 0xCu);
        }

        goto LABEL_19;
      }

LABEL_20:
      v35 = [v9 objectForKeyedSubscript:v14];
      v36 = [v35 objectAtIndexedSubscript:v18];
      v37 = [v36 objectForKey:@"chargeSocLimitOwner"];
      if (v37)
      {
        v38 = v37;
        [v9 objectForKeyedSubscript:v14];
        v40 = v39 = v14;
        v41 = [v40 objectAtIndexedSubscript:v18];
        v42 = [v41 objectForKey:@"chargeSocLimitIsEOC"];
        if (v42)
        {
          v43 = [v9 objectForKeyedSubscript:v39];
          v44 = [v43 objectAtIndexedSubscript:v18];
          v45 = [v44 objectForKey:@"chargeSocLimitSoc"];

          v9 = v94;
          if (v45)
          {
            v46 = [v94 objectForKeyedSubscript:v97];
            v47 = [v46 objectAtIndexedSubscript:v18];
            v48 = [v47 objectForKeyedSubscript:@"chargeSocLimitOwner"];
            intValue = [v48 intValue];

            if (intValue)
            {
              v50 = qword_1000AC990;
              if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v109 = v94;
                _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Invalid charge limit array format, last entry is not active policy %@\n", buf, 0xCu);
              }
            }

            else
            {
              v74 = [v94 objectForKeyedSubscript:v97];
              v75 = [v74 objectAtIndexedSubscript:v18];
              v76 = [v75 objectForKeyedSubscript:@"chargeSocLimitIsEOC"];

              v77 = [v94 objectForKeyedSubscript:v97];
              v78 = [v77 objectAtIndexedSubscript:v18];
              v79 = [v78 objectForKeyedSubscript:@"chargeSocLimitSoc"];
              v80 = selfCopy->_chargeLimitEndSoc;
              selfCopy->_chargeLimitEndSoc = v79;

              v83 = v76;
            }

            v12 = v84;
            v11 = v85;
            goto LABEL_44;
          }

          goto LABEL_41;
        }
      }

LABEL_41:
      v73 = qword_1000AC990;
      if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v109 = v9;
        _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Invalid charge limit active entry, missing keys: %@\n", buf, 0xCu);
      }

LABEL_43:
      v12 = v84;
      v11 = v85;
LABEL_44:
      v13 = v87 + 1;
    }

    while ((v87 + 1) != v11);
    v81 = [v9 countByEnumeratingWithState:&v98 objects:v110 count:16];
    v11 = v81;
  }

  while (v81);
LABEL_51:

  return v83;
}

- (id)chargingIconoGraphyStateGet
{
  dispatch_assert_queue_V2(qword_1000AD330);
  v3 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v4 = [NSMutableArray arrayWithArray:self->_chncOnHoldReasons];
  [v4 addObjectsFromArray:self->_shadowChargeLimitOnHoldReasons];
  [v3 setObject:self->_chargeState forKeyedSubscript:@"chargeStatus"];
  if (v4 && [v4 count])
  {
    [v3 setObject:v4 forKeyedSubscript:@"holds"];
  }

  chargingToFullOverrides = self->_chargingToFullOverrides;
  if (chargingToFullOverrides && [(NSMutableArray *)chargingToFullOverrides count])
  {
    [v3 setObject:self->_chargingToFullOverrides forKeyedSubscript:@"overrides"];
  }

  return v3;
}

- (id)getNotChargingReason:(id)reason
{
  v3 = qword_1000AD330;
  reasonCopy = reason;
  dispatch_assert_queue_V2(v3);
  v5 = [reasonCopy objectForKeyedSubscript:@"ChargerData"];

  v6 = [v5 objectForKeyedSubscript:@"NotChargingReason"];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (id)getTlcCounter:(id)counter
{
  v3 = qword_1000AD330;
  counterCopy = counter;
  dispatch_assert_queue_V2(v3);
  v5 = [counterCopy objectForKeyedSubscript:@"ChargerData"];

  v6 = [v5 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (void)notifyChargingIconographyStateChanges
{
  dispatch_assert_queue_V2(qword_1000AD330);
  if (qword_1000AD338 != -1)
  {
    sub_10006D56C();
  }

  v2 = qword_1000AC990;

  sub_10005FA68(v2, "com.apple.system.powersources.chargingiconography");
}

- (BOOL)isInThermallyLimitedChargingState
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_tlcStartTimestamp];
  LOBYTE(self) = v4 >= 900.0;

  return self;
}

- (void)setChargingIconographyChargeState:(id)state andUISOC:(id)c andIsEOC:(id)oC andTLCState:(BOOL)cState
{
  cStateCopy = cState;
  cCopy = c;
  oCCopy = oC;
  longLongValue = [state longLongValue];
  v12 = longLongValue;
  if (longLongValue)
  {
    v13 = 1;
    if ((longLongValue & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [cCopy intValue] == 100;
    if ((v12 & 0x1000000) != 0)
    {
LABEL_3:
      v14 = 1;
      goto LABEL_6;
    }
  }

  intValue = [cCopy intValue];
  v14 = intValue >= [(NSNumber *)self->_chargeLimitEndSoc intValue];
LABEL_6:
  bOOLValue = [(NSNumber *)self->_connectionState BOOLValue];
  bOOLValue2 = [oCCopy BOOLValue];

  if ([(NSMutableArray *)self->_chargingToFullOverrides count])
  {
    v18 = 0;
  }

  else
  {
    v18 = [(NSMutableArray *)self->_chargeLimitOnHoldReasons count]!= 0 && v14;
  }

  shadowChargeLimitOnHoldReasons = self->_shadowChargeLimitOnHoldReasons;
  self->_shadowChargeLimitOnHoldReasons = 0;

  chargeState = self->_chargeState;
  self->_chargeState = @"Charging";

  if ((bOOLValue & 1) == 0)
  {
    v23 = self->_chargeState;
    self->_chargeState = @"Disconnected";

    prevTlcCounter = self->_prevTlcCounter;
    self->_prevTlcCounter = 0;
    goto LABEL_14;
  }

  if (v13)
  {
    prevTlcCounter = self->_chargeState;
    v22 = @"Charging Completed";
LABEL_12:
    self->_chargeState = &v22->isa;
LABEL_14:

    goto LABEL_15;
  }

  if (v18)
  {
    v24 = @"Charging On Hold";
    v25 = self->_chargeState;
    if (bOOLValue2)
    {
      v24 = @"Charging Completed Limited";
    }

    self->_chargeState = &v24->isa;

    v26 = self->_chargeLimitOnHoldReasons;
    prevTlcCounter = self->_shadowChargeLimitOnHoldReasons;
    self->_shadowChargeLimitOnHoldReasons = &v26->super;
    goto LABEL_14;
  }

  if ((v12 & 0x4000) != 0 || cStateCopy)
  {
    prevTlcCounter = self->_chargeState;
    v22 = @"Charging On Hold";
    goto LABEL_12;
  }

LABEL_15:
}

- (void)handleConnectionStateUpdate
{
  state64 = 0;
  if (notify_get_state(self->_batteryTimeRemainingToken, &state64))
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D748();
    }

    notify_cancel(self->_batteryTimeRemainingToken);
  }

  else
  {
    v3 = [NSNumber numberWithBool:(state64 >> 27) & 1];
    connectionState = self->_connectionState;
    self->_connectionState = v3;

    if (![(NSNumber *)self->_connectionState isEqualToNumber:off_1000AB778])
    {
      objc_storeStrong(&off_1000AB778, self->_connectionState);
      [(BatteryChargingStateManager *)self handleChargingStateUpdate];
    }
  }
}

- (void)updateChncOnHoldArray:(BOOL)array andName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(qword_1000AD330);
  chncOnHoldReasons = self->_chncOnHoldReasons;
  if (!chncOnHoldReasons)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:1];
    v9 = self->_chncOnHoldReasons;
    self->_chncOnHoldReasons = v8;

    chncOnHoldReasons = self->_chncOnHoldReasons;
  }

  v10 = [(NSMutableArray *)chncOnHoldReasons count];
  if (v10)
  {
    arrayCopy = array;
    for (i = 0; i != v10; ++i)
    {
      v12 = [(NSMutableArray *)self->_chncOnHoldReasons objectAtIndexedSubscript:i];
      v13 = [v12 objectForKey:@"name"];
      if (v13)
      {
        v14 = v13;
        v15 = [(NSMutableArray *)self->_chncOnHoldReasons objectAtIndexedSubscript:i];
        v16 = [v15 objectForKeyedSubscript:@"name"];
        v17 = [v16 compare:nameCopy];

        if (!v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    i = v10;
LABEL_11:
    array = arrayCopy;
  }

  else
  {
    i = 0;
  }

  v18 = qword_1000AC990;
  if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_DEFAULT))
  {
    v19 = nameCopy;
    v20 = v18;
    *buf = 136315650;
    uTF8String = [nameCopy UTF8String];
    v28 = 2048;
    v29 = i;
    v30 = 2048;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "updateChncOnHoldArray name:%s index:%zu count:%zu\n", buf, 0x20u);
  }

  if (i == v10)
  {
    if (array)
    {
      v24[0] = @"name";
      v24[1] = @"isEoc";
      v25[0] = nameCopy;
      v25[1] = &__kCFBooleanFalse;
      v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      [(NSMutableArray *)self->_chncOnHoldReasons addObject:v21];
    }

    else
    {
      v22 = qword_1000AC990;
      if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
      {
        sub_10006D77C(nameCopy, v22);
      }
    }
  }

  else if (!array)
  {
    [(NSMutableArray *)self->_chncOnHoldReasons removeObjectAtIndex:i];
  }
}

- (id)initBatteryChargingStateData
{
  dispatch_assert_queue_V2(qword_1000AD330);
  v6.receiver = self;
  v6.super_class = BatteryChargingStateManager;
  v3 = [(BatteryChargingStateManager *)&v6 init];
  if (v3 && notify_register_check("com.apple.system.powersources.timeremaining", &v3->_batteryTimeRemainingToken))
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D820();
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end