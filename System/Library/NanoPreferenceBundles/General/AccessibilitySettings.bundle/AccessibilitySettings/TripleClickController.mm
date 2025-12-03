@interface TripleClickController
- (BOOL)_deviceSupportsShortcutMenu;
- (id)enabledTripleClickSettings;
- (id)specifiers;
- (int)_optionFromSpecifierKey:(id)key;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TripleClickController

- (int)_optionFromSpecifierKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"voiceover"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"zoom"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"touchaccommodations"])
  {
    v4 = 11;
  }

  else if ([keyCopy isEqualToString:@"hearingdevices"])
  {
    v4 = 8;
  }

  else if ([keyCopy isEqualToString:@"watchcontrol"])
  {
    v4 = 23;
  }

  else if ([keyCopy isEqualToString:@"reducetransparency"])
  {
    v4 = 20;
  }

  else if ([keyCopy isEqualToString:@"increasecontrast"])
  {
    v4 = 21;
  }

  else if ([keyCopy isEqualToString:@"reducemotion"])
  {
    v4 = 24;
  }

  else if ([keyCopy isEqualToString:@"leftrightbalance"])
  {
    v4 = 26;
  }

  else if ([keyCopy isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([keyCopy isEqualToString:@"controlnearbydevices"])
  {
    v4 = 31;
  }

  else if ([keyCopy isEqualToString:@"livespeech"])
  {
    v4 = 33;
  }

  else if ([keyCopy isEqualToString:@"colorfilters"])
  {
    v4 = 10;
  }

  else if ([keyCopy isEqualToString:@"increasebrightnessfloor"])
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

    _deviceSupportsShortcutMenu = [(TripleClickController *)self _deviceSupportsShortcutMenu];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__TripleClickController_specifiers__block_invoke_2;
    v17[3] = &__block_descriptor_33_e28_B32__0__PSSpecifier_8Q16_B24l;
    v18 = _deviceSupportsShortcutMenu;
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
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor objectForKey:@"TripleClickOptions"];

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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v7 = [specifier propertyForKey:@"tripleClickOption"];
  v8 = [(TripleClickController *)self _optionFromSpecifierKey:v7];

  enabledTripleClickSettings = [(TripleClickController *)self enabledTripleClickSettings];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  if ([enabledTripleClickSettings containsObject:v10])
  {
    v11 = 1;
  }

  else
  {
    enabledTripleClickSettings2 = [(TripleClickController *)self enabledTripleClickSettings];
    if ([enabledTripleClickSettings2 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = v8 == 0;
    }

    v11 = v13;
  }

  [cellCopy setChecked:v11];
  if (v8 == 23)
  {
    v14 = MEMORY[0x277CCABB0];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    featureEnabled = [accessibilityDomainAccessor BOOLForKey:@"VoiceOverTouchEnabled"];
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    v14 = MEMORY[0x277CCABB0];
    accessibilityDomainAccessor = [MEMORY[0x277D7A910] sharedInstance];
    featureEnabled = [accessibilityDomainAccessor featureEnabled];
  }

  v17 = [v14 numberWithInt:featureEnabled ^ 1u];
  [specifier setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

LABEL_15:
}

- (void)viewWillAppear:(BOOL)appear
{
  v18[1] = *MEMORY[0x277D85DE8];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setDelegate:self];
  v17.receiver = self;
  v17.super_class = TripleClickController;
  [(AccessibilityBridgeBaseController *)&v17 viewWillAppear:1];
  [(TripleClickController *)self willBecomeActive];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v4 bundleURL];
  v8 = [v5 initWithKey:@"AX_SHORTCUT" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v9 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v4 bundleURL];
  v12 = [v9 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v13 = MEMORY[0x277CF3470];
  v18[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=AX_SHORTCUT_ID"];
  [v13 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v8 localizedNavigationComponents:v14 deepLink:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TripleClickController;
  [(AccessibilityBridgeBaseController *)&v4 dealloc];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v33.receiver = self;
  v33.super_class = TripleClickController;
  [(TripleClickController *)&v33 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isChecked = [v8 isChecked];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    visibleCells = [viewCopy visibleCells];
    v11 = [visibleCells countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v29 + 1) + 8 * i) setChecked:0];
        }

        v12 = [visibleCells countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);
    }

    v15 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:pathCopy];
    [v8 setChecked:isChecked ^ 1u];
    v16 = [v15 propertyForKey:@"tripleClickOption"];
    v17 = [(TripleClickController *)self _optionFromSpecifierKey:v16];

    if ([(TripleClickController *)self _deviceSupportsShortcutMenu])
    {
      v18 = MEMORY[0x277CBEB18];
      enabledTripleClickSettings = [(TripleClickController *)self enabledTripleClickSettings];
      v20 = [v18 arrayWithArray:enabledTripleClickSettings];

      [v20 removeObject:&unk_284E7E540];
      isChecked2 = [v8 isChecked];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      if (isChecked2)
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
        touchAccommodationsDomainAccessor = [(AccessibilityBridgeBaseController *)self touchAccommodationsDomainAccessor];
        [(AccessibilityBridgeBaseController *)self setGizmoPref:v25 forKey:v26 domainAccessor:touchAccommodationsDomainAccessor];
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