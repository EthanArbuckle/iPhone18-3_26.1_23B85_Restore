@interface SCATTapBehaviourController
- (PSSpecifier)pickerGroupSpecifier;
- (PSSpecifier)pickerSpecifier;
- (SCATTapBehaviourController)init;
- (double)valueForSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)_updateSpecifierVisibility;
- (void)selectBehavior:(int64_t)a3;
- (void)selectSpecifierWithBehavior:(int64_t)a3;
- (void)showPicker:(BOOL)a3 animated:(BOOL)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateFooterTextWithBehavior:(int64_t)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation SCATTapBehaviourController

- (SCATTapBehaviourController)init
{
  v8.receiver = self;
  v8.super_class = SCATTapBehaviourController;
  v2 = [(SCATTapBehaviourController *)&v8 init];
  if (v2)
  {
    v9[0] = &off_279960;
    v3 = AXParameterizedLocalizedString();
    v10[0] = v3;
    v9[1] = &off_279978;
    v4 = AXParameterizedLocalizedString();
    v10[1] = v4;
    v9[2] = &off_279990;
    v5 = AXParameterizedLocalizedString();
    v10[2] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
    [(SCATTapBehaviourController *)v2 setBehaviorFooterTextMap:v6];
  }

  return v2;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATTapBehaviourController;
  [(SCATTapBehaviourController *)&v6 viewDidLoad];
  v3 = [(SCATTapBehaviourController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATTapBehaviourController;
  [(SCATTapBehaviourController *)&v4 viewWillAppear:a3];
  [(SCATTapBehaviourController *)self _updateSpecifierVisibility];
}

- (void)_updateSpecifierVisibility
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlTapBehavior];

  [(SCATTapBehaviourController *)self selectSpecifierWithBehavior:v4];

  [(SCATTapBehaviourController *)self updateFooterTextWithBehavior:v4 animated:0];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = SCATTapBehaviourController;
  [(SCATTapBehaviourController *)&v3 willBecomeActive];
  [(SCATTapBehaviourController *)self _updateSpecifierVisibility];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = SCATTapBehaviourController;
  [(SCATTapBehaviourController *)&v3 willResignActive];
  [(SCATTapBehaviourController *)self showPicker:0 animated:0];
}

- (void)selectSpecifierWithBehavior:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SCATTapBehaviourController *)self specifiers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"SCATBehaviorKey"];
        v12 = v11;
        if (v11 && [v11 integerValue] == a3)
        {
          v13 = [(SCATTapBehaviourController *)self indexPathForSpecifier:v10];
          [(SCATTapBehaviourController *)self updateTableCheckedSelection:v13];

          if (a3 == 1)
          {
            [(SCATTapBehaviourController *)self showPicker:1 animated:0];
          }

          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)selectBehavior:(int64_t)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlTapBehavior:a3];
}

- (void)showPicker:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingPicker != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_showingPicker = a3;
    v8 = [(SCATTapBehaviourController *)self specifierForID:@"AlwaysTap"];
    v9 = [(SCATTapBehaviourController *)self indexOfSpecifier:v8];

    [(SCATTapBehaviourController *)self pickerGroupSpecifier];
    if (v6)
      v10 = {;
      [(SCATTapBehaviourController *)self insertSpecifier:v10 atIndex:v9 + 1 animated:v5];

      v12 = [(SCATTapBehaviourController *)self pickerSpecifier];
      [SCATTapBehaviourController insertSpecifier:"insertSpecifier:atIndex:animated:" atIndex:? animated:?];
    }

    else
      v11 = {;
      [(SCATTapBehaviourController *)self removeSpecifier:v11 animated:v5];

      v12 = [(SCATTapBehaviourController *)self pickerSpecifier];
      [SCATTapBehaviourController removeSpecifier:"removeSpecifier:animated:" animated:?];
    }
  }
}

- (void)updateFooterTextWithBehavior:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCATTapBehaviourController *)self behaviorFooterTextMap];
  v8 = [NSNumber numberWithInteger:a3];
  v11 = [v7 objectForKeyedSubscript:v8];

  v9 = [(SCATTapBehaviourController *)self descriptionGroupSpecifier];
  [v9 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];

  v10 = [(SCATTapBehaviourController *)self descriptionGroupSpecifier];
  [(SCATTapBehaviourController *)self reloadSpecifier:v10 animated:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[AXSettings sharedInstance];
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v7];
    [(SCATTapBehaviourController *)self setDescriptionGroupSpecifier:v7];
    v8 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"TapBehaviorDefault" forKey:PSIDKey];
    [v9 setObject:&off_279960 forKeyedSubscript:@"SCATBehaviorKey"];
    [v5 addObject:v9];
    if ([v6 switchControlScanningStyle] != &dword_0 + 2)
    {
      v11 = AXParameterizedLocalizedString();
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v12 setProperty:@"TapBehaviorAuto" forKey:v10];
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCATShowPickerKey"];
      [v12 setObject:&off_279990 forKeyedSubscript:@"SCATBehaviorKey"];
      [v5 addObject:v12];
      v9 = v12;
    }

    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:@"AlwaysTap" forKey:v10];
    [v14 setObject:&off_279978 forKeyedSubscript:@"SCATBehaviorKey"];
    [v5 addObject:v14];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (PSSpecifier)pickerGroupSpecifier
{
  pickerGroupSpecifier = self->_pickerGroupSpecifier;
  if (!pickerGroupSpecifier)
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    v5 = self->_pickerGroupSpecifier;
    self->_pickerGroupSpecifier = v4;

    pickerGroupSpecifier = self->_pickerGroupSpecifier;
  }

  return pickerGroupSpecifier;
}

- (PSSpecifier)pickerSpecifier
{
  pickerSpecifier = self->_pickerSpecifier;
  if (!pickerSpecifier)
  {
    v4 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    v5 = self->_pickerSpecifier;
    self->_pickerSpecifier = v4;

    pickerSpecifier = self->_pickerSpecifier;
  }

  return pickerSpecifier;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = SCATTapBehaviourController;
  v6 = a4;
  [(SCATTapBehaviourController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  [(SCATTapBehaviourController *)self beginUpdates:v12.receiver];
  v7 = [(SCATTapBehaviourController *)self specifierAtIndexPath:v6];
  v8 = [v7 objectForKeyedSubscript:@"SCATBehaviorKey"];
  v9 = [v8 integerValue];

  [(SCATTapBehaviourController *)self selectBehavior:v9];
  v10 = [v7 objectForKeyedSubscript:@"SCATShowPickerKey"];
  v11 = [v10 BOOLValue];

  [(SCATTapBehaviourController *)self showPicker:v11 animated:1];
  [(SCATTapBehaviourController *)self updateTableCheckedSelection:v6];

  [(SCATTapBehaviourController *)self updateFooterTextWithBehavior:v9 animated:1];
  [(SCATTapBehaviourController *)self endUpdates];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v10 = [v5 specifier];
  v6 = [v10 propertyForKey:@"SCATBehaviorKey"];
  v7 = +[AXSettings sharedInstance];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 switchControlTapBehavior]);
  v9 = [v6 isEqual:v8];

  [v5 setChecked:v9];
}

- (double)valueForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlAutoTapTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlAutoTapTimeout:a4];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATTapBehaviourController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end