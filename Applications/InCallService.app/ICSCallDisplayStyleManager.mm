@interface ICSCallDisplayStyleManager
+ (id)allChildViewControllersOfViewController:(id)controller;
+ (id)allSubviewsAndChildViewControllersForRootViewController:(id)controller;
+ (id)allSubviewsOfView:(id)view;
+ (int64_t)callDisplayStyleToRequestForCurrentState;
+ (void)notifyAllRespondersForViewController:(id)controller callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (CGRect)miniWindowCutoutFrame;
- (ICSCallDisplayStyleManager)init;
- (UIViewController)rootViewController;
- (void)dealloc;
- (void)setCallDisplayStyle:(int64_t)style;
- (void)updateMiniWindowCutoutFrame:(CGRect)frame attachedToWindowedAccessory:(BOOL)accessory;
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

- (void)setCallDisplayStyle:(int64_t)style
{
  if (self->_callDisplayStyle != style)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      styleCopy = style;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call display style changed: %ld", &v8, 0xCu);
    }

    callDisplayStyle = self->_callDisplayStyle;
    self->_callDisplayStyle = style;
    rootViewController = [(ICSCallDisplayStyleManager *)self rootViewController];
    [ICSCallDisplayStyleManager notifyAllRespondersForViewController:rootViewController callDisplayStyleDidChangeFromStyle:callDisplayStyle toStyle:style];
  }
}

- (void)updateMiniWindowCutoutFrame:(CGRect)frame attachedToWindowedAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  [(ICSCallDisplayStyleManager *)self setMiniWindowCutoutFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  [(ICSCallDisplayStyleManager *)self setAttachedToWindowedAccessory:accessoryCopy];
}

+ (int64_t)callDisplayStyleToRequestForCurrentState
{
  v2 = +[TUCallCenter sharedInstance];
  incomingCall = [v2 incomingCall];
  if (incomingCall)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v5 incomingVideoCall];
    v4 = incomingVideoCall != 0;
  }

  v7 = +[ICSPreferences sharedPreferences];
  hasBannersEnabled = [v7 hasBannersEnabled];

  if ((hasBannersEnabled & v4) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

+ (void)notifyAllRespondersForViewController:(id)controller callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  v7 = [ICSCallDisplayStyleManager allSubviewsAndChildViewControllersForRootViewController:controller];
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
          [v12 callDisplayStyleDidChangeFromStyle:style toStyle:toStyle];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)allSubviewsAndChildViewControllersForRootViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  v5 = [ICSCallDisplayStyleManager allSubviewsOfView:view];

  v6 = [ICSCallDisplayStyleManager allChildViewControllersOfViewController:controllerCopy];

  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

+ (id)allSubviewsOfView:(id)view
{
  viewCopy = view;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (viewCopy)
  {
    [v4 addObject:viewCopy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [ICSCallDisplayStyleManager allSubviewsOfView:*(*(&v14 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v11];
        }

        v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)allChildViewControllersOfViewController:(id)controller
{
  controllerCopy = controller;
  v4 = +[NSMutableArray array];
  v5 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:controllerCopy];

  if (v5)
  {
    [v4 addObject:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    childViewControllers = [v5 childViewControllers];
    v7 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v11 = [ICSCallDisplayStyleManager allChildViewControllersOfViewController:*(*(&v14 + 1) + 8 * i)];
          [v4 addObjectsFromArray:v11];
        }

        v8 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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