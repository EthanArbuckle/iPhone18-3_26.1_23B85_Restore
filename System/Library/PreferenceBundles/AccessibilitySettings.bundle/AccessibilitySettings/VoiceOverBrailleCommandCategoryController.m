@interface VoiceOverBrailleCommandCategoryController
- (VoiceOverBrailleCommandCategoryController)init;
- (id)_getCommandDescription:(id)a3;
- (id)_specifierForCommand:(id)a3;
- (id)specifiers;
@end

@implementation VoiceOverBrailleCommandCategoryController

- (VoiceOverBrailleCommandCategoryController)init
{
  v6.receiver = self;
  v6.super_class = VoiceOverBrailleCommandCategoryController;
  v2 = [(VoiceOverBrailleCommandCategoryController *)&v6 init];
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

- (id)specifiers
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKey:@"bt-device"];
  device = self->_device;
  self->_device = v5;

  v7 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v8 = [v7 objectForKey:@"braille-category"];
  category = self->_category;
  self->_category = v8;

  v10 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v11 = [v10 objectForKey:@"input-manager"];
  inputManager = self->_inputManager;
  self->_inputManager = v11;

  v13 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v14 = [v13 objectForKey:@"display-token"];
  self->_token = [v14 intValue];

  v15 = OBJC_IVAR___PSListController__specifiers;
  v16 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v16)
  {
    v17 = objc_alloc_init(NSMutableArray);
    v18 = [PSSpecifier groupSpecifierWithID:@"BrailleCommandGroup"];
    [v17 addObject:v18];
    v19 = objc_alloc_init(VOSVoiceOverCommandInfo);
    v20 = objc_alloc_init(VOSVoiceOverCommandInfo);
    v21 = [v20 brailleCommandsForCategory:self->_category];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __55__VoiceOverBrailleCommandCategoryController_specifiers__block_invoke;
    v38[3] = &unk_256AC8;
    v22 = v19;
    v39 = v22;
    v23 = [v21 sortedArrayUsingComparator:v38];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        v28 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [(VoiceOverBrailleCommandCategoryController *)self _specifierForCommand:*(*(&v34 + 1) + 8 * v28), v34];
          if (v29)
          {
            [v17 addObject:v29];
          }

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v26);
    }

    v30 = [PSSpecifier groupSpecifierWithID:@"AddNewCommand"];
    [v17 addObject:v30];
    v31 = *&self->AXUISettingsBaseListController_opaque[v15];
    *&self->AXUISettingsBaseListController_opaque[v15] = v17;
    v32 = v17;

    v16 = *&self->AXUISettingsBaseListController_opaque[v15];
  }

  return v16;
}

id __55__VoiceOverBrailleCommandCategoryController_specifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 localizedNameForCommand:a2];
  v8 = [*(a1 + 32) localizedNameForCommand:v6];

  v9 = [v7 caseInsensitiveCompare:v8];
  return v9;
}

- (id)_getCommandDescription:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(SCROMobileBrailleDisplayInputManager *)self->_inputManager commandDictionaryForDisplayWithToken:self->_token];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __68__VoiceOverBrailleCommandCategoryController__getCommandDescription___block_invoke;
  v9[3] = &unk_257038;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __68__VoiceOverBrailleCommandCategoryController__getCommandDescription___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 userInfo];
  v10 = [v9 objectForKey:@"braille-command"];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) keyIsSupported:v16];

    if (v12)
    {
      v13 = VOTBrailleButtonName(v16, *(*(a1 + 40) + 160), *(*(a1 + 40) + 168));
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
    }
  }

  else
  {
  }
}

- (id)_specifierForCommand:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VOSVoiceOverCommandInfo);
  v6 = [v5 localizedNameForCommand:v4];

  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_getCommandDescription:" detail:objc_opt_class() cell:2 edit:0];
  v8 = [objc_allocWithZone(NSMutableDictionary) init];
  v9 = v8;
  device = self->_device;
  if (device)
  {
    [v8 setObject:device forKey:@"bt-device"];
  }

  [v9 setObject:self->_inputManager forKey:@"input-manager"];
  [v9 setObject:v4 forKey:@"braille-command"];
  v11 = [NSNumber numberWithInt:self->_token];
  [v9 setObject:v11 forKey:@"display-token"];

  [v7 setUserInfo:v9];

  return v7;
}

@end