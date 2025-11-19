@interface UIViewController
- (void)sendAction:(id)a3 completion:(id)a4;
- (void)setHostedScenePreferredSize:(CGSize)a3;
@end

@implementation UIViewController

- (void)sendAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 conformsToProtocol:&OBJC_PROTOCOL___LACUIHostedSceneActionSending];

  if (v11)
  {
    v12 = [(UIViewController *)self view];
    v13 = [v12 window];
    v20 = [v13 windowScene];

    [v20 sendAction:v7 completion:v6];
  }

  else
  {
    v14 = [(UIViewController *)self view];
    v15 = [v14 window];
    v16 = [v15 windowScene];
    v17 = [NSString stringWithFormat:@"WindowScene %@ cannot send action %@", v16, v7];

    v18 = [LACError errorWithCode:LACErrorCodeInternal debugDescription:v17];
    v19 = LACLogUI();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10006B044(v18, v19);
    }

    (*(v6 + 2))(v6, v18);
  }
}

- (void)setHostedScenePreferredSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(UIViewController *)self view];
    v11 = [v10 window];
    v12 = [v11 windowScene];

    [v12 _setPreferredContentSize:{width, height}];
    v13 = LACLogUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134218498;
      v15 = width;
      v16 = 2048;
      v17 = height;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did set preferred content size w: %f h: %f for hosted window scene %@", &v14, 0x20u);
    }
  }
}

@end