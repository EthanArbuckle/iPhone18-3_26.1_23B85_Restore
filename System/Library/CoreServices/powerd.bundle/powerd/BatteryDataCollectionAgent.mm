@interface BatteryDataCollectionAgent
- (BatteryDataCollectionAgent)initWithParams:(id)params collectionBlock:(id)block;
- (id)getLastDataLoggedTimestampDefaultsKey;
- (id)getLastUsedDataFileNameDefaultsKey;
- (unint64_t)getCollectionPeriod;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation BatteryDataCollectionAgent

- (id)getLastDataLoggedTimestampDefaultsKey
{
  dataGroupName = [(BatteryDataCollectionAgent *)self dataGroupName];

  return [(NSString *)dataGroupName stringByAppendingString:@"_LastLoggedTimeStamp"];
}

- (BatteryDataCollectionAgent)initWithParams:(id)params collectionBlock:(id)block
{
  v31.receiver = self;
  v31.super_class = BatteryDataCollectionAgent;
  v6 = [(BatteryDataCollectionAgent *)&v31 init];
  if (!v6)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067414();
    }

    return 0;
  }

  -[BatteryDataCollectionAgent setDataGroupName:](v6, "setDataGroupName:", [params objectForKeyedSubscript:@"DataGroupName"]);
  -[BatteryDataCollectionAgent setFormatVersion:](v6, "setFormatVersion:", [params objectForKeyedSubscript:@"DataFormatVersion"]);
  -[BatteryDataCollectionAgent setDirPath:](v6, "setDirPath:", [params objectForKeyedSubscript:@"DataFilePath"]);
  -[BatteryDataCollectionAgent setColumnNames:](v6, "setColumnNames:", [params objectForKeyedSubscript:@"DataColumnNames"]);
  [(BatteryDataCollectionAgent *)v6 setCreateDataDictCollectionBlock:block];
  -[BatteryDataCollectionAgent setCollectionPeriod:](v6, "setCollectionPeriod:", [params objectForKeyedSubscript:@"DataCollectionPeriod"]);
  -[BatteryDataCollectionAgent setCollectAtSBC:](v6, "setCollectAtSBC:", [objc_msgSend(params objectForKeyedSubscript:{@"DataCollectionAtSBC", "BOOLValue"}]);
  -[BatteryDataCollectionAgent setCollectAtPowerSourceChange:](v6, "setCollectAtPowerSourceChange:", [objc_msgSend(params objectForKeyedSubscript:{@"DataCollectAtPowerSourceChange", "BOOLValue"}]);
  -[BatteryDataCollectionAgent setCollectOnce:](v6, "setCollectOnce:", [objc_msgSend(params objectForKeyedSubscript:{@"DataCollectionOnce", "BOOLValue"}]);
  -[BatteryDataCollectionAgent setCollationPeriod:](v6, "setCollationPeriod:", [params objectForKeyedSubscript:@"DataCollationPeriod"]);
  -[BatteryDataCollectionAgent setRetentionPeriod:](v6, "setRetentionPeriod:", [params objectForKeyedSubscript:@"DataRetentionPeriod"]);
  -[BatteryDataCollectionAgent setBatteryChanged:](v6, "setBatteryChanged:", [objc_msgSend(params objectForKeyedSubscript:{@"BatteryChanged", "BOOLValue"}]);
  [(BatteryDataCollectionAgent *)v6 setEventRegistrationToken:0];
  -[BatteryDataCollectionAgent setSkipCSVAndUsePowerlog:](v6, "setSkipCSVAndUsePowerlog:", [objc_msgSend(params objectForKeyedSubscript:{@"SkipCSVUsePowerlog", "BOOLValue"}]);
  -[BatteryDataCollectionAgent setUseBTMAsDataSource:](v6, "setUseBTMAsDataSource:", [objc_msgSend(params objectForKeyedSubscript:{@"useBTM", "BOOLValue"}]);
  -[BatteryDataCollectionAgent setUseSmartChargingDataSource:](v6, "setUseSmartChargingDataSource:", [objc_msgSend(params objectForKeyedSubscript:{@"useSC", "BOOLValue"}]);
  v7 = v6->_collectOnce || v6->_collectAtPowerSourceChange || v6->_useSmartChargingDataSource;
  [(BatteryDataCollectionAgent *)v6 setEventBasedCollection:v7 & 1];
  v8 = ([objc_msgSend(params objectForKeyedSubscript:{@"DataNeverPrune", "BOOLValue"}] & 1) != 0 || -[BatteryDataCollectionAgent skipCSVAndUsePowerlog](v6, "skipCSVAndUsePowerlog");
  [(BatteryDataCollectionAgent *)v6 setNeverPrune:v8];
  v9 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@.%@"];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6->_collectionQueue = dispatch_queue_create(v9, v10);
  v6->_collectionTimer = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [(BatteryDataCollectionAgent *)v6 collectionQueue]);
  if (!v6->_eventBasedCollection && ((collectionPeriod = v6->_collectionPeriod, collectionPeriod == +[NSNull null]) || [(NSNumber *)v6->_collectionPeriod intValue]<= 0))
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067340(v6, &v6->_collectionPeriod);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (!v6->_neverPrune)
  {
    retentionPeriod = v6->_retentionPeriod;
    if (retentionPeriod == +[NSNull null]|| [(NSNumber *)v6->_retentionPeriod intValue]<= 0)
    {
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        sub_1000673D8();
      }

      goto LABEL_34;
    }
  }

  if (v12)
  {
LABEL_34:

    return 0;
  }

  v14 = objc_autoreleasePoolPush();
  objc_initWeak(&location, v6);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100065B98;
  v28[3] = &unk_100099E40;
  objc_copyWeak(&v29, &location);
  v28[4] = v6;
  [(BatteryDataCollectionAgent *)v6 setCollectionEventHandler:v28];
  v15 = [qword_1000ACBD8 objectForKey:{-[BatteryDataCollectionAgent getLastDataLoggedTimestampDefaultsKey](v6, "getLastDataLoggedTimestampDefaultsKey")}];
  v16 = 1000000000;
  if (v15)
  {
    v16 = 1000000000;
    if (![(BatteryDataCollectionAgent *)v6 eventBasedCollection])
    {
      v16 = 1000000000;
      if (![(BatteryDataCollectionAgent *)v6 skipCSVAndUsePowerlog])
      {
        [(NSDate *)sub_10000E288() timeIntervalSinceDate:v15];
        v18 = v17;
        [(NSNumber *)[(BatteryDataCollectionAgent *)v6 collectionPeriod] doubleValue];
        v20 = v19;
        v21 = [objc_msgSend(qword_1000ACBD8 stringForKey:{-[BatteryDataCollectionAgent getLastUsedDataFileNameDefaultsKey](v6, "getLastUsedDataFileNameDefaultsKey")), "containsString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"version%@", v6->_formatVersion)}];
        v22 = v20 / 1000.0;
        v16 = 1000000000;
        if (((v18 < v22) & v21) == 1)
        {
          if (1000000000 * (v22 - v18) <= 0x989680)
          {
            v16 = 10000000;
          }

          else
          {
            v16 = 1000000000 * (v22 - v18);
          }
        }

        v23 = qword_1000AB7E8;
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
        {
          dataGroupName = [(BatteryDataCollectionAgent *)v6 dataGroupName];
          *buf = 138413314;
          v33 = dataGroupName;
          v34 = 2112;
          v35 = v15;
          v36 = 2048;
          v37 = v22;
          v38 = 2048;
          v39 = v16 / 1000000000.0;
          v40 = 1024;
          v41 = v21 ^ 1;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: last logged %@, collection period %f s, start delta %f s, versionChanged %d", buf, 0x30u);
        }
      }
    }
  }

  dispatch_source_set_event_handler([(BatteryDataCollectionAgent *)v6 collectionTimer], [(BatteryDataCollectionAgent *)v6 collectionEventHandler]);
  collectionTimer = [(BatteryDataCollectionAgent *)v6 collectionTimer];
  v26 = dispatch_time(0x8000000000000000, v16);
  dispatch_source_set_timer(collectionTimer, v26, [(BatteryDataCollectionAgent *)v6 getCollectionPeriod], 0x3B9ACA00uLL);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v14);
  return v6;
}

- (void)dealloc
{
  collectionTimer = self->_collectionTimer;
  if (collectionTimer)
  {
    dispatch_source_cancel(collectionTimer);
    dispatch_release(self->_collectionTimer);
  }

  collectionQueue = self->_collectionQueue;
  if (collectionQueue)
  {
    dispatch_release(collectionQueue);
  }

  v5.receiver = self;
  v5.super_class = BatteryDataCollectionAgent;
  [(BatteryDataCollectionAgent *)&v5 dealloc];
}

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  collectAtPowerSourceChange = [(BatteryDataCollectionAgent *)self collectAtPowerSourceChange];
  if (collectAtPowerSourceChange)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003C694;
    v30[3] = &unk_100099EA8;
    v31 = &stru_100099E80;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    if (sub_10003C580(collectAtPowerSourceChange, 0x10000uLL))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v29 = v5 | (v31->invoke)(v31, 0x4000000);
    *&out_token = 0;
    *(&out_token + 1) = &out_token;
    v35 = 0x3052000000;
    v36 = sub_10003C6F8;
    v37 = sub_10003C708;
    v38 = +[NSDate distantPast];
    v6 = [qword_1000ACBD8 objectForKey:@"LastConnectedState"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [v6 unsignedIntValue], v8 = *(v27 + 24), v7 == v8))
      {
        v9 = qword_1000AB7E8;
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v27 + 24);
          *buf = 67109120;
          v33 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connected state %u unchanged", buf, 8u);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v8 = *(v27 + 24);
    }

    [qword_1000ACBD8 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", v8), @"LastConnectedState"}];
    dispatch_async([(BatteryDataCollectionAgent *)self collectionQueue], [(BatteryDataCollectionAgent *)self collectionEventHandler]);
LABEL_24:
    *buf = 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003C714;
    v25[3] = &unk_100099F10;
    v25[4] = self;
    v25[5] = v30;
    v25[6] = &stru_100099EE8;
    v25[7] = &out_token;
    v25[8] = &v26;
    if (notify_register_dispatch("com.apple.system.powersources.timeremaining", buf, [(BatteryDataCollectionAgent *)self collectionQueue], v25) && os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_1000677DC();
    }

    _Block_object_dispose(&out_token, 8);
    _Block_object_dispose(&v26, 8);
    goto LABEL_31;
  }

  if ([(BatteryDataCollectionAgent *)self useSmartChargingDataSource])
  {
    LODWORD(out_token) = -1;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003C90C;
    handler[3] = &unk_100099F38;
    handler[4] = self;
    if (notify_register_dispatch("com.apple.smartcharging.charging", &out_token, [(BatteryDataCollectionAgent *)self collectionQueue], handler) && os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_10006776C();
    }

    goto LABEL_31;
  }

  if (![(BatteryDataCollectionAgent *)self useBTMAsDataSource])
  {
    if ([(BatteryDataCollectionAgent *)self collectOnce])
    {
      collectionTimer = [(BatteryDataCollectionAgent *)self collectionTimer];
      v21 = dispatch_time(0x8000000000000000, 1000000000);
      dispatch_source_set_timer(collectionTimer, v21, [(BatteryDataCollectionAgent *)self getCollectionPeriod], 0x3B9ACA00uLL);
    }

    goto LABEL_30;
  }

  if (_os_feature_enabled_impl())
  {
    TypeID = CFNumberGetTypeID();
    v12 = sub_10000DE64(@"BatteryDataCollectionReady", TypeID);
    v13 = v12;
    if (v12)
    {
      if ([v12 intValue] == 1)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        if (v14)
        {
          v15 = v14;
          [v14 setObject:&off_1000A2B28 forKeyedSubscript:@"DataCaptureTrigger"];
          [v15 setObject:&off_1000A2B40 forKeyedSubscript:@"CaptureTime"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"Voltage"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"InstantAmperage"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"PresentDOD"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"ChargeAccum"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"AlgoTemperature"];
          [v15 setObject:&off_1000A2B58 forKeyedSubscript:@"VirtualTemperature"];
          v16 = IOServiceMatching("AppleBTM");
          MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v16);
          if (MatchingService)
          {
            v18 = MatchingService;
            v19 = IORegistryEntrySetCFProperties(MatchingService, v15);
            if (!v19)
            {
              IOObjectRelease(v18);

LABEL_30:
              dispatch_resume([(BatteryDataCollectionAgent *)self collectionTimer]);
LABEL_31:
              shortDescription = [(BatteryDataCollectionAgent *)self shortDescription];
              v23 = qword_1000AB7E8;
              if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(out_token) = 138412290;
                *(&out_token + 4) = shortDescription;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Started bdc agent %@", &out_token, 0xCu);
              }

              goto LABEL_33;
            }

            sub_1000674EC(v19, v18);
          }

          else
          {
            sub_100067598(&out_token);
          }

          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
          {
            sub_1000675FC();
          }

LABEL_44:

          goto LABEL_33;
        }

        sub_10006766C(&out_token);
      }

      else
      {
        sub_10006748C(&out_token);
      }
    }

    else
    {
      sub_1000676CC(&out_token);
    }

    v15 = out_token;
    goto LABEL_44;
  }

  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100067450();
  }

LABEL_33:
  objc_autoreleasePoolPop(v3);
}

- (void)stop
{
  v3 = objc_autoreleasePoolPush();
  if ([(BatteryDataCollectionAgent *)self collectAtPowerSourceChange]|| [(BatteryDataCollectionAgent *)self useSmartChargingDataSource])
  {
    notify_cancel([(BatteryDataCollectionAgent *)self eventRegistrationToken]);
  }

  else
  {
    dispatch_suspend([(BatteryDataCollectionAgent *)self collectionTimer]);
  }

  shortDescription = [(BatteryDataCollectionAgent *)self shortDescription];
  v5 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = shortDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped bdc agent %@", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (unint64_t)getCollectionPeriod
{
  if ([(BatteryDataCollectionAgent *)self eventBasedCollection])
  {
    return -1;
  }

  else
  {
    return 1000000 * [(NSNumber *)[(BatteryDataCollectionAgent *)self collectionPeriod] unsignedIntValue];
  }
}

- (id)getLastUsedDataFileNameDefaultsKey
{
  dataGroupName = [(BatteryDataCollectionAgent *)self dataGroupName];

  return [(NSString *)dataGroupName stringByAppendingString:@"_LastUsedFileName"];
}

@end