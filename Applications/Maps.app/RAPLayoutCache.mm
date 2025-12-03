@interface RAPLayoutCache
+ (id)_layoutURLForType:(int64_t)type;
+ (id)configForLayoutType:(int64_t)type;
+ (void)setConfig:(id)config forLayoutType:(int64_t)type;
@end

@implementation RAPLayoutCache

+ (id)configForLayoutType:(int64_t)type
{
  v4 = [self _layoutURLForType:?];
  v5 = [RAPFileManager dataAtFileURL:v4];
  v6 = v5;
  if (type <= 5)
  {
    v7 = *(&off_101657C38 + type);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = sub_1007987DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "We do not have a layout of type %@", &v22, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = &stru_1016631F0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = [[GEORPFeedbackLayoutFormConfig alloc] initWithData:v5];
  v9 = sub_1007987DC();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Trying to create a form config with malformed data of type %@.  We should delete this data", &v22, 0xCu);
    }

    [RAPFileManager removeItemAtFilePath:v4];
    v8 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found a layout of type %@ from cache", &v22, 0xCu);
  }

  v11 = +[NSDate date];
  v12 = [RAPFileManager haveContentsOfFilePathExpired:v4 withSuggestedRetryDate:v11 withTimeToLive:[v8 ttl]];

  if (v12)
  {
    v13 = [RAPFileManager removeItemAtFilePath:v4];
    v14 = sub_1007987DC();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = v7;
        v16 = "Successfully deleted expired layout of type %@";
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v7;
      v16 = "Failed to delete expired layout of type %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_21;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  v19 = sub_1007987DC();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Returning layout of type %@ from cache since it has not expired", &v22, 0xCu);
  }

  v8 = v8;
  v20 = v8;
LABEL_24:

  return v20;
}

+ (void)setConfig:(id)config forLayoutType:(int64_t)type
{
  configCopy = config;
  if (type > 5)
  {
    v7 = &stru_1016631F0;
  }

  else
  {
    v7 = *(&off_101657C38 + type);
  }

  v8 = sub_1007987DC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = v7;
    v21 = 1024;
    v22 = [configCopy ttl];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving a config of type %@ with TTL %u", &v19, 0x12u);
  }

  if (configCopy)
  {
    v9 = sub_1007987DC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [self _layoutURLForType:type];
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will attempt to save config at path %@", &v19, 0xCu);
    }

    data = [configCopy data];
    v12 = +[RAPFileManager baseLayoutFilePath];
    v13 = [RAPFileManager saveData:data toDirectory:v12 filename:v7];

    v14 = sub_1007987DC();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v7;
        v16 = "Successfully saved layout of type %@";
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, &v19, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v7;
      v16 = "Failed to save layout of type %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v19) = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: config != ((void *)0)", &v19, 2u);
  }

LABEL_16:
}

+ (id)_layoutURLForType:(int64_t)type
{
  v4 = +[RAPFileManager baseLayoutFilePath];
  v5 = v4;
  if (type > 5)
  {
    v6 = &stru_1016631F0;
  }

  else
  {
    v6 = *(&off_101657C38 + type);
  }

  v7 = [v4 URLByAppendingPathComponent:v6];

  return v7;
}

@end