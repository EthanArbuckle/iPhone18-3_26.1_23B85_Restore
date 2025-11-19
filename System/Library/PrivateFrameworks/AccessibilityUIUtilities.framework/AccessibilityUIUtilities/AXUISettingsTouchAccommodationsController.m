@interface AXUISettingsTouchAccommodationsController
- (BOOL)_shouldShowSwipeGesturesSpecifiersWithTapAssistance;
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)_durationSpecifiersWithName:(id)a3 groupIdentifier:(id)a4 footerText:(id)a5 set:(SEL)a6 get:(SEL)a7 previousSpecifierIdentifier:(id)a8 conditionalSpecifiers:(id)a9;
- (id)_holdDurationEnabled:(id)a3;
- (id)_holdDurationSpecifiers;
- (id)_ignoreRepeatEnabled:(id)a3;
- (id)_ignoreRepeatSpecifiers;
- (id)_swipeGesturesEnabled:(id)a3;
- (id)_swipeGesturesSpecifiers;
- (id)_tapActivationMethodSpecifiers;
- (id)activationMethod:(id)a3;
- (id)holdDuration:(id)a3;
- (id)ignoreRepeat:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)touchAccommodationsEnabled:(id)a3;
- (void)_setHoldDurationEnabled:(id)a3 specifier:(id)a4;
- (void)_setIgnoreRepeatEnabled:(id)a3 specifier:(id)a4;
- (void)_showOrHideTapTimeoutAnimated:(BOOL)a3;
- (void)_updateDelayPickerSpecifier:(id)a3 additionalSpecifiers:(id)a4 afterSpecifierWithIdentifier:(id)a5 enabled:(BOOL)a6;
- (void)_updateMasterSwitchFooterText;
- (void)_updateMasterSwitchFooterTextForSpecifier:(id)a3 shouldReload:(BOOL)a4;
- (void)_updateSwipeGesturesSpecifiers;
- (void)setTouchAccommodationsEnabled:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXUISettingsTouchAccommodationsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v6 viewDidLoad];
  v3 = [(AXUISettingsTouchAccommodationsController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)AXUISettingsEditableTableCellWithStepper];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsTouchAccommodationsController *)&v4 viewWillAppear:a3];
  [(AXUISettingsTouchAccommodationsController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    [v6 setIdentifier:@"TouchAccommodationsMasterSwitch"];
    [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterTextForSpecifier:v6 shouldReload:0];
    if ([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsAreConfigured])
    {
      v7 = AXLocStringKeyForHomeButton();
      v8 = AXLocStringKeyForModel();
      v9 = AXUILocalizedStringForKey(v8);
    }

    else
    {
      v9 = AXUILocalizedStringForKey(@"TOUCH_ACCOMMODATIONS_FOOTER_TEXT_UNCONFIGURED");
    }

    [v6 setProperty:v9 forKey:*MEMORY[0x1E69C5900]];

    [v5 addObject:v6];
    v10 = MEMORY[0x1E69C5748];
    v11 = AXUILocalizedStringForKey(@"TOUCH_ACCOMMODATIONS");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel_setTouchAccommodationsEnabled_specifier_ get:sel_touchAccommodationsEnabled_ detail:0 cell:6 edit:0];

    [v12 setProperty:@"TOUCH_ACCOMMODATIONS_SWITCHER" forKey:*MEMORY[0x1E69C5918]];
    [v5 addObject:v12];
    v13 = [(AXUISettingsTouchAccommodationsController *)self _holdDurationSpecifiers];
    [v5 addObjectsFromArray:v13];

    if ([(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithHoldDuration])
    {
      v14 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
      [v5 addObjectsFromArray:v14];
    }

    v15 = [(AXUISettingsTouchAccommodationsController *)self _ignoreRepeatSpecifiers];
    [v5 addObjectsFromArray:v15];

    v16 = [(AXUISettingsTouchAccommodationsController *)self _tapActivationMethodSpecifiers];
    [v5 addObjectsFromArray:v16];

    if ([(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithTapAssistance])
    {
      v17 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
      [v5 addObjectsFromArray:v17];
    }

    v18 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)touchAccommodationsEnabled:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setTouchAccommodationsEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsEnabled:v5];
}

- (id)holdDuration:(id)a3
{
  if ([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDurationEnabled])
  {
    [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDuration];
    AXLocalizedTimeSummary(0, v4);
  }

  else
  {
    AXUILocalizedStringForKey(@"OFF");
  }
  v5 = ;

  return v5;
}

- (id)ignoreRepeat:(id)a3
{
  if ([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatEnabled])
  {
    [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatDuration];
    AXLocalizedTimeSummary(0, v4);
  }

  else
  {
    AXUILocalizedStringForKey(@"OFF");
  }
  v5 = ;

  return v5;
}

- (id)activationMethod:(id)a3
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXUILocalizedStringForKey(off_1E812E578[v3]);
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a4;
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"ActivationMethod"];
  if (v8)
  {
    [v9 setChecked:{-[AXUISettingsTouchAccommodationsController touchAccommodationsTapActivationMethod](self, "touchAccommodationsTapActivationMethod") == objc_msgSend(v8, "intValue")}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v28 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(AXUISettingsBaseListController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"ActivationMethod"];
  if (v9)
  {
    v21 = v8;
    v22 = v7;
    v20 = v9;
    v10 = [v9 intValue];
    [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsTapActivationMethod:v10];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v6;
    v11 = [v6 visibleCells];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 specifier];
          v18 = [v17 propertyForKey:@"ActivationMethod"];
          v19 = v18;
          if (v18)
          {
            [v16 setChecked:{objc_msgSend(v18, "intValue") == v10}];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
    [(AXUISettingsTouchAccommodationsController *)self _showOrHideTapTimeoutAnimated:1];
    [(AXUISettingsTouchAccommodationsController *)self _updateSwipeGesturesSpecifiers];
    v7 = v22;
    v6 = v23;
    v9 = v20;
    v8 = v21;
  }
}

- (double)minimumValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (v5 == v4)
  {
    v7 = MEMORY[0x1E69889B0];
  }

  else
  {
    v6 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    v7 = MEMORY[0x1E69889D0];
    if (v6 == v4)
    {
      v7 = MEMORY[0x1E69889A0];
    }
  }

  v8 = *v7;

  return v8;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (v5 == v4)
  {
    v7 = MEMORY[0x1E69889A8];
  }

  else
  {
    v6 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    v7 = MEMORY[0x1E69889C8];
    if (v6 == v4)
    {
      v7 = MEMORY[0x1E6988998];
    }
  }

  v8 = *v7;

  return v8;
}

- (double)valueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (v5 == v4)
  {
    [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatDuration];
  }

  else
  {
    v6 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    if (v6 == v4)
    {
      [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDuration];
    }

    else
    {
      [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationTimeout];
    }
  }

  v8 = v7;

  return v8;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v8 = a3;
  v6 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (v6 == v8)
  {
    [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsIgnoreRepeatDuration:a4];
  }

  else
  {
    v7 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    if (v7 == v8)
    {
      [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsHoldDuration:a4];
    }

    else
    {
      [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsTapActivationTimeout:a4];
    }
  }
}

- (id)stringValueForSpecifier:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  [(AXUISettingsTouchAccommodationsController *)self valueForSpecifier:a3];
  v4 = [v3 numberWithDouble:?];
  v5 = AXFormatNumberWithOptions();

  return v5;
}

- (void)_updateMasterSwitchFooterText
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TouchAccommodationsMasterSwitch"];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterTextForSpecifier:v3 shouldReload:1];
}

- (void)_updateMasterSwitchFooterTextForSpecifier:(id)a3 shouldReload:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if ([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsAreConfigured])
  {
    v6 = AXLocStringKeyForHomeButton();
    v7 = AXLocStringKeyForModel();
    v8 = AXUILocalizedStringForKey(v7);
  }

  else
  {
    v8 = AXUILocalizedStringForKey(@"TOUCH_ACCOMMODATIONS_FOOTER_TEXT_UNCONFIGURED");
  }

  v9 = *MEMORY[0x1E69C5900];
  v10 = [v12 propertyForKey:*MEMORY[0x1E69C5900]];
  v11 = [v10 isEqualToString:v8];

  if ((v11 & 1) == 0)
  {
    [v12 setProperty:v8 forKey:v9];
    if (v4)
    {
      [(AXUISettingsTouchAccommodationsController *)self reloadSpecifier:v12 animated:1];
    }
  }
}

- (id)_tapActivationMethodSpecifiers
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E69C5748];
  v4 = AXUILocalizedStringForKey(@"ACTIVATION_METHOD");
  v5 = [v3 groupSpecifierWithName:v4];

  v6 = AXUILocalizedStringForKey(@"ACTIVATION_METHOD_FOOTER_TEXT");
  v25 = *MEMORY[0x1E69C5900];
  [v5 setProperty:v6 forKey:?];

  [v2 addObject:v5];
  v7 = MEMORY[0x1E69C5748];
  v8 = AXUILocalizedStringForKey(@"OFF");
  v9 = [v7 preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  v10 = *MEMORY[0x1E69C5918];
  [v9 setProperty:@"OFF" forKey:*MEMORY[0x1E69C5918]];
  [v9 setProperty:&unk_1F4051B30 forKey:@"ActivationMethod"];
  [v2 addObject:v9];
  v11 = MEMORY[0x1E69C5748];
  v12 = AXUILocalizedStringForKey(@"ACTIVATE_ON_TOUCH");
  v13 = [v11 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setProperty:@"ACTIVATE_ON_TOUCH" forKey:v10];
  [v13 setProperty:&unk_1F4051B48 forKey:@"ActivationMethod"];
  [v2 addObject:v13];
  v14 = MEMORY[0x1E69C5748];
  v15 = AXUILocalizedStringForKey(@"ACTIVATE_ON_RELEASE");
  v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v16 setProperty:@"ACTIVATE_ON_RELEASE" forKey:v10];
  [v16 setProperty:&unk_1F4051B60 forKey:@"ActivationMethod"];
  [v2 addObject:v16];
  v17 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];

  if (!v17)
  {
    v18 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"TimerSpecifierGroup"];
    v19 = AXUILocalizedStringForKey(@"ACTIVATE_TAP_TIMEOUT");
    [v18 setName:v19];

    v20 = AXUILocalizedStringForKey(@"ACTIVATE_TAP_TIMEOUT_FOOTER");
    [v18 setProperty:v20 forKey:v25];

    [v18 setProperty:@"TimerSpecifierGroup" forKey:v10];
    v21 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
    [v21 setProperty:@"TimerSpecifier" forKey:v10];
    v27[0] = v18;
    v27[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [(AXUISettingsTouchAccommodationsController *)self setTapTimeoutSpecifiers:v22];
  }

  if (([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod]- 1) <= 1)
  {
    v23 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [v2 addObjectsFromArray:v23];
  }

  return v2;
}

- (void)_showOrHideTapTimeoutAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  v6 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TimerSpecifierGroup"];

  if ((v5 - 1) > 1)
  {
    if (!v6)
    {
      return;
    }

    v7 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TimerSpecifier"];
    v12 = [(AXUISettingsTouchAccommodationsController *)self indexPathForSpecifier:v7];

    v8 = [(AXUISettingsTouchAccommodationsController *)self table];
    v9 = [v8 cellForRowAtIndexPath:v12];

    v10 = [v9 nameTextField];
    [v10 resignFirstResponder];

    v11 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:v11 animated:v3];
  }

  else
  {
    if (v6)
    {
      return;
    }

    v12 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [AXUISettingsTouchAccommodationsController insertContiguousSpecifiers:"insertContiguousSpecifiers:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
  }
}

- (void)_setIgnoreRepeatEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsIgnoreRepeatEnabled:v5];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
  v6 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];
  [(AXUISettingsTouchAccommodationsController *)self _updateDelayPickerSpecifier:v6 additionalSpecifiers:0 afterSpecifierWithIdentifier:@"IgnoreRepeat" enabled:v5];
}

- (id)_ignoreRepeatEnabled:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatEnabled];

  return [v3 numberWithBool:v4];
}

- (id)_ignoreRepeatSpecifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
    [(AXUISettingsTouchAccommodationsController *)self setIgnoreRepeatPickerSpecifier:v4];
  }

  v5 = AXUILocalizedStringForKey(@"IGNORE_REPEAT");
  v6 = AXUILocalizedStringForKey(@"IGNORE_REPEAT_FOOTER_TEXT");
  v7 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(AXUISettingsTouchAccommodationsController *)self _durationSpecifiersWithName:v5 groupIdentifier:@"IgnoreRepeatGroup" footerText:v6 set:sel__setIgnoreRepeatEnabled_specifier_ get:sel__ignoreRepeatEnabled_ previousSpecifierIdentifier:@"IgnoreRepeat" conditionalSpecifiers:v8];

  return v9;
}

- (void)_setHoldDurationEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsHoldDurationEnabled:v5];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
  v6 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];
  [(AXUISettingsTouchAccommodationsController *)self _updateDelayPickerSpecifier:v6 additionalSpecifiers:0 afterSpecifierWithIdentifier:@"HoldDuration" enabled:v5];

  [(AXUISettingsTouchAccommodationsController *)self _updateSwipeGesturesSpecifiers];
}

- (id)_holdDurationEnabled:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDurationEnabled];

  return [v3 numberWithBool:v4];
}

- (id)_holdDurationSpecifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
    [(AXUISettingsTouchAccommodationsController *)self setHoldDurationPickerSpecifier:v4];
  }

  v5 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v7 = AXUILocalizedStringForKey(@"HOLD_DURATION");
  v8 = AXUILocalizedStringForKey(@"HOLD_DURATION_FOOTER_TEXT");
  v9 = [(AXUISettingsTouchAccommodationsController *)self _durationSpecifiersWithName:v7 groupIdentifier:@"HoldDurationGroup" footerText:v8 set:sel__setHoldDurationEnabled_specifier_ get:sel__holdDurationEnabled_ previousSpecifierIdentifier:@"HoldDuration" conditionalSpecifiers:v6];

  return v9;
}

- (BOOL)_shouldShowSwipeGesturesSpecifiersWithTapAssistance
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  if (v3)
  {
    LOBYTE(v3) = ![(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDurationEnabled];
  }

  return v3;
}

- (void)_updateSwipeGesturesSpecifiers
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self indexOfSpecifierID:@"IgnoreRepeatGroup"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    _AXAssert();
  }

  v4 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];
    v7 = [v6 lastObject];

    v8 = [*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]) indexOfObject:v7];
    v9 = 0;
    v10 = 0;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8 < v3;
      v9 = v8 > v3;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = [(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithHoldDuration];
  v12 = [(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithTapAssistance];
  v13 = v12;
  if (!v11 && v10 || v9 && !v12)
  {
    v14 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:v14 animated:1];
  }

  if (v10 || !v11)
  {
    if (v9 || !v13)
    {
      return;
    }

    v16 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [AXUISettingsTouchAccommodationsController addSpecifiersFromArray:"addSpecifiersFromArray:animated:" animated:?];
  }

  else
  {
    v16 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [AXUISettingsTouchAccommodationsController insertContiguousSpecifiers:"insertContiguousSpecifiers:atIndex:animated:" atIndex:? animated:?];
  }
}

- (id)_swipeGesturesSpecifiers
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v5 = MEMORY[0x1E69C5748];
    v6 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:sel__swipeGesturesEnabled_ detail:-[AXUISettingsTouchAccommodationsController touchAccomodationsSwipeGestureViewControllerClass](self cell:"touchAccomodationsSwipeGestureViewControllerClass") edit:{2, 0}];

    v11[0] = v4;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(AXUISettingsTouchAccommodationsController *)self setSwipeGesturesSpecifiers:v8];
  }

  v9 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];

  return v9;
}

- (id)_swipeGesturesEnabled:(id)a3
{
  if ([(AXUISettingsTouchAccommodationsController *)self touchAccommodationsAllowsSwipeGesturesToBypass])
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  v4 = AXUILocalizedStringForKey(v3);

  return v4;
}

- (void)_updateDelayPickerSpecifier:(id)a3 additionalSpecifiers:(id)a4 afterSpecifierWithIdentifier:(id)a5 enabled:(BOOL)a6
{
  v6 = a6;
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(AXUISettingsTouchAccommodationsController *)self specifiers];
  v13 = [v12 containsObject:v19];

  if (v6)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithObject:v19];
    [v14 addObjectsFromArray:v10];
    [(AXUISettingsTouchAccommodationsController *)self insertContiguousSpecifiers:v14 afterSpecifierID:v11 animated:1];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithObject:v19];
    [v14 addObjectsFromArray:v10];
    v15 = [(AXUISettingsTouchAccommodationsController *)self indexPathForSpecifier:v19];
    v16 = [(AXUISettingsTouchAccommodationsController *)self table];
    v17 = [v16 cellForRowAtIndexPath:v15];

    v18 = [v17 nameTextField];
    [v18 resignFirstResponder];

    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:v14 animated:1];
  }

LABEL_7:
}

- (id)_durationSpecifiersWithName:(id)a3 groupIdentifier:(id)a4 footerText:(id)a5 set:(SEL)a6 get:(SEL)a7 previousSpecifierIdentifier:(id)a8 conditionalSpecifiers:(id)a9
{
  v14 = a9;
  v15 = MEMORY[0x1E695DF70];
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v15 array];
  v21 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v19];
  [v21 setProperty:v18 forKey:*MEMORY[0x1E69C5918]];

  [v21 setProperty:v17 forKey:*MEMORY[0x1E69C5900]];
  [v20 addObject:v21];
  v22 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v19 target:self set:a6 get:a7 detail:0 cell:6 edit:0];

  [v22 setIdentifier:v16];
  [v20 addObject:v22];
  if ([-[AXUISettingsTouchAccommodationsController performSelector:withObject:](self performSelector:a7 withObject:{0), "BOOLValue"}])
  {
    [v20 addObjectsFromArray:v14];
  }

  return v20;
}

@end