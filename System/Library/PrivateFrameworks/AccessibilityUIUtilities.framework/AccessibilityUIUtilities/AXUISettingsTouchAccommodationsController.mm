@interface AXUISettingsTouchAccommodationsController
- (BOOL)_shouldShowSwipeGesturesSpecifiersWithTapAssistance;
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)_durationSpecifiersWithName:(id)name groupIdentifier:(id)identifier footerText:(id)text set:(SEL)set get:(SEL)get previousSpecifierIdentifier:(id)specifierIdentifier conditionalSpecifiers:(id)specifiers;
- (id)_holdDurationEnabled:(id)enabled;
- (id)_holdDurationSpecifiers;
- (id)_ignoreRepeatEnabled:(id)enabled;
- (id)_ignoreRepeatSpecifiers;
- (id)_swipeGesturesEnabled:(id)enabled;
- (id)_swipeGesturesSpecifiers;
- (id)_tapActivationMethodSpecifiers;
- (id)activationMethod:(id)method;
- (id)holdDuration:(id)duration;
- (id)ignoreRepeat:(id)repeat;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)touchAccommodationsEnabled:(id)enabled;
- (void)_setHoldDurationEnabled:(id)enabled specifier:(id)specifier;
- (void)_setIgnoreRepeatEnabled:(id)enabled specifier:(id)specifier;
- (void)_showOrHideTapTimeoutAnimated:(BOOL)animated;
- (void)_updateDelayPickerSpecifier:(id)specifier additionalSpecifiers:(id)specifiers afterSpecifierWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)_updateMasterSwitchFooterText;
- (void)_updateMasterSwitchFooterTextForSpecifier:(id)specifier shouldReload:(BOOL)reload;
- (void)_updateSwipeGesturesSpecifiers;
- (void)setTouchAccommodationsEnabled:(id)enabled specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXUISettingsTouchAccommodationsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v6 viewDidLoad];
  table = [(AXUISettingsTouchAccommodationsController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)AXUISettingsEditableTableCellWithStepper];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsTouchAccommodationsController *)&v4 viewWillAppear:appear];
  [(AXUISettingsTouchAccommodationsController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    [emptyGroupSpecifier setIdentifier:@"TouchAccommodationsMasterSwitch"];
    [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterTextForSpecifier:emptyGroupSpecifier shouldReload:0];
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

    [emptyGroupSpecifier setProperty:v9 forKey:*MEMORY[0x1E69C5900]];

    [array addObject:emptyGroupSpecifier];
    v10 = MEMORY[0x1E69C5748];
    v11 = AXUILocalizedStringForKey(@"TOUCH_ACCOMMODATIONS");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel_setTouchAccommodationsEnabled_specifier_ get:sel_touchAccommodationsEnabled_ detail:0 cell:6 edit:0];

    [v12 setProperty:@"TOUCH_ACCOMMODATIONS_SWITCHER" forKey:*MEMORY[0x1E69C5918]];
    [array addObject:v12];
    _holdDurationSpecifiers = [(AXUISettingsTouchAccommodationsController *)self _holdDurationSpecifiers];
    [array addObjectsFromArray:_holdDurationSpecifiers];

    if ([(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithHoldDuration])
    {
      _swipeGesturesSpecifiers = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
      [array addObjectsFromArray:_swipeGesturesSpecifiers];
    }

    _ignoreRepeatSpecifiers = [(AXUISettingsTouchAccommodationsController *)self _ignoreRepeatSpecifiers];
    [array addObjectsFromArray:_ignoreRepeatSpecifiers];

    _tapActivationMethodSpecifiers = [(AXUISettingsTouchAccommodationsController *)self _tapActivationMethodSpecifiers];
    [array addObjectsFromArray:_tapActivationMethodSpecifiers];

    if ([(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithTapAssistance])
    {
      _swipeGesturesSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
      [array addObjectsFromArray:_swipeGesturesSpecifiers2];
    }

    v18 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)touchAccommodationsEnabled:(id)enabled
{
  v3 = MEMORY[0x1E696AD98];
  touchAccommodationsEnabled = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsEnabled];

  return [v3 numberWithBool:touchAccommodationsEnabled];
}

- (void)setTouchAccommodationsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsEnabled:bOOLValue];
}

- (id)holdDuration:(id)duration
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

- (id)ignoreRepeat:(id)repeat
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

- (id)activationMethod:(id)method
{
  touchAccommodationsTapActivationMethod = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  if (touchAccommodationsTapActivationMethod > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXUILocalizedStringForKey(off_1E812E578[touchAccommodationsTapActivationMethod]);
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"ActivationMethod"];
  if (v8)
  {
    [cellCopy setChecked:{-[AXUISettingsTouchAccommodationsController touchAccommodationsTapActivationMethod](self, "touchAccommodationsTapActivationMethod") == objc_msgSend(v8, "intValue")}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = AXUISettingsTouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v28 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(AXUISettingsBaseListController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ActivationMethod"];
  if (v9)
  {
    v21 = v8;
    v22 = pathCopy;
    v20 = v9;
    intValue = [v9 intValue];
    [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsTapActivationMethod:intValue];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = viewCopy;
    visibleCells = [viewCopy visibleCells];
    v12 = [visibleCells countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          specifier = [v16 specifier];
          v18 = [specifier propertyForKey:@"ActivationMethod"];
          v19 = v18;
          if (v18)
          {
            [v16 setChecked:{objc_msgSend(v18, "intValue") == intValue}];
          }
        }

        v13 = [visibleCells countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
    [(AXUISettingsTouchAccommodationsController *)self _showOrHideTapTimeoutAnimated:1];
    [(AXUISettingsTouchAccommodationsController *)self _updateSwipeGesturesSpecifiers];
    pathCopy = v22;
    viewCopy = v23;
    v9 = v20;
    v8 = v21;
  }
}

- (double)minimumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (ignoreRepeatPickerSpecifier == specifierCopy)
  {
    v7 = MEMORY[0x1E69889B0];
  }

  else
  {
    holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    v7 = MEMORY[0x1E69889D0];
    if (holdDurationPickerSpecifier == specifierCopy)
    {
      v7 = MEMORY[0x1E69889A0];
    }
  }

  v8 = *v7;

  return v8;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (ignoreRepeatPickerSpecifier == specifierCopy)
  {
    v7 = MEMORY[0x1E69889A8];
  }

  else
  {
    holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    v7 = MEMORY[0x1E69889C8];
    if (holdDurationPickerSpecifier == specifierCopy)
    {
      v7 = MEMORY[0x1E6988998];
    }
  }

  v8 = *v7;

  return v8;
}

- (double)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (ignoreRepeatPickerSpecifier == specifierCopy)
  {
    [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatDuration];
  }

  else
  {
    holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    if (holdDurationPickerSpecifier == specifierCopy)
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

- (void)specifier:(id)specifier setValue:(double)value
{
  specifierCopy = specifier;
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (ignoreRepeatPickerSpecifier == specifierCopy)
  {
    [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsIgnoreRepeatDuration:value];
  }

  else
  {
    holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

    if (holdDurationPickerSpecifier == specifierCopy)
    {
      [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsHoldDuration:value];
    }

    else
    {
      [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsTapActivationTimeout:value];
    }
  }
}

- (id)stringValueForSpecifier:(id)specifier
{
  v3 = MEMORY[0x1E696AD98];
  [(AXUISettingsTouchAccommodationsController *)self valueForSpecifier:specifier];
  v4 = [v3 numberWithDouble:?];
  v5 = AXFormatNumberWithOptions();

  return v5;
}

- (void)_updateMasterSwitchFooterText
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TouchAccommodationsMasterSwitch"];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterTextForSpecifier:v3 shouldReload:1];
}

- (void)_updateMasterSwitchFooterTextForSpecifier:(id)specifier shouldReload:(BOOL)reload
{
  reloadCopy = reload;
  specifierCopy = specifier;
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
  v10 = [specifierCopy propertyForKey:*MEMORY[0x1E69C5900]];
  v11 = [v10 isEqualToString:v8];

  if ((v11 & 1) == 0)
  {
    [specifierCopy setProperty:v8 forKey:v9];
    if (reloadCopy)
    {
      [(AXUISettingsTouchAccommodationsController *)self reloadSpecifier:specifierCopy animated:1];
    }
  }
}

- (id)_tapActivationMethodSpecifiers
{
  v27[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E69C5748];
  v4 = AXUILocalizedStringForKey(@"ACTIVATION_METHOD");
  v5 = [v3 groupSpecifierWithName:v4];

  v6 = AXUILocalizedStringForKey(@"ACTIVATION_METHOD_FOOTER_TEXT");
  v25 = *MEMORY[0x1E69C5900];
  [v5 setProperty:v6 forKey:?];

  [array addObject:v5];
  v7 = MEMORY[0x1E69C5748];
  v8 = AXUILocalizedStringForKey(@"OFF");
  v9 = [v7 preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  v10 = *MEMORY[0x1E69C5918];
  [v9 setProperty:@"OFF" forKey:*MEMORY[0x1E69C5918]];
  [v9 setProperty:&unk_1F4051B30 forKey:@"ActivationMethod"];
  [array addObject:v9];
  v11 = MEMORY[0x1E69C5748];
  v12 = AXUILocalizedStringForKey(@"ACTIVATE_ON_TOUCH");
  v13 = [v11 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setProperty:@"ACTIVATE_ON_TOUCH" forKey:v10];
  [v13 setProperty:&unk_1F4051B48 forKey:@"ActivationMethod"];
  [array addObject:v13];
  v14 = MEMORY[0x1E69C5748];
  v15 = AXUILocalizedStringForKey(@"ACTIVATE_ON_RELEASE");
  v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v16 setProperty:@"ACTIVATE_ON_RELEASE" forKey:v10];
  [v16 setProperty:&unk_1F4051B60 forKey:@"ActivationMethod"];
  [array addObject:v16];
  tapTimeoutSpecifiers = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];

  if (!tapTimeoutSpecifiers)
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
    tapTimeoutSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [array addObjectsFromArray:tapTimeoutSpecifiers2];
  }

  return array;
}

- (void)_showOrHideTapTimeoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  touchAccommodationsTapActivationMethod = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  v6 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TimerSpecifierGroup"];

  if ((touchAccommodationsTapActivationMethod - 1) > 1)
  {
    if (!v6)
    {
      return;
    }

    v7 = [(AXUISettingsTouchAccommodationsController *)self specifierForID:@"TimerSpecifier"];
    tapTimeoutSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self indexPathForSpecifier:v7];

    table = [(AXUISettingsTouchAccommodationsController *)self table];
    v9 = [table cellForRowAtIndexPath:tapTimeoutSpecifiers2];

    nameTextField = [v9 nameTextField];
    [nameTextField resignFirstResponder];

    tapTimeoutSpecifiers = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:tapTimeoutSpecifiers animated:animatedCopy];
  }

  else
  {
    if (v6)
    {
      return;
    }

    tapTimeoutSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self tapTimeoutSpecifiers];
    [AXUISettingsTouchAccommodationsController insertContiguousSpecifiers:"insertContiguousSpecifiers:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
  }
}

- (void)_setIgnoreRepeatEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsIgnoreRepeatEnabled:bOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];
  [(AXUISettingsTouchAccommodationsController *)self _updateDelayPickerSpecifier:ignoreRepeatPickerSpecifier additionalSpecifiers:0 afterSpecifierWithIdentifier:@"IgnoreRepeat" enabled:bOOLValue];
}

- (id)_ignoreRepeatEnabled:(id)enabled
{
  v3 = MEMORY[0x1E696AD98];
  touchAccommodationsIgnoreRepeatEnabled = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsIgnoreRepeatEnabled];

  return [v3 numberWithBool:touchAccommodationsIgnoreRepeatEnabled];
}

- (id)_ignoreRepeatSpecifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  ignoreRepeatPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];

  if (!ignoreRepeatPickerSpecifier)
  {
    v4 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
    [(AXUISettingsTouchAccommodationsController *)self setIgnoreRepeatPickerSpecifier:v4];
  }

  v5 = AXUILocalizedStringForKey(@"IGNORE_REPEAT");
  v6 = AXUILocalizedStringForKey(@"IGNORE_REPEAT_FOOTER_TEXT");
  ignoreRepeatPickerSpecifier2 = [(AXUISettingsTouchAccommodationsController *)self ignoreRepeatPickerSpecifier];
  v11[0] = ignoreRepeatPickerSpecifier2;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(AXUISettingsTouchAccommodationsController *)self _durationSpecifiersWithName:v5 groupIdentifier:@"IgnoreRepeatGroup" footerText:v6 set:sel__setIgnoreRepeatEnabled_specifier_ get:sel__ignoreRepeatEnabled_ previousSpecifierIdentifier:@"IgnoreRepeat" conditionalSpecifiers:v8];

  return v9;
}

- (void)_setHoldDurationEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self setTouchAccommodationsHoldDurationEnabled:bOOLValue];
  [(AXUISettingsTouchAccommodationsController *)self _updateMasterSwitchFooterText];
  holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];
  [(AXUISettingsTouchAccommodationsController *)self _updateDelayPickerSpecifier:holdDurationPickerSpecifier additionalSpecifiers:0 afterSpecifierWithIdentifier:@"HoldDuration" enabled:bOOLValue];

  [(AXUISettingsTouchAccommodationsController *)self _updateSwipeGesturesSpecifiers];
}

- (id)_holdDurationEnabled:(id)enabled
{
  v3 = MEMORY[0x1E696AD98];
  touchAccommodationsHoldDurationEnabled = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDurationEnabled];

  return [v3 numberWithBool:touchAccommodationsHoldDurationEnabled];
}

- (id)_holdDurationSpecifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  holdDurationPickerSpecifier = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];

  if (!holdDurationPickerSpecifier)
  {
    v4 = [MEMORY[0x1E69C5748] ax_stepperSpecifierWithDelegate:self];
    [(AXUISettingsTouchAccommodationsController *)self setHoldDurationPickerSpecifier:v4];
  }

  holdDurationPickerSpecifier2 = [(AXUISettingsTouchAccommodationsController *)self holdDurationPickerSpecifier];
  v11[0] = holdDurationPickerSpecifier2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v7 = AXUILocalizedStringForKey(@"HOLD_DURATION");
  v8 = AXUILocalizedStringForKey(@"HOLD_DURATION_FOOTER_TEXT");
  v9 = [(AXUISettingsTouchAccommodationsController *)self _durationSpecifiersWithName:v7 groupIdentifier:@"HoldDurationGroup" footerText:v8 set:sel__setHoldDurationEnabled_specifier_ get:sel__holdDurationEnabled_ previousSpecifierIdentifier:@"HoldDuration" conditionalSpecifiers:v6];

  return v9;
}

- (BOOL)_shouldShowSwipeGesturesSpecifiersWithTapAssistance
{
  touchAccommodationsTapActivationMethod = [(AXUISettingsTouchAccommodationsController *)self touchAccommodationsTapActivationMethod];
  if (touchAccommodationsTapActivationMethod)
  {
    LOBYTE(touchAccommodationsTapActivationMethod) = ![(AXUISettingsTouchAccommodationsController *)self touchAccommodationsHoldDurationEnabled];
  }

  return touchAccommodationsTapActivationMethod;
}

- (void)_updateSwipeGesturesSpecifiers
{
  v3 = [(AXUISettingsTouchAccommodationsController *)self indexOfSpecifierID:@"IgnoreRepeatGroup"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    _AXAssert();
  }

  swipeGesturesSpecifiers = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];
  v5 = [swipeGesturesSpecifiers count];

  if (v5)
  {
    swipeGesturesSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];
    lastObject = [swipeGesturesSpecifiers2 lastObject];

    v8 = [*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]) indexOfObject:lastObject];
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

  _shouldShowSwipeGesturesSpecifiersWithHoldDuration = [(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithHoldDuration];
  _shouldShowSwipeGesturesSpecifiersWithTapAssistance = [(AXUISettingsTouchAccommodationsController *)self _shouldShowSwipeGesturesSpecifiersWithTapAssistance];
  v13 = _shouldShowSwipeGesturesSpecifiersWithTapAssistance;
  if (!_shouldShowSwipeGesturesSpecifiersWithHoldDuration && v10 || v9 && !_shouldShowSwipeGesturesSpecifiersWithTapAssistance)
  {
    _swipeGesturesSpecifiers = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:_swipeGesturesSpecifiers animated:1];
  }

  if (v10 || !_shouldShowSwipeGesturesSpecifiersWithHoldDuration)
  {
    if (v9 || !v13)
    {
      return;
    }

    _swipeGesturesSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [AXUISettingsTouchAccommodationsController addSpecifiersFromArray:"addSpecifiersFromArray:animated:" animated:?];
  }

  else
  {
    _swipeGesturesSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self _swipeGesturesSpecifiers];
    [AXUISettingsTouchAccommodationsController insertContiguousSpecifiers:"insertContiguousSpecifiers:atIndex:animated:" atIndex:? animated:?];
  }
}

- (id)_swipeGesturesSpecifiers
{
  v11[2] = *MEMORY[0x1E69E9840];
  swipeGesturesSpecifiers = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];

  if (!swipeGesturesSpecifiers)
  {
    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v5 = MEMORY[0x1E69C5748];
    v6 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:sel__swipeGesturesEnabled_ detail:-[AXUISettingsTouchAccommodationsController touchAccomodationsSwipeGestureViewControllerClass](self cell:"touchAccomodationsSwipeGestureViewControllerClass") edit:{2, 0}];

    v11[0] = emptyGroupSpecifier;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(AXUISettingsTouchAccommodationsController *)self setSwipeGesturesSpecifiers:v8];
  }

  swipeGesturesSpecifiers2 = [(AXUISettingsTouchAccommodationsController *)self swipeGesturesSpecifiers];

  return swipeGesturesSpecifiers2;
}

- (id)_swipeGesturesEnabled:(id)enabled
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

- (void)_updateDelayPickerSpecifier:(id)specifier additionalSpecifiers:(id)specifiers afterSpecifierWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  specifiersCopy = specifiers;
  identifierCopy = identifier;
  specifiers = [(AXUISettingsTouchAccommodationsController *)self specifiers];
  v13 = [specifiers containsObject:specifierCopy];

  if (enabledCopy)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithObject:specifierCopy];
    [v14 addObjectsFromArray:specifiersCopy];
    [(AXUISettingsTouchAccommodationsController *)self insertContiguousSpecifiers:v14 afterSpecifierID:identifierCopy animated:1];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithObject:specifierCopy];
    [v14 addObjectsFromArray:specifiersCopy];
    v15 = [(AXUISettingsTouchAccommodationsController *)self indexPathForSpecifier:specifierCopy];
    table = [(AXUISettingsTouchAccommodationsController *)self table];
    v17 = [table cellForRowAtIndexPath:v15];

    nameTextField = [v17 nameTextField];
    [nameTextField resignFirstResponder];

    [(AXUISettingsTouchAccommodationsController *)self removeContiguousSpecifiers:v14 animated:1];
  }

LABEL_7:
}

- (id)_durationSpecifiersWithName:(id)name groupIdentifier:(id)identifier footerText:(id)text set:(SEL)set get:(SEL)get previousSpecifierIdentifier:(id)specifierIdentifier conditionalSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v15 = MEMORY[0x1E695DF70];
  specifierIdentifierCopy = specifierIdentifier;
  textCopy = text;
  identifierCopy = identifier;
  nameCopy = name;
  array = [v15 array];
  v21 = [MEMORY[0x1E69C5748] groupSpecifierWithName:nameCopy];
  [v21 setProperty:identifierCopy forKey:*MEMORY[0x1E69C5918]];

  [v21 setProperty:textCopy forKey:*MEMORY[0x1E69C5900]];
  [array addObject:v21];
  v22 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:nameCopy target:self set:set get:get detail:0 cell:6 edit:0];

  [v22 setIdentifier:specifierIdentifierCopy];
  [array addObject:v22];
  if ([-[AXUISettingsTouchAccommodationsController performSelector:withObject:](self performSelector:get withObject:{0), "BOOLValue"}])
  {
    [array addObjectsFromArray:specifiersCopy];
  }

  return array;
}

@end