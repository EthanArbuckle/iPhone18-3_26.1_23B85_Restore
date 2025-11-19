@interface ICSCallDisplayStyleManager
+ (id)allChildViewControllersOfViewController:(id)a3;
+ (id)allSubviewsAndChildViewControllersForRootViewController:(id)a3;
+ (id)allSubviewsOfView:(id)a3;
+ (int64_t)callDisplayStyleToRequestForCurrentState;
+ (void)notifyAllRespondersForViewController:(id)a3 callDisplayStyleDidChangeFromStyle:(int64_t)a4 toStyle:(int64_t)a5;
- (CGRect)miniWindowCutoutFrame;
- (ICSCallDisplayStyleManager)init;
- (UIViewController)rootViewController;
- (void)dealloc;
- (void)setCallDisplayStyle:(int64_t)a3;
- (void)updateMiniWindowCutoutFrame:(CGRect)a3 attachedToWindowedAccessory:(BOOL)a4;
@end

@implementation ICSCallDisplayStyleManager

- (ICSCallDisplayStyleManager)init
{
  v9.receiver = self;
  v9.super_class = ICSCallDisplayStyleManager;
  v2 = [(ICSCallDisplayStyleManager *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100074488;
    handler[3] = &unk_100357740;
    objc_copyWeak(&v7, &location);
    v6 = v2;
    notify_register_dispatch("ToggleCleethorpes", &v2->_toggleCleethorpesNotificationToken, &_dispatch_main_q, handler);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel([(ICSCallDisplayStyleManager *)self toggleCleethorpesNotificationToken]);
  v3.receiver = self;
  v3.super_class = ICSCallDisplayStyleManager;
  [(ICSCallDisplayStyleManager *)&v3 dealloc];
}

- (void)setCallDisplayStyle:(int64_t)a3
{
  if (self->_callDisplayStyle != a3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call display style changed: %ld", &v8, 0xCu);
    }

    callDisplayStyle = self->_callDisplayStyle;
    self->_callDisplayStyle = a3;
    v7 = [(ICSCallDisplayStyleManager *)self rootViewController];
    [ICSCallDisplayStyleManager notifyAllRespondersForViewController:v7 callDisplayStyleDidChangeFromStyle:callDisplayStyle toStyle:a3];
  }
}

- (void)updateMiniWindowCutoutFrame:(CGRect)a3 attachedToWindowedAccessory:(BOOL)a4
{
  v4 = a4;
  [(ICSCallDisplayStyleManager *)self setMiniWindowCutoutFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(ICSCallDisplayStyleManager *)self setAttachedToWindowedAccessory:v4];
}

+ (int64_t)callDisplayStyleToRequestForCurrentState
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 incomingCall];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 incomingVideoCall];
    v4 = v6 != 0;
  }

  v7 = +[ICSPreferences sharedPreferences];
  v8 = [v7 hasBannersEnabled];

  if ((v8 & v4) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

+ (void)notifyAllRespondersForViewController:(id)a3 callDisplayStyleDidChangeFromStyle:(int64_t)a4 toStyle:(int64_t)a5
{
  v7 = [ICSCallDisplayStyleManager allSubviewsAndChildViewControllersForRootViewController:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 conformsToProtocol:&OBJC_PROTOCOL___ICSCallDisplayStyleHandler])
        {
          [v12 callDisplayStyleDidChangeFromStyle:a4 toStyle:a5];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)allSubviewsAndChildViewControllersForRootViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 view];
  v5 = [ICSCallDisplayStyleManager allSubviewsOfView:v4];

  v6 = [ICSCallDisplayStyleManager allChildViewControllersOfViewController:v3];

  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

+ (id)allSubviewsOfView:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v3 subviews];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [ICSCallDisplayStyleManager allSubviewsOfView:*(*(&v14 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)allChildViewControllersOfViewController:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:v3];

  if (v5)
  {
    [v4 addObject:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [ICSCallDisplayStyleManager allChildViewControllersOfViewController:*(*(&v14 + 1) + 8 * i)];
          [v4 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = [v4 copy];

  return v12;
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (CGRect)miniWindowCutoutFrame
{
  x = self->_miniWindowCutoutFrame.origin.x;
  y = self->_miniWindowCutoutFrame.origin.y;
  width = self->_miniWindowCutoutFrame.size.width;
  height = self->_miniWindowCutoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end