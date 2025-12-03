@interface GAXFeatureViewController_Phone
- (id)_allFeatureViews;
- (id)_appFeatureViews;
- (id)_hardwareFeatureViews;
- (id)_timeRestrictionFeatureViews;
- (void)dismissOptionsAnimated:(BOOL)animated;
- (void)featureView:(id)view didChangeState:(BOOL)state;
- (void)featureView:(id)view didChangeTimeRestrictionDuration:(int64_t)duration timeRestrictionsEnabled:(BOOL)enabled;
- (void)presentOptionsAnimated:(BOOL)animated;
- (void)releaseOutlets;
@end

@implementation GAXFeatureViewController_Phone

- (id)_allFeatureViews
{
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  v4 = objc_opt_new();
  _hardwareFeatureViews = [(GAXFeatureViewController_Phone *)self _hardwareFeatureViews];
  [v4 addObjectsFromArray:_hardwareFeatureViews];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_253BC;
  v12[3] = &unk_5DBA8;
  v13 = styleProvider;
  selfCopy = self;
  v6 = v4;
  v15 = v6;
  v7 = styleProvider;
  [(GAXFeatureViewController *)self _enumerateSystemFeatureViewsParametersUsingBlock:v12];
  _timeRestrictionFeatureViews = [(GAXFeatureViewController_Phone *)self _timeRestrictionFeatureViews];
  [v6 addObjectsFromArray:_timeRestrictionFeatureViews];

  if ([(GAXFeatureViewController *)self _isUsingAppRestrictions])
  {
    _appFeatureViews = [(GAXFeatureViewController_Phone *)self _appFeatureViews];
    [v6 addObjectsFromArray:_appFeatureViews];
  }

  v10 = [v6 copy];

  return v10;
}

- (void)dismissOptionsAnimated:(BOOL)animated
{
  optionsView = [(GAXFeatureViewController_Phone *)self optionsView];
  [optionsView dismissOptionsAnimated:1];
}

- (void)presentOptionsAnimated:(BOOL)animated
{
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  optionsView = [(GAXFeatureViewController_Phone *)self optionsView];
  if (!optionsView)
  {
    _allFeatureViews = [(GAXFeatureViewController_Phone *)self _allFeatureViews];
    optionsView = [[GAXOptionsView alloc] initWithFeatureViews:_allFeatureViews styleProvider:styleProvider userInterfaceServer:userInterfaceServer];
    [(GAXOptionsView *)optionsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXFeatureViewController_Phone *)self setOptionsView:optionsView];
  }

  _viewForPresentingOverlayUserInterface = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
  [(GAXOptionsView *)optionsView presentOptionsInView:_viewForPresentingOverlayUserInterface animated:1];
}

- (void)releaseOutlets
{
  v3.receiver = self;
  v3.super_class = GAXFeatureViewController_Phone;
  [(GAXViewController *)&v3 releaseOutlets];
  [(GAXFeatureViewController *)self setInstructionsLabel:0];
  [(GAXFeatureViewController *)self setInstructionsLabelWidthConstraint:0];
}

- (id)_appFeatureViews
{
  [(GAXFeatureViewController *)self styleProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_256B8;
  v8 = v7[3] = &unk_5DBD0;
  selfCopy = self;
  v10 = objc_opt_new();
  v3 = v10;
  v4 = v8;
  [(GAXFeatureViewController *)self _enumerateAppFeatureViewsParametersUsingBlock:v7];
  v5 = [v3 copy];

  return v5;
}

- (id)_hardwareFeatureViews
{
  [(GAXFeatureViewController *)self styleProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25828;
  v8 = v7[3] = &unk_5DBA8;
  selfCopy = self;
  v10 = objc_opt_new();
  v3 = v10;
  v4 = v8;
  [(GAXFeatureViewController *)self _enumerateHardwareFeatureViewsParametersUsingBlock:v7];
  v5 = [v3 copy];

  return v5;
}

- (id)_timeRestrictionFeatureViews
{
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appTimeRestrictionsEnabled = [userInterfaceServer appTimeRestrictionsEnabled];
  userInterfaceServer2 = [(GAXFeatureViewController *)self userInterfaceServer];
  appTimeRestrictionDurationInMinutes = [userInterfaceServer2 appTimeRestrictionDurationInMinutes];
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  v8 = [GAXFeatureView timeRestrictionsFeatureViewWithInitialState:appTimeRestrictionsEnabled initialDuration:appTimeRestrictionDurationInMinutes styleProvider:styleProvider];

  [v8 setDelegate:self];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)featureView:(id)view didChangeState:(BOOL)state
{
  stateCopy = state;
  viewCopy = view;
  type = [viewCopy type];
  if (type > 1)
  {
    if (type == &dword_0 + 3)
    {
      identifier = [viewCopy identifier];
      if ([identifier isEqualToString:@"GAXProfileAllowsTouch"])
      {
        delegate = [(GAXFeatureViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate featureViewController:self touchSystemFeatureDidChange:stateCopy];
        }

        styleProvider = [(GAXFeatureViewController *)self styleProvider];
        [styleProvider defaultAnimationDuration];
        v13[1] = 3221225472;
        v13[0] = _NSConcreteStackBlock;
        v13[2] = sub_25BD8;
        v13[3] = &unk_5DB80;
        v13[4] = self;
        v14 = stateCopy;
        [UIView animateWithDuration:v13 animations:v11 * 0.5];
      }

      goto LABEL_10;
    }

LABEL_14:
    _AXLogWithFacility();
    goto LABEL_15;
  }

  if (!type)
  {
    identifier = [viewCopy identifier];
    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    [userInterfaceServer setAppRestrictionState:stateCopy ^ 1 withIdentifier:identifier];
    goto LABEL_13;
  }

  if (type != &dword_0 + 1)
  {
    goto LABEL_14;
  }

  identifier = [viewCopy identifier];
LABEL_10:
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  [userInterfaceServer setFeatureEnabled:stateCopy withIdentifier:identifier];
LABEL_13:

LABEL_15:
}

- (void)featureView:(id)view didChangeTimeRestrictionDuration:(int64_t)duration timeRestrictionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  viewCopy = view;
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  [userInterfaceServer updateTimeRestrictionWithDuration:duration enabled:enabledCopy];

  optionsView = [(GAXFeatureViewController_Phone *)self optionsView];
  [optionsView setNeedsUpdateConstraints];

  optionsView2 = [(GAXFeatureViewController_Phone *)self optionsView];
  [optionsView2 updateConstraintsIfNeeded];

  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  [styleProvider defaultAnimationDuration];
  v14 = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_25DB4;
  v20[3] = &unk_5CD48;
  v20[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_25DF8;
  v16[3] = &unk_5DBF8;
  v19 = enabledCopy;
  v17 = viewCopy;
  selfCopy = self;
  v15 = viewCopy;
  [UIView animateWithDuration:v20 animations:v16 completion:v14];
}

@end