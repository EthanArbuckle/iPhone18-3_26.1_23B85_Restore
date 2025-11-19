@interface DiagnosticClock
- (DiagnosticClock)init;
- (void)dealloc;
@end

@implementation DiagnosticClock

- (DiagnosticClock)init
{
  v9.receiver = self;
  v9.super_class = DiagnosticClock;
  v2 = [(DiagnosticClock *)&v9 init];
  if (v2)
  {
    v2->_timeOffset = sub_1003D47A8();
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      timeOffset = v2->_timeOffset;
      *buf = 134217984;
      v11 = timeOffset;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Diagnostic clock enabled, current offset: %.0f", buf, 0xCu);
    }

    v2->_notifyToken = -1;
    v5 = dispatch_get_global_queue(21, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1003E4C84;
    handler[3] = &unk_10051FB68;
    v8 = v2;
    notify_register_dispatch("com.apple.appstored.defaultschange", &v2->_notifyToken, v5, handler);
  }

  return v2;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  v4.receiver = self;
  v4.super_class = DiagnosticClock;
  [(DiagnosticClock *)&v4 dealloc];
}

@end