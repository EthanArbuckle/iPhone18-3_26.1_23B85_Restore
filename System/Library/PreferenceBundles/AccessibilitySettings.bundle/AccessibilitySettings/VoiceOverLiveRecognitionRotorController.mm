@interface VoiceOverLiveRecognitionRotorController
- (BOOL)isItemEnabled:(id)enabled;
- (VoiceOverLiveRecognitionRotorController)init;
- (id)identifierForItem:(id)item;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)titleForItem:(id)item;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation VoiceOverLiveRecognitionRotorController

- (VoiceOverLiveRecognitionRotorController)init
{
  v7.receiver = self;
  v7.super_class = VoiceOverLiveRecognitionRotorController;
  v2 = [(AXReorderableCheckmarkListController *)&v7 init];
  if (v2)
  {
    v3 = settingsLocString(@"VO_LIVE_RECOGNITION_ROTOR", @"VoiceOverSettings");
    navigationItem = [(VoiceOverLiveRecognitionRotorController *)v2 navigationItem];
    [navigationItem setTitle:v3];

    v5 = v2;
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    AXDeviceSupportsDetectionMode();
    v7 = AXLocStringKeyForModel();
    v8 = settingsLocString(v7, @"VoiceOverSettings");
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v13.receiver = self;
    v13.super_class = VoiceOverLiveRecognitionRotorController;
    specifiers = [(AXReorderableCheckmarkListController *)&v13 specifiers];
    v10 = [specifiers copy];
    [v5 axSafelyAddObjectsFromArray:v10];

    v11 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  voiceOverDetectionModeItems = [v2 voiceOverDetectionModeItems];

  return voiceOverDetectionModeItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverDetectionModeItems:preferencesCopy];
}

- (BOOL)isItemEnabled:(id)enabled
{
  v3 = [enabled objectForKey:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v4 BOOLValue];

  v10[0] = @"Enabled";
  v6 = [NSNumber numberWithInt:bOOLValue ^ 1];
  v10[1] = @"Detector";
  v11[0] = v6;
  v7 = [stateCopy objectForKeyedSubscript:?];

  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)titleForItem:(id)item
{
  v3 = [item valueForKey:@"Detector"];
  stringValue = [v3 stringValue];
  v5 = AXParameterizedLocalizedString();

  return v5;
}

- (id)identifierForItem:(id)item
{
  v3 = [item valueForKey:@"Detector"];
  stringValue = [v3 stringValue];
  v5 = AXParameterizedLocalizedString();

  return v5;
}

@end