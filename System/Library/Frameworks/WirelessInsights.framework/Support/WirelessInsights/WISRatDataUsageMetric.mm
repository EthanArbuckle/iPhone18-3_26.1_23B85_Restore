@interface WISRatDataUsageMetric
+ (id)getSharedInstance;
- (WISRatDataUsageMetric)init;
- (void)cellularRadioTechChangedForContext:(id)context To:(id)to;
- (void)currentDataContextChangedTo:(id)to;
- (void)dealloc;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)networkPathMonitorUpdate:(nw_path *)update;
- (void)populateActiveDataContextInfo;
- (void)populateInfoForContext:(id)context;
- (void)registrationStatusChangedForContext:(id)context To:(id)to;
- (void)stewieStateChangedTo:(id)to;
- (void)subscriptionInfoDidChange;
@end

@implementation WISRatDataUsageMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E430;
  block[3] = &unk_1002AB480;
  block[4] = self;
  if (qword_1002D82E8 != -1)
  {
    dispatch_once(&qword_1002D82E8, block);
  }

  v2 = qword_1002D82E0;

  return v2;
}

- (WISRatDataUsageMetric)init
{
  v14.receiver = self;
  v14.super_class = WISRatDataUsageMetric;
  v2 = [(WISRatDataUsageMetric *)&v14 init];
  if (v2 && ([(WISRatDataUsageMetric *)v2 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.RatDataUsageMetric", 0)], [(WISRatDataUsageMetric *)v2 queue]))
  {
    v3 = +[TelephonyStateRelay sharedInstance];
    [(WISRatDataUsageMetric *)v2 setCtRelay:v3];

    [(WISRatDataUsageMetric *)v2 setNetworkPathMonitor:nw_path_monitor_create()];
    networkPathMonitor = [(WISRatDataUsageMetric *)v2 networkPathMonitor];
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_100015A24;
    update_handler[3] = &unk_1002AB4A8;
    v5 = v2;
    v13 = v5;
    nw_path_monitor_set_update_handler(networkPathMonitor, update_handler);
    nw_path_monitor_set_queue([(WISRatDataUsageMetric *)v5 networkPathMonitor], [(WISRatDataUsageMetric *)v5 queue]);
    queue = [(WISRatDataUsageMetric *)v5 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E680;
    v10[3] = &unk_1002AB4D0;
    v7 = v5;
    v11 = v7;
    dispatch_async(queue, v10);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  if ([(WISRatDataUsageMetric *)self networkPathMonitor])
  {
    nw_path_monitor_cancel([(WISRatDataUsageMetric *)self networkPathMonitor]);
    nw_release([(WISRatDataUsageMetric *)self networkPathMonitor]);
  }

  if ([(WISRatDataUsageMetric *)self queue])
  {
    dispatch_release([(WISRatDataUsageMetric *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = WISRatDataUsageMetric;
  [(WISRatDataUsageMetric *)&v3 dealloc];
}

- (void)populateActiveDataContextInfo
{
  ctRelay = [(WISRatDataUsageMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v7 = 0;
  v5 = [coreTelephonyClient getCurrentDataSubscriptionContextSync:&v7];
  v6 = v7;

  if (v6 || !v5)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FC31C();
    }
  }

  else
  {
    [(WISRatDataUsageMetric *)self populateInfoForContext:v5];
  }
}

- (void)populateInfoForContext:(id)context
{
  contextCopy = context;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [contextCopy uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC360();
  }

  ctRelay = [(WISRatDataUsageMetric *)self ctRelay];
  v26 = 0;
  v6 = [ctRelay copyCTRegistrationStatus:contextCopy error:&v26];
  v7 = v26;

  if (v7 || !v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FC3A4();
    }

    [(WISRatDataUsageMetric *)self setState:0];
  }

  else
  {
    ctRelay2 = [(WISRatDataUsageMetric *)self ctRelay];
    v25 = 0;
    v9 = [ctRelay2 getLowDataMode:contextCopy error:&v25];
    v7 = v25;

    if (v7)
    {
      if ([v7 code] != 45)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v7 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1001FC3E8();
        }

        [(WISRatDataUsageMetric *)self setState:0];
        goto LABEL_27;
      }

      v9 = 0;
    }

    ctRelay3 = [(WISRatDataUsageMetric *)self ctRelay];
    v24 = 0;
    v11 = [ctRelay3 getInterfaceCostExpensive:contextCopy error:&v24];
    v7 = v24;

    if (!v7)
    {
      goto LABEL_11;
    }

    if ([v7 code] == 45)
    {

      v11 = 1;
LABEL_11:
      ctRelay4 = [(WISRatDataUsageMetric *)self ctRelay];
      v23 = 0;
      v22 = [ctRelay4 copyCTRegistrationDisplayStatus:contextCopy error:&v23];
      v7 = v23;

      if (v7 || !v22)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v7 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1001FC470();
        }

        [(WISRatDataUsageMetric *)self setState:0];
      }

      else
      {
        isSatelliteSystem = [v22 isSatelliteSystem];
        ctRelay5 = [(WISRatDataUsageMetric *)self ctRelay];
        getStewieState = [ctRelay5 getStewieState];
        isStewieActive = [getStewieState isStewieActive];

        v17 = [RatDataUsageState alloc];
        uuid = [contextCopy uuid];
        v19 = [(RatDataUsageState *)v17 initWithContext:uuid cellularRegistrationState:v6 isCellularLowDataModeEnabled:v9 isCellularInterfaceExpensive:v11 isSatelliteSystem:isSatelliteSystem isStewieActive:isStewieActive];
        [(WISRatDataUsageMetric *)self setState:v19];

        ctRelay6 = [(WISRatDataUsageMetric *)self ctRelay];
        [ctRelay6 getRadioAccessTechnology:contextCopy delegate:self];

        ctRelay7 = [(WISRatDataUsageMetric *)self ctRelay];
        [ctRelay7 getAirplaneModeStatus:self];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FC42C();
    }

    [(WISRatDataUsageMetric *)self setState:0];
  }

LABEL_27:
}

- (void)networkPathMonitorUpdate:(nw_path *)update
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC4B4();
  }

  state = [(WISRatDataUsageMetric *)self state];

  if (state)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC524();
  }

  [(WISRatDataUsageMetric *)self populateActiveDataContextInfo];
  state2 = [(WISRatDataUsageMetric *)self state];

  if (state2)
  {
LABEL_7:
    v7 = nw_path_copy_interface();
    v8 = v7;
    if (v7)
    {
      type = nw_interface_get_type(v7);
      nw_release(v8);
    }

    else
    {
      type = 0;
    }

    interface_index = nw_path_get_interface_index();
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002F0A0;
    v15[3] = &unk_1002AB4F8;
    v16 = type;
    v15[4] = &v17;
    v15[5] = &v21;
    v15[6] = &v25;
    nw_path_enumerate_interfaces(update, v15);
    if (v8)
    {
      v11 = [[NetworkInterfaceInfo alloc] initWithIndex:interface_index type:type];
    }

    else
    {
      v11 = 0;
    }

    if (*(v26 + 24) == 1)
    {
      v12 = [NetworkInterfaceInfo alloc];
      v13 = [(NetworkInterfaceInfo *)v12 initWithIndex:*(v22 + 6) type:*(v18 + 6)];
    }

    else
    {
      v13 = 0;
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FC560();
    }

    state3 = [(WISRatDataUsageMetric *)self state];
    [state3 updateNetworkPathsToPrimary:v11 secondary:v13];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC5E4();
  }
}

- (void)subscriptionInfoDidChange
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC620();
  }

  state = [(WISRatDataUsageMetric *)self state];
  [state submitToCA];

  [(WISRatDataUsageMetric *)self setState:0];
  [(WISRatDataUsageMetric *)self populateActiveDataContextInfo];
}

- (void)currentDataContextChangedTo:(id)to
{
  toCopy = to;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC65C();
  }

  state = [(WISRatDataUsageMetric *)self state];
  [state submitToCA];

  [(WISRatDataUsageMetric *)self setState:0];
  [(WISRatDataUsageMetric *)self populateInfoForContext:toCopy];
}

- (void)registrationStatusChangedForContext:(id)context To:(id)to
{
  contextCopy = context;
  toCopy = to;
  uuid = [contextCopy uuid];
  state = [(WISRatDataUsageMetric *)self state];
  contextUUID = [state contextUUID];
  v11 = [uuid isEqual:contextUUID];

  if (v11)
  {
    state2 = [(WISRatDataUsageMetric *)self state];
    [state2 updateRegistrationStateTo:toCopy];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [contextCopy uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC698();
  }
}

- (void)cellularRadioTechChangedForContext:(id)context To:(id)to
{
  contextCopy = context;
  toCopy = to;
  uuid = [contextCopy uuid];
  state = [(WISRatDataUsageMetric *)self state];
  contextUUID = [state contextUUID];
  v11 = [uuid isEqual:contextUUID];

  if (v11)
  {
    state2 = [(WISRatDataUsageMetric *)self state];
    [state2 updateCellularRadioTechTo:toCopy];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [contextCopy uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC6DC();
  }
}

- (void)stewieStateChangedTo:(id)to
{
  toCopy = to;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC7EC();
  }

  state = [(WISRatDataUsageMetric *)self state];
  [state updateIsStewieActiveTo:{objc_msgSend(toCopy, "isStewieActive")}];
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  v9 = stateCopy;
  if (key <= 8)
  {
    if (key > 6)
    {
      if (key == 7)
      {
        if (stateCopy)
        {
          -[WISRatDataUsageMetric airplaneModeStateChanged:](self, "airplaneModeStateChanged:", [stateCopy BOOLValue]);
        }
      }

      else if (updateCopy && stateCopy)
      {
        [(WISRatDataUsageMetric *)self registrationStatusChangedForContext:updateCopy To:stateCopy];
      }
    }

    else if (key == 3)
    {
      if (updateCopy)
      {
        [(WISRatDataUsageMetric *)self currentDataContextChangedTo:updateCopy];
      }
    }

    else if (key == 6)
    {
      [(WISRatDataUsageMetric *)self subscriptionInfoDidChange];
    }
  }

  else if (key <= 10)
  {
    if (key == 9)
    {
      if (updateCopy && stateCopy)
      {
        [(WISRatDataUsageMetric *)self cellularRadioTechChangedForContext:updateCopy To:stateCopy];
      }
    }

    else if (updateCopy && stateCopy)
    {
      -[WISRatDataUsageMetric lowDataModeChangedForContext:To:](self, "lowDataModeChangedForContext:To:", updateCopy, [stateCopy BOOLValue]);
    }
  }

  else if (key == 11)
  {
    if (updateCopy && stateCopy)
    {
      -[WISRatDataUsageMetric interfaceCostExpensiveChangedForContext:To:](self, "interfaceCostExpensiveChangedForContext:To:", updateCopy, [stateCopy BOOLValue]);
    }
  }

  else if (key == 12)
  {
    if (stateCopy)
    {
      [(WISRatDataUsageMetric *)self stewieStateChangedTo:stateCopy];
    }
  }

  else if (key == 13 && updateCopy && stateCopy)
  {
    -[WISRatDataUsageMetric satelliteRegistrationStatusChangedForContext:To:](self, "satelliteRegistrationStatusChangedForContext:To:", updateCopy, [stateCopy BOOLValue]);
  }
}

@end