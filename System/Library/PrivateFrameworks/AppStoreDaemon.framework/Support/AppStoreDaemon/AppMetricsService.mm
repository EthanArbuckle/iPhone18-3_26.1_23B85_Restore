@interface AppMetricsService
- (AppMetricsService)init;
- (void)getMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler;
- (void)postMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler;
- (void)recordMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler;
- (void)resetMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler;
@end

@implementation AppMetricsService

- (AppMetricsService)init
{
  v7.receiver = self;
  v7.super_class = AppMetricsService;
  v2 = [(AppMetricsService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppMetricsService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)getMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1002338F0(self);
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] getMetricsEventsForType for client: %{public}@", buf, 0x16u);
  }

  v10 = sub_1002B5560();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100274A8C;
  v14[3] = &unk_10051F550;
  v16 = v7;
  v17 = handlerCopy;
  v15 = v8;
  v11 = v7;
  v12 = v8;
  v13 = handlerCopy;
  sub_1002B5A20(v10, type, 7, v14);
}

- (void)postMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1002338F0(self);
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] postMetricsEventsForType for client: %{public}@", buf, 0x16u);
  }

  v10 = sub_1002B5560();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100274D04;
  v12[3] = &unk_10051D1B0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  sub_1002B7090(v10, type, 7, v12);
}

- (void)recordMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1002338F0(self);
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] recordMetricsEventsForType for client: %{public}@", buf, 0x16u);
  }

  v10 = sub_1002B5560();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100274E9C;
  v12[3] = &unk_10051D1B0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  sub_1002B844C(v10, type, 7, v12);
}

- (void)resetMetricsEventsForType:(int64_t)type withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1002338F0(self);
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] resetMetricsEventsForType for client: %{public}@", buf, 0x16u);
  }

  v10 = sub_1002B5560();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100275034;
  v12[3] = &unk_10051D1B0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  sub_1002B860C(v10, type, 7, v12);
}

@end