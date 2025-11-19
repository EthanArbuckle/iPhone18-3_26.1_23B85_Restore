@interface CrossfireMetricsHandler
- (BOOL)isCandidateAppMetadata:(id)a3;
- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4;
- (BOOL)shouldCollectMetrics;
- (CrossfireMetricsHandler)init;
- (id)logKey;
- (void)_handleAppDeletion:(id)a3;
- (void)_removeAppUsageSessionForBundleID:(id)a3;
- (void)recordDeletedBundleIDs:(id)a3;
- (void)recordInstallEventsForBundleIDs:(id)a3 installType:(unsigned __int8)a4;
@end

@implementation CrossfireMetricsHandler

- (CrossfireMetricsHandler)init
{
  v4.receiver = self;
  v4.super_class = CrossfireMetricsHandler;
  v2 = [(CrossfireMetricsHandler *)&v4 init];
  if (v2)
  {
    v2->_collectingMetrics = sub_10030B4C0();
  }

  return v2;
}

- (BOOL)isCandidateAppMetadata:(id)a3
{
  v4 = a3;
  v5 = [(MetricsHandler *)self shouldEnableSystemAppsForAppUsageType:1];
  if (((sub_1003827A0(v4) & 1) != 0 || self->_collectingMetrics) && v5 & 1 | ((sub_1003827E8(v4) & 1) == 0))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(CrossfireMetricsHandler *)self logKey];
      v10 = sub_100382084(v4);
      v11 = sub_100382830(v4);
      v12 = 138412802;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%@] We have eligible metadata: %{public}@ version: %{public}@", &v12, 0x20u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    goto LABEL_11;
  }

  if ((!v6 || ([v6[15] isBeta] & 1) == 0) && !self->_collectingMetrics)
  {
    goto LABEL_22;
  }

  if (-[MetricsHandler shouldEnableSystemAppsForAppUsageType:](self, "shouldEnableSystemAppsForAppUsageType:", 1) && (+[BagService appstoredService](BagService, "appstoredService"), v8 = objc_claimAutoreleasedReturnValue(), [v8 lastBag], v9 = objc_claimAutoreleasedReturnValue(), sub_1003D0F60(v7), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isSystemAppWithBundleID:", v10), v10, v9, v8, v11))
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(CrossfireMetricsHandler *)self logKey];
      v21 = sub_1003D0F60(v7);
      v22 = 138412546;
      v23 = v20;
      v24 = 2114;
      v25 = v21;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] We have an eligible system app ", &v22, 0x16u);
    }

    sub_1003D3068(v7);
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_11:
    v13 = sub_1003D3068(v7);
    v14 = 0;
    if (!v7 || !v13)
    {
      goto LABEL_23;
    }
  }

  if ([v7[15] isProfileValidated] && !objc_msgSend(v7[15], "isBeta") || objc_msgSend(v7[15], "applicationHasMIDBasedSINF") && !sub_1003D2404(v7) || objc_msgSend(v7[15], "isPlaceholder") && objc_msgSend(v7[15], "installType") - 7 > 2)
  {
LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(CrossfireMetricsHandler *)self logKey];
    v18 = sub_1003D0F60(v7);
    v19 = sub_1003D26A0(v7);
    v22 = 138412802;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v19;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] We have an eligible app with version: %{public}@", &v22, 0x20u);
  }

  v14 = 1;
LABEL_23:

  return v14;
}

- (id)logKey
{
  logKey = self->_logKey;
  if (!logKey)
  {
    v4 = self->super._baseLogKey;
    v5 = [(LogKey *)v4 prependingCategory:@"Crossfire"];
    v6 = self->_logKey;
    self->_logKey = v5;

    logKey = self->_logKey;
  }

  return logKey;
}

- (void)recordDeletedBundleIDs:(id)a3
{
  v4 = a3;
  [(MetricsHandler *)self recordAppEventsForBundleIDs:v4 eventType:3 installType:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10025B388;
  v5[3] = &unk_10051EF30;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
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
      v8 = [(CrossfireMetricsHandler *)self logKey];
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
  v3 = [v2 isHRNMode];

  return v3 ^ 1;
}

- (void)_handleAppDeletion:(id)a3
{
  v4 = a3;
  [(CrossfireMetricsHandler *)self _removeAppUsageSessionForBundleID:v4];
  if (self)
  {
    currentApps = self->super._currentApps;
  }

  else
  {
    currentApps = 0;
  }

  v6 = currentApps;
  v7 = [(NSDictionary *)v6 objectForKeyedSubscript:v4];

  if (v7 && sub_100382710(v7))
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = sub_1003826A0(v7);
    [v8 setObject:v9 forKeyedSubscript:@"bundle_version"];

    v10 = sub_1003820F4(v7);
    [v8 setObject:v10 forKeyedSubscript:@"evid"];

    v11 = sub_1003826D8(v7);
    [v8 setObject:v11 forKeyedSubscript:@"item_name"];

    v12 = sub_100382830(v7);
    [v8 setObject:v12 forKeyedSubscript:@"short_version"];

    if ([v8 count])
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v13 = sub_10036C90C();
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10025C84C;
      v23 = &unk_10051EFD0;
      v14 = v4;
      v24 = v14;
      v25 = self;
      v15 = v8;
      v26 = v15;
      v27 = &v28;
      [v13 modifyUsingTransaction:&v20];

      if (v29[3] >= 1)
      {
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(CrossfireMetricsHandler *)self logKey:v20];
          v18 = [v15 count];
          v19 = v29[3];
          *buf = 138413058;
          v33 = v17;
          v34 = 2114;
          v35 = v14;
          v36 = 2048;
          v37 = v18;
          v38 = 2048;
          v39 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Transferred %ld metadata properties to %ld clip card view event(s)", buf, 0x2Au);
        }
      }

      _Block_object_dispose(&v28, 8);
    }
  }
}

- (void)_removeAppUsageSessionForBundleID:(id)a3
{
  v4 = a3;
  v5 = sub_10036C90C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025CC8C;
  v7[3] = &unk_10051C838;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 modifyUsingTransaction:v7];
}

@end