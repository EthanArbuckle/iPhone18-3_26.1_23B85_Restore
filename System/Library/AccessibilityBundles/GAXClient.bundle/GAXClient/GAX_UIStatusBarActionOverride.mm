@interface GAX_UIStatusBarActionOverride
- (void)performWithStatusBar:(id)bar completionHandler:(id)handler;
@end

@implementation GAX_UIStatusBarActionOverride

- (void)performWithStatusBar:(id)bar completionHandler:(id)handler
{
  barCopy = bar;
  handlerCopy = handler;
  v8 = +[GAXClient sharedInstance];
  isActive = [v8 isActive];

  if (isActive)
  {
    v10 = GAXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Guided Access active. disallowing status bar actions", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAX_UIStatusBarActionOverride;
    [(GAX_UIStatusBarActionOverride *)&v11 performWithStatusBar:barCopy completionHandler:handlerCopy];
  }
}

@end