@interface BadgingCoordinator
- (BadgingCoordinator)init;
- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler;
@end

@implementation BadgingCoordinator

- (BadgingCoordinator)init
{
  v11.receiver = self;
  v11.super_class = BadgingCoordinator;
  v2 = [(BadgingCoordinator *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.BadgingCoordinator.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v13 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering the push token for badge pushes", buf, 0xCu);
    }

    v9 = sub_100336524();
    sub_1003367D0(v9, v2, 35);
  }

  return v2;
}

- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1002EA14C(messageCopy, @"aps");
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Ignoring: %{public}@", &v12, 0x16u);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end