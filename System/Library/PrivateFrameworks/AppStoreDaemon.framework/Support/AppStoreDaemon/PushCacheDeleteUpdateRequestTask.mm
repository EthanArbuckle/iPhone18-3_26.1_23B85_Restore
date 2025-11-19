@interface PushCacheDeleteUpdateRequestTask
- (void)main;
@end

@implementation PushCacheDeleteUpdateRequestTask

- (void)main
{
  v3 = [KeepAlive keepAliveWithName:@"com.apple.PushCacheDeleteUpdateOperation"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v3;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Created transaction: %@", &v10, 0x16u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v8 = client;
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Purgeable update request for client: %@", &v10, 0x16u);
  }

  v9 = sub_10029869C();
  sub_100299E54(v9);
  if (self)
  {
    self->super.super._success = 1;
  }
}

@end