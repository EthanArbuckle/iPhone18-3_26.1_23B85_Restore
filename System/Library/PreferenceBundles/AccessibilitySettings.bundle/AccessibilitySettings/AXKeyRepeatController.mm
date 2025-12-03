@interface AXKeyRepeatController
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)keyRepeatEnabled:(id)enabled;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)setKeyRepeatEnabled:(id)enabled specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
@end

@implementation AXKeyRepeatController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXKeyRepeatController;
  [(AXKeyRepeatController *)&v6 viewDidLoad];
  table = [(AXKeyRepeatController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"KEY_REPEAT_FOOTER", @"KeyboardsSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v22 = v6;
    [v5 addObject:v6];
    v8 = settingsLocString(@"KEY_REPEAT", @"KeyboardsSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setKeyRepeatEnabled:specifier:" get:"keyRepeatEnabled:" detail:0 cell:6 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"KeyRepeatEnabled" forKey:PSIDKey];
    v21 = v9;
    [v5 addObject:v9];
    v11 = settingsLocString(@"KEY_REPEAT_INTERVAL", @"KeyboardsSettings");
    v12 = [PSSpecifier groupSpecifierWithName:v11];

    v13 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v13 setProperty:@"KeyRepeatInterval" forKey:v10];
    v14 = settingsLocString(@"KEY_REPEAT_DELAY", @"KeyboardsSettings");
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    v16 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v16 setProperty:@"KeyRepeatDelay" forKey:v10];
    [(AXKeyRepeatController *)self setKeyRepeatIntervalSpecifier:v13];
    [(AXKeyRepeatController *)self setKeyRepeatDelaySpecifier:v16];
    v23[0] = v12;
    v23[1] = v13;
    v23[2] = v15;
    v23[3] = v16;
    v17 = [NSArray arrayWithObjects:v23 count:4];
    [(AXKeyRepeatController *)self setKeyRepeatSpecificSpecifiers:v17];

    if (_AXSKeyRepeatEnabled())
    {
      keyRepeatSpecificSpecifiers = [(AXKeyRepeatController *)self keyRepeatSpecificSpecifiers];
      [v5 addObjectsFromArray:keyRepeatSpecificSpecifiers];
    }

    v19 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setKeyRepeatEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = _AXSKeyRepeatEnabled();
  bOOLValue = [enabledCopy BOOLValue];

  if ((((v6 == 0) ^ bOOLValue) & 1) == 0)
  {
    _AXSSetKeyRepeatEnabled();
    if (bOOLValue)
    {
      keyRepeatSpecificSpecifiers = [(AXKeyRepeatController *)self keyRepeatSpecificSpecifiers];
      [AXKeyRepeatController insertContiguousSpecifiers:"insertContiguousSpecifiers:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
    }

    else
    {
      keyRepeatIntervalSpecifier = [(AXKeyRepeatController *)self keyRepeatIntervalSpecifier];
      v9 = [(AXKeyRepeatController *)self indexPathForSpecifier:keyRepeatIntervalSpecifier];

      table = [(AXKeyRepeatController *)self table];
      v11 = [table cellForRowAtIndexPath:v9];

      nameTextField = [v11 nameTextField];
      [nameTextField resignFirstResponder];

      keyRepeatDelaySpecifier = [(AXKeyRepeatController *)self keyRepeatDelaySpecifier];
      keyRepeatSpecificSpecifiers = [(AXKeyRepeatController *)self indexPathForSpecifier:keyRepeatDelaySpecifier];

      table2 = [(AXKeyRepeatController *)self table];
      v15 = [table2 cellForRowAtIndexPath:keyRepeatSpecificSpecifiers];

      nameTextField2 = [v15 nameTextField];
      [nameTextField2 resignFirstResponder];

      keyRepeatSpecificSpecifiers2 = [(AXKeyRepeatController *)self keyRepeatSpecificSpecifiers];
      [(AXKeyRepeatController *)self removeContiguousSpecifiers:keyRepeatSpecificSpecifiers2 animated:1];
    }
  }
}

- (id)keyRepeatEnabled:(id)enabled
{
  v3 = _AXSKeyRepeatEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (double)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  keyRepeatIntervalSpecifier = [(AXKeyRepeatController *)self keyRepeatIntervalSpecifier];

  if (keyRepeatIntervalSpecifier == specifierCopy)
  {
    _AXSKeyRepeatInterval();
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  keyRepeatDelaySpecifier = [(AXKeyRepeatController *)self keyRepeatDelaySpecifier];

  if (keyRepeatDelaySpecifier == specifierCopy)
  {
    _AXSKeyRepeatDelay();
    goto LABEL_6;
  }

  _AXAssert();
  v7 = 0.0;
LABEL_7:

  return v7;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  specifierCopy = specifier;
  keyRepeatIntervalSpecifier = [(AXKeyRepeatController *)self keyRepeatIntervalSpecifier];

  if (keyRepeatIntervalSpecifier == specifierCopy)
  {
    _AXSSetKeyRepeatInterval();
  }

  else
  {
    keyRepeatDelaySpecifier = [(AXKeyRepeatController *)self keyRepeatDelaySpecifier];

    if (keyRepeatDelaySpecifier == specifierCopy)
    {
      _AXSSetKeyRepeatDelay();
    }

    else
    {
      _AXAssert();
    }
  }
}

- (double)minimumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  keyRepeatIntervalSpecifier = [(AXKeyRepeatController *)self keyRepeatIntervalSpecifier];

  if (keyRepeatIntervalSpecifier == specifierCopy)
  {
    v8 = &kAXSKeyRepeatIntervalMinimum;
LABEL_6:
    v7 = *v8;
    goto LABEL_7;
  }

  keyRepeatDelaySpecifier = [(AXKeyRepeatController *)self keyRepeatDelaySpecifier];

  if (keyRepeatDelaySpecifier == specifierCopy)
  {
    v8 = &kAXSKeyRepeatDelayMinimum;
    goto LABEL_6;
  }

  _AXAssert();
  v7 = 0.1;
LABEL_7:
  if (_AXSSlowKeysEnabled())
  {
    _AXSSlowKeysAcceptanceDelay();
    if (v7 < v9)
    {
      v7 = v9;
    }
  }

  return v7;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  keyRepeatIntervalSpecifier = [(AXKeyRepeatController *)self keyRepeatIntervalSpecifier];

  if (keyRepeatIntervalSpecifier == specifierCopy)
  {
    v8 = &kAXSKeyRepeatIntervalMaximum;
LABEL_6:
    v7 = *v8;
    goto LABEL_7;
  }

  keyRepeatDelaySpecifier = [(AXKeyRepeatController *)self keyRepeatDelaySpecifier];

  if (keyRepeatDelaySpecifier == specifierCopy)
  {
    v8 = &kAXSKeyRepeatDelayMaximum;
    goto LABEL_6;
  }

  _AXAssert();
  v7 = 1.0;
LABEL_7:

  return v7;
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(AXKeyRepeatController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end