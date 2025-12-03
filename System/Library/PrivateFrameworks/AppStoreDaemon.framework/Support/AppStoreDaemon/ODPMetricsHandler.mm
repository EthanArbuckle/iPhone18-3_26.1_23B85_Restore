@interface ODPMetricsHandler
- (id)deviceID;
- (id)getAppEventsWithError:(id *)error;
- (id)logKey;
- (void)postMetrics;
- (void)recordDeletedBundleIDs:(id)ds;
- (void)recordInstallEventsForBundleIDs:(id)ds installType:(unsigned __int8)type;
- (void)recordLaunches:(id)launches;
- (void)recordSupplementalAppMetricsEvents;
- (void)resetMetrics;
@end

@implementation ODPMetricsHandler

- (id)deviceID
{
  uUIDString = sub_1003D4108(AppDefaultsManager, @"ODPDeviceID");
  if (!uUIDString)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];

    sub_1003D4024(AppDefaultsManager, uUIDString, @"ODPDeviceID");
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting initial deviceID", &v7, 0xCu);
    }
  }

  return uUIDString;
}

- (id)getAppEventsWithError:(id *)error
{
  if (self)
  {
    v5 = +[NSMutableArray array];
    sub_100390F18(&self->super.super.isa, 1, error);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v21 = 0u;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = objc_alloc_init(ASDAppMetricsEvent);
          if (v10)
          {
            v12 = sub_10023E604(v10, @"event_type");
            [v11 setEventType:{sub_100209ED4(AppMetricsEvent, v12)}];
            v13 = [AppMetricsEvent engagementData]_0(v10);
            [v11 setPayload:v13];

            v14 = sub_10023E4DC(v10, @"has_been_posted");
          }

          else
          {
            objc_opt_self();
            [v11 setEventType:3];
            [v11 setPayload:0];
            v14 = 0;
          }

          [v11 setPosted:v14];
          [v5 addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        v7 = v15;
      }

      while (v15);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)logKey
{
  logKey = self->_logKey;
  if (!logKey)
  {
    v4 = self->super._baseLogKey;
    v5 = [(LogKey *)v4 prependingCategory:@"ODP"];
    v6 = self->_logKey;
    self->_logKey = v5;

    logKey = self->_logKey;
  }

  return logKey;
}

- (void)postMetrics
{
  v8 = 0;
  v3 = sub_100390F18(&self->super.super.isa, 0, &v8);
  v4 = v8;
  if ([v3 count])
  {
    sub_100391588(self, v3);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      logKey = [(ODPMetricsHandler *)self logKey];
      v7 = [v3 count];
      *buf = 138412546;
      v10 = logKey;
      v11 = 2048;
      v12 = v7;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] Posted %ld event(s) to AMSEngagement", buf, 0x16u);
    }
  }

  [(ODPMetricsHandler *)self resetMetrics];
}

- (void)recordInstallEventsForBundleIDs:(id)ds installType:(unsigned __int8)type
{
  typeCopy = type;
  dsCopy = ds;
  [(ODPMetricsHandler *)self recordSupplementalAppMetricsEvents];
  objc_opt_self();
  if (typeCopy <= 0x13 && ((1 << typeCopy) & 0xF17FE) != 0)
  {
    selfCopy = self;
    v37 = typeCopy;
    v7 = typeCopy != 4 && typeCopy != 19;
    v33 = v7;
    v34 = +[NSMutableArray array];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = dsCopy;
    v36 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v36)
    {
      v35 = *v43;
      do
      {
        v8 = 0;
        do
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(obj);
          }

          currentApps = selfCopy;
          if (selfCopy)
          {
            currentApps = selfCopy->super._currentApps;
          }

          v10 = *(*(&v42 + 1) + 8 * v8);
          v11 = currentApps;
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12 || ([ApplicationProxy proxyForBundleID:v10], v13 = objc_claimAutoreleasedReturnValue(), v12 = sub_100381B80([AppMetadata alloc], v13), v13, v12))
          {
            v14 = sub_100391DE0(&selfCopy->super.super.isa, v10, v12);
            [v14 setObject:@"installs" forKeyedSubscript:@"eventType"];
            v15 = sub_100308EC0(MetricsHandler, v37);
            if (v15)
            {
              [v14 setObject:v15 forKeyedSubscript:@"installType"];
            }

            [v14 setObject:v10 forKeyedSubscript:@"bundleId"];
            v16 = +[NSDate now];
            v17 = sub_100308F30(MetricsHandler, v16);
            [v14 setObject:v17 forKeyedSubscript:@"eventTime"];

            v18 = objc_alloc_init(AppMetricsEvent);
            sub_10020A090(v18, 5);
            sub_100209FB0(v18, v37);
            sub_100209F4C(v18, v10);
            sub_10020A100(v18, v14);
            sub_10020A020(v18, 1);
            sub_10020A164(v18, v33);
            [v34 addObject:v18];
            v19 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              logKey = [(ODPMetricsHandler *)selfCopy logKey];
              v21 = sub_1001FC658(AppEvent, 1u);
              v22 = sub_100382830(v12);
              *buf = 138413058;
              *&buf[4] = logKey;
              *&buf[12] = 2114;
              *&buf[14] = v21;
              *&buf[22] = 2114;
              v51 = v10;
              LOWORD(v52) = 2114;
              *(&v52 + 2) = v22;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event with version: %{public}@", buf, 0x2Au);
            }
          }

          else
          {
            v12 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              logKey2 = [(ODPMetricsHandler *)selfCopy logKey];
              v24 = sub_1001FC658(AppEvent, 1u);
              *buf = 138412802;
              *&buf[4] = logKey2;
              *&buf[12] = 2114;
              *&buf[14] = v24;
              *&buf[22] = 2114;
              v51 = v10;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] [%{public}@] App metadata not found", buf, 0x20u);
            }
          }

          v8 = v8 + 1;
        }

        while (v36 != v8);
        v25 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
        v36 = v25;
      }

      while (v25);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = sub_1003924A8;
    *&v52 = sub_1003924B8;
    *(&v52 + 1) = 0;
    v26 = sub_10036C90C();
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1003924C0;
    v39[3] = &unk_100520CB8;
    v27 = v34;
    v40 = v27;
    v41 = buf;
    [v26 modifyUsingTransaction:v39];

    if (*(*&buf[8] + 40))
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        logKey3 = [(ODPMetricsHandler *)selfCopy logKey];
        v30 = *(*&buf[8] + 40);
        *v46 = 138412546;
        v47 = logKey3;
        v48 = 2114;
        v49 = v30;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@] App install metrics event import resulted in error: %{public}@", v46, 0x16u);
      }
    }

    if (v37 != 4 && v37 != 19)
    {
      sub_100391588(selfCopy, v27);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)recordDeletedBundleIDs:(id)ds
{
  dsCopy = ds;
  [(ODPMetricsHandler *)self recordSupplementalAppMetricsEvents];
  v27 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = dsCopy;
  v29 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v29)
  {
    v28 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        if (self)
        {
          currentApps = self->super._currentApps;
        }

        else
        {
          currentApps = 0;
        }

        v7 = *(*(&v33 + 1) + 8 * v5);
        v8 = currentApps;
        v9 = [(NSDictionary *)v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          v10 = sub_100391DE0(&self->super.super.isa, v7, v9);
          [v10 setObject:@"uninstalls" forKeyedSubscript:@"eventType"];
          [v10 setObject:v7 forKeyedSubscript:@"bundleId"];
          v11 = +[NSDate now];
          v12 = sub_100308F30(MetricsHandler, v11);
          [v10 setObject:v12 forKeyedSubscript:@"eventTime"];

          v13 = objc_alloc_init(AppMetricsEvent);
          sub_10020A090(v13, 5);
          sub_100209F4C(v13, v7);
          sub_10020A100(v13, v10);
          sub_10020A020(v13, 3);
          sub_10020A164(v13, 1);
          [v27 addObject:v13];
          v14 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            logKey = [(ODPMetricsHandler *)self logKey];
            v16 = sub_1001FC658(AppEvent, 3u);
            v17 = sub_100382830(v9);
            *buf = 138413058;
            *&buf[4] = logKey;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            *&buf[22] = 2114;
            v42 = v7;
            LOWORD(v43) = 2114;
            *(&v43 + 2) = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event with version: %{public}@", buf, 0x2Au);
          }
        }

        else
        {
          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            logKey2 = [(ODPMetricsHandler *)self logKey];
            v19 = sub_1001FC658(AppEvent, 3u);
            *buf = 138412802;
            *&buf[4] = logKey2;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            *&buf[22] = 2114;
            v42 = v7;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] [%{public}@] App metadata not found", buf, 0x20u);
          }
        }

        v5 = v5 + 1;
      }

      while (v29 != v5);
      v20 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      v29 = v20;
    }

    while (v20);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_1003924A8;
  *&v43 = sub_1003924B8;
  *(&v43 + 1) = 0;
  v21 = sub_10036C90C();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100392A88;
  v30[3] = &unk_100520CB8;
  v22 = v27;
  v31 = v22;
  v32 = buf;
  [v21 modifyUsingTransaction:v30];

  if (*(*&buf[8] + 40))
  {
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      logKey3 = [(ODPMetricsHandler *)self logKey];
      v25 = *(*&buf[8] + 40);
      *v37 = 138412546;
      v38 = logKey3;
      v39 = 2114;
      v40 = v25;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] App uninstall metrics event import resulted in error: %{public}@", v37, 0x16u);
    }
  }

  sub_100391588(self, v22);

  _Block_object_dispose(buf, 8);
}

- (void)recordLaunches:(id)launches
{
  launchesCopy = launches;
  v59 = +[NSMutableArray array];
  v7 = launchesCopy;
  selfCopy = self;
  if (!self)
  {
    v56 = 0;
    goto LABEL_48;
  }

  v8 = +[NSMutableDictionary dictionary];
  v61 = sub_100356B10(ArcadeManager, 0);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v58 = v7;
  obj = v7;
  v68 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (!v68)
  {
    goto LABEL_38;
  }

  v67 = *v78;
  v64 = v8;
  do
  {
    v9 = 0;
    do
    {
      if (*v78 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v77 + 1) + 8 * v9);
      if (!v10)
      {
        v26 = 0;
        goto LABEL_33;
      }

      v11 = v10[5];
      if (v11)
      {
        v3 = self->super._currentApps;
        v4 = v10[5];
        v12 = [(NSDictionary *)v3 objectForKeyedSubscript:v4];
        if (v12)
        {
          v13 = 0;
LABEL_18:
          v69 = v12;

          if (v13)
          {
            goto LABEL_34;
          }

LABEL_19:
          v20 = v10[2];
          v21 = v10[3];
          [v20 timeIntervalSinceDate:v21];
          v23 = v22;

          if (v23 <= 1.0)
          {
            goto LABEL_34;
          }

          v62 = v3;
          v24 = v10[5];
          [v8 objectForKeyedSubscript:v24];
          v26 = v25 = v8;

          if (v26)
          {
            v27 = [v26 objectForKeyedSubscript:@"foregroundEvents"];
          }

          else
          {
            v28 = v10[5];
            v29 = self->super._currentApps;
            v30 = [(NSDictionary *)v29 objectForKeyedSubscript:v28];
            v31 = sub_100391DE0(&self->super.super.isa, v28, v30);

            [v31 setObject:@"launches" forKeyedSubscript:@"eventType"];
            v27 = +[NSMutableArray array];
            [v31 setObject:v27 forKeyedSubscript:@"foregroundEvents"];
            v32 = v10[5];
            [v25 setObject:v31 forKeyedSubscript:v32];

            if ([v61 count])
            {
              v66 = v4;
              v33 = v10[3];
              logKey = [(ODPMetricsHandler *)self logKey];
              v35 = sub_1003560A8(1.0, ArcadeManager, v28, v33, v61, logKey);

              if (v35)
              {
                v36 = sub_10023AC10(v35);

                if (v36)
                {
                  v37 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    logKey2 = [(ODPMetricsHandler *)selfCopy logKey];
                    v39 = sub_10023AC10(v35);
                    *buf = 138412802;
                    v82 = logKey2;
                    v83 = 2114;
                    v84 = v28;
                    v85 = 2114;
                    v86 = v39;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Associating launch source: %{public}@", buf, 0x20u);
                  }

                  v40 = sub_10023AC48(v35);
                  [v31 setObject:v40 forKeyedSubscript:@"launchSource"];
                }
              }

              self = selfCopy;
              v4 = v66;
            }
          }

          v41 = v10[3];
          v42 = sub_100308F30(MetricsHandler, v41);

          stringValue = [v42 stringValue];
          v87 = stringValue;
          v44 = [NSNumber numberWithDouble:v23];
          v88 = v44;
          v45 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          [v27 addObject:v45];

          v3 = v62;
LABEL_33:

          v8 = v64;
          goto LABEL_34;
        }

        v69 = 0;
      }

      v14 = v10[16];
      if (!v14)
      {
        if (!v11)
        {
          goto LABEL_34;
        }

        v13 = 1;
        goto LABEL_17;
      }

      v15 = v14;
      v65 = v4;
      v16 = v3;
      v17 = self->super._currentApps;
      v18 = v10[16];
      v19 = [(NSDictionary *)v17 objectForKeyedSubscript:v18];
      v13 = v19 == 0;

      if (v11)
      {
        v3 = v16;
        v8 = v64;
        v4 = v65;
LABEL_17:
        v12 = v69;
        goto LABEL_18;
      }

      v3 = v16;
      v8 = v64;
      v4 = v65;
      if (v19)
      {
        goto LABEL_19;
      }

LABEL_34:
      v9 = v9 + 1;
    }

    while (v68 != v9);
    v46 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    v68 = v46;
  }

  while (v46);
LABEL_38:

  v47 = +[NSMutableArray array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  keyEnumerator = [v8 keyEnumerator];
  v49 = [keyEnumerator countByEnumeratingWithState:&v73 objects:buf count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v74;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v74 != v51)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v53 = *(*(&v73 + 1) + 8 * i);
        v54 = [v8 objectForKeyedSubscript:{v53, v58}];
        if (v54)
        {
          v55 = objc_alloc_init(AppMetricsEvent);
          sub_100209F4C(v55, v53);
          sub_10020A090(v55, 5);
          sub_10020A020(v55, 2);
          sub_10020A100(v55, v54);
          [v47 addObject:v55];
        }
      }

      v50 = [keyEnumerator countByEnumeratingWithState:&v73 objects:buf count:16];
    }

    while (v50);
  }

  v56 = [v47 copy];
  v7 = v58;
LABEL_48:

  if ([v56 count])
  {
    [v59 addObjectsFromArray:v56];
    v57 = sub_10036C90C();
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100393268;
    v70[3] = &unk_10051C838;
    v71 = v59;
    v72 = selfCopy;
    [v57 modifyUsingTransaction:v70];
  }
}

- (void)recordSupplementalAppMetricsEvents
{
  v3 = sub_1002B5480(MetricsCoordinator, 5);
  v4 = sub_100393548(&self->super.super.isa, v3);
  if ([v4 count])
  {
    v5 = sub_10036C90C();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003937E0;
    v11[3] = &unk_10051C838;
    v12 = v4;
    selfCopy = self;
    [v5 modifyUsingTransaction:v11];
  }

  sub_1002B56DC(MetricsCoordinator, 5);
  v6 = sub_1002B5480(MetricsCoordinator, 5);

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    logKey = [(ODPMetricsHandler *)self logKey];
    if (v6)
    {
      [v6 timeIntervalSince1970];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *buf = 138412546;
    v15 = logKey;
    v16 = 2048;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Updated supplemental date to: %{time_t}ld", buf, 0x16u);
  }
}

- (void)resetMetrics
{
  sub_1002B54D4(MetricsCoordinator, 5);
  sub_1002B56DC(MetricsCoordinator, 5);
  v3 = sub_1002B57AC(MetricsCoordinator, 5);
  v4 = sub_1002B5480(MetricsCoordinator, 5);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(ODPMetricsHandler *)self logKey];
    if (v3)
    {
      [v3 timeIntervalSince1970];
      v8 = v7;
      if (v4)
      {
LABEL_4:
        [v4 timeIntervalSince1970];
        v10 = v9;
LABEL_5:
        *buf = 138412802;
        v16 = logKey;
        v17 = 2048;
        v18 = v8;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Updated start date to: %{time_t}ld supplemental: %{time_t}ld", buf, 0x20u);

        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_5;
  }

LABEL_6:

  v11 = sub_10036C90C();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100393B18;
  v14[3] = &unk_100524A08;
  v14[4] = self;
  [v11 modifyUsingTransaction:v14];

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    logKey2 = [(ODPMetricsHandler *)self logKey];
    *buf = 138412290;
    v16 = logKey2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Reset metrics ", buf, 0xCu);
  }
}

@end