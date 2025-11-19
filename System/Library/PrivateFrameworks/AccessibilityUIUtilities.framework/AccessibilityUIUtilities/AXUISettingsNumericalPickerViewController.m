@interface AXUISettingsNumericalPickerViewController
- (double)valueForSpecifier:(id)a3;
- (id)_delayPickerSpecifier;
- (id)delayEnabled:(id)a3;
- (id)infiniteTime:(id)a3;
- (id)localizedTextForValue:(double)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)_addFooterToDelaySpecifierGroup;
- (void)_updateEnabledStateForDelay;
- (void)setDelayEnabled:(id)a3 specifier:(id)a4;
- (void)setInfiniteTimeEnabled:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AXUISettingsNumericalPickerViewController

- (id)localizedTextForValue:(double)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXUISettingsNumericalPickerViewController;
  [(AXUISettingsSetupCapableListController *)&v6 viewDidLoad];
  self->_cachedNumericalValue = 3.40282347e38;
  v3 = [(AXUISettingsNumericalPickerViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)AXUISettingsEditableTableCellWithStepper];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

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
      v6 = [(AXUISettingsNumericalPickerViewController *)self shouldDisablePreferenceEntirely];
      v7 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      v8 = [(AXUISettingsNumericalPickerViewController *)self localizedFooterText];
      v9 = *MEMORY[0x1E69C5900];
      [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5900]];

      [v5 addObject:v7];
      v10 = MEMORY[0x1E69C5748];
      v11 = [(AXUISettingsNumericalPickerViewController *)self localizedTitle];
      v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel_setDelayEnabled_specifier_ get:sel_delayEnabled_ detail:0 cell:6 edit:0];

      [v12 setIdentifier:@"NumericalPreferenceSwitcherIdentifier"];
      if (v6)
      {
        [v12 setProperty:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69C58C8]];
      }

      [v5 addObject:v12];
      v13 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [v13 setIdentifier:@"NumericalPreferencePickerGroupIdentifier"];
      [v5 addObject:v13];
      if (!(v6 | ![(AXUISettingsNumericalPickerViewController *)self numericalPreferenceEnabled]))
      {
        v14 = [(AXUISettingsNumericalPickerViewController *)self localizedPickerFooterText];
        [v13 setProperty:v14 forKey:v9];

        v26 = v13;
        [(AXUISettingsNumericalPickerViewController *)self configureSpecifier:&v26];
        v15 = v26;

        v16 = [(AXUISettingsNumericalPickerViewController *)self _delayPickerSpecifier];
        [v5 addObject:v16];

        v13 = v15;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69C5748];
      v18 = [(AXUISettingsNumericalPickerViewController *)self localizedTitle];
      v7 = [v17 groupSpecifierWithName:v18];

      [v7 setIdentifier:@"NumericalPreferencePickerGroupIdentifier"];
      v12 = [(AXUISettingsNumericalPickerViewController *)self localizedFooterText];
      if (v12)
      {
        [v7 setProperty:v12 forKey:*MEMORY[0x1E69C5900]];
      }

      [v5 addObject:v7];
      v19 = [(AXUISettingsNumericalPickerViewController *)self _delayPickerSpecifier];
      [v5 addObject:v19];
    }

    if ([(AXUISettingsNumericalPickerViewController *)self supportsInfiniteTime])
    {
      v20 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [v5 addObject:v20];
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
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:@"NumericalPreferencePickerIdentifier"];

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

- (void)setInfiniteTimeEnabled:(id)a3 specifier:(id)a4
{
  -[AXUISettingsNumericalPickerViewController setInfiniteTimeEnabled:](self, "setInfiniteTimeEnabled:", [a3 BOOLValue]);

  [(AXUISettingsNumericalPickerViewController *)self _updateEnabledStateForDelay];
}

- (id)infiniteTime:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AXUISettingsNumericalPickerViewController *)self infiniteTimeEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setDelayEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceEnabledFromUser:v5];
  if (v5)
  {
    if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit]&& fabs(self->_cachedNumericalValue + -3.40282347e38) >= 2.22044605e-16)
    {
      [(AXUISettingsNumericalPickerViewController *)self _addFooterToDelaySpecifierGroup];
    }

    v6 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerGroupIdentifier"];
    v7 = [(AXUISettingsNumericalPickerViewController *)self localizedPickerFooterText];
    [v6 setProperty:v7 forKey:*MEMORY[0x1E69C5900]];

    v15 = v6;
    [(AXUISettingsNumericalPickerViewController *)self configureSpecifier:&v15];
    v8 = v15;

    [(AXUISettingsNumericalPickerViewController *)self reloadSpecifier:v8];
  }

  else
  {
    v9 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerIdentifier"];
    v10 = [(AXUISettingsNumericalPickerViewController *)self indexPathForSpecifier:v9];

    v11 = [(AXUISettingsNumericalPickerViewController *)self table];
    v12 = [v11 cellForRowAtIndexPath:v10];

    v13 = [v12 nameTextField];
    [v13 resignFirstResponder];

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

- (id)delayEnabled:(id)a3
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXUISettingsNumericalPickerViewController;
  [(AXUISettingsNumericalPickerViewController *)&v4 viewWillDisappear:a3];
  if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit])
  {
    if (fabs(self->_cachedNumericalValue + -3.40282347e38) >= 2.22044605e-16)
    {
      [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceValueFromUser:?];
    }
  }
}

- (double)valueForSpecifier:(id)a3
{
  result = self->_cachedNumericalValue;
  if (fabs(result + -3.40282347e38) < 2.22044605e-16)
  {
    [(AXUISettingsNumericalPickerViewController *)self numericalPreferenceValue];
  }

  return result;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = a3;
  if ([(AXUISettingsNumericalPickerViewController *)self shouldSaveOnExit])
  {
    self->_cachedNumericalValue = a4;
    v7 = [(AXUISettingsNumericalPickerViewController *)self specifierForID:@"NumericalPreferencePickerDelayFooterIdentifier"];

    if (!v7)
    {
      [(AXUISettingsNumericalPickerViewController *)self _addFooterToDelaySpecifierGroup];
    }
  }

  else
  {
    [(AXUISettingsNumericalPickerViewController *)self setNumericalPreferenceValueFromUser:a4];
  }

  v8 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __64__AXUISettingsNumericalPickerViewController_specifier_setValue___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD888];
  v2 = [*(a1 + 32) stringValueForSpecifier:*(a1 + 40)];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)stringValueForSpecifier:(id)a3
{
  [(AXUISettingsNumericalPickerViewController *)self valueForSpecifier:a3];

  return [(AXUISettingsNumericalPickerViewController *)self localizedTextForValue:?];
}

@end