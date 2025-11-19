@interface MusicUIServiceAppEnvironment
- (MusicUIServiceAppEnvironmentDelegate)delegate;
- (void)_launchTargetApp;
- (void)_launchTargetAppIfNecessary;
- (void)_switchToNowPlaying;
- (void)dealloc;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setScene:(id)a3;
@end

@implementation MusicUIServiceAppEnvironment

- (void)setScene:(id)a3
{
  v4 = a3;
  v22 = [v4 _FBSScene];
  v5 = [UIWindow alloc];
  v6 = [v22 settings];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v22 identifier];
  v16 = [v5 _initWithFrame:v15 debugName:v4 windowScene:{v8, v10, v12, v14}];

  window = self->_window;
  self->_window = v16;

  [(UIWindow *)self->_window makeKeyAndVisible];
  v18 = [v22 settings];
  v19 = [v18 proxiedApplicationBundleIdentifier];
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v19;

  v21 = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [(UIWindow *)self->_window setAccessibilityLabel:v21];
}

- (void)dealloc
{
  v3 = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MusicUIServiceAppEnvironment;
  [(MusicUIServiceAppEnvironment *)&v4 dealloc];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  [(MusicUIServiceAppEnvironment *)self setScene:v6];
  v7 = objc_alloc_init(MusicUIServiceCarDisplayBrowsableContentViewController);
  [(MusicUIServiceAppEnvironment *)self setContentViewController:v7];

  v8 = [(MusicUIServiceAppEnvironment *)self contentViewController];
  v9 = [(MusicUIServiceAppEnvironment *)self window];
  [v9 setRootViewController:v8];

  v10 = [v6 activationState];
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:v10 < 2];

  [(MusicUIServiceAppEnvironment *)self _launchTargetApp];
}

- (void)sceneDidDisconnect:(id)a3
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  v4 = [(MusicUIServiceAppEnvironment *)self delegate];
  [v4 appEnvironmentWillDisconnect:self];

  v5 = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [v5 invalidate];

  [(MusicUIServiceAppEnvironment *)self setProcessAssertion:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v6 = [[MusicUIDisplayNowPlayingStateContext alloc] initWithStateContext:@"current"];
  v4 = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [(MusicUIDisplayNowPlayingStateContext *)v6 setAssociatedBundleID:v4];

  v5 = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [v5 switchToState:v6];
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [v3 switchToState:0];
}

- (void)sceneWillEnterForeground:(id)a3
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:1];

  [(MusicUIServiceAppEnvironment *)self _launchTargetApp];
}

- (void)sceneDidEnterBackground:(id)a3
{
  [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  v4 = [(MusicUIServiceAppEnvironment *)self processAssertion];
  [v4 invalidate];

  [(MusicUIServiceAppEnvironment *)self setProcessAssertion:0];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003410;
  v4[3] = &unk_10000C3B8;
  v4[4] = self;
  [a4 enumerateObjectsUsingBlock:v4];
}

- (void)_switchToNowPlaying
{
  v5 = +[MusicUIDisplayNowPlayingStateContext stateContextForNowPlaying];
  v3 = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
  [v5 setAssociatedBundleID:v3];

  v4 = [(MusicUIServiceAppEnvironment *)self contentViewController];
  [v4 switchToState:v5];
}

- (void)_launchTargetApp
{
  if ([(MusicUIServiceAppEnvironment *)self appMustBeRunning])
  {

    [(MusicUIServiceAppEnvironment *)self _launchTargetAppIfNecessary];
  }

  else
  {
    [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:1];
    [(MusicUIServiceAppEnvironment *)self _launchTargetAppIfNecessary];

    [(MusicUIServiceAppEnvironment *)self setAppMustBeRunning:0];
  }
}

- (void)_launchTargetAppIfNecessary
{
  if ([(MusicUIServiceAppEnvironment *)self appMustBeRunning]&& ![(MusicUIServiceAppEnvironment *)self launchRequested])
  {
    v3 = [(MusicUIServiceAppEnvironment *)self appHandle];

    if (!v3)
    {
      [(MusicUIServiceAppEnvironment *)self setLaunchRequested:1];
      objc_initWeak(&location, self);
      v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v13 = FBSOpenApplicationOptionKeyActivateSuspended;
      v14 = &__kCFBooleanTrue;
      v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];

      v7 = [(MusicUIServiceAppEnvironment *)self applicationIdentifier];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100003788;
      v9[3] = &unk_10000C3E0;
      v9[4] = self;
      objc_copyWeak(&v11, &location);
      v8 = v4;
      v10 = v8;
      [v8 openApplication:v7 withOptions:v6 completion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (MusicUIServiceAppEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end