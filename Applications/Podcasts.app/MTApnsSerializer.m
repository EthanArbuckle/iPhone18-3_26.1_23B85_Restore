@interface MTApnsSerializer
+ (id)whitelistedClasses;
- (id)payload;
@end

@implementation MTApnsSerializer

- (id)payload
{
  v18 = +[NSMutableDictionary dictionary];
  [(MZKeyValueStoreSerializer *)self keys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v21 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v21)
  {
    v20 = *v25;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * i);
        v5 = [(MZKeyValueStoreSerializer *)self transaction];
        v6 = [v5 processor];

        v7 = [(MZKeyValueStoreSerializer *)self transaction];
        v23 = 0;
        v8 = [v6 dataForSetTransaction:v7 key:v4 version:&v23];
        v9 = v23;

        if (v8)
        {
          v10 = [objc_opt_class() whitelistedClasses];
          v22 = 0;
          v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v8 error:&v22];
          v12 = v22;

          if (v12 || !v11)
          {
            v13 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v4;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Processor returned data for key %@ that isn't a valid archive. Skipping.", buf, 0xCu);
            }

            if (v12)
            {
              v14 = _MTLogCategoryCloudSync();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v29 = v12;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error = %@", buf, 0xCu);
              }
            }
          }

          else
          {
            [v18 setValue:v11 forKey:v4];
          }
        }

        else
        {
          v12 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v4;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Processor returned nil data for key %@. Skipping.", buf, 0xCu);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v21);
  }

  v15 = [NSPropertyListSerialization dataWithPropertyList:v18 format:kMZKeyValueStorePlistFormatNetworkData options:0 error:0];
  v16 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "APNS subscription payload: %@", buf, 0xCu);
  }

  return v15;
}

+ (id)whitelistedClasses
{
  if (qword_100583D98 != -1)
  {
    sub_1003B2D28();
  }

  v3 = qword_100583DA0;

  return v3;
}

@end