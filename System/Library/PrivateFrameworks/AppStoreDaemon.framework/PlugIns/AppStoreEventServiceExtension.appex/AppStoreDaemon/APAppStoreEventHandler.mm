@interface APAppStoreEventHandler
- (int64_t)didReceiveInstallationEvent:(id)event;
- (void)sendMetricForEvent:(id)event;
@end

@implementation APAppStoreEventHandler

- (int64_t)didReceiveInstallationEvent:(id)event
{
  eventCopy = event;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=================================", &v30, 2u);
  }

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v30 = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Received didReceiveInstallationEvent from appstoredaemon.", &v30, 0xCu);
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    phase = [eventCopy phase];
    v30 = 134217984;
    v31 = phase;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App Installation Phase - %ld", &v30, 0xCu);
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    terminalPhase = [eventCopy terminalPhase];
    v30 = 134217984;
    v31 = terminalPhase;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "App Installation Terminal Phase - %ld", &v30, 0xCu);
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [eventCopy bundleID];
    v30 = 138412290;
    v31 = bundleID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bundle ID - %@", &v30, 0xCu);
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    itemID = [eventCopy itemID];
    integerValue = [itemID integerValue];
    v30 = 134217984;
    v31 = integerValue;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adam ID - %ld", &v30, 0xCu);
  }

  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    appType = [eventCopy appType];
    v30 = 134217984;
    v31 = appType;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "App Type - %ld", &v30, 0xCu);
  }

  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    source = [eventCopy source];
    v30 = 134217984;
    v31 = source;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Source - %ld", &v30, 0xCu);
  }

  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    installType = [eventCopy installType];
    v30 = 134217984;
    v31 = installType;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Install Type - %ld", &v30, 0xCu);
  }

  v24 = APLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    purchase = [eventCopy purchase];
    v30 = 138412290;
    v31 = purchase;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Proof of Purchase - %@", &v30, 0xCu);
  }

  v26 = APLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    commerceTimestamp = [eventCopy commerceTimestamp];
    v30 = 138412290;
    v31 = commerceTimestamp;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Commerce timestamp - %@", &v30, 0xCu);
  }

  v28 = APLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=================================", &v30, 2u);
  }

  if (eventCopy)
  {
    [(APAppStoreEventHandler *)self sendMetricForEvent:eventCopy];
  }

  return 1;
}

- (void)sendMetricForEvent:(id)event
{
  eventCopy = event;
  v4 = sub_100000B78(APReportingConversionTypeProvider, [eventCopy phase], objc_msgSend(eventCopy, "installType"), objc_msgSend(eventCopy, "terminalPhase"));
  if ([v4 intValue] != -1)
  {
    v57[0] = @"ProofOfPurchase";
    purchase = [eventCopy purchase];
    v6 = [NSNumber numberWithInt:purchase != 0];
    v57[1] = @"SignalType";
    v58[0] = v6;
    v58[1] = v4;
    v7 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
    [APAnalytics sendEvent:@"odconv_request" customPayload:v7];
  }

  if ([v4 intValue] == 1 || objc_msgSend(v4, "intValue") == 2)
  {
    purchase2 = [eventCopy purchase];

    if (!purchase2)
    {
      v9 = [NSString stringWithFormat:@"Proof of Purchase is nil for reportingConversionType: %@", v4];
      CreateDiagnosticReport();
    }
  }

  v55[0] = @"phase";
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy phase]);
  v56[0] = v10;
  v55[1] = @"terminalPhase";
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy terminalPhase]);
  v56[1] = v11;
  v55[2] = @"appType";
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy appType]);
  v56[2] = v12;
  v55[3] = @"source";
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy source]);
  v56[3] = v13;
  v55[4] = @"installType";
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy installType]);
  v55[5] = @"reportingConversionType";
  v56[4] = v14;
  v56[5] = v4;
  v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:6];
  v16 = [v15 mutableCopy];

  bundleID = [eventCopy bundleID];

  if (bundleID)
  {
    bundleID2 = [eventCopy bundleID];
    [v16 setObject:bundleID2 forKey:@"bundleID"];
  }

  itemID = [eventCopy itemID];

  if (itemID)
  {
    itemID2 = [eventCopy itemID];
    [v16 setObject:itemID2 forKey:@"itemID"];
  }

  purchase3 = [eventCopy purchase];

  if (purchase3)
  {
    purchase4 = [eventCopy purchase];
    v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [purchase4 itemID]);
    [v16 setObject:v23 forKey:@"utAdamId"];

    purchase5 = [eventCopy purchase];
    timestampString = [purchase5 timestampString];

    if (timestampString)
    {
      purchase6 = [eventCopy purchase];
      timestampString2 = [purchase6 timestampString];
      [v16 setObject:timestampString2 forKey:@"utTimestamp"];
    }

    purchase7 = [eventCopy purchase];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [purchase7 isRedownload]);
    [v16 setObject:v29 forKey:@"utIsredownload"];

    purchase8 = [eventCopy purchase];
    privateInput = [purchase8 privateInput];

    if (privateInput)
    {
      purchase9 = [eventCopy purchase];
      privateInput2 = [purchase9 privateInput];
      v34 = [privateInput2 base64EncodedStringWithOptions:0];

      [v16 setObject:v34 forKey:@"utPrivateInput"];
    }

    purchase10 = [eventCopy purchase];
    publicKey = [purchase10 publicKey];

    if (publicKey)
    {
      purchase11 = [eventCopy purchase];
      publicKey2 = [purchase11 publicKey];
      v39 = [publicKey2 base64EncodedStringWithOptions:0];

      [v16 setObject:v39 forKey:@"utPublicKey"];
    }

    purchase12 = [eventCopy purchase];
    finalizedToken = [purchase12 finalizedToken];

    if (finalizedToken)
    {
      purchase13 = [eventCopy purchase];
      finalizedToken2 = [purchase13 finalizedToken];
      v44 = [finalizedToken2 base64EncodedStringWithOptions:0];

      [v16 setObject:v44 forKey:@"utFinalizedToken"];
    }
  }

  commerceTimestamp = [eventCopy commerceTimestamp];

  if (commerceTimestamp)
  {
    commerceTimestamp2 = [eventCopy commerceTimestamp];
    [v16 setObject:commerceTimestamp2 forKey:@"commerceTimestamp"];
  }

  v47 = objc_alloc(+[MetricsModuleCommon metricClass]);
  v48 = +[NSUUID UUID];
  uUIDString = [v48 UUIDString];
  v50 = [v16 copy];
  v51 = [v47 initWithPurpose:-9000 metric:9100 contentIdentifier:0 contextIdentifier:0 handle:uUIDString secondaryHandle:0 branch:0 properties:v50 internalProperties:0 relayData:0 environment:0 order:0 options:0];

  v52 = [+[MetricsModuleCommon daemonDeliveryClass](MetricsModuleCommon "daemonDeliveryClass")];
  [v52 receivedMetric:v51];
  v53 = APLogForCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sent signal to promotedcontentd.", buf, 2u);
  }
}

@end