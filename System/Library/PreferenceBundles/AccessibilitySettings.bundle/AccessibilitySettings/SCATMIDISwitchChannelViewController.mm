@interface SCATMIDISwitchChannelViewController
+ (id)channelViewControllerWithSwitch:(id)switch parentController:(id)controller;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATMIDISwitchChannelViewController

+ (id)channelViewControllerWithSwitch:(id)switch parentController:(id)controller
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
  v9 = objc_alloc_init(SCATMIDISwitchChannelViewController);
  [(SCATMIDISwitchChannelViewController *)v9 setModelSwitch:switchCopy];
  [(SCATMIDISwitchChannelViewController *)v9 setParentController:v8];
  rootController = [v8 rootController];
  [(SCATMIDISwitchChannelViewController *)v9 setRootController:rootController];

  v11 = AXParameterizedLocalizedString();
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATMIDISwitchChannelViewController *)v9 setSpecifier:v12];

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
    v15 = OBJC_IVAR___PSListController__specifiers;
    v5 = +[NSMutableArray array];
    v6 = 0;
    v7 = PSEnabledKey;
    do
    {
      v8 = word_1DA7F0[v6];
      v9 = AXLocalizedNameForMIDIChannel(word_1DA7F0[v6]);
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v11 = [NSNumber numberWithUnsignedShort:v8];
      [v10 setProperty:v11 forKey:@"MIDIChannel"];

      [v10 setProperty:&__kCFBooleanTrue forKey:v7];
      [v5 addObject:v10];

      ++v6;
    }

    while (v6 != 17);
    v12 = *&self->AXUISettingsSetupCapableListController_opaque[v15];
    *&self->AXUISettingsSetupCapableListController_opaque[v15] = v5;
    v13 = v5;

    v3 = *&self->AXUISettingsSetupCapableListController_opaque[v15];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SCATMIDISwitchChannelViewController;
  v5 = [(SCATMIDISwitchChannelViewController *)&v14 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  modelSwitch = [(SCATMIDISwitchChannelViewController *)self modelSwitch];
  midiEvent = [modelSwitch midiEvent];
  channel = [midiEvent channel];

  v10 = [specifier propertyForKey:@"MIDIChannel"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue == channel)
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
  v14.super_class = SCATMIDISwitchChannelViewController;
  v5 = [(SCATMIDISwitchChannelViewController *)&v14 tableView:view cellForRowAtIndexPath:path];
  modelSwitch = [(SCATMIDISwitchChannelViewController *)self modelSwitch];
  specifier = [v5 specifier];
  v8 = [specifier propertyForKey:@"MIDIChannel"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  midiEvent = [modelSwitch midiEvent];
  [midiEvent setChannel:unsignedIntegerValue];

  SCATAddOrUpdateSwitchToSettings();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __73__SCATMIDISwitchChannelViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_256BB8;
  v13 = modelSwitch;
  v11 = modelSwitch;
  [(SCATMIDISwitchChannelViewController *)self updateCellAccessories:v12];
}

uint64_t __73__SCATMIDISwitchChannelViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 midiEvent];
  v5 = [v4 channel];

  v6 = [v3 propertyForKey:@"MIDIChannel"];

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