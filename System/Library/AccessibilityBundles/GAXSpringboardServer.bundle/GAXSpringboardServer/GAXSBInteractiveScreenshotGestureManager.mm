@interface GAXSBInteractiveScreenshotGestureManager
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
@end

@implementation GAXSBInteractiveScreenshotGestureManager

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) != 0 || objc_msgSend(v5, "isInWorkspace"))
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Guided Access not allowing Interactive Screenshots.", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GAXSBInteractiveScreenshotGestureManager;
    v7 = [(GAXSBInteractiveScreenshotGestureManager *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  return v7;
}

@end