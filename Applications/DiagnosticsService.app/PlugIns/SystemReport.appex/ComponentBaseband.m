@interface ComponentBaseband
- (BOOL)isPresent;
- (id)ICCID;
- (id)IMEI;
- (id)MEID;
- (id)basebandFirmwareVersion;
- (id)cellularCallStatistics;
- (id)eUICC;
- (id)eUICCChipID;
- (id)eUICCFwUpdateCurrentVersion;
- (id)eUICCFwUpdateGoldFwMac;
- (id)eUICCFwUpdateLoaderVersion;
- (id)eUICCFwUpdateOperationMode;
- (id)rffeScanData;
- (id)secondSimStatus;
- (id)secondSimTrayStatus;
- (id)serialNumber;
- (id)simStatus;
- (id)simTrayStatus;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentBaseband

- (BOOL)isPresent
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v3 = dispatch_get_global_queue(0, 0);
  [(ComponentBaseband *)self setTelephonyClientQueue:v3];

  v4 = [CoreTelephonyClient alloc];
  v5 = [(ComponentBaseband *)self telephonyClientQueue];
  v6 = [v4 initWithQueue:v5];
  [(ComponentBaseband *)self setTelephonyClient:v6];

  v7 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v8 = [(ComponentBaseband *)self telephonyClient];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003181C;
  v19[3] = &unk_100090C90;
  v21 = &v24;
  v19[4] = self;
  objc_copyWeak(&v22, &location);
  v9 = v7;
  v20 = v9;
  [v8 checkRadioBootHealthDetails:v19];

  v10 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = dispatch_semaphore_create(0);

  v12 = [(ComponentBaseband *)self telephonyClient];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003197C;
  v16[3] = &unk_100090CB8;
  objc_copyWeak(&v18, &location);
  v13 = v11;
  v17 = v13;
  [v12 getEuiccData:v16];

  v14 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v13, v14);
  LOBYTE(v12) = *(v25 + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v24, 8);
  return v12;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentBaseband *)self basebandFirmwareVersion];
  [v4 setObject:v5 forKeyedSubscript:@"basebandVersion"];

  v6 = [(ComponentBaseband *)self IMEI];
  [v4 setObject:v6 forKeyedSubscript:@"imei"];

  v7 = [(ComponentBaseband *)self MEID];
  [v4 setObject:v7 forKeyedSubscript:@"meid"];

  v8 = [(ComponentBaseband *)self ICCID];
  [v4 setObject:v8 forKeyedSubscript:@"iccid"];

  v9 = [(ComponentBaseband *)self eUICCPreflightData];
  if (v9 && (v10 = v9, [(ComponentBaseband *)self eUICCPreflightData], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    v13 = [(ComponentBaseband *)self eUICCChipID];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v4 setObject:v13 forKeyedSubscript:@"eUICCChipID"];
      v25 = [(ComponentBaseband *)self eUICC];
      [v4 setObject:v25 forKeyedSubscript:@"eUICC"];

      v26 = [(ComponentBaseband *)self eUICCFwUpdateCurrentVersion];
      [v4 setObject:v26 forKeyedSubscript:@"eUICCFwUpdateCurrentVersion"];

      v27 = [(ComponentBaseband *)self eUICCFwUpdateGoldFwMac];
      [v4 setObject:v27 forKeyedSubscript:@"eUICCFwUpdateGoldFwMac"];

      v28 = [(ComponentBaseband *)self eUICCFwUpdateLoaderVersion];
      [v4 setObject:v28 forKeyedSubscript:@"eUICCFwUpdateLoaderVersion"];

      v29 = [(ComponentBaseband *)self eUICCFwUpdateOperationMode];
      [v4 setObject:v29 forKeyedSubscript:@"eUICCFwUpdateOperationMode"];
    }
  }

  else
  {
    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "eUICCPreflightData is null. Skipping.", v30, 2u);
    }
  }

  v14 = [(ComponentBaseband *)self simStatus];
  [v4 setObject:v14 forKeyedSubscript:@"simStatus"];

  v15 = [(ComponentBaseband *)self simTrayStatus];
  [v4 setObject:v15 forKeyedSubscript:@"simTrayStatus"];

  v16 = [(ComponentBaseband *)self secondSimStatus];
  [v4 setObject:v16 forKeyedSubscript:@"secondSimStatus"];

  v17 = [(ComponentBaseband *)self secondSimTrayStatus];
  [v4 setObject:v17 forKeyedSubscript:@"secondSimTrayStatus"];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasBaseband"];
  v18 = [(ComponentBaseband *)self serialNumber];
  [v4 setObject:v18 forKeyedSubscript:@"serialNumber"];

  v19 = +[NSNull null];
  [v4 setObject:v19 forKeyedSubscript:@"callStatistics"];

  v20 = [NSNumber numberWithBool:[(ComponentBaseband *)self isRadioHealthy]];
  [v4 setObject:v20 forKeyedSubscript:@"isHealthy"];

  v21 = [NSNumber numberWithInteger:[(ComponentBaseband *)self radioHealthCause]];
  [v4 setObject:v21 forKeyedSubscript:@"healthCause"];

  if ((+[CBSUtilities isCheckerBoardActive]& 1) == 0)
  {
    v22 = [(ComponentBaseband *)self cellularCallStatistics];
    [v4 setObject:v22 forKeyedSubscript:@"callStatistics"];
  }

  v23 = [(ComponentBaseband *)self rffeScanData];
  if (v23)
  {
    v24 = [(ComponentBaseband *)self rffeScanData];
    [v4 setObject:v24 forKeyedSubscript:@"rffeScanData"];
  }
}

- (id)cellularCallStatistics
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ComponentBaseband cellularCallStatistics]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = objc_opt_new();
  [v3 beginAggregation];
  v4 = [v3 getSynchronousResult];
  v5 = dictionaryOrNull(v4);

  return v5;
}

- (id)IMEI
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband IMEI]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)MEID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband MEID]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)ICCID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband ICCID]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)eUICC
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentBaseband eUICC]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateCsn"];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (id)eUICCChipID
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentBaseband eUICCChipID]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateEuiccChipId"];
  v6 = stringOrNull(v5);

  return v6;
}

- (id)eUICCFwUpdateCurrentVersion
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentBaseband eUICCFwUpdateCurrentVersion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateCurrentVersion"];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (id)eUICCFwUpdateGoldFwMac
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentBaseband eUICCFwUpdateGoldFwMac]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateGoldFwMac"];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (id)eUICCFwUpdateLoaderVersion
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentBaseband eUICCFwUpdateLoaderVersion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateLoaderVersion"];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (id)eUICCFwUpdateOperationMode
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentBaseband eUICCFwUpdateOperationMode]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v4 = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [v4 objectForKeyedSubscript:@"kVinylFwUpdateOperationMode"];
  v6 = stringOrNull(v5);

  return v6;
}

- (id)simStatus
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband simStatus]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)simTrayStatus
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband simTrayStatus]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)secondSimStatus
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband secondSimStatus]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)secondSimTrayStatus
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband secondSimTrayStatus]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)basebandFirmwareVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentBaseband basebandFirmwareVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)serialNumber
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentBaseband serialNumber]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = MGCopyAnswer();

  return v3;
}

- (id)rffeScanData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(ComponentBaseband *)self telephonyClient];
  v33 = 0;
  v5 = [v4 getBasebandRadioFrequencyFrontEndScanData:&v33];
  v6 = v33;

  if (v5 || !v6)
  {
    v23 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to get RFFE Scan Data from CoreTelephony Client: %@", buf, 0xCu);
    }

    v31 = 0;
  }

  else
  {
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 version]);
    [v3 setObject:v7 forKeyedSubscript:@"version"];

    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 hwPrdId]);
    [v3 setObject:v8 forKeyedSubscript:@"hwPrdId"];

    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 hwSku]);
    [v3 setObject:v9 forKeyedSubscript:@"hwSku"];

    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 hwRev]);
    [v3 setObject:v10 forKeyedSubscript:@"hwRev"];

    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 hwHousing]);
    [v3 setObject:v11 forKeyedSubscript:@"hwHousing"];

    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 rfcInitPass]);
    [v3 setObject:v12 forKeyedSubscript:@"rfcInitPass"];

    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 rfcHwid]);
    [v3 setObject:v13 forKeyedSubscript:@"rfcHwid"];

    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 rfcRev]);
    [v3 setObject:v14 forKeyedSubscript:@"rfcRev"];

    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 rfcMmwHwid]);
    [v3 setObject:v15 forKeyedSubscript:@"rfcMmwHwid"];

    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 rfcMmwRev]);
    [v3 setObject:v16 forKeyedSubscript:@"rfcMmwRev"];

    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 fr2TrxRev]);
    [v3 setObject:v17 forKeyedSubscript:@"fr2TrxRev"];

    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 rffeScanPass]);
    [v3 setObject:v18 forKeyedSubscript:@"rffeScanPass"];

    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 numExpectedDevices]);
    [v3 setObject:v19 forKeyedSubscript:@"numExpectedDevices"];

    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 numDetectedDevices]);
    [v3 setObject:v20 forKeyedSubscript:@"numDetectedDevices"];

    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 numMissingDevices]);
    [v3 setObject:v21 forKeyedSubscript:@"numMissingDevices"];

    v22 = [v6 rffeScanInfo];
    v23 = v22;
    if (v22 && [v22 count])
    {
      [v3 setObject:v23 forKeyedSubscript:@"rffeScanInfo"];
    }

    v24 = [v6 missingRffeDevices];
    v25 = v24;
    if (v24 && [v24 count])
    {
      [v3 setObject:v25 forKeyedSubscript:@"missingRffeDevices"];
    }

    v26 = [v6 missingAtDevices];
    v27 = v26;
    if (v26 && [v26 count])
    {
      [v3 setObject:v27 forKeyedSubscript:@"missingAtDevices"];
    }

    v28 = [v6 missingMmwDevices];
    v29 = v28;
    if (v28 && [v28 count])
    {
      v30 = [v6 missingMmwDevices];
      [v3 setObject:v30 forKeyedSubscript:@"missingMmwDevices"];
    }

    v31 = v3;
  }

  return v31;
}

@end