@interface DNUMetricsHandler
- (BOOL)isCandidateAppMetadata:(id)metadata;
- (BOOL)isCandidateAppProxy:(id)proxy isMetadataLookup:(BOOL)lookup;
- (BOOL)shouldCollectMetrics;
- (id)logKey;
- (void)_recordCrashEventsSinceDate:(id)date;
- (void)recordInstallEventsForBundleIDs:(id)ds installType:(unsigned __int8)type;
- (void)recordSupplementalAppMetricsEvents;
@end

@implementation DNUMetricsHandler

- (BOOL)isCandidateAppMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (!metadataCopy || (sub_100382758(metadataCopy) & 1) != 0)
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
  lastBag = [v7 lastBag];
  v9 = sub_100382084(v5);
  v10 = [lastBag isSystemAppWithBundleID:v9];

  if (v10)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      logKey = [(DNUMetricsHandler *)self logKey];
      v14 = sub_100382084(v5);
      v15 = 138412546;
      v16 = logKey;
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

- (BOOL)isCandidateAppProxy:(id)proxy isMetadataLookup:(BOOL)lookup
{
  proxyCopy = proxy;
  v7 = sub_1003D2BDC(proxyCopy);
  if (v7)
  {
    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:
      v9 = v7 ^ 1;

      goto LABEL_11;
    }

    logKey = [(DNUMetricsHandler *)self logKey];
    v17 = sub_1003D0F60(proxyCopy);
    v19 = 138412546;
    v20 = logKey;
    v21 = 2114;
    v22 = v17;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] Skipping non candidate app", &v19, 0x16u);
LABEL_19:

    goto LABEL_3;
  }

  if (lookup)
  {
    v10 = 0;
  }

  else
  {
    v11 = +[BagService appstoredService];
    lastBag = [v11 lastBag];
    v13 = sub_1003D0F60(proxyCopy);
    v10 = [lastBag isSystemAppWithBundleID:v13];
  }

  v14 = sub_1003D3068(proxyCopy);
  v9 = 0;
  if (proxyCopy && ((v14 | v10) & 1) != 0)
  {
    if (([proxyCopy[15] isProfileValidated] & 1) != 0 || objc_msgSend(proxyCopy[15], "applicationHasMIDBasedSINF") && !sub_1003D2404(proxyCopy) || objc_msgSend(proxyCopy[15], "isPlaceholder") && objc_msgSend(proxyCopy[15], "installType") - 7 > 2)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    logKey = [(DNUMetricsHandler *)self logKey];
    v17 = sub_1003D0F60(proxyCopy);
    v18 = sub_1003D26A0(proxyCopy);
    v19 = 138412802;
    v20 = logKey;
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
      logKey = [(DNUMetricsHandler *)self logKey];
      v11 = 138412290;
      v12 = logKey;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Skipping due to lack of supplemental date", &v11, 0xCu);
    }
  }

  sub_1002B56DC(MetricsCoordinator, 2);
  v6 = sub_1002B5480(MetricsCoordinator, 2);

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    logKey2 = [(DNUMetricsHandler *)self logKey];
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
    v12 = logKey2;
    v13 = 2048;
    v14 = v10;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Updated supplemental date to: %{time_t}ld", &v11, 0x16u);
  }
}

- (void)recordInstallEventsForBundleIDs:(id)ds installType:(unsigned __int8)type
{
  typeCopy = type;
  dsCopy = ds;
  objc_opt_self();
  if (typeCopy <= 0x13 && ((1 << typeCopy) & 0xF17FE) != 0)
  {
    [(MetricsHandler *)self recordAppEventsForBundleIDs:dsCopy eventType:1 installType:typeCopy];
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [(DNUMetricsHandler *)self logKey];
      v9 = [dsCopy componentsJoinedByString:{@", "}];
      v10 = 138412546;
      v11 = logKey;
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

- (void)_recordCrashEventsSinceDate:(id)date
{
  v4 = [(MetricsHandler *)self getCrashEventsSinceDate:date];
  v5 = sub_10036C90C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025DD40;
  v7[3] = &unk_10051C838;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [v5 modifyUsingTransaction:v7];
}

@end