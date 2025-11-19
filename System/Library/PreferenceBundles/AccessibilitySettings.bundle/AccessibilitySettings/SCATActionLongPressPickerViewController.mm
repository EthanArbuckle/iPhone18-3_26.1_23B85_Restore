@interface SCATActionLongPressPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (id)_pauseScanningGroupSpecifier;
- (id)_pauseScanningSpecifier;
- (id)pauseScanningEnabled:(id)a3;
- (id)specifiers;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
- (void)setPauseScanningEnabled:(id)a3 specifier:(id)a4;
@end

@implementation SCATActionLongPressPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchLongPressDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchLongPressDuration:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchLongPressEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchLongPressEnabled:v3];
  if (v3)
  {
    v5 = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
    [(SCATActionLongPressPickerViewController *)self insertSpecifier:v5 afterSpecifierID:@"NumericalPreferencePickerGroupIdentifier" animated:1];

    v6 = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
    [(SCATActionLongPressPickerViewController *)self insertSpecifier:v6 afterSpecifierID:@"NumericalPreferencePickerGroupIdentifier" animated:1];
  }

  else
  {
    v7 = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
    [(SCATActionLongPressPickerViewController *)self removeSpecifier:v7 animated:1];

    v6 = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
    [(SCATActionLongPressPickerViewController *)self removeSpecifier:v6 animated:1];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsNumericalPickerViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11.receiver = self;
    v11.super_class = SCATActionLongPressPickerViewController;
    v6 = [(SCATActionLongPressPickerViewController *)&v11 specifiers];
    [v5 axSafelyAddObjectsFromArray:v6];

    if ([(SCATActionLongPressPickerViewController *)self numericalPreferenceEnabled])
    {
      v7 = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
      [v5 addObject:v7];

      v8 = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
      [v5 addObject:v8];
    }

    v9 = *&self->super.AXUISettingsNumericalPickerViewController_opaque[v3];
    *&self->super.AXUISettingsNumericalPickerViewController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsNumericalPickerViewController_opaque[v3];
  }

  return v4;
}

- (id)_pauseScanningGroupSpecifier
{
  pauseScanningGroupSpecifier = self->_pauseScanningGroupSpecifier;
  if (!pauseScanningGroupSpecifier)
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    v5 = AXParameterizedLocalizedString();
    [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

    v6 = self->_pauseScanningGroupSpecifier;
    self->_pauseScanningGroupSpecifier = v4;

    pauseScanningGroupSpecifier = self->_pauseScanningGroupSpecifier;
  }

  return pauseScanningGroupSpecifier;
}

- (id)_pauseScanningSpecifier
{
  pauseScanningSpecifier = self->_pauseScanningSpecifier;
  if (!pauseScanningSpecifier)
  {
    v4 = AXParameterizedLocalizedString();
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPauseScanningEnabled:specifier:" get:"pauseScanningEnabled:" detail:0 cell:6 edit:0];
    v6 = self->_pauseScanningSpecifier;
    self->_pauseScanningSpecifier = v5;

    pauseScanningSpecifier = self->_pauseScanningSpecifier;
  }

  return pauseScanningSpecifier;
}

- (void)setPauseScanningEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setAssistiveTouchLongPressPauseScanningEnabled:v5];
}

- (id)pauseScanningEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchLongPressPauseScanningEnabled]);

  return v4;
}

@end