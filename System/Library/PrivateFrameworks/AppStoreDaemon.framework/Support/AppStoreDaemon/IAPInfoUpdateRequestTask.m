@interface IAPInfoUpdateRequestTask
- (void)main;
@end

@implementation IAPInfoUpdateRequestTask

- (void)main
{
  v3 = sub_1003FA4F0(XPCRequestToken, 1);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v3;
    v7 = v11;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Starting legacy request to refresh IAPs", buf, 0x16u);
  }

  v5 = sub_100005CD4();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005578;
  v8[3] = &unk_10051B230;
  v8[4] = self;
  v9 = v3;
  v6 = v3;
  sub_10034B07C(v5, v6, v8);
}

@end