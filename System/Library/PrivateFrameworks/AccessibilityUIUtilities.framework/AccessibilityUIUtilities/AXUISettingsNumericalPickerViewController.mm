@interface AXUISettingsNumericalPickerViewController
- (double)valueForSpecifier:(id)specifier;
- (id)_delayPickerSpecifier;
- (id)delayEnabled:(id)enabled;
- (id)infiniteTime:(id)time;
- (id)localizedTextForValue:(double)value;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)_addFooterToDelaySpecifierGroup;
- (void)_updateEnabledStateForDelay;
- (void)setDelayEnabled:(id)enabled specifier:(id)specifier;
- (void)setInfiniteTimeEnabled:(id)enabled specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXUISettingsNumericalPickerViewController

- (id)localizedTextForValue:(double)value
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXUISettingsNumericalPickerViewController;
  [(AXUISettingsSetupCapableListController *)&v6 viewDidLoad];
  self->_cachedNumericalValue = 3.40282347e38;
  table = [(AXUISettingsNumericalPickerViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)AXUISettingsEditableTableCellWithStepper];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  [(AXUISettingsNumericalPickerViewController *)self _updateEnabledStateForDelay];
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    if ([(AXUISettingsNumericalPickerViewController *)self userCanDisableNumericalPreference])
    {
      shouldDisablePreferenceEntirely = [(AXUISettingsNumericalPickerViewController *)self shouldDisablePreferenceEntirely];
      emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      localizedFooterText = [(AXUISettingsNumericalPickerViewController *)self localizedFooterText];
      v9 = *MEMORY[0x1E69C5900];
      [emptyGroupSpecifier setProperty:localizedFooterText forKey:*MEMORY[0x1E69C5900]];

      [v5 addObject:emptyGroupSpecifier];
      v10 = MEMORY[0x1E69C5748];
      localizedTitle = [(AXUISettingsNumericalPickerViewController *)self localizedTitle];
      localizedFooterText2 = [v10 preferenceSpecifierNamed:localizedTitle target:self set:sel_setDelayEnabled_specifier_ get:sel_delayEnabled_ detail:0 cell:6 edit:0];

      [localizedFooterText2 setIdentifier:@"NumericalPreferenceSwitcherIdentifier"];
      if (shouldDisablePreferenceEntirely)
      {
        [localizedFooterText2 setProperty:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69C58C8]];
      }

      [v5 addObject:localizedFooterText2];
      emptyGroupSpecifier2 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [emptyGroupSpecifier2 setIdentifier:@"NumericalPreferencePickerGroupIdentifier"];
      [v5 addObject:emptyGroupSpecifier2];
      if (!(shouldDisablePreferenceEntirely | ![(AXUISettingsNumericalPickerViewController *)self numericalPreferenceEnabled]))
      {
        localizedPickerFooterText = [(AXUISettingsNumericalPickerViewController *)self localizedPickerFooterText];
        [emptyGroupSpecifier2 setProperty:localizedPickerFooterText forKey:v9];

        v26 = emptyGroupSpecifier2;
        [(AXUISettingsNumericalPickerViewController *)self configureSpecifier:&v26];
        v15 = v26;

        _delayPickerSpecifier = [(AXUISettingsNumericalPickerViewController *)self _delayPickerSpecifier];
        [v5 addObject:_delayPickerSpecifier];

        emptyGroupSpecifier2 = v15;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69C5748];
      localizedTitle2 = [(AXUISettingsNumericalPickerViewController *)self localizedTitle];
      emptyGroupSpecifier = [v17 groupSpecifierWithName:localizedTitle2];

      [emptyGroupSpecifier setIdentifier:@"NumericalPreferencePickerGroupIdentifier"];
      localizedFooterText2 = [(AXUISettingsNumericalPickerViewController *)self localizedFooterText];
      if (localizedFooterText2)
      {
        [emptyGroupSpecifier setProperty:localizedFooterText2 forKey:*MEMORY[0x1E69C5900]];
      }

      [v5 addObject:emptyGroupSpecifier];
      _delayPickerSpecifier2 = [(AXUISettingsNumericalPickerViewController *)self _delayPickerSpecifier];
      [v5 addObject:_delayPickerSpecifier2];
    }

    if ([(AXUISettingsNumericalPickerViewController *)self supportsInfiniteTime])
    {
      emptyGroupSpecifier3 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [v5 addObject:emptyGroupSpecifier3];
      v21 = MEMORY[0x1E69C5748];
      v22 = accessibilityLocalizedString(@"infinite.time.for.duration");
      v23 = [v21 preferenceSpecifierNamed:v22 target:self set:sel_setInfiniteTimeEnabled_specifier_ get:sel_infiniteTime_ detail:0 cell:6 edit:0];

      [v23 setIdentifier:@"NumericalPreferenceInfiniteTimeDurationIdentifier"];
      [v5 addObject:v23];
    }

    v24 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_updateEnabledStateForDelay
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = *MEMORY[0x1E69C58C8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:@"NumericalPreferencePickerIdentifier"];

        if (v11)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[AXUISettingsNumericalPickerViewController infiniteTimeEnabled](self, "infiniteTimeEnabled") ^ 1}];
          [v9 setProperty:v12 forKey:v7];

          [(AXUISettingsNumericalPickerViewController *)self reloadSpecifier:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)setInfiniteTimeEnabled:(id)enabled specifier:(id)specifier
{
  -[AXUISettingsNumericalPickerViewController setInfiniteTimeEnabled:](self, "setInfiniteTimeEnabled:", [enabled BOOLValue]);

  [(AXUISettingsNumericalPickerViewController *)self _updateEnabledStateForDelay];
}

- (id)infiniteTime:(id)time
{
  v3 = MEMORY[0x1E696AD98];
  infiniteTimeEnabled = [(AXUISettingsNumericalPickerViewController *)self infiniteTimeEnabled];

  return [v3 numberWithBool:infiniteTimeEnabled];
}

- (void)setDelayEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceEnabledFromUser:bOOLValue];
  if (bOOLValue)
  {
    if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit]&& fabs(self->_cachedNumericalValue + -3.40282347e38) >= 2.22044605e-16)
    {
      [(AXUISettingsNumericalPickerViewController *)self _addFooterToDelaySpecifierGroup];
    }

    v6 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerGroupIdentifier"];
    localizedPickerFooterText = [(AXUISettingsNumericalPickerViewController *)self localizedPickerFooterText];
    [v6 setProperty:localizedPickerFooterText forKey:*MEMORY[0x1E69C5900]];

    v15 = v6;
    [(AXUISettingsNumericalPickerViewController *)self configureSpecifier:&v15];
    v8 = v15;

    [(AXUISettingsNumericalPickerViewController *)self reloadSpecifier:v8];
  }

  else
  {
    v9 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerIdentifier"];
    v10 = [(AXUISettingsNumericalPickerViewController *)self indexPathForSpecifier:v9];

    table = [(AXUISettingsNumericalPickerViewController *)self table];
    v12 = [table cellForRowAtIndexPath:v10];

    nameTextField = [v12 nameTextField];
    [nameTextField resignFirstResponder];

    [(AXUISettingsNumericalPickerViewController *)self removeSpecifierID:@"NumericalPreferencePickerIdentifier" animated:1];
    [(AXUISettingsNumericalPickerViewController *)self removeSpecifierID:@"NumericalPreferencePickerDelayFooterIdentifier" animated:1];
    v14 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerGroupIdentifier"];
    [v14 setProperty:&stru_1F4041FC0 forKey:*MEMORY[0x1E69C5900]];
    [v14 setProperty:0 forKey:*MEMORY[0x1E69C58D8]];
    [v14 setProperty:&stru_1F4041FC0 forKey:*MEMORY[0x1E69C58F8]];
    [v14 setProperty:0 forKey:*MEMORY[0x1E69C58E8]];
    [v14 setProperty:0 forKey:*MEMORY[0x1E69C58F0]];
    [v14 setProperty:0 forKey:*MEMORY[0x1E69C58E0]];
    [(AXUISettingsNumericalPickerViewController *)self reloadSpecifier:v14];
  }

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
}

- (id)delayEnabled:(id)enabled
{
  if ([(AXUISettingsNumericalPickerViewController *)self shouldDisablePreferenceEntirely])
  {
    v4 = MEMORY[0x1E695E110];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXUISettingsNumericalPickerViewController numericalPreferenceEnabled](self, "numericalPreferenceEnabled")}];
  }

  return v4;
}

- (id)_delayPickerSpecifier
{
  v2 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
  [v2 setIdentifier:@"NumericalPreferencePickerIdentifier"];

  return v2;
}

- (void)_addFooterToDelaySpecifierGroup
{
  v4 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerGroupIdentifier"];
  v3 = accessibilityLocalizedString(@"numerical.value.saved.later");
  [v4 setProperty:v3 forKey:*MEMORY[0x1E69C5900]];

  [(AXUISettingsNumericalPickerViewController *)self reloadSpecifierID:@"NumericalPreferencePickerGroupIdentifier"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXUISettingsNumericalPickerViewController;
  [(AXUISettingsNumericalPickerViewController *)&v4 viewWillDisappear:disappear];
  if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit])
  {
    if (fabs(self->_cachedNumericalValue + -3.40282347e38) >= 2.22044605e-16)
    {
      [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceValueFromUser:?];
    }
  }
}

- (double)valueForSpecifier:(id)specifier
{
  result = self->_cachedNumericalValue;
  if (fabs(result + -3.40282347e38) < 2.22044605e-16)
  {
    [(AXUISettingsNumericalPickerViewController *)self numericalPreferenceValue];
  }

  return result;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  specifierCopy = specifier;
  if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit])
  {
    self->_cachedNumericalValue = value;
    v7 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerDelayFooterIdentifier"];

    if (!v7)
    {
      [(AXUISettingsNumericalPickerViewController *)self _addFooterToDelaySpecifierGroup];
    }
  }

  else
  {
    [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceValueFromUser:value];
  }

  v8 = specifierCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __64__AXUISettingsNumericalPickerViewController_specifier_setValue___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD888];
  v2 = [*(a1 + 32) stringValueForSpecifier:*(a1 + 40)];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(AXUISettingsNumericalPickerViewController *)self valueForSpecifier:specifier];

  return [(AXUISettingsNumericalPickerViewController *)self localizedTextForValue:?];
}

@end