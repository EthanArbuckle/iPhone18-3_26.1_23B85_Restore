@interface WISRatDataUsageMetric
+ (id)getSharedInstance;
- (WISRatDataUsageMetric)init;
- (void)cellularRadioTechChangedForContext:(id)a3 To:(id)a4;
- (void)currentDataContextChangedTo:(id)a3;
- (void)dealloc;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)networkPathMonitorUpdate:(nw_path *)a3;
- (void)populateActiveDataContextInfo;
- (void)populateInfoForContext:(id)a3;
- (void)registrationStatusChangedForContext:(id)a3 To:(id)a4;
- (void)stewieStateChangedTo:(id)a3;
- (void)subscriptionInfoDidChange;
@end

@implementation WISRatDataUsageMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E430;
  block[3] = &unk_1002AB480;
  block[4] = a1;
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
    v4 = [(WISRatDataUsageMetric *)v2 networkPathMonitor];
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_100015A24;
    update_handler[3] = &unk_1002AB4A8;
    v5 = v2;
    v13 = v5;
    nw_path_monitor_set_update_handler(v4, update_handler);
    nw_path_monitor_set_queue([(WISRatDataUsageMetric *)v5 networkPathMonitor], [(WISRatDataUsageMetric *)v5 queue]);
    v6 = [(WISRatDataUsageMetric *)v5 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E680;
    v10[3] = &unk_1002AB4D0;
    v7 = v5;
    v11 = v7;
    dispatch_async(v6, v10);
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
  v3 = [(WISRatDataUsageMetric *)self ctRelay];
  v4 = [v3 coreTelephonyClient];
  v7 = 0;
  v5 = [v4 getCurrentDataSubscriptionContextSync:&v7];
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

- (void)populateInfoForContext:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [v4 uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC360();
  }

  v5 = [(WISRatDataUsageMetric *)self ctRelay];
  v26 = 0;
  v6 = [v5 copyCTRegistrationStatus:v4 error:&v26];
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
    v8 = [(WISRatDataUsageMetric *)self ctRelay];
    v25 = 0;
    v9 = [v8 getLowDataMode:v4 error:&v25];
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

    v10 = [(WISRatDataUsageMetric *)self ctRelay];
    v24 = 0;
    v11 = [v10 getInterfaceCostExpensive:v4 error:&v24];
    v7 = v24;

    if (!v7)
    {
      goto LABEL_11;
    }

    if ([v7 code] == 45)
    {

      v11 = 1;
LABEL_11:
      v12 = [(WISRatDataUsageMetric *)self ctRelay];
      v23 = 0;
      v22 = [v12 copyCTRegistrationDisplayStatus:v4 error:&v23];
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
        v13 = [v22 isSatelliteSystem];
        v14 = [(WISRatDataUsageMetric *)self ctRelay];
        v15 = [v14 getStewieState];
        v16 = [v15 isStewieActive];

        v17 = [RatDataUsageState alloc];
        v18 = [v4 uuid];
        v19 = [(RatDataUsageState *)v17 initWithContext:v18 cellularRegistrationState:v6 isCellularLowDataModeEnabled:v9 isCellularInterfaceExpensive:v11 isSatelliteSystem:v13 isStewieActive:v16];
        [(WISRatDataUsageMetric *)self setState:v19];

        v20 = [(WISRatDataUsageMetric *)self ctRelay];
        [v20 getRadioAccessTechnology:v4 delegate:self];

        v21 = [(WISRatDataUsageMetric *)self ctRelay];
        [v21 getAirplaneModeStatus:self];
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

- (void)networkPathMonitorUpdate:(nw_path *)a3
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC4B4();
  }

  v5 = [(WISRatDataUsageMetric *)self state];

  if (v5)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC524();
  }

  [(WISRatDataUsageMetric *)self populateActiveDataContextInfo];
  v6 = [(WISRatDataUsageMetric *)self state];

  if (v6)
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
    nw_path_enumerate_interfaces(a3, v15);
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

    v14 = [(WISRatDataUsageMetric *)self state];
    [v14 updateNetworkPathsToPrimary:v11 secondary:v13];

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

  v3 = [(WISRatDataUsageMetric *)self state];
  [v3 submitToCA];

  [(WISRatDataUsageMetric *)self setState:0];
  [(WISRatDataUsageMetric *)self populateActiveDataContextInfo];
}

- (void)currentDataContextChangedTo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC65C();
  }

  v5 = [(WISRatDataUsageMetric *)self state];
  [v5 submitToCA];

  [(WISRatDataUsageMetric *)self setState:0];
  [(WISRatDataUsageMetric *)self populateInfoForContext:v4];
}

- (void)registrationStatusChangedForContext:(id)a3 To:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(WISRatDataUsageMetric *)self state];
  v10 = [v9 contextUUID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [(WISRatDataUsageMetric *)self state];
    [v12 updateRegistrationStateTo:v7];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [v6 uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC698();
  }
}

- (void)cellularRadioTechChangedForContext:(id)a3 To:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(WISRatDataUsageMetric *)self state];
  v10 = [v9 contextUUID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [(WISRatDataUsageMetric *)self state];
    [v12 updateCellularRadioTechTo:v7];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [v6 uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FC6DC();
  }
}

- (void)stewieStateChangedTo:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC7EC();
  }

  v5 = [(WISRatDataUsageMetric *)self state];
  [v5 updateIsStewieActiveTo:{objc_msgSend(v4, "isStewieActive")}];
}

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 <= 8)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        if (v8)
        {
          -[WISRatDataUsageMetric airplaneModeStateChanged:](self, "airplaneModeStateChanged:", [v8 BOOLValue]);
        }
      }

      else if (v10 && v8)
      {
        [(WISRatDataUsageMetric *)self registrationStatusChangedForContext:v10 To:v8];
      }
    }

    else if (a4 == 3)
    {
      if (v10)
      {
        [(WISRatDataUsageMetric *)self currentDataContextChangedTo:v10];
      }
    }

    else if (a4 == 6)
    {
      [(WISRatDataUsageMetric *)self subscriptionInfoDidChange];
    }
  }

  else if (a4 <= 10)
  {
    if (a4 == 9)
    {
      if (v10 && v8)
      {
        [(WISRatDataUsageMetric *)self cellularRadioTechChangedForContext:v10 To:v8];
      }
    }

    else if (v10 && v8)
    {
      -[WISRatDataUsageMetric lowDataModeChangedForContext:To:](self, "lowDataModeChangedForContext:To:", v10, [v8 BOOLValue]);
    }
  }

  else if (a4 == 11)
  {
    if (v10 && v8)
    {
      -[WISRatDataUsageMetric interfaceCostExpensiveChangedForContext:To:](self, "interfaceCostExpensiveChangedForContext:To:", v10, [v8 BOOLValue]);
    }
  }

  else if (a4 == 12)
  {
    if (v8)
    {
      [(WISRatDataUsageMetric *)self stewieStateChangedTo:v8];
    }
  }

  else if (a4 == 13 && v10 && v8)
  {
    -[WISRatDataUsageMetric satelliteRegistrationStatusChangedForContext:To:](self, "satelliteRegistrationStatusChangedForContext:To:", v10, [v8 BOOLValue]);
  }
}

@end