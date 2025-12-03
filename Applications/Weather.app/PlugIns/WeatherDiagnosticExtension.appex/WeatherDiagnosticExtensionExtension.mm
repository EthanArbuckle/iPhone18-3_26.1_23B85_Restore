@interface WeatherDiagnosticExtensionExtension
+ (id)log;
- (WeatherDiagnosticExtensionExtension)init;
- (id)attachmentList;
@end

@implementation WeatherDiagnosticExtensionExtension

- (WeatherDiagnosticExtensionExtension)init
{
  v8.receiver = self;
  v8.super_class = WeatherDiagnosticExtensionExtension;
  v2 = [(WeatherDiagnosticExtensionExtension *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileProvider = v2->_fileProvider;
    v2->_fileProvider = v3;

    v5 = objc_opt_new();
    databaseManager = v2->_databaseManager;
    v2->_databaseManager = v5;
  }

  return v2;
}

- (id)attachmentList
{
  databaseManager = [(WeatherDiagnosticExtensionExtension *)self databaseManager];
  [databaseManager checkpoint];

  fileProvider = [(WeatherDiagnosticExtensionExtension *)self fileProvider];
  v23 = 0;
  v5 = [fileProvider exportDirectoryAndReturnError:&v23];
  v6 = v23;

  if (v6)
  {
    v7 = +[WeatherDiagnosticExtensionExtension log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to create export directory with error: %@", buf, 0xCu);
    }

    v8 = &__NSArray0__struct;
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    v22 = 0;
    v17 = v5;
    v9 = [v7 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&v22];
    v6 = v22;
    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [DEAttachmentItem attachmentWithPathURL:*(*(&v18 + 1) + 8 * i)];
          [v15 setDeleteOnAttach:&__kCFBooleanTrue];
          [v8 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v12);
    }

    v5 = v17;
  }

  return v8;
}

+ (id)log
{
  if (qword_10000C488 != -1)
  {
    sub_1000040B0();
  }

  v3 = qword_10000C490;

  return v3;
}

@end