@interface ImportJobsForDemotedAppsTask
- (void)main;
@end

@implementation ImportJobsForDemotedAppsTask

- (void)main
{
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    bundleIDs = self->_bundleIDs;
    v7 = v5;
    v8 = [(NSArray *)bundleIDs componentsJoinedByString:@", "];
    *buf = 138543874;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v3;
    *&buf[22] = 2114;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Checking for demoted placeholders for bundleIDs: [%{public}@]", buf, 0x20u);
  }

  +[NSMutableArray array];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10027F8F4;
  v21 = &unk_10051F978;
  v9 = v22 = self;
  v23 = v9;
  v10 = &v18;
  if (self)
  {
    v11 = [LSDatabaseContext sharedDatabaseContext:v18];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10027FCC4;
    v25 = &unk_10051F9C8;
    selfCopy = self;
    v27 = v10;
    [v11 accessUsingBlock:buf];
  }

  if ([v9 count])
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Hydrating apps: [%{public}@]", buf, 0xCu);
    }

    v14 = sub_1002856D4();
    sub_100287B80(v14, v9);

    if (self)
    {
      self->super._success = 1;
    }
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v3;
    v17 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Check for demoted placeholders complete", buf, 0x16u);
  }
}

@end