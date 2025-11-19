@interface AVSharedPreferences
- (void)extendedDisplayActive:(id)a3;
- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation AVSharedPreferences

- (void)extendedDisplayActive:(id)a3
{
  v4 = a3;
  externalDisplayService = self->_externalDisplayService;
  if (!externalDisplayService)
  {
    v6 = objc_alloc_init(SBSExternalDisplayService);
    v7 = self->_externalDisplayService;
    self->_externalDisplayService = v6;

    externalDisplayService = self->_externalDisplayService;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100000E48;
  v9[3] = &unk_100004150;
  v10 = v4;
  v8 = v4;
  [(SBSExternalDisplayService *)externalDisplayService getConnectedDisplayInfoWithCompletionHandler:v9];
}

- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1000010E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setString: %{public}@ forKey:%{public}@", &v12, 0x16u);
  }

  CFPreferencesSetValue(v8, v7, @"com.apple.avkit", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v9)
  {
    v9[2](v9);
  }

  v11 = sub_1000010E8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setString complete", &v12, 2u);
  }
}

@end