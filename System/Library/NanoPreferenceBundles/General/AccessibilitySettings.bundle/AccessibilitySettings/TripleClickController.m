@interface TripleClickController
- (BOOL)_deviceSupportsShortcutMenu;
- (id)enabledTripleClickSettings;
- (id)specifiers;
- (int)_optionFromSpecifierKey:(id)a3;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TripleClickController

- (int)_optionFromSpecifierKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"voiceover"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"zoom"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"touchaccommodations"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"hearingdevices"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"watchcontrol"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"reducetransparency"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"increasecontrast"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"reducemotion"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"leftrightbalance"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"controlnearbydevices"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"livespeech"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"colorfilters"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"increasebrightnessfloor"])
  {
    v4 = 41;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(TripleClickController *)self loadSpecifiersFromPlistName:@"TripleClickSettings" target:self];
    v6 = AXGetActivePairedDevice();
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D7B1DB8F-6F20-44A7-B454-95B8A418D208"];
    v8 = [v6 supportsCapability:v7];

    if (v8)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = settingsLocString(@"WATCH_CONTROL_TRIPLE_CLICK_TITLE", @"AccessibilitySettings-watchcontrol");
      v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v11 setProperty:@"watchcontrol" forKey:@"tripleClickOption"];
      v12 = [v5 indexOfObjectPassingTest:&__block_literal_global_3];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 addObject:v11];
      }

      else
      {
        [v5 insertObject:v11 atIndex:v12 + 1];
      }
    }

    v13 = [(TripleClickController *)self _deviceSupportsShortcutMenu];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__TripleClickController_specifiers__block_invoke_2;
    v17[3] = &__block_descriptor_33_e28_B32__0__PSSpecifier_8Q16_B24l;
    v18 = v13;
    v14 = [v5 indexesOfObjectsPassingTest:v17];
    if ([v14 count])
    {
      [v5 removeObjectsAtIndexes:v14];
    }

    [v5 sortUsingComparator:&__block_literal_global_369];
    v15 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

uint64_t __35__TripleClickController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"TRIPLE_CLICK_ZOOM_ROW_ID"];

  return v3;
}

uint64_t __35__TripleClickController_specifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 propertyForKey:@"requiresShortcutMenu"];
  if ([v3 BOOLValue])
  {
    v4 = *(a1 + 32);

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t __35__TripleClickController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"TRIPLE_CLICK_INTRO_TEXT"];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [v5 identifier];
    v10 = [v9 isEqualToString:@"TRIPLE_CLICK_INTRO_TEXT"];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v11 = [v4 name];
      v12 = [v5 name];
      v8 = [v11 localizedCompare:v12];
    }
  }

  return v8;
}

- (BOOL)_deviceSupportsShortcutMenu
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FEE09F8C-155A-48C0-AF0E-5F62F88238BC"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (id)enabledTripleClickSettings
{
  v2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [v2 objectForKey:@"TripleClickOptions"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v18 = a4;
  v6 = [v18 specifier];
  v7 = [v6 propertyForKey:@"tripleClickOption"];
  v8 = [(TripleClickController *)self _optionFromSpecifierKey:v7];

  v9 = [(TripleClickController *)self enabledTripleClickSettings];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  if ([v9 containsObject:v10])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(TripleClickController *)self enabledTripleClickSettings];
    if ([v12 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = v8 == 0;
    }

    v11 = v13;
  }

  [v18 setChecked:v11];
  if (v8 == 23)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v16 = [v15 BOOLForKey:@"VoiceOverTouchEnabled"];
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    v14 = MEMORY[0x277CCABB0];
    v15 = [MEMORY[0x277D7A910] sharedInstance];
    v16 = [v15 featureEnabled];
  }

  v17 = [v14 numberWithInt:v16 ^ 1u];
  [v6 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

LABEL_15:
}

- (void)viewWillAppear:(BOOL)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setDelegate:self];
  v17.receiver = self;
  v17.super_class = TripleClickController;
  [(AccessibilityBridgeBaseController *)&v17 viewWillAppear:1];
  [(TripleClickController *)self willBecomeActive];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v4 bundleURL];
  v8 = [v5 initWithKey:@"AX_SHORTCUT" table:@"AccessibilitySettings" locale:v6 bundleURL:v7];

  v9 = objc_alloc(MEMORY[0x277CCAEB8]);
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v4 bundleURL];
  v12 = [v9 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:v10 bundleURL:v11];

  v13 = MEMORY[0x277CF3470];
  v18[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=AX_SHORTCUT_ID"];
  [v13 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v8 localizedNavigationComponents:v14 deepLink:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TripleClickController;
  [(AccessibilityBridgeBaseController *)&v4 dealloc];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = TripleClickController;
  [(TripleClickController *)&v33 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 isChecked];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v6 visibleCells];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v29 + 1) + 8 * i) setChecked:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);
    }

    v15 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:v7];
    [v8 setChecked:v9 ^ 1u];
    v16 = [v15 propertyForKey:@"tripleClickOption"];
    v17 = [(TripleClickController *)self _optionFromSpecifierKey:v16];

    if ([(TripleClickController *)self _deviceSupportsShortcutMenu])
    {
      v18 = MEMORY[0x277CBEB18];
      v19 = [(TripleClickController *)self enabledTripleClickSettings];
      v20 = [v18 arrayWithArray:v19];

      [v20 removeObject:&unk_284E7E540];
      v21 = [v8 isChecked];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      if (v21)
      {
        [v20 addObject:v22];
      }

      else
      {
        [v20 removeObject:v22];
      }

      if (v17 == 11)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isChecked")}];
        v26 = *MEMORY[0x277CE7F38];
        v27 = [(AccessibilityBridgeBaseController *)self touchAccommodationsDomainAccessor];
        [(AccessibilityBridgeBaseController *)self setGizmoPref:v25 forKey:v26 domainAccessor:v27];
      }

      [(TripleClickController *)self _saveTripleClickOptions:v20];
    }

    else
    {
      if ([v8 isChecked])
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
      v34 = v20;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      [(TripleClickController *)self _saveTripleClickOptions:v24];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end