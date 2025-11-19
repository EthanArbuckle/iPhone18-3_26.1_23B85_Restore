@interface MusicStoreFlowScriptingClientController
+ (id)sharedScriptingClientController;
- (BOOL)clientInterface:(id)a3 isAllowedToOpenExternalURL:(id)a4;
- (MusicStoreFlowScriptingClientController)init;
- (id)_correspondingStoreFlowServiceViewControllerForViewController:(id)a3;
- (void)_activateStoreFlowServiceViewController:(id)a3;
- (void)_deactivateStoreFlowServiceViewController:(id)a3 andUnregister:(BOOL)a4;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)applyCloudServiceSetupConfiguration:(id)a3;
- (void)clientInterface:(id)a3 overrideCreditCardPresentationFromViewController:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)registerStoreFlowServiceViewController:(id)a3;
- (void)storeFlowServiceViewControllerDidLoad:(id)a3;
- (void)storeFlowServiceViewControllerWillAppear:(id)a3;
@end

@implementation MusicStoreFlowScriptingClientController

+ (id)sharedScriptingClientController
{
  if (qword_100011768 != -1)
  {
    sub_100004850();
  }

  v3 = qword_100011760;

  return v3;
}

- (MusicStoreFlowScriptingClientController)init
{
  v9.receiver = self;
  v9.super_class = MusicStoreFlowScriptingClientController;
  v2 = [(MusicStoreFlowScriptingClientController *)&v9 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    registeredStoreFlowServiceViewControllers = v2->_registeredStoreFlowServiceViewControllers;
    v2->_registeredStoreFlowServiceViewControllers = v3;

    v5 = +[NSPointerArray weakObjectsPointerArray];
    activeStoreFlowServiceViewControllersStack = v2->_activeStoreFlowServiceViewControllersStack;
    v2->_activeStoreFlowServiceViewControllersStack = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v7 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4.receiver = self;
  v4.super_class = MusicStoreFlowScriptingClientController;
  [(MusicStoreFlowScriptingClientController *)&v4 dealloc];
}

- (void)applyCloudServiceSetupConfiguration:(id)a3
{
  v4 = a3;
  v7 = [(MusicStoreFlowScriptingClientController *)self clientInterface];
  v5 = [v4 applicationIdentifier];
  [v7 setApplicationIdentifier:v5];

  v6 = [v4 applicationVersion];

  [v7 setApplicationVersion:v6];
}

- (void)registerStoreFlowServiceViewController:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_registeredStoreFlowServiceViewControllers containsObject:?])
  {
    [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers addObject:v4];
  }
}

- (void)storeFlowServiceViewControllerDidLoad:(id)a3
{
  v5 = a3;
  v4 = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  if (!v4)
  {
    [(MusicStoreFlowScriptingClientController *)self _activateStoreFlowServiceViewController:v5];
  }
}

- (void)storeFlowServiceViewControllerWillAppear:(id)a3
{
  v6 = a3;
  v4 = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  v5 = v6;
  if (v4 != v6)
  {
    [(MusicStoreFlowScriptingClientController *)self _activateStoreFlowServiceViewController:v6];
    v5 = v6;
  }
}

- (BOOL)clientInterface:(id)a3 isAllowedToOpenExternalURL:(id)a4
{
  v4 = a4;
  if ([v4 isSafeExternalURL])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 scheme];
    v7 = [v6 lowercaseString];
    v5 = [v7 containsString:@"sonos"];
  }

  return v5;
}

- (void)clientInterface:(id)a3 overrideCreditCardPresentationFromViewController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(MusicStoreFlowScriptingClientController *)self _correspondingStoreFlowServiceViewControllerForViewController:a4];
  [v8 storeFlowScriptingClientController:self overrideCreditCardPresentationWithCompletion:v7];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  self->_isApplicationInBackground = 1;
  if ([(MusicStoreFlowScriptingClientController *)self isActive])
  {

    [(MusicStoreFlowScriptingClientController *)self resignActive];
  }
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)a3
{
  self->_isApplicationInBackground = 0;
  if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0)
  {
    v4 = [(MusicStoreFlowScriptingClientController *)self rootViewController];

    if (v4)
    {

      [(MusicStoreFlowScriptingClientController *)self becomeActive];
    }
  }
}

- (void)_activateStoreFlowServiceViewController:(id)a3
{
  v4 = a3;
  [(MusicStoreFlowScriptingClientController *)self setRootViewController:?];
  if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0 && !self->_isApplicationInBackground)
  {
    [(MusicStoreFlowScriptingClientController *)self becomeActive];
  }

  [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack addPointer:v4];
}

- (id)_correspondingStoreFlowServiceViewControllerForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [v6 parentViewController];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v9 = v6;
    v8 = v9;
  }

  else
  {
LABEL_5:
    v8 = [(MusicStoreFlowScriptingClientController *)self rootViewController];
    v9 = 0;
  }

  return v8;
}

- (void)_deactivateStoreFlowServiceViewController:(id)a3 andUnregister:(BOOL)a4
{
  v15 = a3;
  v6 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack pointerAtIndex:v7];
      if (v8 == v15)
      {
        [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack removePointerAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }

  if (a4 && [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers containsObject:v15])
  {
    [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers removeObject:v15];
  }

  v9 = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  v10 = v15;
  if (v9 == v15)
  {
    v11 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack count];
    if (v11)
    {
      v12 = v11 - 1;
      while (1)
      {
        v13 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack pointerAtIndex:v12];
        if (v13)
        {
          break;
        }

        if (--v12 == -1)
        {
          goto LABEL_14;
        }
      }

      v14 = v13;
      [(MusicStoreFlowScriptingClientController *)self setRootViewController:v13];
      if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0 && !self->_isApplicationInBackground)
      {
        [(MusicStoreFlowScriptingClientController *)self becomeActive];
      }
    }

    else
    {
LABEL_14:
      [(MusicStoreFlowScriptingClientController *)self setRootViewController:0];
      v14 = 0;
      if ([(MusicStoreFlowScriptingClientController *)self isActive])
      {
        [(MusicStoreFlowScriptingClientController *)self resignActive];
        v14 = 0;
      }
    }

    v10 = v15;
  }
}

@end