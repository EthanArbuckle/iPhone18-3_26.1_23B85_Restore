@interface GAXFeatureViewController_Pad
- (BOOL)optionsViewController:(id)controller stateForForFeatureAtIndex:(unint64_t)index;
- (BOOL)timeRestrictiosEnabledForAppWithOptionsViewController:(id)controller;
- (id)optionsViewController:(id)controller textForFeatureAtIndex:(unint64_t)index;
- (int64_t)timeRestrictionDurationForAppWithOptionsViewController:(id)controller;
- (void)dismissOptionsAnimated:(BOOL)animated;
- (void)optionsViewController:(id)controller featureAtIndex:(unint64_t)index didChangeState:(BOOL)state;
- (void)optionsViewController:(id)controller timeRestrictionValueDidChange:(int64_t)change timeRestrictionsEnabled:(BOOL)enabled;
- (void)presentOptionsAnimated:(BOOL)animated;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GAXFeatureViewController_Pad

- (void)dismissOptionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentingViewController = [(GAXOptionsViewController *)self->_optionsViewController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)presentOptionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[GAXOptionsViewController optionsViewController];
  optionsViewController = self->_optionsViewController;
  self->_optionsViewController = v5;

  [(GAXOptionsViewController *)self->_optionsViewController setDataSource:self];
  [(GAXOptionsViewController *)self->_optionsViewController setDelegate:self];
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  [(GAXOptionsViewController *)self->_optionsViewController setStyleProvider:styleProvider];

  v8 = self->_optionsViewController;
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appTimeRestrictionsEnabled = [userInterfaceServer appTimeRestrictionsEnabled];
  userInterfaceServer2 = [(GAXFeatureViewController *)self userInterfaceServer];
  -[GAXOptionsViewController setTimeRestrictionsEnabled:currentDurationInMinutes:animated:](v8, "setTimeRestrictionsEnabled:currentDurationInMinutes:animated:", appTimeRestrictionsEnabled, [userInterfaceServer2 appTimeRestrictionDurationInMinutes], 0);

  [(GAXOptionsViewController *)self->_optionsViewController initialPreferredContentSize];
  [(GAXOptionsViewController *)self->_optionsViewController setPreferredContentSize:?];
  _viewForPresentingOverlayUserInterface = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
  optionsButton = [(GAXFeatureViewController *)self optionsButton];
  optionsButton2 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton2 bounds];
  [optionsButton convertRect:_viewForPresentingOverlayUserInterface toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(GAXOptionsViewController *)self->_optionsViewController setModalPresentationStyle:7];
  popoverPresentationController = [(GAXOptionsViewController *)self->_optionsViewController popoverPresentationController];
  [popoverPresentationController setSourceView:_viewForPresentingOverlayUserInterface];
  [popoverPresentationController setSourceRect:{v15, v17, v19, v21}];
  [popoverPresentationController setPermittedArrowDirections:2];
  [(GAXFeatureViewController_Pad *)self presentViewController:self->_optionsViewController animated:animatedCopy completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = GAXFeatureViewController_Pad;
  [(GAXFeatureViewController_Pad *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(GAXFeatureViewController_Pad *)self dismissOptionsAnimated:1];
}

- (id)optionsViewController:(id)controller textForFeatureAtIndex:(unint64_t)index
{
  hardwareFeatureViewsParameters = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v7 = [hardwareFeatureViewsParameters count];

  hardwareFeatureViewsParameters2 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v9 = hardwareFeatureViewsParameters2;
  if (v7 > index)
  {
    userInterfaceServer3 = [hardwareFeatureViewsParameters2 objectAtIndexedSubscript:index];
    v11 = [userInterfaceServer3 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];
    v12 = GAXLocString(v11);

LABEL_3:
    goto LABEL_9;
  }

  v13 = index - [hardwareFeatureViewsParameters2 count];

  systemFeatureViewsParameters = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v15 = [systemFeatureViewsParameters count];

  systemFeatureViewsParameters2 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v17 = systemFeatureViewsParameters2;
  if (v13 >= v15)
  {
    v20 = v13 - [systemFeatureViewsParameters2 count];

    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    appRestrictionIdentifiers = [userInterfaceServer appRestrictionIdentifiers];
    v23 = [appRestrictionIdentifiers count];

    userInterfaceServer2 = [(GAXFeatureViewController *)self userInterfaceServer];
    appRestrictionIdentifiers2 = [userInterfaceServer2 appRestrictionIdentifiers];
    v26 = appRestrictionIdentifiers2;
    if (v20 < v23)
    {
      v9 = [appRestrictionIdentifiers2 objectAtIndexedSubscript:v20];

      userInterfaceServer3 = [(GAXFeatureViewController *)self userInterfaceServer];
      v12 = [userInterfaceServer3 textForAppRestrictionWithIdentifier:v9];
      goto LABEL_3;
    }

    [appRestrictionIdentifiers2 count];

    v12 = GAXLocString(@"TIME_RESTRICTION_FEATURE");
  }

  else
  {
    v18 = [systemFeatureViewsParameters2 objectAtIndexedSubscript:v13];
    v19 = [v18 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];
    v12 = GAXLocString(v19);
  }

LABEL_9:

  return v12;
}

- (BOOL)optionsViewController:(id)controller stateForForFeatureAtIndex:(unint64_t)index
{
  hardwareFeatureViewsParameters = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v7 = [hardwareFeatureViewsParameters count];

  if (v7 > index)
  {
    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    hardwareFeatureViewsParameters2 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
LABEL_5:
    userInterfaceServer4 = hardwareFeatureViewsParameters2;
    v14 = [hardwareFeatureViewsParameters2 objectAtIndexedSubscript:index];
    v15 = [v14 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
    appTimeRestrictionsEnabled = [userInterfaceServer isFeatureEnabledForIdentifier:v15];

    goto LABEL_6;
  }

  hardwareFeatureViewsParameters3 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  index -= [hardwareFeatureViewsParameters3 count];

  systemFeatureViewsParameters = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v12 = [systemFeatureViewsParameters count];

  if (index < v12)
  {
    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    hardwareFeatureViewsParameters2 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
    goto LABEL_5;
  }

  systemFeatureViewsParameters2 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v19 = index - [systemFeatureViewsParameters2 count];

  userInterfaceServer2 = [(GAXFeatureViewController *)self userInterfaceServer];
  appRestrictionIdentifiers = [userInterfaceServer2 appRestrictionIdentifiers];
  v22 = [appRestrictionIdentifiers count];

  userInterfaceServer3 = [(GAXFeatureViewController *)self userInterfaceServer];
  userInterfaceServer = userInterfaceServer3;
  if (v19 >= v22)
  {
    appRestrictionIdentifiers2 = [userInterfaceServer3 appRestrictionIdentifiers];
    [appRestrictionIdentifiers2 count];

    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    appTimeRestrictionsEnabled = [userInterfaceServer appTimeRestrictionsEnabled];
    goto LABEL_7;
  }

  userInterfaceServer4 = [(GAXFeatureViewController *)self userInterfaceServer];
  appRestrictionIdentifiers3 = [userInterfaceServer4 appRestrictionIdentifiers];
  v25 = [appRestrictionIdentifiers3 objectAtIndexedSubscript:v19];
  appTimeRestrictionsEnabled = [userInterfaceServer appRestrictionStateForIdentifier:v25] == 0;

LABEL_6:
LABEL_7:

  return appTimeRestrictionsEnabled;
}

- (int64_t)timeRestrictionDurationForAppWithOptionsViewController:(id)controller
{
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appTimeRestrictionDurationInMinutes = [userInterfaceServer appTimeRestrictionDurationInMinutes];

  return appTimeRestrictionDurationInMinutes;
}

- (BOOL)timeRestrictiosEnabledForAppWithOptionsViewController:(id)controller
{
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appTimeRestrictionsEnabled = [userInterfaceServer appTimeRestrictionsEnabled];

  return appTimeRestrictionsEnabled;
}

- (void)optionsViewController:(id)controller featureAtIndex:(unint64_t)index didChangeState:(BOOL)state
{
  stateCopy = state;
  hardwareFeatureViewsParameters = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v9 = [hardwareFeatureViewsParameters count];

  if (v9 > index)
  {
    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    hardwareFeatureViewsParameters2 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
    v11 = [hardwareFeatureViewsParameters2 objectAtIndexedSubscript:index];
    v12 = [v11 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
    [userInterfaceServer setFeatureEnabled:stateCopy withIdentifier:v12];

LABEL_3:

    return;
  }

  hardwareFeatureViewsParameters3 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v14 = index - [hardwareFeatureViewsParameters3 count];

  systemFeatureViewsParameters = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v16 = [systemFeatureViewsParameters count];

  systemFeatureViewsParameters2 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v18 = systemFeatureViewsParameters2;
  if (v14 >= v16)
  {
    v24 = v14 - [systemFeatureViewsParameters2 count];

    userInterfaceServer2 = [(GAXFeatureViewController *)self userInterfaceServer];
    appRestrictionIdentifiers = [userInterfaceServer2 appRestrictionIdentifiers];
    v27 = [appRestrictionIdentifiers count];

    userInterfaceServer3 = [(GAXFeatureViewController *)self userInterfaceServer];
    userInterfaceServer = userInterfaceServer3;
    if (v24 < v27)
    {
      hardwareFeatureViewsParameters2 = [(GAXFeatureViewController *)self userInterfaceServer];
      appRestrictionIdentifiers2 = [hardwareFeatureViewsParameters2 appRestrictionIdentifiers];
      v30 = [appRestrictionIdentifiers2 objectAtIndexedSubscript:v24];
      [userInterfaceServer setAppRestrictionState:stateCopy ^ 1 withIdentifier:v30];

      goto LABEL_3;
    }

    appRestrictionIdentifiers3 = [userInterfaceServer3 appRestrictionIdentifiers];
    [appRestrictionIdentifiers3 count];

    userInterfaceServer4 = [(GAXFeatureViewController *)self userInterfaceServer];
    appTimeRestrictionDurationInMinutes = [userInterfaceServer4 appTimeRestrictionDurationInMinutes];

    if (appTimeRestrictionDurationInMinutes <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = appTimeRestrictionDurationInMinutes;
    }

    if (stateCopy)
    {
      v35 = v34;
    }

    else
    {
      v35 = appTimeRestrictionDurationInMinutes;
    }

    [(GAXOptionsViewController *)self->_optionsViewController setTimeRestrictionsEnabled:stateCopy currentDurationInMinutes:v35 animated:1];
    userInterfaceServer5 = [(GAXFeatureViewController *)self userInterfaceServer];
    [userInterfaceServer5 updateTimeRestrictionWithDuration:v35 enabled:stateCopy];

    view = [(GAXOptionsViewController *)self->_optionsViewController view];
    view2 = [(GAXOptionsViewController *)self->_optionsViewController view];
    [view2 bounds];
    v40 = v39;
    LODWORD(v39) = 1148846080;
    [view systemLayoutSizeFittingSize:v40 withHorizontalFittingPriority:1000.0 verticalFittingPriority:{v39, 0.0}];
    v42 = v41;

    _viewForPresentingOverlayUserInterface = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
    [_viewForPresentingOverlayUserInterface bounds];
    v45 = v44;

    if (v42 >= v45)
    {
      v42 = v45;
    }

    view3 = [(GAXOptionsViewController *)self->_optionsViewController view];
    [view3 bounds];
    v48 = v47;

    optionsViewController = self->_optionsViewController;

    [(GAXOptionsViewController *)optionsViewController setPreferredContentSize:v48, v42];
  }

  else
  {
    v19 = [systemFeatureViewsParameters2 objectAtIndexedSubscript:v14];
    v20 = [v19 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];

    if ([v20 isEqualToString:@"GAXProfileAllowsTouch"])
    {
      delegate = [(GAXFeatureViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate featureViewController:self touchSystemFeatureDidChange:stateCopy];
      }

      styleProvider = [(GAXFeatureViewController *)self styleProvider];
      [styleProvider defaultAnimationDuration];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_25194;
      v51[3] = &unk_5DB80;
      v51[4] = self;
      v52 = stateCopy;
      [UIView animateWithDuration:v51 animations:?];
    }

    userInterfaceServer6 = [(GAXFeatureViewController *)self userInterfaceServer];
    [userInterfaceServer6 setFeatureEnabled:stateCopy withIdentifier:v20];
  }
}

- (void)optionsViewController:(id)controller timeRestrictionValueDidChange:(int64_t)change timeRestrictionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  [userInterfaceServer updateTimeRestrictionWithDuration:change enabled:enabledCopy];
}

@end