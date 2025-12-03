@interface SCATMIDISwitchKeyViewController
+ (id)keyViewControllerWithSwitch:(id)switch parentController:(id)controller;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATMIDISwitchKeyViewController

+ (id)keyViewControllerWithSwitch:(id)switch parentController:(id)controller
{
  switchCopy = switch;
  controllerCopy = controller;
  v8 = controllerCopy;
  if (switchCopy)
  {
    if (controllerCopy)
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
  [(SCATMIDISwitchKeyViewController *)v9 setModelSwitch:switchCopy];
  [(SCATMIDISwitchKeyViewController *)v9 setParentController:v8];
  rootController = [v8 rootController];
  [(SCATMIDISwitchKeyViewController *)v9 setRootController:rootController];

  v11 = AXParameterizedLocalizedString();
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:-1 edit:0];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SCATMIDISwitchKeyViewController;
  v5 = [(SCATMIDISwitchKeyViewController *)&v14 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  modelSwitch = [(SCATMIDISwitchKeyViewController *)self modelSwitch];
  midiEvent = [modelSwitch midiEvent];
  note = [midiEvent note];

  v10 = [specifier propertyForKey:@"MIDIKey"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue == note)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SCATMIDISwitchKeyViewController;
  v5 = [(SCATMIDISwitchKeyViewController *)&v14 tableView:view cellForRowAtIndexPath:path];
  modelSwitch = [(SCATMIDISwitchKeyViewController *)self modelSwitch];
  specifier = [v5 specifier];
  v8 = [specifier propertyForKey:@"MIDIKey"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  midiEvent = [modelSwitch midiEvent];
  [midiEvent setNote:unsignedIntegerValue];

  SCATAddOrUpdateSwitchToSettings();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __69__SCATMIDISwitchKeyViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_256BB8;
  v13 = modelSwitch;
  v11 = modelSwitch;
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