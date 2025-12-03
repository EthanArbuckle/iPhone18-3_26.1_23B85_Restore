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
- (void)populateAttributes:(id)attributes;
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
  telephonyClientQueue = [(ComponentBaseband *)self telephonyClientQueue];
  v6 = [v4 initWithQueue:telephonyClientQueue];
  [(ComponentBaseband *)self setTelephonyClient:v6];

  v7 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  telephonyClient = [(ComponentBaseband *)self telephonyClient];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003181C;
  v19[3] = &unk_100090C90;
  v21 = &v24;
  v19[4] = self;
  objc_copyWeak(&v22, &location);
  v9 = v7;
  v20 = v9;
  [telephonyClient checkRadioBootHealthDetails:v19];

  v10 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = dispatch_semaphore_create(0);

  telephonyClient2 = [(ComponentBaseband *)self telephonyClient];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003197C;
  v16[3] = &unk_100090CB8;
  objc_copyWeak(&v18, &location);
  v13 = v11;
  v17 = v13;
  [telephonyClient2 getEuiccData:v16];

  v14 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v13, v14);
  LOBYTE(telephonyClient2) = *(v25 + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v24, 8);
  return telephonyClient2;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  basebandFirmwareVersion = [(ComponentBaseband *)self basebandFirmwareVersion];
  [attributesCopy setObject:basebandFirmwareVersion forKeyedSubscript:@"basebandVersion"];

  iMEI = [(ComponentBaseband *)self IMEI];
  [attributesCopy setObject:iMEI forKeyedSubscript:@"imei"];

  mEID = [(ComponentBaseband *)self MEID];
  [attributesCopy setObject:mEID forKeyedSubscript:@"meid"];

  iCCID = [(ComponentBaseband *)self ICCID];
  [attributesCopy setObject:iCCID forKeyedSubscript:@"iccid"];

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  if (eUICCPreflightData && (v10 = eUICCPreflightData, [(ComponentBaseband *)self eUICCPreflightData], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    eUICCChipID = [(ComponentBaseband *)self eUICCChipID];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [attributesCopy setObject:eUICCChipID forKeyedSubscript:@"eUICCChipID"];
      eUICC = [(ComponentBaseband *)self eUICC];
      [attributesCopy setObject:eUICC forKeyedSubscript:@"eUICC"];

      eUICCFwUpdateCurrentVersion = [(ComponentBaseband *)self eUICCFwUpdateCurrentVersion];
      [attributesCopy setObject:eUICCFwUpdateCurrentVersion forKeyedSubscript:@"eUICCFwUpdateCurrentVersion"];

      eUICCFwUpdateGoldFwMac = [(ComponentBaseband *)self eUICCFwUpdateGoldFwMac];
      [attributesCopy setObject:eUICCFwUpdateGoldFwMac forKeyedSubscript:@"eUICCFwUpdateGoldFwMac"];

      eUICCFwUpdateLoaderVersion = [(ComponentBaseband *)self eUICCFwUpdateLoaderVersion];
      [attributesCopy setObject:eUICCFwUpdateLoaderVersion forKeyedSubscript:@"eUICCFwUpdateLoaderVersion"];

      eUICCFwUpdateOperationMode = [(ComponentBaseband *)self eUICCFwUpdateOperationMode];
      [attributesCopy setObject:eUICCFwUpdateOperationMode forKeyedSubscript:@"eUICCFwUpdateOperationMode"];
    }
  }

  else
  {
    eUICCChipID = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(eUICCChipID, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&_mh_execute_header, eUICCChipID, OS_LOG_TYPE_ERROR, "eUICCPreflightData is null. Skipping.", v30, 2u);
    }
  }

  simStatus = [(ComponentBaseband *)self simStatus];
  [attributesCopy setObject:simStatus forKeyedSubscript:@"simStatus"];

  simTrayStatus = [(ComponentBaseband *)self simTrayStatus];
  [attributesCopy setObject:simTrayStatus forKeyedSubscript:@"simTrayStatus"];

  secondSimStatus = [(ComponentBaseband *)self secondSimStatus];
  [attributesCopy setObject:secondSimStatus forKeyedSubscript:@"secondSimStatus"];

  secondSimTrayStatus = [(ComponentBaseband *)self secondSimTrayStatus];
  [attributesCopy setObject:secondSimTrayStatus forKeyedSubscript:@"secondSimTrayStatus"];

  [attributesCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"hasBaseband"];
  serialNumber = [(ComponentBaseband *)self serialNumber];
  [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  v19 = +[NSNull null];
  [attributesCopy setObject:v19 forKeyedSubscript:@"callStatistics"];

  v20 = [NSNumber numberWithBool:[(ComponentBaseband *)self isRadioHealthy]];
  [attributesCopy setObject:v20 forKeyedSubscript:@"isHealthy"];

  v21 = [NSNumber numberWithInteger:[(ComponentBaseband *)self radioHealthCause]];
  [attributesCopy setObject:v21 forKeyedSubscript:@"healthCause"];

  if ((+[CBSUtilities isCheckerBoardActive]& 1) == 0)
  {
    cellularCallStatistics = [(ComponentBaseband *)self cellularCallStatistics];
    [attributesCopy setObject:cellularCallStatistics forKeyedSubscript:@"callStatistics"];
  }

  rffeScanData = [(ComponentBaseband *)self rffeScanData];
  if (rffeScanData)
  {
    rffeScanData2 = [(ComponentBaseband *)self rffeScanData];
    [attributesCopy setObject:rffeScanData2 forKeyedSubscript:@"rffeScanData"];
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
  getSynchronousResult = [v3 getSynchronousResult];
  v5 = dictionaryOrNull(getSynchronousResult);

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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateCsn"];

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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateEuiccChipId"];
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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateCurrentVersion"];

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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateGoldFwMac"];

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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateLoaderVersion"];

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

  eUICCPreflightData = [(ComponentBaseband *)self eUICCPreflightData];
  v5 = [eUICCPreflightData objectForKeyedSubscript:@"kVinylFwUpdateOperationMode"];
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
  telephonyClient = [(ComponentBaseband *)self telephonyClient];
  v33 = 0;
  v5 = [telephonyClient getBasebandRadioFrequencyFrontEndScanData:&v33];
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

    rffeScanInfo = [v6 rffeScanInfo];
    v23 = rffeScanInfo;
    if (rffeScanInfo && [rffeScanInfo count])
    {
      [v3 setObject:v23 forKeyedSubscript:@"rffeScanInfo"];
    }

    missingRffeDevices = [v6 missingRffeDevices];
    v25 = missingRffeDevices;
    if (missingRffeDevices && [missingRffeDevices count])
    {
      [v3 setObject:v25 forKeyedSubscript:@"missingRffeDevices"];
    }

    missingAtDevices = [v6 missingAtDevices];
    v27 = missingAtDevices;
    if (missingAtDevices && [missingAtDevices count])
    {
      [v3 setObject:v27 forKeyedSubscript:@"missingAtDevices"];
    }

    missingMmwDevices = [v6 missingMmwDevices];
    v29 = missingMmwDevices;
    if (missingMmwDevices && [missingMmwDevices count])
    {
      missingMmwDevices2 = [v6 missingMmwDevices];
      [v3 setObject:missingMmwDevices2 forKeyedSubscript:@"missingMmwDevices"];
    }

    v31 = v3;
  }

  return v31;
}

@end