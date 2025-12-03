@interface FRUserInfoUserIDProvider
- (FRUserInfoUserIDProvider)init;
- (FRUserInfoUserIDProvider)initWithUserInfo:(id)info;
- (NSString)userID;
@end

@implementation FRUserInfoUserIDProvider

- (FRUserInfoUserIDProvider)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRUserInfoUserIDProvider init]";
    v8 = 2080;
    v9 = "FRUserInfoUserIDProvider.m";
    v10 = 1024;
    v11 = 23;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRUserInfoUserIDProvider init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRUserInfoUserIDProvider)initWithUserInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072184();
  }

  v9.receiver = self;
  v9.super_class = FRUserInfoUserIDProvider;
  v6 = [(FRUserInfoUserIDProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInfo, info);
  }

  return v7;
}

- (NSString)userID
{
  userInfo = [(FRUserInfoUserIDProvider *)self userInfo];
  feldsparID = [userInfo feldsparID];

  return feldsparID;
}

@end