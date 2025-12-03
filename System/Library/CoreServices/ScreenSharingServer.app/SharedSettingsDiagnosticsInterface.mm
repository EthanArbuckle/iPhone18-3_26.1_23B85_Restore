@interface SharedSettingsDiagnosticsInterface
- (SharedSettingsDiagnosticsInterface)init;
- (id)filterKeysForSettingsType:(id)type;
- (id)getDiagnosticsSystemReport:(id)report;
- (id)getSystemReportWithFilter:(id)filter;
@end

@implementation SharedSettingsDiagnosticsInterface

- (SharedSettingsDiagnosticsInterface)init
{
  v3.receiver = self;
  v3.super_class = SharedSettingsDiagnosticsInterface;
  return [(SharedSettingsDiagnosticsInterface *)&v3 init];
}

- (id)getSystemReportWithFilter:(id)filter
{
  filterCopy = filter;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000052BC;
  v36 = sub_1000052CC;
  v37 = 0;
  group = dispatch_group_create();
  v4 = [DKReportManager alloc];
  v23 = [v4 initWithBundleIdentifier:kDKDefaultBundleIdentifier];
  if ([filterCopy count])
  {
    v24 = +[NSMutableSet set];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = filterCopy;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
    v21 = filterCopy;
    if (v6)
    {
      v7 = 0;
      v8 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);

          objc_opt_class();
          v7 = v10;
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 objectForKeyedSubscript:@"identifier"];
            v12 = [v10 objectForKeyedSubscript:@"type"];
            if (v12)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v39 = v12;
                v40 = 2048;
                v41 = v11;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "type %p identifier %p", buf, 0x16u);
              }
            }

            else
            {
              v14 = [DKComponentPredicate componentPredicateWithType:v12 identifier:v11];
              [v24 addObject:v14];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v6);
    }

    filterCopy = v21;
    v15 = v24;
  }

  else
  {
    v15 = 0;
  }

  dispatch_group_enter(group);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000052D4;
  v25[3] = &unk_100068C68;
  v27 = &v32;
  v16 = group;
  v26 = v16;
  v17 = v15;
  [v23 reportWithComponentPredicateManifest:v15 completion:v25];
  v18 = filterCopy;
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v19 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v19;
}

- (id)filterKeysForSettingsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Battery"])
  {
    v4 = &off_10006B178;
  }

  else if ([typeCopy isEqualToString:@"System"])
  {
    v4 = &off_10006B190;
  }

  else if ([typeCopy isEqualToString:@"Storage"])
  {
    v4 = &off_10006B1A8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getDiagnosticsSystemReport:(id)report
{
  reportCopy = report;
  v3 = [(SharedSettingsDiagnosticsInterface *)self getSystemReportWithFilter:?];
  if (v3)
  {
    v18 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v19 = 0;
      v8 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          v10 = v7;
          if (*v23 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v22 + 1) + 8 * i);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v7 objectForKey:@"type"];
            if (v11)
            {
              v12 = v11;
              if ([reportCopy count])
              {
                v13 = [(SharedSettingsDiagnosticsInterface *)self filterKeysForSettingsType:v12];
                if ([v13 count])
                {
                  v14 = [v7 dictionaryWithValuesForKeys:v13];

                  [v18 setObject:v14 forKeyedSubscript:v12];
                  v19 = v14;
                }
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "no filters", buf, 2u);
                }

                [v18 setObject:v7 forKeyedSubscript:v12];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);

      v15 = v19;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "did not get systemDiagnosticsReport", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

@end