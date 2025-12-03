@interface CarSmallWidgetController
- (id)contextsForCurrentAppState;
@end

@implementation CarSmallWidgetController

- (id)contextsForCurrentAppState
{
  v3 = objc_alloc_init(CarSmallWidgetBrowsingModeController);
  v4 = [NSMutableArray arrayWithObject:v3];
  v5 = +[CarDisplayController sharedInstance];
  platformController = [v5 platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CarWidgetController *)self sceneType]<= 3)
  {
    v14 = [CarSmallWidgetRouteGeniusModeController alloc];
    v15 = +[CarRouteGeniusService sharedService];
    suggestion = [v15 suggestion];
    v13 = [(CarSmallWidgetRouteGeniusModeController *)v14 initWithSuggestion:suggestion];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v8 = currentSession;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    isCarNavigationCompatible = [v10 isCarNavigationCompatible];
    v12 = off_1015F6178;
    if (!isCarNavigationCompatible)
    {
      v12 = off_1015F6170;
    }

    v13 = objc_alloc_init(*v12);
  }

  [v4 addObject:v13];

LABEL_12:
  v17 = sub_100799D40();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = v4;
    v19 = v18;
    if (v18)
    {
      if ([v18 count])
      {
        v38 = v17;
        selfCopy = self;
        v40 = currentSession;
        v41 = v4;
        v42 = v3;
        v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v37 = v19;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v43 objects:buf count:16];
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = v22;
        v24 = *v44;
        while (1)
        {
          v25 = 0;
          do
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v43 + 1) + 8 * v25);
            if (v26)
            {
              v27 = objc_opt_class();
              v28 = NSStringFromClass(v27);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_25;
              }

              v29 = [v26 performSelector:"accessibilityIdentifier"];
              v30 = v29;
              if (v29 && ![v29 isEqualToString:v28])
              {
                v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];
              }

              else
              {

LABEL_25:
                v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
              }

              goto LABEL_28;
            }

            v31 = @"<nil>";
LABEL_28:

            [v20 addObject:v31];
            v25 = v25 + 1;
          }

          while (v23 != v25);
          v32 = [v21 countByEnumeratingWithState:&v43 objects:buf count:16];
          v23 = v32;
          if (!v32)
          {
LABEL_32:

            v33 = [v21 componentsJoinedByString:{@", "}];
            v34 = [NSString stringWithFormat:@"<%p> [%@]", v21, v33];

            v4 = v41;
            v3 = v42;
            self = selfCopy;
            currentSession = v40;
            v19 = v37;
            v17 = v38;
            goto LABEL_35;
          }
        }
      }

      v34 = [NSString stringWithFormat:@"<%p> (empty)", v19];
    }

    else
    {
      v34 = @"<nil>";
    }

LABEL_35:

    *buf = 134349314;
    selfCopy2 = self;
    v49 = 2112;
    v50 = v34;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Recreating current app state with modes: %@", buf, 0x16u);
  }

  v35 = [v4 copy];

  return v35;
}

@end