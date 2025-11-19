@interface TVRemoteWindow
- (void)sendEvent:(id)a3;
@end

@implementation TVRemoteWindow

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 allTouches];
  v6 = [v5 anyObject];

  v7 = [v6 view];
  [v6 locationInView:v7];
  v8 = [(TVRemoteWindow *)self hitTest:v4 withEvent:?];

  if ([v6 phase] == 3)
  {
    v9 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 recursiveDescription];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UIEvent: %@, hitView: %@", buf, 0x16u);
    }
  }

  v11.receiver = self;
  v11.super_class = TVRemoteWindow;
  [(TVRemoteWindow *)&v11 sendEvent:v4];
}

@end