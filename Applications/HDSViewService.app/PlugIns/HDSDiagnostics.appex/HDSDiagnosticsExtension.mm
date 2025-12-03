@interface HDSDiagnosticsExtension
+ (id)cacheDirectory;
+ (id)productionCacheDirectory;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (void)cleanupDiagnostics;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation HDSDiagnosticsExtension

+ (id)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  return v3;
}

+ (id)productionCacheDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[HDSDiagnosticsExtension appGroupIdentifier];
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];
  path = [v4 path];

  v6 = [NSString stringWithFormat:@"%@%@", path, @"/Library/Caches"];

  return v6;
}

- (id)attachmentList
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[HDSDiagnosticsExtension productionCacheDirectory];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1 relativeToURL:0];

  v5 = sub_100001164();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v44 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to find directory: %@.", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_26;
  }

  if (v6)
  {
    *buf = 138412290;
    v44 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " Looking for contents in %@.", buf, 0xCu);
  }

  v41 = 0;
  v5 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v41];
  v7 = v41;
  if (!v5)
  {
    v8 = sub_100001164();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to find contents in directory: %@.", buf, 0xCu);
    }

    v25 = &__NSArray0__struct;
    goto LABEL_34;
  }

  if (![v5 count])
  {
LABEL_26:
    v25 = &__NSArray0__struct;
    goto LABEL_35;
  }

  v8 = [[NSDate alloc] initWithTimeIntervalSince1970:0.0];
  v9 = [NSMutableArray arrayWithCapacity:[v5 count]];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v5;
    v30 = v4;
    v31 = v2;
    v33 = 0;
    v12 = *v38;
    v13 = obj;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v13);
        }

        path = [*(*(&v37 + 1) + 8 * i) path];
        if ([path containsString:@"HomePod"] && objc_msgSend(path, "containsString:", @"sysdiagnose") && objc_msgSend(path, "containsString:", @".tar.gz"))
        {
          v16 = [path stringByReplacingOccurrencesOfString:@".tar.gz" withString:&stru_100004228];
          v17 = [v16 componentsSeparatedByString:@"_"];
          if ([v17 count] >= 3)
          {
            v18 = [v17 objectAtIndexedSubscript:1];
            v35 = [v17 objectAtIndexedSubscript:2];
            v36 = v18;
            v19 = [NSString stringWithFormat:@"%@_%@", v18, v35];
            v20 = objc_alloc_init(NSDateFormatter);
            [v20 setDateFormat:@"yyyy.MM.dd_HH-mm-ss-SSSS"];
            v21 = [v20 dateFromString:v19];
            if ([v21 compare:v8] == 1)
            {
              v32 = v21;

              v22 = path;
              v33 = v22;
              v8 = v32;
            }

            v13 = obj;
          }
        }
      }

      v11 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);

    v23 = v33;
    if (!v33)
    {
      v4 = v30;
      v2 = v31;
      v7 = v28;
      v5 = v29;
      v9 = v27;
      goto LABEL_33;
    }

    v24 = [DEAttachmentItem attachmentWithPath:v33];
    v9 = v27;
    [v27 addObject:v24];
    v4 = v30;
    v2 = v31;
    v7 = v28;
    v5 = v29;
  }

  else
  {
    v23 = 0;
    v24 = obj;
  }

LABEL_33:
  v25 = [v9 copy];

LABEL_34:
LABEL_35:

  return v25;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = sub_100001164();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[HDSDiagnosticsExtension attachmentsForParameters:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  attachmentList = [(HDSDiagnosticsExtension *)self attachmentList];
  v6 = sub_100001164();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = attachmentList;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attachment List  %@", &v8, 0xCu);
  }

  return attachmentList;
}

- (void)teardownWithParameters:(id)parameters
{
  v4 = sub_100001164();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HDSDiagnosticsExtension teardownWithParameters:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(HDSDiagnosticsExtension *)self cleanupDiagnostics];
}

- (void)cleanupDiagnostics
{
  v18 = +[NSFileManager defaultManager];
  v2 = +[HDSDiagnosticsExtension productionCacheDirectory];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1 relativeToURL:0];

  v4 = sub_100001164();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for contents in %@.", buf, 0xCu);
    }

    v24 = 0;
    v4 = [v18 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v24];
    v6 = v24;
    if (v4)
    {
      if ([v4 count])
      {
        v16 = v6;
        v17 = v3;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v4 = v4;
        v7 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v4);
              }

              path = [*(*(&v20 + 1) + 8 * i) path];
              if ([path containsString:@"HomePod"] && objc_msgSend(path, "containsString:", @"sysdiagnose") && objc_msgSend(path, "containsString:", @".tar.gz"))
              {
                v12 = sub_100001164();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v27 = path;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
                }

                v19 = 0;
                [v18 removeItemAtPath:path error:&v19];
                v13 = v19;
                if (v13)
                {
                  v14 = sub_100001164();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v27 = v13;
                    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove failed %@", buf, 0xCu);
                  }
                }
              }
            }

            v8 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v8);
        }

        v6 = v16;
        v3 = v17;
      }
    }

    else
    {
      v15 = sub_100001164();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to find contents in directory: %@.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v5)
    {
      *buf = 138412290;
      v27 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unable to find directory: %@.", buf, 0xCu);
    }

    v6 = 0;
  }
}

@end