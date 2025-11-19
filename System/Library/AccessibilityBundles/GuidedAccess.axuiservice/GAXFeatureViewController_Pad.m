@interface GAXFeatureViewController_Pad
- (BOOL)optionsViewController:(id)a3 stateForForFeatureAtIndex:(unint64_t)a4;
- (BOOL)timeRestrictiosEnabledForAppWithOptionsViewController:(id)a3;
- (id)optionsViewController:(id)a3 textForFeatureAtIndex:(unint64_t)a4;
- (int64_t)timeRestrictionDurationForAppWithOptionsViewController:(id)a3;
- (void)dismissOptionsAnimated:(BOOL)a3;
- (void)optionsViewController:(id)a3 featureAtIndex:(unint64_t)a4 didChangeState:(BOOL)a5;
- (void)optionsViewController:(id)a3 timeRestrictionValueDidChange:(int64_t)a4 timeRestrictionsEnabled:(BOOL)a5;
- (void)presentOptionsAnimated:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GAXFeatureViewController_Pad

- (void)dismissOptionsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(GAXOptionsViewController *)self->_optionsViewController presentingViewController];
  [v4 dismissViewControllerAnimated:v3 completion:0];
}

- (void)presentOptionsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[GAXOptionsViewController optionsViewController];
  optionsViewController = self->_optionsViewController;
  self->_optionsViewController = v5;

  [(GAXOptionsViewController *)self->_optionsViewController setDataSource:self];
  [(GAXOptionsViewController *)self->_optionsViewController setDelegate:self];
  v7 = [(GAXFeatureViewController *)self styleProvider];
  [(GAXOptionsViewController *)self->_optionsViewController setStyleProvider:v7];

  v8 = self->_optionsViewController;
  v9 = [(GAXFeatureViewController *)self userInterfaceServer];
  v10 = [v9 appTimeRestrictionsEnabled];
  v11 = [(GAXFeatureViewController *)self userInterfaceServer];
  -[GAXOptionsViewController setTimeRestrictionsEnabled:currentDurationInMinutes:animated:](v8, "setTimeRestrictionsEnabled:currentDurationInMinutes:animated:", v10, [v11 appTimeRestrictionDurationInMinutes], 0);

  [(GAXOptionsViewController *)self->_optionsViewController initialPreferredContentSize];
  [(GAXOptionsViewController *)self->_optionsViewController setPreferredContentSize:?];
  v23 = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
  v12 = [(GAXFeatureViewController *)self optionsButton];
  v13 = [(GAXFeatureViewController *)self optionsButton];
  [v13 bounds];
  [v12 convertRect:v23 toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(GAXOptionsViewController *)self->_optionsViewController setModalPresentationStyle:7];
  v22 = [(GAXOptionsViewController *)self->_optionsViewController popoverPresentationController];
  [v22 setSourceView:v23];
  [v22 setSourceRect:{v15, v17, v19, v21}];
  [v22 setPermittedArrowDirections:2];
  [(GAXFeatureViewController_Pad *)self presentViewController:self->_optionsViewController animated:v3 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = GAXFeatureViewController_Pad;
  [(GAXFeatureViewController_Pad *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(GAXFeatureViewController_Pad *)self dismissOptionsAnimated:1];
}

- (id)optionsViewController:(id)a3 textForFeatureAtIndex:(unint64_t)a4
{
  v6 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v7 = [v6 count];

  v8 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v9 = v8;
  if (v7 > a4)
  {
    v10 = [v8 objectAtIndexedSubscript:a4];
    v11 = [v10 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];
    v12 = GAXLocString(v11);

LABEL_3:
    goto LABEL_9;
  }

  v13 = a4 - [v8 count];

  v14 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v15 = [v14 count];

  v16 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v17 = v16;
  if (v13 >= v15)
  {
    v20 = v13 - [v16 count];

    v21 = [(GAXFeatureViewController *)self userInterfaceServer];
    v22 = [v21 appRestrictionIdentifiers];
    v23 = [v22 count];

    v24 = [(GAXFeatureViewController *)self userInterfaceServer];
    v25 = [v24 appRestrictionIdentifiers];
    v26 = v25;
    if (v20 < v23)
    {
      v9 = [v25 objectAtIndexedSubscript:v20];

      v10 = [(GAXFeatureViewController *)self userInterfaceServer];
      v12 = [v10 textForAppRestrictionWithIdentifier:v9];
      goto LABEL_3;
    }

    [v25 count];

    v12 = GAXLocString(@"TIME_RESTRICTION_FEATURE");
  }

  else
  {
    v18 = [v16 objectAtIndexedSubscript:v13];
    v19 = [v18 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];
    v12 = GAXLocString(v19);
  }

LABEL_9:

  return v12;
}

- (BOOL)optionsViewController:(id)a3 stateForForFeatureAtIndex:(unint64_t)a4
{
  v6 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(GAXFeatureViewController *)self userInterfaceServer];
    v9 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
LABEL_5:
    v13 = v9;
    v14 = [v9 objectAtIndexedSubscript:a4];
    v15 = [v14 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
    v16 = [v8 isFeatureEnabledForIdentifier:v15];

    goto LABEL_6;
  }

  v10 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  a4 -= [v10 count];

  v11 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v12 = [v11 count];

  if (a4 < v12)
  {
    v8 = [(GAXFeatureViewController *)self userInterfaceServer];
    v9 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
    goto LABEL_5;
  }

  v18 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v19 = a4 - [v18 count];

  v20 = [(GAXFeatureViewController *)self userInterfaceServer];
  v21 = [v20 appRestrictionIdentifiers];
  v22 = [v21 count];

  v23 = [(GAXFeatureViewController *)self userInterfaceServer];
  v8 = v23;
  if (v19 >= v22)
  {
    v26 = [v23 appRestrictionIdentifiers];
    [v26 count];

    v8 = [(GAXFeatureViewController *)self userInterfaceServer];
    v16 = [v8 appTimeRestrictionsEnabled];
    goto LABEL_7;
  }

  v13 = [(GAXFeatureViewController *)self userInterfaceServer];
  v24 = [v13 appRestrictionIdentifiers];
  v25 = [v24 objectAtIndexedSubscript:v19];
  v16 = [v8 appRestrictionStateForIdentifier:v25] == 0;

LABEL_6:
LABEL_7:

  return v16;
}

- (int64_t)timeRestrictionDurationForAppWithOptionsViewController:(id)a3
{
  v3 = [(GAXFeatureViewController *)self userInterfaceServer];
  v4 = [v3 appTimeRestrictionDurationInMinutes];

  return v4;
}

- (BOOL)timeRestrictiosEnabledForAppWithOptionsViewController:(id)a3
{
  v3 = [(GAXFeatureViewController *)self userInterfaceServer];
  v4 = [v3 appTimeRestrictionsEnabled];

  return v4;
}

- (void)optionsViewController:(id)a3 featureAtIndex:(unint64_t)a4 didChangeState:(BOOL)a5
{
  v5 = a5;
  v8 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v9 = [v8 count];

  if (v9 > a4)
  {
    v50 = [(GAXFeatureViewController *)self userInterfaceServer];
    v10 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
    v11 = [v10 objectAtIndexedSubscript:a4];
    v12 = [v11 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
    [v50 setFeatureEnabled:v5 withIdentifier:v12];

LABEL_3:

    return;
  }

  v13 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v14 = a4 - [v13 count];

  v15 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v16 = [v15 count];

  v17 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v18 = v17;
  if (v14 >= v16)
  {
    v24 = v14 - [v17 count];

    v25 = [(GAXFeatureViewController *)self userInterfaceServer];
    v26 = [v25 appRestrictionIdentifiers];
    v27 = [v26 count];

    v28 = [(GAXFeatureViewController *)self userInterfaceServer];
    v50 = v28;
    if (v24 < v27)
    {
      v10 = [(GAXFeatureViewController *)self userInterfaceServer];
      v29 = [v10 appRestrictionIdentifiers];
      v30 = [v29 objectAtIndexedSubscript:v24];
      [v50 setAppRestrictionState:v5 ^ 1 withIdentifier:v30];

      goto LABEL_3;
    }

    v31 = [v28 appRestrictionIdentifiers];
    [v31 count];

    v32 = [(GAXFeatureViewController *)self userInterfaceServer];
    v33 = [v32 appTimeRestrictionDurationInMinutes];

    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    if (v5)
    {
      v35 = v34;
    }

    else
    {
      v35 = v33;
    }

    [(GAXOptionsViewController *)self->_optionsViewController setTimeRestrictionsEnabled:v5 currentDurationInMinutes:v35 animated:1];
    v36 = [(GAXFeatureViewController *)self userInterfaceServer];
    [v36 updateTimeRestrictionWithDuration:v35 enabled:v5];

    v37 = [(GAXOptionsViewController *)self->_optionsViewController view];
    v38 = [(GAXOptionsViewController *)self->_optionsViewController view];
    [v38 bounds];
    v40 = v39;
    LODWORD(v39) = 1148846080;
    [v37 systemLayoutSizeFittingSize:v40 withHorizontalFittingPriority:1000.0 verticalFittingPriority:{v39, 0.0}];
    v42 = v41;

    v43 = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
    [v43 bounds];
    v45 = v44;

    if (v42 >= v45)
    {
      v42 = v45;
    }

    v46 = [(GAXOptionsViewController *)self->_optionsViewController view];
    [v46 bounds];
    v48 = v47;

    optionsViewController = self->_optionsViewController;

    [(GAXOptionsViewController *)optionsViewController setPreferredContentSize:v48, v42];
  }

  else
  {
    v19 = [v17 objectAtIndexedSubscript:v14];
    v20 = [v19 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];

    if ([v20 isEqualToString:@"GAXProfileAllowsTouch"])
    {
      v21 = [(GAXFeatureViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v21 featureViewController:self touchSystemFeatureDidChange:v5];
      }

      v22 = [(GAXFeatureViewController *)self styleProvider];
      [v22 defaultAnimationDuration];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_25194;
      v51[3] = &unk_5DB80;
      v51[4] = self;
      v52 = v5;
      [UIView animateWithDuration:v51 animations:?];
    }

    v23 = [(GAXFeatureViewController *)self userInterfaceServer];
    [v23 setFeatureEnabled:v5 withIdentifier:v20];
  }
}

- (void)optionsViewController:(id)a3 timeRestrictionValueDidChange:(int64_t)a4 timeRestrictionsEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = [(GAXFeatureViewController *)self userInterfaceServer];
  [v7 updateTimeRestrictionWithDuration:a4 enabled:v5];
}

@end