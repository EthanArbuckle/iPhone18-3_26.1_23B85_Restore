@interface APAppStoreEventHandler
- (int64_t)didReceiveInstallationEvent:(id)a3;
- (void)sendMetricForEvent:(id)a3;
@end

@implementation APAppStoreEventHandler

- (int64_t)didReceiveInstallationEvent:(id)a3
{
  v4 = a3;
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
    v10 = [v4 phase];
    v30 = 134217984;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App Installation Phase - %ld", &v30, 0xCu);
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 terminalPhase];
    v30 = 134217984;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "App Installation Terminal Phase - %ld", &v30, 0xCu);
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 bundleID];
    v30 = 138412290;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bundle ID - %@", &v30, 0xCu);
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v4 itemID];
    v17 = [v16 integerValue];
    v30 = 134217984;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adam ID - %ld", &v30, 0xCu);
  }

  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v4 appType];
    v30 = 134217984;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "App Type - %ld", &v30, 0xCu);
  }

  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v4 source];
    v30 = 134217984;
    v31 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Source - %ld", &v30, 0xCu);
  }

  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v4 installType];
    v30 = 134217984;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Install Type - %ld", &v30, 0xCu);
  }

  v24 = APLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v4 purchase];
    v30 = 138412290;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Proof of Purchase - %@", &v30, 0xCu);
  }

  v26 = APLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v4 commerceTimestamp];
    v30 = 138412290;
    v31 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Commerce timestamp - %@", &v30, 0xCu);
  }

  v28 = APLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=================================", &v30, 2u);
  }

  if (v4)
  {
    [(APAppStoreEventHandler *)self sendMetricForEvent:v4];
  }

  return 1;
}

- (void)sendMetricForEvent:(id)a3
{
  v3 = a3;
  v4 = sub_100000B78(APReportingConversionTypeProvider, [v3 phase], objc_msgSend(v3, "installType"), objc_msgSend(v3, "terminalPhase"));
  if ([v4 intValue] != -1)
  {
    v57[0] = @"ProofOfPurchase";
    v5 = [v3 purchase];
    v6 = [NSNumber numberWithInt:v5 != 0];
    v57[1] = @"SignalType";
    v58[0] = v6;
    v58[1] = v4;
    v7 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
    [APAnalytics sendEvent:@"odconv_request" customPayload:v7];
  }

  if ([v4 intValue] == 1 || objc_msgSend(v4, "intValue") == 2)
  {
    v8 = [v3 purchase];

    if (!v8)
    {
      v9 = [NSString stringWithFormat:@"Proof of Purchase is nil for reportingConversionType: %@", v4];
      CreateDiagnosticReport();
    }
  }

  v55[0] = @"phase";
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 phase]);
  v56[0] = v10;
  v55[1] = @"terminalPhase";
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 terminalPhase]);
  v56[1] = v11;
  v55[2] = @"appType";
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 appType]);
  v56[2] = v12;
  v55[3] = @"source";
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 source]);
  v56[3] = v13;
  v55[4] = @"installType";
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 installType]);
  v55[5] = @"reportingConversionType";
  v56[4] = v14;
  v56[5] = v4;
  v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:6];
  v16 = [v15 mutableCopy];

  v17 = [v3 bundleID];

  if (v17)
  {
    v18 = [v3 bundleID];
    [v16 setObject:v18 forKey:@"bundleID"];
  }

  v19 = [v3 itemID];

  if (v19)
  {
    v20 = [v3 itemID];
    [v16 setObject:v20 forKey:@"itemID"];
  }

  v21 = [v3 purchase];

  if (v21)
  {
    v22 = [v3 purchase];
    v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 itemID]);
    [v16 setObject:v23 forKey:@"utAdamId"];

    v24 = [v3 purchase];
    v25 = [v24 timestampString];

    if (v25)
    {
      v26 = [v3 purchase];
      v27 = [v26 timestampString];
      [v16 setObject:v27 forKey:@"utTimestamp"];
    }

    v28 = [v3 purchase];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 isRedownload]);
    [v16 setObject:v29 forKey:@"utIsredownload"];

    v30 = [v3 purchase];
    v31 = [v30 privateInput];

    if (v31)
    {
      v32 = [v3 purchase];
      v33 = [v32 privateInput];
      v34 = [v33 base64EncodedStringWithOptions:0];

      [v16 setObject:v34 forKey:@"utPrivateInput"];
    }

    v35 = [v3 purchase];
    v36 = [v35 publicKey];

    if (v36)
    {
      v37 = [v3 purchase];
      v38 = [v37 publicKey];
      v39 = [v38 base64EncodedStringWithOptions:0];

      [v16 setObject:v39 forKey:@"utPublicKey"];
    }

    v40 = [v3 purchase];
    v41 = [v40 finalizedToken];

    if (v41)
    {
      v42 = [v3 purchase];
      v43 = [v42 finalizedToken];
      v44 = [v43 base64EncodedStringWithOptions:0];

      [v16 setObject:v44 forKey:@"utFinalizedToken"];
    }
  }

  v45 = [v3 commerceTimestamp];

  if (v45)
  {
    v46 = [v3 commerceTimestamp];
    [v16 setObject:v46 forKey:@"commerceTimestamp"];
  }

  v47 = objc_alloc(+[MetricsModuleCommon metricClass]);
  v48 = +[NSUUID UUID];
  v49 = [v48 UUIDString];
  v50 = [v16 copy];
  v51 = [v47 initWithPurpose:-9000 metric:9100 contentIdentifier:0 contextIdentifier:0 handle:v49 secondaryHandle:0 branch:0 properties:v50 internalProperties:0 relayData:0 environment:0 order:0 options:0];

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