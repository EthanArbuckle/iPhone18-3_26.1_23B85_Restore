@interface ComponentBatteryInternal
- (BOOL)isGasGaugeLocked;
- (id)accessoryCertificate;
- (id)batteryCellDisconnectCount;
- (id)batteryOptimizationMode;
- (id)boardId;
- (id)idsn;
- (void)populateAttributes:(id)a3;
- (void)populatePLQueryAttributes:(id)a3;
@end

@implementation ComponentBatteryInternal

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ComponentBatteryInternal;
  [(ComponentBatteryInternalBase *)&v15 populateAttributes:v4];
  [(ComponentBatteryInternal *)self populatePLQueryAttributes:v4];
  v5 = [[PowerUISmartChargeClient alloc] initWithClientName:@"com.apple.diagnostics"];
  [(ComponentBatteryInternal *)self setSmartChargeClient:v5];

  v6 = [(ComponentBatteryInternal *)self batteryCellDisconnectCount];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"batteryCellDisconnectCount"];
  }

  v7 = [(ComponentBatteryInternal *)self accessoryCertificate];
  [v4 setObject:v7 forKeyedSubscript:@"accessoryCertificate"];

  v8 = [(ComponentBatteryInternal *)self idsn];
  [v4 setObject:v8 forKeyedSubscript:@"chipId"];

  v9 = [(ComponentBatteryInternal *)self boardId];
  [v4 setObject:v9 forKeyedSubscript:@"boardId"];

  v10 = [NSNumber numberWithBool:[(ComponentBatteryInternal *)self isGasGaugeLocked]];
  [v4 setObject:v10 forKeyedSubscript:@"isGasGaugeLocked"];

  if (objc_opt_class())
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[CRRepairStatus isVeridianFWUpdateRequired]);
    [v4 setObject:v11 forKeyedSubscript:@"isFirmwareUpdateRequired"];
  }

  v12 = [(ComponentBatteryBase *)self generatePowerSourceData];
  [v4 addEntriesFromDictionary:v12];

  v13 = [(ComponentBatteryInternalBase *)self generateMitigationState];
  [v4 addEntriesFromDictionary:v13];

  if ((+[CBSUtilities isCheckerBoardActive]& 1) == 0)
  {
    v14 = [(ComponentBatteryInternal *)self batteryOptimizationMode];
    [v4 setObject:v14 forKeyedSubscript:@"batteryOptimizationMode"];
  }

  removeNullFromDictionary(v4);
}

- (void)populatePLQueryAttributes:(id)a3
{
  v4 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10003058C;
  v40 = sub_10003059C;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10003058C;
  v34 = sub_10003059C;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10003058C;
  v28 = sub_10003059C;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10003058C;
  v22 = sub_10003059C;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003058C;
  v16 = sub_10003059C;
  v17 = 0;
  v5 = dispatch_group_create();
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000305A4;
  block[3] = &unk_100090C00;
  block[4] = self;
  block[5] = &v36;
  dispatch_group_async(v5, v6, block);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000305F0;
  v10[3] = &unk_100090C00;
  v10[4] = self;
  v10[5] = &v30;
  dispatch_group_async(v5, v6, v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003063C;
  v9[3] = &unk_100090C00;
  v9[4] = self;
  v9[5] = &v24;
  dispatch_group_async(v5, v6, v9);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100030688;
  v8[3] = &unk_100090C00;
  v8[4] = self;
  v8[5] = &v18;
  dispatch_group_async(v5, v6, v8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000306D4;
  v7[3] = &unk_100090C68;
  v7[4] = &v12;
  dispatch_group_async(v5, v6, v7);
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v37[5])
  {
    [v4 addEntriesFromDictionary:?];
  }

  if (v31[5])
  {
    [v4 addEntriesFromDictionary:?];
  }

  if (v25[5])
  {
    [v4 addEntriesFromDictionary:?];
  }

  if (v19[5])
  {
    [v4 addEntriesFromDictionary:?];
  }

  if ([v13[5] count])
  {
    [v4 setObject:v13[5] forKeyedSubscript:@"shutdownLog"];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

- (id)batteryCellDisconnectCount
{
  v6 = -1;
  v2 = [DAComponentUtil getIORegistryName:@"AppleSmartBattery" property:@"BatteryCellDisconnectCount" optionalKey:0];
  v3 = v2;
  if (!v2 || ([v2 getBytes:&v6 length:8], v6 < 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithInteger:?];
  }

  return v4;
}

- (id)accessoryCertificate
{
  v2 = [DAComponentUtil getIORegistryName:@"AppleAuthCPRelay" property:@"AccessoryCertificate" optionalKey:0 classValidator:&stru_100090A38];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)idsn
{
  v2 = [DAComponentUtil getIORegistryName:@"AppleAuthCPRelay" property:@"IDSN" optionalKey:0 classValidator:&stru_100090A38];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)boardId
{
  if (!&_T200GetBoardIdFromDT)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_8;
  }

  BoardIdFromDT = T200GetBoardIdFromDT();
  if (BoardIdFromDT)
  {
    v3 = BoardIdFromDT;
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error during retrieving BMU board id: %d", buf, 8u);
    }

    goto LABEL_6;
  }

  v5 = [NSString stringWithFormat:@"0x%x", 0];
LABEL_8:
  v6 = stringOrNull(v5);

  return v6;
}

- (id)batteryOptimizationMode
{
  v3 = [(ComponentBatteryInternal *)self smartChargeClient];
  if (([v3 isMCLSupported] & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = [(ComponentBatteryInternal *)self smartChargeClient];
  v21 = 0;
  v5 = [v4 isMCLCurrentlyEnabled:&v21];
  v6 = v21;

  if (!v5)
  {
    if (v6)
    {
      v17 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error during retrieving MCL status: %@", buf, 0xCu);
      }
    }

LABEL_6:
    v11 = [(ComponentBatteryInternal *)self smartChargeClient];
    v12 = [v11 isOBCSupported];

    if (v12)
    {
      v13 = [(ComponentBatteryInternal *)self smartChargeClient];
      v19 = 0;
      v14 = [v13 isSmartChargingCurrentlyEnabled:&v19];
      v15 = v19;

      if ((v14 - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {

        v10 = @"Optimized";
        goto LABEL_19;
      }

      if (v15)
      {
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error during retrieving OBC status: %@", buf, 0xCu);
        }
      }
    }

    v10 = @"None";
    goto LABEL_19;
  }

  v7 = [(ComponentBatteryInternal *)self smartChargeClient];
  v20 = v6;
  v8 = [v7 getMCLLimitWithError:&v20];
  v9 = v20;

  if (v9)
  {

    v10 = @"ManualLimit";
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%d%% Limit", v8];
  }

LABEL_19:

  return v10;
}

- (BOOL)isGasGaugeLocked
{
  v2 = objc_alloc_init(DSAppleSMCDevice);
  if ([v2 openAppleSMC:0])
  {
    [v2 readValueFor:@"BMFL"];
    v4 = v3 == 42300.0;
    [v2 closeAppleSMC];
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to open SMC", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end