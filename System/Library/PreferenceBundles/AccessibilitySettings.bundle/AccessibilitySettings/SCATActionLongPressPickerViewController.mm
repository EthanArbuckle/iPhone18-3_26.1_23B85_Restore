@interface SCATActionLongPressPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (id)_pauseScanningGroupSpecifier;
- (id)_pauseScanningSpecifier;
- (id)pauseScanningEnabled:(id)enabled;
- (id)specifiers;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
- (void)setPauseScanningEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation SCATActionLongPressPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchLongPressDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchLongPressDuration:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v2 assistiveTouchLongPressEnabled];

  return assistiveTouchLongPressEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchLongPressEnabled:userCopy];
  if (userCopy)
  {
    _pauseScanningSpecifier = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
    [(SCATActionLongPressPickerViewController *)self insertSpecifier:_pauseScanningSpecifier afterSpecifierID:@"NumericalPreferencePickerGroupIdentifier" animated:1];

    _pauseScanningGroupSpecifier = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
    [(SCATActionLongPressPickerViewController *)self insertSpecifier:_pauseScanningGroupSpecifier afterSpecifierID:@"NumericalPreferencePickerGroupIdentifier" animated:1];
  }

  else
  {
    _pauseScanningGroupSpecifier2 = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
    [(SCATActionLongPressPickerViewController *)self removeSpecifier:_pauseScanningGroupSpecifier2 animated:1];

    _pauseScanningGroupSpecifier = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
    [(SCATActionLongPressPickerViewController *)self removeSpecifier:_pauseScanningGroupSpecifier animated:1];
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
    specifiers = [(SCATActionLongPressPickerViewController *)&v11 specifiers];
    [v5 axSafelyAddObjectsFromArray:specifiers];

    if ([(SCATActionLongPressPickerViewController *)self numericalPreferenceEnabled])
    {
      _pauseScanningGroupSpecifier = [(SCATActionLongPressPickerViewController *)self _pauseScanningGroupSpecifier];
      [v5 addObject:_pauseScanningGroupSpecifier];

      _pauseScanningSpecifier = [(SCATActionLongPressPickerViewController *)self _pauseScanningSpecifier];
      [v5 addObject:_pauseScanningSpecifier];
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

- (void)setPauseScanningEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setAssistiveTouchLongPressPauseScanningEnabled:bOOLValue];
}

- (id)pauseScanningEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchLongPressPauseScanningEnabled]);

  return v4;
}

@end