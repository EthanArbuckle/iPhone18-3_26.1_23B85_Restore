@interface AVSharedPreferences
- (void)extendedDisplayActive:(id)active;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation AVSharedPreferences

- (void)extendedDisplayActive:(id)active
{
  activeCopy = active;
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
  v10 = activeCopy;
  v8 = activeCopy;
  [(SBSExternalDisplayService *)externalDisplayService getConnectedDisplayInfoWithCompletionHandler:v9];
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  completionCopy = completion;
  v10 = sub_1000010E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = stringCopy;
    v14 = 2114;
    v15 = keyCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setString: %{public}@ forKey:%{public}@", &v12, 0x16u);
  }

  CFPreferencesSetValue(keyCopy, stringCopy, @"com.apple.avkit", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v11 = sub_1000010E8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setString complete", &v12, 2u);
  }
}

@end