@interface VoiceOverBrailleAssignCommandsControllerViewController
- (VoiceOverBrailleAssignCommandsControllerViewController)init;
- (id)_specifierForCategory:(id)category;
- (id)specifiers;
- (void)resetAllCommandAssignments:(id)assignments;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverBrailleAssignCommandsControllerViewController

- (VoiceOverBrailleAssignCommandsControllerViewController)init
{
  v6.receiver = self;
  v6.super_class = VoiceOverBrailleAssignCommandsControllerViewController;
  v2 = [(VoiceOverBrailleAssignCommandsControllerViewController *)&v6 init];
  if (v2)
  {
    v3 = [[SCROBrailleClient alloc] initWithDelegate:v2];
    brailleClient = v2->_brailleClient;
    v2->_brailleClient = v3;

    [(SCROBrailleClient *)v2->_brailleClient setKeepConnectionAlive:1];
    [(SCROBrailleClient *)v2->_brailleClient setDisplayDescriptorCallbackEnabled:0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(VoiceOverBrailleAssignCommandsControllerViewController *)self reloadSpecifiers];
  v5.receiver = self;
  v5.super_class = VoiceOverBrailleAssignCommandsControllerViewController;
  [(VoiceOverBrailleAssignCommandsControllerViewController *)&v5 viewWillAppear:appearCopy];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v46 = OBJC_IVAR___PSListController__specifiers;
    v4 = OBJC_IVAR___PSViewController__specifier;
    userInfo = [*&selfCopy->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [userInfo objectForKey:@"bt-device"];
    v7 = 144;
    device = selfCopy->_device;
    selfCopy->_device = v6;

    if (!selfCopy->_device)
    {
      voBrailleDevice = [*&selfCopy->AXUISettingsBaseListController_opaque[v4] voBrailleDevice];
      v10 = selfCopy->_device;
      selfCopy->_device = voBrailleDevice;
    }

    driverConfiguration = [(SCROBrailleClient *)selfCopy->_brailleClient driverConfiguration];
    v12 = +[SCROMobileBrailleDisplayInputManager sharedManager];
    inputManager = selfCopy->_inputManager;
    selfCopy->_inputManager = v12;

    [(SCROMobileBrailleDisplayInputManager *)selfCopy->_inputManager configureWithDriverConfiguration:driverConfiguration];
    v14 = objc_alloc_init(NSMutableArray);
    v15 = &selRef_assistantConnection_openApplicationWithBundleID_URL_completion_;
    v45 = driverConfiguration;
    if (selfCopy->_device)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = driverConfiguration;
      v50 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (!v50)
      {
        goto LABEL_16;
      }

      v16 = *v56;
      v47 = v14;
      while (1)
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = [v18 objectForKey:kSCROBrailleDisplayBluetoothAddress];
          address = [*&selfCopy->AXUISettingsBaseListController_opaque[v7] address];
          if ([v19 isEqual:address])
          {
          }

          else
          {
            v21 = [v18 objectForKey:kSCROBrailleDisplayBrailleVendorProductId];
            [*&selfCopy->AXUISettingsBaseListController_opaque[v7] identifier];
            v22 = v16;
            v23 = selfCopy;
            v24 = v7;
            v26 = v25 = v15;
            v49 = [v21 isEqual:v26];

            v15 = v25;
            v7 = v24;
            selfCopy = v23;
            v16 = v22;

            v14 = v47;
            if (!v49)
            {
              continue;
            }
          }

          v27 = [v18 objectForKey:kSCROBrailleDisplayToken];
          *&selfCopy->AXUISettingsBaseListController_opaque[*(v15 + 976)] = [v27 integerValue];
        }

        v50 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (!v50)
        {
LABEL_16:

          goto LABEL_18;
        }
      }
    }

    selfCopy->_token = 99999999;
LABEL_18:
    v28 = [PSSpecifier groupSpecifierWithID:@"BrailleCommandGroup"];
    [v14 addObject:v28];
    v29 = objc_alloc_init(VOSVoiceOverCommandInfo);
    brailleVoiceOverCategories = [v29 brailleVoiceOverCategories];

    v31 = [brailleVoiceOverCategories sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v52;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v52 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [(VoiceOverBrailleAssignCommandsControllerViewController *)selfCopy _specifierForCategory:*(*(&v51 + 1) + 8 * j)];
          if (v37)
          {
            [v14 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v34);
    }

    if ([(SCROMobileBrailleDisplayInputManager *)selfCopy->_inputManager userAssignedCommandCountForDisplayWithToken:*&selfCopy->AXUISettingsBaseListController_opaque[*(v15 + 976)]])
    {
      v38 = +[NSMutableArray array];
      v39 = [PSSpecifier groupSpecifierWithID:@"ResetAllCommands"];
      [v14 addObject:v39];
      v40 = settingsLocString(@"RESET_ALL_BRIALLE_KEY_ASSIGNMENTS", @"VoiceOverBrailleOptions");
      v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
      [v41 setButtonAction:"resetAllCommandAssignments:"];
      [(NSArray *)v38 addObject:v41];
      [v14 addObjectsFromArray:v38];
      resetSpecifiers = selfCopy->_resetSpecifiers;
      selfCopy->_resetSpecifiers = v38;
    }

    v43 = *&selfCopy->AXUISettingsBaseListController_opaque[v46];
    *&selfCopy->AXUISettingsBaseListController_opaque[v46] = v14;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v46];
  }

  return v3;
}

- (void)resetAllCommandAssignments:(id)assignments
{
  [(SCROMobileBrailleDisplayInputManager *)self->_inputManager removeAllUserAssignedCommandsForDisplayWithToken:self->_token];
  [(VoiceOverBrailleAssignCommandsControllerViewController *)self beginUpdates];
  [(VoiceOverBrailleAssignCommandsControllerViewController *)self removeContiguousSpecifiers:self->_resetSpecifiers animated:1];

  [(VoiceOverBrailleAssignCommandsControllerViewController *)self endUpdates];
}

- (id)_specifierForCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_alloc_init(VOSVoiceOverCommandInfo);
  v6 = [v5 localizedNameForCategory:categoryCopy];

  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  v8 = [objc_allocWithZone(NSMutableDictionary) init];
  v9 = v8;
  device = self->_device;
  if (device)
  {
    [v8 setObject:device forKey:@"bt-device"];
  }

  [v9 setObject:self->_inputManager forKey:@"input-manager"];
  [v9 setObject:categoryCopy forKey:@"braille-category"];
  v11 = [NSNumber numberWithInt:self->_token];
  [v9 setObject:v11 forKey:@"display-token"];

  [v7 setUserInfo:v9];

  return v7;
}

@end