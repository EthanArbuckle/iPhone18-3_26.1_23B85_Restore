@interface SCATTapBehaviourController
- (PSSpecifier)pickerGroupSpecifier;
- (PSSpecifier)pickerSpecifier;
- (SCATTapBehaviourController)init;
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)_updateSpecifierVisibility;
- (void)selectBehavior:(int64_t)behavior;
- (void)selectSpecifierWithBehavior:(int64_t)behavior;
- (void)showPicker:(BOOL)picker animated:(BOOL)animated;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateFooterTextWithBehavior:(int64_t)behavior animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  table = [(SCATTapBehaviourController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATTapBehaviourController;
  [(SCATTapBehaviourController *)&v4 viewWillAppear:appear];
  [(SCATTapBehaviourController *)self _updateSpecifierVisibility];
}

- (void)_updateSpecifierVisibility
{
  v3 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v3 switchControlTapBehavior];

  [(SCATTapBehaviourController *)self selectSpecifierWithBehavior:switchControlTapBehavior];

  [(SCATTapBehaviourController *)self updateFooterTextWithBehavior:switchControlTapBehavior animated:0];
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

- (void)selectSpecifierWithBehavior:(int64_t)behavior
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  specifiers = [(SCATTapBehaviourController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"SCATBehaviorKey"];
        v12 = v11;
        if (v11 && [v11 integerValue] == behavior)
        {
          v13 = [(SCATTapBehaviourController *)self indexPathForSpecifier:v10];
          [(SCATTapBehaviourController *)self updateTableCheckedSelection:v13];

          if (behavior == 1)
          {
            [(SCATTapBehaviourController *)self showPicker:1 animated:0];
          }

          goto LABEL_14;
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)selectBehavior:(int64_t)behavior
{
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlTapBehavior:behavior];
}

- (void)showPicker:(BOOL)picker animated:(BOOL)animated
{
  if (self->_showingPicker != picker)
  {
    animatedCopy = animated;
    pickerCopy = picker;
    self->_showingPicker = picker;
    v8 = [(SCATTapBehaviourController *)self specifierForID:@"AlwaysTap"];
    v9 = [(SCATTapBehaviourController *)self indexOfSpecifier:v8];

    [(SCATTapBehaviourController *)self pickerGroupSpecifier];
    if (pickerCopy)
      v10 = {;
      [(SCATTapBehaviourController *)self insertSpecifier:v10 atIndex:v9 + 1 animated:animatedCopy];

      pickerSpecifier = [(SCATTapBehaviourController *)self pickerSpecifier];
      [SCATTapBehaviourController insertSpecifier:"insertSpecifier:atIndex:animated:" atIndex:? animated:?];
    }

    else
      v11 = {;
      [(SCATTapBehaviourController *)self removeSpecifier:v11 animated:animatedCopy];

      pickerSpecifier = [(SCATTapBehaviourController *)self pickerSpecifier];
      [SCATTapBehaviourController removeSpecifier:"removeSpecifier:animated:" animated:?];
    }
  }
}

- (void)updateFooterTextWithBehavior:(int64_t)behavior animated:(BOOL)animated
{
  animatedCopy = animated;
  behaviorFooterTextMap = [(SCATTapBehaviourController *)self behaviorFooterTextMap];
  v8 = [NSNumber numberWithInteger:behavior];
  v11 = [behaviorFooterTextMap objectForKeyedSubscript:v8];

  descriptionGroupSpecifier = [(SCATTapBehaviourController *)self descriptionGroupSpecifier];
  [descriptionGroupSpecifier setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];

  descriptionGroupSpecifier2 = [(SCATTapBehaviourController *)self descriptionGroupSpecifier];
  [(SCATTapBehaviourController *)self reloadSpecifier:descriptionGroupSpecifier2 animated:animatedCopy];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = SCATTapBehaviourController;
  pathCopy = path;
  [(SCATTapBehaviourController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  [(SCATTapBehaviourController *)self beginUpdates:v12.receiver];
  v7 = [(SCATTapBehaviourController *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 objectForKeyedSubscript:@"SCATBehaviorKey"];
  integerValue = [v8 integerValue];

  [(SCATTapBehaviourController *)self selectBehavior:integerValue];
  v10 = [v7 objectForKeyedSubscript:@"SCATShowPickerKey"];
  bOOLValue = [v10 BOOLValue];

  [(SCATTapBehaviourController *)self showPicker:bOOLValue animated:1];
  [(SCATTapBehaviourController *)self updateTableCheckedSelection:pathCopy];

  [(SCATTapBehaviourController *)self updateFooterTextWithBehavior:integerValue animated:1];
  [(SCATTapBehaviourController *)self endUpdates];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v6 = [specifier propertyForKey:@"SCATBehaviorKey"];
  v7 = +[AXSettings sharedInstance];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 switchControlTapBehavior]);
  v9 = [v6 isEqual:v8];

  [cellCopy setChecked:v9];
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlAutoTapTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlAutoTapTimeout:value];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(SCATTapBehaviourController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end