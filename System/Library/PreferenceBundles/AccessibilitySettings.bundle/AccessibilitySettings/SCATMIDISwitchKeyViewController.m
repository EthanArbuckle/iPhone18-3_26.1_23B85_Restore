@interface SCATMIDISwitchKeyViewController
+ (id)keyViewControllerWithSwitch:(id)a3 parentController:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATMIDISwitchKeyViewController

+ (id)keyViewControllerWithSwitch:(id)a3 parentController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _AXAssert();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  _AXAssert();
LABEL_3:
  v9 = objc_alloc_init(SCATMIDISwitchKeyViewController);
  [(SCATMIDISwitchKeyViewController *)v9 setModelSwitch:v6];
  [(SCATMIDISwitchKeyViewController *)v9 setParentController:v8];
  v10 = [v8 rootController];
  [(SCATMIDISwitchKeyViewController *)v9 setRootController:v10];

  v11 = AXParameterizedLocalizedString();
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:a1 set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATMIDISwitchKeyViewController *)v9 setSpecifier:v12];

  return v9;
}

- (id)specifiers
{
  v2 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v14 = OBJC_IVAR___PSListController__specifiers;
    v5 = +[NSMutableArray array];
    v6 = 0;
    v7 = PSEnabledKey;
    do
    {
      v8 = AXLocalizedNameForMIDINote();
      v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v10 = [NSNumber numberWithInteger:v6];
      [v9 setProperty:v10 forKey:@"MIDIKey"];

      [v9 setProperty:&__kCFBooleanTrue forKey:v7];
      [v5 addObject:v9];

      ++v6;
    }

    while (v6 != 128);
    v11 = *&self->AXUISettingsSetupCapableListController_opaque[v14];
    *&self->AXUISettingsSetupCapableListController_opaque[v14] = v5;
    v12 = v5;

    v3 = *&self->AXUISettingsSetupCapableListController_opaque[v14];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = SCATMIDISwitchKeyViewController;
  v5 = [(SCATMIDISwitchKeyViewController *)&v14 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [(SCATMIDISwitchKeyViewController *)self modelSwitch];
  v8 = [v7 midiEvent];
  v9 = [v8 note];

  v10 = [v6 propertyForKey:@"MIDIKey"];
  v11 = [v10 unsignedIntegerValue];

  if (v11 == v9)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v5 setAccessoryType:v12];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = SCATMIDISwitchKeyViewController;
  v5 = [(SCATMIDISwitchKeyViewController *)&v14 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [(SCATMIDISwitchKeyViewController *)self modelSwitch];
  v7 = [v5 specifier];
  v8 = [v7 propertyForKey:@"MIDIKey"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 midiEvent];
  [v10 setNote:v9];

  SCATAddOrUpdateSwitchToSettings();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __69__SCATMIDISwitchKeyViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_256BB8;
  v13 = v6;
  v11 = v6;
  [(SCATMIDISwitchKeyViewController *)self updateCellAccessories:v12];
}

uint64_t __69__SCATMIDISwitchKeyViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 midiEvent];
  v5 = [v4 note];

  v6 = [v3 propertyForKey:@"MIDIKey"];

  v7 = [v6 unsignedIntegerValue];
  if (v7 == v5)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end