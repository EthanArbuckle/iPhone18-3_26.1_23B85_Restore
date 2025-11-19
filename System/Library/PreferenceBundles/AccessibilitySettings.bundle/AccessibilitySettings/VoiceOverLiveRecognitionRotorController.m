@interface VoiceOverLiveRecognitionRotorController
- (BOOL)isItemEnabled:(id)a3;
- (VoiceOverLiveRecognitionRotorController)init;
- (id)identifierForItem:(id)a3;
- (id)itemAfterTogglingEnabledState:(id)a3;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)titleForItem:(id)a3;
- (void)updateItemsInPreferences:(id)a3;
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
    v4 = [(VoiceOverLiveRecognitionRotorController *)v2 navigationItem];
    [v4 setTitle:v3];

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
    v9 = [(AXReorderableCheckmarkListController *)&v13 specifiers];
    v10 = [v9 copy];
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
  v3 = [v2 voiceOverDetectionModeItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverDetectionModeItems:v3];
}

- (BOOL)isItemEnabled:(id)a3
{
  v3 = [a3 objectForKey:@"Enabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)itemAfterTogglingEnabledState:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"Enabled"];
  v5 = [v4 BOOLValue];

  v10[0] = @"Enabled";
  v6 = [NSNumber numberWithInt:v5 ^ 1];
  v10[1] = @"Detector";
  v11[0] = v6;
  v7 = [v3 objectForKeyedSubscript:?];

  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)titleForItem:(id)a3
{
  v3 = [a3 valueForKey:@"Detector"];
  v4 = [v3 stringValue];
  v5 = AXParameterizedLocalizedString();

  return v5;
}

- (id)identifierForItem:(id)a3
{
  v3 = [a3 valueForKey:@"Detector"];
  v4 = [v3 stringValue];
  v5 = AXParameterizedLocalizedString();

  return v5;
}

@end