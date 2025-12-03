@interface UIViewController
- (void)sendAction:(id)action completion:(id)completion;
- (void)setHostedScenePreferredSize:(CGSize)size;
@end

@implementation UIViewController

- (void)sendAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  view = [(UIViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v11 = [windowScene conformsToProtocol:&OBJC_PROTOCOL___LACUIHostedSceneActionSending];

  if (v11)
  {
    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];

    [windowScene2 sendAction:actionCopy completion:completionCopy];
  }

  else
  {
    view3 = [(UIViewController *)self view];
    window3 = [view3 window];
    windowScene3 = [window3 windowScene];
    actionCopy = [NSString stringWithFormat:@"WindowScene %@ cannot send action %@", windowScene3, actionCopy];

    v18 = [LACError errorWithCode:LACErrorCodeInternal debugDescription:actionCopy];
    v19 = LACLogUI();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10006B044(v18, v19);
    }

    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (void)setHostedScenePreferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(UIViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];

    [windowScene2 _setPreferredContentSize:{width, height}];
    v13 = LACLogUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134218498;
      v15 = width;
      v16 = 2048;
      v17 = height;
      v18 = 2112;
      v19 = windowScene2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did set preferred content size w: %f h: %f for hosted window scene %@", &v14, 0x20u);
    }
  }
}

@end