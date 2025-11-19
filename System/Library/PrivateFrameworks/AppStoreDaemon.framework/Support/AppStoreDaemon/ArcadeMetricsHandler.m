@interface ArcadeMetricsHandler
- (BOOL)isCandidateAppMetadata:(id)a3;
- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4;
- (BOOL)shouldCollectMetrics;
- (id)logKey;
- (int64_t)_arcadeAppCount;
- (void)recordDeletedBundleIDs:(id)a3;
- (void)recordInstallEventsForBundleIDs:(id)a3 installType:(unsigned __int8)a4;
@end

@implementation ArcadeMetricsHandler

- (BOOL)isCandidateAppMetadata:(id)a3
{
  if (a3)
  {
    return sub_100382758(a3);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isCandidateAppProxy:(id)a3 isMetadataLookup:(BOOL)a4
{
  v4 = a3;
  v5 = v4;
  v6 = v4 && ([v4[15] isPlaceholder] & 1) == 0 && (sub_1003D2BDC(v5) & 1) != 0;

  return v6;
}

- (void)recordInstallEventsForBundleIDs:(id)a3 installType:(unsigned __int8)a4
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = +[LSDatabaseContext sharedDatabaseContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002307A4;
  v15[3] = &unk_10051DF80;
  v7 = v5;
  v16 = v7;
  v17 = self;
  v18 = &v19;
  [v6 accessUsingBlock:v15];

  if (v20[3] >= 1)
  {
    v8 = [(ArcadeMetricsHandler *)self _arcadeAppCount];
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ArcadeMetricsHandler *)self logKey];
      v11 = [v7 componentsJoinedByString:{@", "}];
      v12 = v20[3];
      *buf = 138413058;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Apps installed [%{public}@] arcade install count: %ld arcade app count: %ld", buf, 0x2Au);
    }

    if (v8 == v20[3])
    {
      v13 = +[BagService appstoredService];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1002308D8;
      v14[3] = &unk_10051DFC8;
      v14[4] = self;
      [v13 recentBagWithCompletionHandler:v14];
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (id)logKey
{
  logKey = self->_logKey;
  if (!logKey)
  {
    v4 = self->super._baseLogKey;
    v5 = [(LogKey *)v4 prependingCategory:@"Arcade"];
    v6 = self->_logKey;
    self->_logKey = v5;

    logKey = self->_logKey;
  }

  return logKey;
}

- (void)recordDeletedBundleIDs:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(ArcadeMetricsHandler *)self logKey];
    v7 = [v4 componentsJoinedByString:{@", "}];
    v8 = 138412546;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] Apps uninstalled: [%{public}@]", &v8, 0x16u);
  }
}

- (BOOL)shouldCollectMetrics
{
  v2 = sub_1003BBF50();
  v3 = [v2 isHRNMode];

  return v3 ^ 1;
}

- (int64_t)_arcadeAppCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100230C84;
  v4[3] = &unk_10051DFF0;
  v4[4] = self;
  v4[5] = &v5;
  sub_1003D31A8(ApplicationProxy, 0, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end