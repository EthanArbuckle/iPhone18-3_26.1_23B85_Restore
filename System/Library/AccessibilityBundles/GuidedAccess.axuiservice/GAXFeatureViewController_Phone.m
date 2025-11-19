@interface GAXFeatureViewController_Phone
- (id)_allFeatureViews;
- (id)_appFeatureViews;
- (id)_hardwareFeatureViews;
- (id)_timeRestrictionFeatureViews;
- (void)dismissOptionsAnimated:(BOOL)a3;
- (void)featureView:(id)a3 didChangeState:(BOOL)a4;
- (void)featureView:(id)a3 didChangeTimeRestrictionDuration:(int64_t)a4 timeRestrictionsEnabled:(BOOL)a5;
- (void)presentOptionsAnimated:(BOOL)a3;
- (void)releaseOutlets;
@end

@implementation GAXFeatureViewController_Phone

- (id)_allFeatureViews
{
  v3 = [(GAXFeatureViewController *)self styleProvider];
  v4 = objc_opt_new();
  v5 = [(GAXFeatureViewController_Phone *)self _hardwareFeatureViews];
  [v4 addObjectsFromArray:v5];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_253BC;
  v12[3] = &unk_5DBA8;
  v13 = v3;
  v14 = self;
  v6 = v4;
  v15 = v6;
  v7 = v3;
  [(GAXFeatureViewController *)self _enumerateSystemFeatureViewsParametersUsingBlock:v12];
  v8 = [(GAXFeatureViewController_Phone *)self _timeRestrictionFeatureViews];
  [v6 addObjectsFromArray:v8];

  if ([(GAXFeatureViewController *)self _isUsingAppRestrictions])
  {
    v9 = [(GAXFeatureViewController_Phone *)self _appFeatureViews];
    [v6 addObjectsFromArray:v9];
  }

  v10 = [v6 copy];

  return v10;
}

- (void)dismissOptionsAnimated:(BOOL)a3
{
  v3 = [(GAXFeatureViewController_Phone *)self optionsView];
  [v3 dismissOptionsAnimated:1];
}

- (void)presentOptionsAnimated:(BOOL)a3
{
  v8 = [(GAXFeatureViewController *)self styleProvider];
  v4 = [(GAXFeatureViewController *)self userInterfaceServer];
  v5 = [(GAXFeatureViewController_Phone *)self optionsView];
  if (!v5)
  {
    v6 = [(GAXFeatureViewController_Phone *)self _allFeatureViews];
    v5 = [[GAXOptionsView alloc] initWithFeatureViews:v6 styleProvider:v8 userInterfaceServer:v4];
    [(GAXOptionsView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXFeatureViewController_Phone *)self setOptionsView:v5];
  }

  v7 = [(GAXFeatureViewController *)self _viewForPresentingOverlayUserInterface];
  [(GAXOptionsView *)v5 presentOptionsInView:v7 animated:1];
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
  v9 = self;
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
  v9 = self;
  v10 = objc_opt_new();
  v3 = v10;
  v4 = v8;
  [(GAXFeatureViewController *)self _enumerateHardwareFeatureViewsParametersUsingBlock:v7];
  v5 = [v3 copy];

  return v5;
}

- (id)_timeRestrictionFeatureViews
{
  v3 = [(GAXFeatureViewController *)self userInterfaceServer];
  v4 = [v3 appTimeRestrictionsEnabled];
  v5 = [(GAXFeatureViewController *)self userInterfaceServer];
  v6 = [v5 appTimeRestrictionDurationInMinutes];
  v7 = [(GAXFeatureViewController *)self styleProvider];
  v8 = [GAXFeatureView timeRestrictionsFeatureViewWithInitialState:v4 initialDuration:v6 styleProvider:v7];

  [v8 setDelegate:self];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)featureView:(id)a3 didChangeState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 type];
  if (v7 > 1)
  {
    if (v7 == &dword_0 + 3)
    {
      v8 = [v6 identifier];
      if ([v8 isEqualToString:@"GAXProfileAllowsTouch"])
      {
        v9 = [(GAXFeatureViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v9 featureViewController:self touchSystemFeatureDidChange:v4];
        }

        v10 = [(GAXFeatureViewController *)self styleProvider];
        [v10 defaultAnimationDuration];
        v13[1] = 3221225472;
        v13[0] = _NSConcreteStackBlock;
        v13[2] = sub_25BD8;
        v13[3] = &unk_5DB80;
        v13[4] = self;
        v14 = v4;
        [UIView animateWithDuration:v13 animations:v11 * 0.5];
      }

      goto LABEL_10;
    }

LABEL_14:
    _AXLogWithFacility();
    goto LABEL_15;
  }

  if (!v7)
  {
    v8 = [v6 identifier];
    v12 = [(GAXFeatureViewController *)self userInterfaceServer];
    [v12 setAppRestrictionState:v4 ^ 1 withIdentifier:v8];
    goto LABEL_13;
  }

  if (v7 != &dword_0 + 1)
  {
    goto LABEL_14;
  }

  v8 = [v6 identifier];
LABEL_10:
  v12 = [(GAXFeatureViewController *)self userInterfaceServer];
  [v12 setFeatureEnabled:v4 withIdentifier:v8];
LABEL_13:

LABEL_15:
}

- (void)featureView:(id)a3 didChangeTimeRestrictionDuration:(int64_t)a4 timeRestrictionsEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(GAXFeatureViewController *)self userInterfaceServer];
  [v9 updateTimeRestrictionWithDuration:a4 enabled:v5];

  v10 = [(GAXFeatureViewController_Phone *)self optionsView];
  [v10 setNeedsUpdateConstraints];

  v11 = [(GAXFeatureViewController_Phone *)self optionsView];
  [v11 updateConstraintsIfNeeded];

  v12 = [(GAXFeatureViewController *)self styleProvider];
  [v12 defaultAnimationDuration];
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
  v19 = v5;
  v17 = v8;
  v18 = self;
  v15 = v8;
  [UIView animateWithDuration:v20 animations:v16 completion:v14];
}

@end