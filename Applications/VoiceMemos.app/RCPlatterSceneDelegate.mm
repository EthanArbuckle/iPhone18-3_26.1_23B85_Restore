@interface RCPlatterSceneDelegate
- (BOOL)isInAndromeda;
- (id)_mainViewController;
- (id)_recorderAppDelegate;
- (id)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setBackgroundTintColorForScene:(id)a3;
- (void)setResolvedMetricsForScene:(id)a3;
@end

@implementation RCPlatterSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = objc_alloc_init(RCPlatterViewControllerCoordinator);
    platterViewControllerCoordinator = self->_platterViewControllerCoordinator;
    self->_platterViewControllerCoordinator = v8;

    v10 = +[VMAudioService sharedInstance];
    audioService = self->_audioService;
    self->_audioService = v10;

    v12 = [(VMAudioService *)self->_audioService recordingController];

    if (!v12)
    {
      v15 = OSLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1001B9020(v15);
      }

      goto LABEL_11;
    }

    v13 = [v7 SBUI_isHostedBySystemAperture];
    v14 = v13;
    if (self->_platterViewController)
    {
      if (v13)
      {
LABEL_5:
        [v7 setSystemApertureElementViewControllerProvider:self->_platterViewController];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v16 = [(RCPlatterSceneDelegate *)self _mainViewController];
      v17 = [v16 platterViewControllerForPresentationStyle:v14 ^ 1];
      platterViewController = self->_platterViewController;
      self->_platterViewController = v17;

      [(RCPlatterViewController *)self->_platterViewController setDelegate:self->_platterViewControllerCoordinator];
      if (v14)
      {
        goto LABEL_5;
      }
    }

    [(RCPlatterSceneDelegate *)self setResolvedMetricsForScene:v7];
    [(RCPlatterSceneDelegate *)self setBackgroundTintColorForScene:v7];
    v19 = [[UIWindow alloc] initWithWindowScene:v7];
    window = self->_window;
    self->_window = v19;

    [(UIWindow *)self->_window setRootViewController:self->_platterViewController];
    [(UIWindow *)self->_window makeKeyAndVisible];
    goto LABEL_11;
  }

LABEL_12:
}

- (id)window
{
  if ([(RCPlatterViewController *)self->_platterViewController presentationStyle])
  {
    v3 = self->_window;
  }

  else
  {
    v4 = [(RCPlatterViewController *)self->_platterViewController viewIfLoaded];
    v3 = [v4 window];
  }

  return v3;
}

- (BOOL)isInAndromeda
{
  v2 = [(RCPlatterSceneDelegate *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 traitCollection];
  v5 = [v4 isInAndromeda];

  return v5;
}

- (id)_recorderAppDelegate
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  return v3;
}

- (id)_mainViewController
{
  v2 = [(RCPlatterSceneDelegate *)self _recorderAppDelegate];
  v3 = [v2 defaultSceneDelegate];
  v4 = [v3 mainViewController];

  return v4;
}

- (void)setResolvedMetricsForScene:(id)a3
{
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    v4 = objc_opt_self();
    v5 = a3;
    v7 = [v4 sharedStyleProvider];
    [v7 bannerSize];
    [v7 bannerCornerRadius];
    v6 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
    ActivitySceneMetrics.init(size:cornerRadius:)();
    dispatch thunk of ActivityScene.resolvedMetrics.setter();
  }
}

- (void)setBackgroundTintColorForScene:(id)a3
{
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    v4 = objc_opt_self();
    v5 = a3;
    v7 = [v4 sharedStyleProvider];
    v6 = [v7 bannerBackgroundColor];
    dispatch thunk of ActivityScene.backgroundTintColor.setter();
  }
}

@end