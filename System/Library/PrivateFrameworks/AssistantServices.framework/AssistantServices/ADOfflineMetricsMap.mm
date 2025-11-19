@interface ADOfflineMetricsMap
- (ADOfflineMetricsMap)initWithPath:(id)a3;
- (id)_offlineIdentifiers;
- (void)deleteAllMetrics;
- (void)deleteMetricsWithOfflineIdentifier:(id)a3;
- (void)fetchNextMetricsUsingBlock:(id)a3;
- (void)insertMetrics:(id)a3 withOfflineIdentifier:(id)a4;
@end

@implementation ADOfflineMetricsMap

- (id)_offlineIdentifiers
{
  v2 = self;
  offlineIdentifiers = self->_offlineIdentifiers;
  if (!offlineIdentifiers)
  {
    v4 = v2->_path;
    +[NSFileManager defaultManager];
    v40 = v52 = 0;
    v41 = v4;
    if ([v40 fileExistsAtPath:v4 isDirectory:&v52] && v52 == 1)
    {
      v51 = 0;
      v5 = [v40 contentsOfDirectoryAtPath:v4 error:&v51];
      v6 = v51;
      if (v6)
      {
        v7 = v6;
        v8 = AFSiriLogContextAnalytics;
        if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
        {
          *v57 = 136315394;
          v58 = "_ADOfflineMetricsMapGetOfflineIdentifiers";
          v59 = 2112;
          v60 = v7;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", v57, 0x16u);
        }

        v9 = 0;
      }

      else
      {
        v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v37 = v5;
        obj = v5;
        v11 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
        v38 = v2;
        if (v11)
        {
          v12 = v11;
          v7 = 0;
          v13 = *v48;
          do
          {
            v14 = 0;
            v15 = v7;
            do
            {
              if (*v48 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v47 + 1) + 8 * v14);
              v17 = [v16 pathExtension];
              if ([v17 isEqualToString:@"plist"])
              {
                v18 = [v16 stringByDeletingPathExtension];
              }

              else
              {
                v18 = 0;
              }

              if (v18)
              {
                v19 = [(NSString *)v41 stringByAppendingPathComponent:v16];
                v46 = v15;
                v20 = [v40 attributesOfItemAtPath:v19 error:&v46];
                v7 = v46;

                if (v7)
                {
                  v21 = AFSiriLogContextAnalytics;
                  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v54 = "_ADOfflineMetricsMapGetOfflineIdentifiers";
                    v55 = 2112;
                    v56 = v7;
                    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
                  }
                }

                else
                {
                  v22 = [v20 objectForKey:NSFileCreationDate];
                  if (v22)
                  {
                    [v10 setObject:v18 forKey:v22];
                  }

                  else
                  {
                    v23 = +[NSDate date];
                    [v10 setObject:v18 forKey:v23];
                  }
                }

                v15 = v7;
              }

              else
              {
                v7 = v15;
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v12);
        }

        else
        {
          v7 = 0;
        }

        v24 = [v10 allKeys];
        v25 = [v24 sortedArrayUsingSelector:"compare:"];

        v26 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v27 = v25;
        v28 = [v27 countByEnumeratingWithState:&v42 objects:buf count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v43;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v43 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [v10 objectForKey:{*(*(&v42 + 1) + 8 * i), v37}];
              if (v32)
              {
                [v26 addObject:v32];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v42 objects:buf count:16];
          }

          while (v29);
        }

        v9 = [v26 copy];
        v5 = v37;
        v2 = v38;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v2->_offlineIdentifiers;
    v2->_offlineIdentifiers = v9;

    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v35 = v2->_offlineIdentifiers;
      *v57 = 136315394;
      v58 = "[ADOfflineMetricsMap _offlineIdentifiers]";
      v59 = 2112;
      v60 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s offlineIdentifiers = %@", v57, 0x16u);
    }

    offlineIdentifiers = v2->_offlineIdentifiers;
  }

  return offlineIdentifiers;
}

- (void)deleteAllMetrics
{
  v3 = +[NSFileManager defaultManager];
  if (![v3 fileExistsAtPath:self->_path])
  {
    goto LABEL_4;
  }

  path = self->_path;
  v10 = 0;
  v5 = [v3 removeItemAtPath:path error:&v10];
  v6 = v10;
  offlineIdentifiers = v6;
  if (v5)
  {

LABEL_4:
    offlineIdentifiers = self->_offlineIdentifiers;
    self->_offlineIdentifiers = 0;
    goto LABEL_7;
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = self->_path;
    *buf = 136315650;
    v12 = "[ADOfflineMetricsMap deleteAllMetrics]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = offlineIdentifiers;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to remove directory at path %@ due to error %@.", buf, 0x20u);
  }

LABEL_7:
}

- (void)deleteMetricsWithOfflineIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[NSFileManager defaultManager];
    path = self->_path;
    v7 = sub_10026A698(v4);
    v8 = [(NSString *)path stringByAppendingPathComponent:v7];

    if ([v5 fileExistsAtPath:v8])
    {
      v18 = 0;
      v9 = [v5 removeItemAtPath:v8 error:&v18];
      v10 = v18;
      v11 = v10;
      if ((v9 & 1) == 0)
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v20 = "[ADOfflineMetricsMap deleteMetricsWithOfflineIdentifier:]";
          v21 = 2112;
          v22 = v8;
          v23 = 2112;
          v24 = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to remove metrics plist file at path %@ due to error %@.", buf, 0x20u);
        }

        offlineIdentifiers = self->_offlineIdentifiers;
        self->_offlineIdentifiers = 0;

        goto LABEL_11;
      }
    }

    v12 = self->_offlineIdentifiers;
    if (!v12)
    {
LABEL_12:

      goto LABEL_13;
    }

    v11 = [(NSOrderedSet *)v12 mutableCopy];
    [v11 removeObject:v4];
    v13 = [v11 copy];
    v14 = self->_offlineIdentifiers;
    self->_offlineIdentifiers = v13;

    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[ADOfflineMetricsMap deleteMetricsWithOfflineIdentifier:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s offlineIdentifiers -= %@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

- (void)insertMetrics:(id)a3 withOfflineIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v7 && (isKindOfClass & 1) != 0)
  {
    v9 = +[NSFileManager defaultManager];
    v52 = 0;
    if ([v9 fileExistsAtPath:self->_path isDirectory:&v52])
    {
      if (v52)
      {
        v10 = 0;
        goto LABEL_7;
      }

      path = self->_path;
      v51 = 0;
      v27 = [v9 removeItemAtPath:path error:&v51];
      v28 = v51;
      v29 = v28;
      if (!v27)
      {
        v34 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v45 = self->_path;
          *buf = 136315650;
          v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
          v55 = 2112;
          v56 = v45;
          v57 = 2112;
          v58 = v29;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Unable to remove file at path %@ due to error %@.", buf, 0x20u);
        }

        v10 = v29;
        goto LABEL_34;
      }

      v30 = self->_path;
      v50 = v28;
      v31 = [v9 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v50];
      v10 = v50;

      if ((v31 & 1) == 0)
      {
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v11 = self->_path;
      v49 = 0;
      v12 = [v9 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v49];
      v10 = v49;
      if ((v12 & 1) == 0)
      {
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
LABEL_18:
          v33 = self->_path;
          *buf = 136315650;
          v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
          v55 = 2112;
          v56 = v33;
          v57 = 2112;
          v58 = v10;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Unable to create directory at path %@ due to error %@.", buf, 0x20u);
        }

LABEL_34:

        goto LABEL_35;
      }
    }

LABEL_7:
    v13 = self->_path;
    v14 = sub_10026A698(v7);
    v15 = [(NSString *)v13 stringByAppendingPathComponent:v14];

    if ([v9 fileExistsAtPath:v15])
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
        v55 = 2112;
        v56 = v15;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Offline metrics plist file already exists at path %@.", buf, 0x16u);
      }

      goto LABEL_33;
    }

    v17 = [v6 dictionary];
    v48 = 0;
    v18 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:&v48];
    v19 = v48;

    if (v19)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = [v6 dictionary];
        *buf = 136315650;
        v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
        v55 = 2112;
        v56 = v22;
        v57 = 2112;
        v58 = v19;
        v23 = "%s Unable to serialize offline metrics plist %@ due to error %@.";
        v24 = v21;
        v25 = 32;
LABEL_29:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      }
    }

    else
    {
      v47 = 0;
      v35 = [v18 writeToFile:v15 options:1 error:&v47];
      v19 = v47;
      if (v35)
      {
        v36 = [NSURL fileURLWithPath:v15];
        v46 = v19;
        v37 = [v36 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v46];
        v10 = v46;

        if (v37)
        {
          offlineIdentifiers = self->_offlineIdentifiers;
          if (!offlineIdentifiers)
          {
LABEL_32:

LABEL_33:
            goto LABEL_34;
          }

          v39 = [(NSOrderedSet *)offlineIdentifiers mutableCopy];
          [(NSOrderedSet *)v39 addObject:v7];
          v40 = [(NSOrderedSet *)v39 copy];
          v41 = self->_offlineIdentifiers;
          self->_offlineIdentifiers = v40;

          v42 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
            v55 = 2112;
            v56 = v7;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s offlineIdentifiers += %@", buf, 0x16u);
          }
        }

        else
        {
          v44 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
            v55 = 2112;
            v56 = v15;
            v57 = 2112;
            v58 = v10;
            _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s Unable to exclude offline metrics plist file at path %@ from backup due to error %@.", buf, 0x20u);
          }

          [v9 removeItemAtPath:v15 error:0];
          v39 = self->_offlineIdentifiers;
          self->_offlineIdentifiers = 0;
        }

        v19 = v10;
LABEL_31:

        v10 = v19;
        goto LABEL_32;
      }

      v43 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v21 = v43;
        v22 = [v6 dictionary];
        *buf = 136315906;
        v54 = "[ADOfflineMetricsMap insertMetrics:withOfflineIdentifier:]";
        v55 = 2112;
        v56 = v22;
        v57 = 2112;
        v58 = v15;
        v59 = 2112;
        v60 = v19;
        v23 = "%s Unable to write to offline metrics plist %@ to path %@ due to error %@.";
        v24 = v21;
        v25 = 42;
        goto LABEL_29;
      }
    }

    [v9 removeItemAtPath:v15 error:0];
    v39 = self->_offlineIdentifiers;
    self->_offlineIdentifiers = 0;
    goto LABEL_31;
  }

LABEL_35:
}

- (void)fetchNextMetricsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADOfflineMetricsMap *)self _offlineIdentifiers];
    v6 = [v5 firstObject];

    if (!v6)
    {
      (*(v4 + 2))(v4, 0, 0);
LABEL_24:

      goto LABEL_25;
    }

    v7 = +[NSFileManager defaultManager];
    path = self->_path;
    v9 = sub_10026A698(v6);
    v10 = [(NSString *)path stringByAppendingPathComponent:v9];

    if (([v7 fileExistsAtPath:v10] & 1) == 0)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[ADOfflineMetricsMap fetchNextMetricsUsingBlock:]";
        v30 = 2112;
        v31 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to find offline metrics plist path at path %@.", buf, 0x16u);
      }

      offlineIdentifiers = self->_offlineIdentifiers;
      self->_offlineIdentifiers = 0;

      (*(v4 + 2))(v4, 0, 0);
      goto LABEL_23;
    }

    v11 = [[NSData alloc] initWithContentsOfFile:v10];
    if (!v11)
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[ADOfflineMetricsMap fetchNextMetricsUsingBlock:]";
        v30 = 2112;
        v31 = v10;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to read offline metrics plist file at path %@.", buf, 0x16u);
      }

      [v7 removeItemAtPath:v10 error:0];
      v18 = self->_offlineIdentifiers;
      self->_offlineIdentifiers = 0;

      (*(v4 + 2))(v4, 0, 0);
      goto LABEL_22;
    }

    v27 = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v27];
    v13 = v27;
    if (v13)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "[ADOfflineMetricsMap fetchNextMetricsUsingBlock:]";
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to initialize offline metrics plist from file at path %@ due to error %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[SAMetrics alloc] initWithDictionary:v12];
        if (v19)
        {
          (*(v4 + 2))(v4, v19, v6);
        }

        else
        {
          v22 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "[ADOfflineMetricsMap fetchNextMetricsUsingBlock:]";
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unable to create SAMetrics object from offline metrics plist %@.", buf, 0x16u);
          }

          [v7 removeItemAtPath:v10 error:0];
          v23 = self->_offlineIdentifiers;
          self->_offlineIdentifiers = 0;

          (*(v4 + 2))(v4, 0, 0);
        }

        goto LABEL_21;
      }

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v24 = v20;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 136315394;
        v29 = "[ADOfflineMetricsMap fetchNextMetricsUsingBlock:]";
        v30 = 2112;
        v31 = v26;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Unexpected type of initialized offline metrics plist %@.", buf, 0x16u);
      }
    }

    [v7 removeItemAtPath:v10 error:0];
    v21 = self->_offlineIdentifiers;
    self->_offlineIdentifiers = 0;

    (*(v4 + 2))(v4, 0, 0);
LABEL_21:

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (ADOfflineMetricsMap)initWithPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADOfflineMetricsMap;
  v5 = [(ADOfflineMetricsMap *)&v9 init];
  if (v5)
  {
    v6 = [v4 stringByStandardizingPath];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

@end