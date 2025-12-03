@interface FREditorialConfigurationProvider
- (FREditorialConfigurationProvider)init;
- (FREditorialConfigurationProvider)initWithAppConfigurationManager:(id)manager;
- (void)fetchEditorialConfiguration:(id)configuration;
- (void)processConfigurationWithJSON:(id)n completion:(id)completion;
@end

@implementation FREditorialConfigurationProvider

- (FREditorialConfigurationProvider)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FREditorialConfigurationProvider init]";
    v8 = 2080;
    v9 = "FREditorialConfigurationProvider.m";
    v10 = 1024;
    v11 = 21;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FREditorialConfigurationProvider init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FREditorialConfigurationProvider)initWithAppConfigurationManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007580C();
  }

  v9.receiver = self;
  v9.super_class = FREditorialConfigurationProvider;
  v6 = [(FREditorialConfigurationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, manager);
  }

  return v7;
}

- (void)fetchEditorialConfiguration:(id)configuration
{
  configurationCopy = configuration;
  appConfigurationManager = [(FREditorialConfigurationProvider *)self appConfigurationManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063FC0;
  v7[3] = &unk_1000C3110;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [appConfigurationManager fetchAppConfigurationIfNeededWithCompletion:v7];
}

- (void)processConfigurationWithJSON:(id)n completion:(id)completion
{
  completionCopy = completion;
  v6 = [n dataUsingEncoding:4];
  v37 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v37];
  v8 = v37;
  v9 = v8;
  if (v8)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10006457C;
    v34[3] = &unk_1000C1BD8;
    v35 = v8;
    v36 = completionCopy;
    sub_10006457C(v34);

    v10 = v35;
    goto LABEL_23;
  }

  v24 = v7;
  v25 = v6;
  v26 = completionCopy;
  v11 = [v7 objectForKey:@"items"];
  v28 = +[NSMutableArray array];
  v12 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v11;
  v13 = [v10 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *v31;
  v29 = v10;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v30 + 1) + 8 * i);
      v18 = [v17 valueForKey:@"id"];
      v19 = [v17 valueForKey:@"title"];
      v20 = [v17 valueForKey:@"subtitle"];
      v21 = [v17 valueForKey:@"subtitleColor"];
      v22 = [v17 valueForKey:@"actionUrl"];
      if (!v18 || ([v12 containsObject:v18] & 1) != 0)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        v23 = [[NSString alloc] initWithFormat:@"id value cannot be nil in feed navigation configuration json."];
        *buf = 136315906;
        v39 = "[FREditorialConfigurationProvider processConfigurationWithJSON:completion:]";
        v40 = 2080;
        v41 = "FREditorialConfigurationProvider.m";
        v42 = 1024;
        v43 = 105;
        v44 = 2114;
        v45 = v23;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        goto LABEL_15;
      }

      if ([v18 fc_isValidTagID] & 1) != 0 || (objc_msgSend(v18, "fc_isValidArticleID"))
      {
        v23 = [[FREditorialOverrideItem alloc] initWithIdentifier:v18 title:v19 subtitle:v20 subtitleColorString:v21 actionUrlString:v22];
        [v28 addObject:v23];
        [v12 addObject:v18];
LABEL_15:

        v10 = v29;
        goto LABEL_18;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v27 = [[NSString alloc] initWithFormat:@"id value must represent either an article or a tag."];
        *buf = 136315906;
        v39 = "[FREditorialConfigurationProvider processConfigurationWithJSON:completion:]";
        v40 = 2080;
        v41 = "FREditorialConfigurationProvider.m";
        v42 = 1024;
        v43 = 88;
        v44 = 2114;
        v45 = v27;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

LABEL_18:
    }

    v14 = [v10 countByEnumeratingWithState:&v30 objects:v46 count:16];
  }

  while (v14);
LABEL_20:

  completionCopy = v26;
  if (v26)
  {
    (*(v26 + 2))(v26, v28, 0);
  }

  v7 = v24;
  v6 = v25;
  v9 = 0;
LABEL_23:
}

@end