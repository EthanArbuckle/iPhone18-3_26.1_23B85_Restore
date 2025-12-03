@interface TVRemoteWindow
- (void)sendEvent:(id)event;
@end

@implementation TVRemoteWindow

- (void)sendEvent:(id)event
{
  eventCopy = event;
  allTouches = [eventCopy allTouches];
  anyObject = [allTouches anyObject];

  view = [anyObject view];
  [anyObject locationInView:view];
  v8 = [(TVRemoteWindow *)self hitTest:eventCopy withEvent:?];

  if ([anyObject phase] == 3)
  {
    v9 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      recursiveDescription = [v8 recursiveDescription];
      *buf = 138412546;
      v13 = eventCopy;
      v14 = 2112;
      v15 = recursiveDescription;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UIEvent: %@, hitView: %@", buf, 0x16u);
    }
  }

  v11.receiver = self;
  v11.super_class = TVRemoteWindow;
  [(TVRemoteWindow *)&v11 sendEvent:eventCopy];
}

@end