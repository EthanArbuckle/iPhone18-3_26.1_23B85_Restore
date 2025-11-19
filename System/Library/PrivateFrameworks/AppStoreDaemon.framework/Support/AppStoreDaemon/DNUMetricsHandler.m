@interface DNUMetricsHandler
- (BOOL)isCandidateAppMetadata:(id)a3;
- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4;
- (BOOL)shouldCollectMetrics;
- (id)logKey;
- (void)_recordCrashEventsSinceDate:(id)a3;
- (void)recordInstallEventsForBundleIDs:(id)a3 installType:(unsigned __int8)a4;
- (void)recordSupplementalAppMetricsEvents;
@end

@implementation DNUMetricsHandler

- (BOOL)isCandidateAppMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (sub_100382758(v4) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (!sub_1003827E8(v5))
  {
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  v7 = +[BagService appstoredService];
  v8 = [v7 lastBag];
  v9 = sub_100382084(v5);
  v10 = [v8 isSystemAppWithBundleID:v9];

  if (v10)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(DNUMetricsHandler *)self logKey];
      v14 = sub_100382084(v5);
      v15 = 138412546;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] We have an eligible system app", &v15, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_3:
  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4
{
  v6 = a3;
  v7 = sub_1003D2BDC(v6);
  if (v7)
  {
    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:
      v9 = v7 ^ 1;

      goto LABEL_11;
    }

    v16 = [(DNUMetricsHandler *)self logKey];
    v17 = sub_1003D0F60(v6);
    v19 = 138412546;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] Skipping non candidate app", &v19, 0x16u);
LABEL_19:

    goto LABEL_3;
  }

  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v11 = +[BagService appstoredService];
    v12 = [v11 lastBag];
    v13 = sub_1003D0F60(v6);
    v10 = [v12 isSystemAppWithBundleID:v13];
  }

  v14 = sub_1003D3068(v6);
  v9 = 0;
  if (v6 && ((v14 | v10) & 1) != 0)
  {
    if (([v6[15] isProfileValidated] & 1) != 0 || objc_msgSend(v6[15], "applicationHasMIDBasedSINF") && !sub_1003D2404(v6) || objc_msgSend(v6[15], "isPlaceholder") && objc_msgSend(v6[15], "installType") - 7 > 2)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    v16 = [(DNUMetricsHandler *)self logKey];
    v17 = sub_1003D0F60(v6);
    v18 = sub_1003D26A0(v6);
    v19 = 138412802;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] We have an eligible app with version: %{public}@", &v19, 0x20u);

    goto LABEL_19;
  }

LABEL_11:

  return v9;
}

- (id)logKey
{
  logKey = self->_logKey;
  if (!logKey)
  {
    v4 = self->super._baseLogKey;
    v5 = [(LogKey *)v4 prependingCategory:@"DNU"];
    v6 = self->_logKey;
    self->_logKey = v5;

    logKey = self->_logKey;
  }

  return logKey;
}

- (void)recordSupplementalAppMetricsEvents
{
  v3 = sub_1002B5480(MetricsCoordinator, 2);
  if (v3)
  {
    [(DNUMetricsHandler *)self _recordCrashEventsSinceDate:v3];
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DNUMetricsHandler *)self logKey];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Skipping due to lack of supplemental date", &v11, 0xCu);
    }
  }

  sub_1002B56DC(MetricsCoordinator, 2);
  v6 = sub_1002B5480(MetricsCoordinator, 2);

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(DNUMetricsHandler *)self logKey];
    if (v6)
    {
      [v6 timeIntervalSince1970];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = 138412546;
    v12 = v8;
    v13 = 2048;
    v14 = v10;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Updated supplemental date to: %{time_t}ld", &v11, 0x16u);
  }
}

- (void)recordInstallEventsForBundleIDs:(id)a3 installType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_self();
  if (v4 <= 0x13 && ((1 << v4) & 0xF17FE) != 0)
  {
    [(MetricsHandler *)self recordAppEventsForBundleIDs:v6 eventType:1 installType:v4];
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(DNUMetricsHandler *)self logKey];
      v9 = [v6 componentsJoinedByString:{@", "}];
      v10 = 138412546;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Skipping unsupported installType apps: [%{public}@]", &v10, 0x16u);
    }
  }
}

- (BOOL)shouldCollectMetrics
{
  v2 = sub_1003BBF50();
  if ([v2 isHRNMode])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_10030B548();
  }

  return v3;
}

- (void)_recordCrashEventsSinceDate:(id)a3
{
  v4 = [(MetricsHandler *)self getCrashEventsSinceDate:a3];
  v5 = sub_10036C90C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025DD40;
  v7[3] = &unk_10051C838;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 modifyUsingTransaction:v7];
}

@end