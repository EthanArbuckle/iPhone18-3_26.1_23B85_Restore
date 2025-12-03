@interface STKeyboardMonitor
- (STKeyboardMonitor)init;
- (void)_didHidePasscodeUI:(id)i;
- (void)_didShowPasscodeUI:(id)i;
@end

@implementation STKeyboardMonitor

- (STKeyboardMonitor)init
{
  v5.receiver = self;
  v5.super_class = STKeyboardMonitor;
  v2 = [(STKeyboardMonitor *)&v5 init];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:v2 selector:"_didShowPasscodeUI:" name:STBlockingViewDidShowPasscodeUINotification object:0];
  [v3 addObserver:v2 selector:"_didHidePasscodeUI:" name:STBlockingViewDidHidePasscodeUINotification object:0];

  return v2;
}

- (void)_didShowPasscodeUI:(id)i
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    name = [i name];
    v6 = 138543362;
    v7 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received %{public}@ notification", &v6, 0xCu);
  }

  [(STKeyboardMonitor *)self setNeedsKeyboard:1];
}

- (void)_didHidePasscodeUI:(id)i
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    name = [i name];
    v6 = 138543362;
    v7 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received %{public}@ notification", &v6, 0xCu);
  }

  [(STKeyboardMonitor *)self setNeedsKeyboard:0];
}

@end