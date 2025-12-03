@interface CarMapWidgetController
- (id)contextsForCurrentAppState;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation CarMapWidgetController

- (void)sceneDidEnterBackground:(id)background
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetController;
  [(CarWidgetController *)&v7 sceneDidEnterBackground:background];
  chromeViewController = [(CarWidgetController *)self chromeViewController];
  v5 = [chromeViewController acquireChromeDeactivationTokenForReason:@"CarPlay Dashboard backgrounded"];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = v5;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;
  foregroundCopy = foreground;

  v6.receiver = self;
  v6.super_class = CarMapWidgetController;
  [(CarWidgetController *)&v6 sceneWillEnterForeground:foregroundCopy];
}

- (id)contextsForCurrentAppState
{
  v3 = objc_alloc_init(CarMapWidgetMapBrowsingModeController);
  v4 = [NSMutableArray arrayWithObject:v3];
  v5 = +[CarDisplayController sharedInstance];
  platformController = [v5 platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CarWidgetController *)self sceneType]<= 3)
  {
    v17 = [CarMapWidgetRouteGeniusModeController alloc];
    chromeViewController2 = +[CarRouteGeniusService sharedService];
    suggestion = [chromeViewController2 suggestion];
    v20 = [(CarBasicRouteGeniusModeController *)v17 initWithSuggestion:suggestion];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = currentSession;
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
    v10 = v9;

    isCarNavigationCompatible = [v10 isCarNavigationCompatible];
    if (isCarNavigationCompatible)
    {
      if ([(CarWidgetController *)self sceneType]== 6)
      {
        chromeViewController = [(CarWidgetController *)self chromeViewController];
        view = [chromeViewController view];
        window = [view window];
        _car_hybridInstrumentClusterLayout = [window _car_hybridInstrumentClusterLayout];

        if (!_car_hybridInstrumentClusterLayout)
        {
          v20 = objc_alloc_init(CarSmallWidgetNavigationModeController);
          goto LABEL_15;
        }

        v16 = CarHybridInstrumentClusterNavigationModeController;
      }

      else
      {
        v16 = CarMapWidgetNavigationModeController;
      }

      v21 = [v16 alloc];
      chromeViewController2 = [(CarWidgetController *)self chromeViewController];
      suggestion = [chromeViewController2 view];
      window2 = [suggestion window];
      v20 = [v21 initWithPresentationType:{objc_msgSend(window2, "_car_hybridInstrumentClusterPresentationType")}];

LABEL_14:
LABEL_15:
      [v4 addObject:v20];
    }
  }

  v23 = sub_100799BCC();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = v4;
    v25 = v24;
    if (v24)
    {
      if ([v24 count])
      {
        v44 = v23;
        selfCopy = self;
        v46 = currentSession;
        v47 = v4;
        v48 = v3;
        v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v25 count]);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v43 = v25;
        v27 = v25;
        v28 = [v27 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (!v28)
        {
          goto LABEL_36;
        }

        v29 = v28;
        v30 = *v50;
        while (1)
        {
          v31 = 0;
          do
          {
            if (*v50 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v49 + 1) + 8 * v31);
            if (v32)
            {
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_29;
              }

              v35 = [v32 performSelector:"accessibilityIdentifier"];
              v36 = v35;
              if (v35 && ![v35 isEqualToString:v34])
              {
                v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];
              }

              else
              {

LABEL_29:
                v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
              }

              goto LABEL_32;
            }

            v37 = @"<nil>";
LABEL_32:

            [v26 addObject:v37];
            v31 = v31 + 1;
          }

          while (v29 != v31);
          v38 = [v27 countByEnumeratingWithState:&v49 objects:buf count:16];
          v29 = v38;
          if (!v38)
          {
LABEL_36:

            v39 = [v27 componentsJoinedByString:{@", "}];
            v40 = [NSString stringWithFormat:@"<%p> [%@]", v27, v39];

            v4 = v47;
            v3 = v48;
            self = selfCopy;
            currentSession = v46;
            v25 = v43;
            v23 = v44;
            goto LABEL_39;
          }
        }
      }

      v40 = [NSString stringWithFormat:@"<%p> (empty)", v25];
    }

    else
    {
      v40 = @"<nil>";
    }

LABEL_39:

    *buf = 134349314;
    selfCopy2 = self;
    v55 = 2112;
    v56 = v40;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Recreating current app state with modes: %@", buf, 0x16u);
  }

  v41 = [v4 copy];

  return v41;
}

@end