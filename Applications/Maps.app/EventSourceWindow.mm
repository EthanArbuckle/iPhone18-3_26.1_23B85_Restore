@interface EventSourceWindow
+ (BOOL)_supportsCallstackSymbolLog;
- (EventSourceWindow)initWithContentRect:(CGRect)rect;
- (EventSourceWindow)initWithWindowScene:(id)scene;
- (void)_commonUpdate;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillHide:(id)hide;
- (void)_updateAnalyticsState;
- (void)becomeKeyWindow;
- (void)registerEventTap:(id)tap;
- (void)resignKeyWindow;
- (void)restoreStashedOverrideUserInterfaceStyle;
- (void)sendEvent:(id)event;
- (void)setHidden:(BOOL)hidden;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)stashCurrentOverrideUserInterfaceStyle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EventSourceWindow

- (void)_commonUpdate
{
  if (sub_10000FA08(self) != 5)
  {
    theme = [(EventSourceWindow *)self theme];
    keyColor = [theme keyColor];
    [(EventSourceWindow *)self setTintColor:keyColor];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(EventSourceWindow *)self _updateAnalyticsState];
}

- (void)_updateAnalyticsState
{
  traitCollection = [(EventSourceWindow *)self traitCollection];
  v2 = [traitCollection userInterfaceStyle] == 2;
  v3 = +[GEOAPSharedStateData sharedData];
  [v3 setDeviceInDarkMode:v2];
}

- (void)becomeKeyWindow
{
  v10.receiver = self;
  v10.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v10 becomeKeyWindow];
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
      v7 = [(EventSourceWindow *)selfCopy performSelector:"accessibilityIdentifier"];
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

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if (self->_hasEventTaps)
  {
    if ([(NSHashTable *)self->_eventTaps count])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v5 = self->_eventTaps;
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v56;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v56 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v55 + 1) + 8 * i) sendEvent:eventCopy];
          }

          v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v7);
      }
    }

    else
    {
      self->_hasEventTaps = 0;
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = eventCopy;
  allTouches = [eventCopy allTouches];
  v11 = [allTouches countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    selfCopy = self;
    v48 = *v52;
    v49 = allTouches;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(allTouches);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        if ([v15 phase] == 3)
        {
          v16 = sub_10000B11C();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

          v18 = sub_10000B11C();
          v19 = v18;
          if (v17)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              selfCopy2 = self;
              if (self)
              {
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_25;
                }

                v23 = [(EventSourceWindow *)selfCopy2 performSelector:"accessibilityIdentifier"];
                v24 = v23;
                if (v23 && ![v23 isEqualToString:v22])
                {
                  selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy2, v24];
                }

                else
                {

LABEL_25:
                  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy2];
                }
              }

              else
              {
                selfCopy2 = @"<nil>";
              }

              v32 = selfCopy2;
              view = [v15 view];
              accessibilityIdentifier = [view accessibilityIdentifier];
              v35 = accessibilityIdentifier;
              if (accessibilityIdentifier)
              {
                v36 = accessibilityIdentifier;
              }

              else
              {
                v36 = &stru_1016631F0;
              }

              view2 = [v15 view];

              recursiveDescription = [view2 recursiveDescription];
              *buf = 138543874;
              v60 = selfCopy2;
              v61 = 2112;
              v62 = v36;
              v63 = 2112;
              v64 = recursiveDescription;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[%{public}@] Touch ended with view %@:\n%@", buf, 0x20u);

              self = selfCopy;
LABEL_45:
              v13 = v48;
              allTouches = v49;
            }

LABEL_46:

            goto LABEL_47;
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          selfCopy3 = self;
          if (self)
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_33;
            }

            v29 = [(EventSourceWindow *)selfCopy3 performSelector:"accessibilityIdentifier"];
            v30 = v29;
            if (v29 && ![v29 isEqualToString:v28])
            {
              selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy3, v30];
            }

            else
            {

LABEL_33:
              selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy3];
            }
          }

          else
          {
            selfCopy3 = @"<nil>";
          }

          v39 = selfCopy3;
          view3 = [v15 view];
          accessibilityIdentifier2 = [view3 accessibilityIdentifier];
          v42 = accessibilityIdentifier2;
          if (accessibilityIdentifier2)
          {
            v43 = accessibilityIdentifier2;
          }

          else
          {
            v43 = &stru_1016631F0;
          }

          view4 = [v15 view];

          *buf = 138543874;
          v60 = selfCopy3;
          v61 = 2112;
          v62 = v43;
          v63 = 2112;
          v64 = view4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}@] Touch ended with view %@:\n%@", buf, 0x20u);

          goto LABEL_45;
        }

LABEL_47:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v45 = [allTouches countByEnumeratingWithState:&v51 objects:v65 count:16];
      v12 = v45;
    }

    while (v45);
  }

  v50.receiver = self;
  v50.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v50 sendEvent:v46];
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
  self->_hasEventTaps = 1;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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
      v9 = [(EventSourceWindow *)selfCopy performSelector:"accessibilityIdentifier"];
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
    traitCollection = [(EventSourceWindow *)selfCopy traitCollection];
    *buf = 138543874;
    v19 = selfCopy;
    v20 = 2112;
    v21 = changeCopy;
    v22 = 2112;
    v23 = traitCollection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] [Phone] Changing trait collection from %@ to %@", buf, 0x20u);
  }

  v17.receiver = self;
  v17.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v17 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(EventSourceWindow *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(EventSourceWindow *)self _commonUpdate];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"MapsWindowUserInterfaceStyleDidChangeNotification" object:0];
  }
}

- (void)resignKeyWindow
{
  v10.receiver = self;
  v10.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v10 resignKeyWindow];
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
      v7 = [(EventSourceWindow *)selfCopy performSelector:"accessibilityIdentifier"];
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

- (void)restoreStashedOverrideUserInterfaceStyle
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    stashedOverrideUserInterfaceStyle = self->_stashedOverrideUserInterfaceStyle;
    v5 = 134217984;
    v6 = stashedOverrideUserInterfaceStyle;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Restoring stashed override user interface style: %ld", &v5, 0xCu);
  }

  [(EventSourceWindow *)self setOverrideUserInterfaceStyle:self->_stashedOverrideUserInterfaceStyle];
  self->_stashedOverrideUserInterfaceStyle = 0;
}

- (void)stashCurrentOverrideUserInterfaceStyle
{
  self->_stashedOverrideUserInterfaceStyle = [(EventSourceWindow *)self overrideUserInterfaceStyle];
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    stashedOverrideUserInterfaceStyle = self->_stashedOverrideUserInterfaceStyle;
    v5 = 134217984;
    v6 = stashedOverrideUserInterfaceStyle;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stashing current override user interface style: %ld", &v5, 0xCu);
  }
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v8 = "[EventSourceWindow setOverrideUserInterfaceStyle:]";
    v9 = 2050;
    styleCopy = style;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}ld", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v6 setOverrideUserInterfaceStyle:style];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v20.receiver = self;
  v20.super_class = EventSourceWindow;
  [(EventSourceWindow *)&v20 setHidden:?];
  v5 = sub_10000B11C();
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
      v9 = [(EventSourceWindow *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v22 = selfCopy;
    v23 = 1024;
    LODWORD(v24) = hiddenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Updating hidden: %d", buf, 0x12u);
  }

  if (hiddenCopy && [objc_opt_class() _supportsCallstackSymbolLog])
  {
    v12 = sub_10000B11C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_24:

      return;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_23;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(EventSourceWindow *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_20:

LABEL_23:
    v19 = +[NSThread callStackSymbols];
    *buf = 138543618;
    v22 = selfCopy2;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] %@", buf, 0x16u);

    goto LABEL_24;
  }
}

- (void)_keyboardWillHide:(id)hide
{
  size = CGRectZero.size;
  self->_keyboardFrame.origin = CGRectZero.origin;
  self->_keyboardFrame.size = size;
}

- (void)_keyboardDidShow:(id)show
{
  p_keyboardFrame = &self->_keyboardFrame;
  userInfo = [show userInfo];
  v4 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  p_keyboardFrame->origin.x = v5;
  p_keyboardFrame->origin.y = v6;
  p_keyboardFrame->size.width = v7;
  p_keyboardFrame->size.height = v8;
}

- (EventSourceWindow)initWithContentRect:(CGRect)rect
{
  v6.receiver = self;
  v6.super_class = EventSourceWindow;
  v3 = [(EventSourceWindow *)&v6 initWithContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4 = v3;
  if (v3)
  {
    [(EventSourceWindow *)v3 _commonUpdate];
  }

  return v4;
}

- (EventSourceWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = EventSourceWindow;
  v3 = [(EventSourceWindow *)&v6 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(EventSourceWindow *)v3 _commonUpdate];
  }

  return v4;
}

+ (BOOL)_supportsCallstackSymbolLog
{
  v2 = sub_10000B11C();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  return v3;
}

@end