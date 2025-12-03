@interface CarDisplayWindow
- (CarDisplayWindow)initWithFrame:(CGRect)frame;
- (void)becomeKeyWindow;
- (void)notificationLayoutGuideDidChange;
- (void)registerEventTap:(id)tap;
- (void)resignKeyWindow;
- (void)sendEvent:(id)event;
- (void)setHidden:(BOOL)hidden;
- (void)setRootViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarDisplayWindow

- (void)notificationLayoutGuideDidChange
{
  rootViewController = [(CarDisplayWindow *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    notificationLayoutGuide = [(CarDisplayWindow *)self notificationLayoutGuide];
    rootViewController2 = [(CarDisplayWindow *)self rootViewController];
    [rootViewController2 setNotificationLayoutGuide:notificationLayoutGuide];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    traitCollection = [(CarDisplayWindow *)self traitCollection];
    *buf = 138412546;
    v9 = changeCopy;
    v10 = 2112;
    v11 = traitCollection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Car] Changing trait collection from %@ to %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CarDisplayWindow;
  [(CarDisplayWindow *)&v7 traitCollectionDidChange:changeCopy];
  dispatch_async(&_dispatch_main_q, &stru_10165FDA0);
}

- (void)resignKeyWindow
{
  v10.receiver = self;
  v10.super_class = CarDisplayWindow;
  [(CarDisplayWindow *)&v10 resignKeyWindow];
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarDisplayWindow *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] resignKeyWindow", buf, 0xCu);
  }
}

- (void)becomeKeyWindow
{
  v10.receiver = self;
  v10.super_class = CarDisplayWindow;
  [(CarDisplayWindow *)&v10 becomeKeyWindow];
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarDisplayWindow *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] becomeKeyWindow", buf, 0xCu);
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v12.receiver = self;
  v12.super_class = CarDisplayWindow;
  [(CarDisplayWindow *)&v12 setHidden:?];
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarDisplayWindow *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v14 = selfCopy;
    v15 = 1024;
    v16 = hiddenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] setHidden:%d", buf, 0x12u);
  }
}

- (void)registerEventTap:(id)tap
{
  tapCopy = tap;
  eventTaps = self->_eventTaps;
  v8 = tapCopy;
  if (!eventTaps)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_eventTaps;
    self->_eventTaps = v6;

    tapCopy = v8;
    eventTaps = self->_eventTaps;
  }

  [(NSHashTable *)eventTaps addObject:tapCopy];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v5 = +[CarDisplayController sharedInstance];
  v6 = [v5 _shouldSendEvent:eventCopy toCarDisplayWindow:self];

  if ((v6 & 1) == 0)
  {
    v48 = sub_100006E1C();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
LABEL_60:

      goto LABEL_61;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_59;
    }

    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    if (objc_opt_respondsToSelector())
    {
      v52 = eventCopy;
      v53 = [(CarDisplayWindow *)selfCopy performSelector:"accessibilityIdentifier"];
      v54 = v53;
      if (v53 && ![v53 isEqualToString:v51])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v51, selfCopy, v54];

        eventCopy = v52;
        goto LABEL_57;
      }

      eventCopy = v52;
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v51, selfCopy];
LABEL_57:

LABEL_59:
    *buf = 138543618;
    v70 = selfCopy;
    v71 = 2112;
    v72 = eventCopy;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "[%{public}@] Not handling UIEvent because CarDisplayController rejected it: %@", buf, 0x16u);

    goto LABEL_60;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy2 = self;
  v7 = self->_eventTaps;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v66;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v65 + 1) + 8 * i) sendEvent:eventCopy];
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v9);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v56 = eventCopy;
  allTouches = [(__CFString *)eventCopy allTouches];
  v13 = [allTouches countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v62;
    v57 = *v62;
    v58 = allTouches;
    do
    {
      v16 = 0;
      do
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(allTouches);
        }

        v17 = *(*(&v61 + 1) + 8 * v16);
        if ([v17 phase] == 3)
        {
          v18 = sub_100006E1C();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

          v20 = sub_100006E1C();
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v22 = selfCopy2;
              if (selfCopy2)
              {
                v23 = objc_opt_class();
                v24 = NSStringFromClass(v23);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_22;
                }

                v25 = [(CarDisplayWindow *)v22 performSelector:"accessibilityIdentifier"];
                v26 = v25;
                if (v25 && ![v25 isEqualToString:v24])
                {
                  v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];
                }

                else
                {

LABEL_22:
                  v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
                }
              }

              else
              {
                v27 = @"<nil>";
              }

              v34 = v27;
              view = [v17 view];
              accessibilityIdentifier = [view accessibilityIdentifier];
              v37 = accessibilityIdentifier;
              if (accessibilityIdentifier)
              {
                v38 = accessibilityIdentifier;
              }

              else
              {
                v38 = &stru_1016631F0;
              }

              view2 = [v17 view];

              recursiveDescription = [view2 recursiveDescription];
              *buf = 138543874;
              v70 = v27;
              v71 = 2112;
              v72 = v38;
              v73 = 2112;
              v74 = recursiveDescription;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[%{public}@] Touch ended with view %@:\n%@", buf, 0x20u);

LABEL_42:
              v15 = v57;
              allTouches = v58;
            }

LABEL_43:

            goto LABEL_44;
          }

          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_43;
          }

          v28 = selfCopy2;
          if (selfCopy2)
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_30;
            }

            v31 = [(CarDisplayWindow *)v28 performSelector:"accessibilityIdentifier"];
            v32 = v31;
            if (v31 && ![v31 isEqualToString:v30])
            {
              v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];
            }

            else
            {

LABEL_30:
              v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
            }
          }

          else
          {
            v33 = @"<nil>";
          }

          v41 = v33;
          view3 = [v17 view];
          accessibilityIdentifier2 = [view3 accessibilityIdentifier];
          v44 = accessibilityIdentifier2;
          if (accessibilityIdentifier2)
          {
            v45 = accessibilityIdentifier2;
          }

          else
          {
            v45 = &stru_1016631F0;
          }

          view4 = [v17 view];

          *buf = 138543874;
          v70 = v33;
          v71 = 2112;
          v72 = v45;
          v73 = 2112;
          v74 = view4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] Touch ended with view %@:\n%@", buf, 0x20u);

          goto LABEL_42;
        }

LABEL_44:
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v47 = [allTouches countByEnumeratingWithState:&v61 objects:v75 count:16];
      v14 = v47;
    }

    while (v47);
  }

  v60.receiver = selfCopy2;
  v60.super_class = CarDisplayWindow;
  eventCopy = v56;
  [(CarDisplayWindow *)&v60 sendEvent:v56];
LABEL_61:
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  rootViewController = [(CarDisplayWindow *)self rootViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    rootViewController = [(CarDisplayWindow *)self rootViewController];
    [rootViewController setNotificationLayoutGuide:0];
LABEL_4:
  }

  v7.receiver = self;
  v7.super_class = CarDisplayWindow;
  [(CarDisplayWindow *)&v7 setRootViewController:controllerCopy];
}

- (CarDisplayWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarDisplayWindow;
  v3 = [(CarDisplayWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor _externalSystemSuperDarkGrayColor];
    [(CarDisplayWindow *)v3 setBackgroundColor:v4];

    [(CarDisplayWindow *)v3 _setFocusableContentMargins:0.0, -1.0, 0.0, -1.0];
  }

  return v3;
}

@end