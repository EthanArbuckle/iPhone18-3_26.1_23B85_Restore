@interface VoiceOverBrailleInputOutputController
- (BOOL)_isActivityMode;
- (BOOL)_isDisplayInput;
- (BOOL)_isGesturesInput;
- (BOOL)_shouldShowAutoTranslate;
- (BOOL)_shouldShowEightDotBraille;
- (id)gradeTwoAutoTranslatedEnabled:(id)enabled;
- (id)preCustomBrailleSpecifiers;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverBrailleInputOutputController

- (BOOL)_isDisplayInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"BrailleDisplayInput"];

  return v4;
}

- (BOOL)_isActivityMode
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"VoiceOverBrailleActivityModeID"];

  return v4;
}

- (BOOL)_isGesturesInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"BrailleGesturesInput"];

  return v4;
}

- (BOOL)_shouldShowEightDotBraille
{
  if ([(VoiceOverBrailleInputOutputController *)self _isGesturesInput])
  {

    JUMPOUT(0x23EEBA840);
  }

  return 1;
}

- (id)specifiers
{
  v34 = *MEMORY[0x277D85DE8];
  if (VOSCustomBrailleEnabled())
  {
    v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    if (!v3)
    {
      v26 = *MEMORY[0x277D3FC48];
      array = [MEMORY[0x277CBEB18] array];
      v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      v27 = array;
      [array addObject:v5];
      selfCopy = self;
      accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v7 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            v14 = VOSBrailleTableForRotorItem();
            replacements = [v14 replacements];
            v16 = [replacements count];

            if (!v16)
            {
              v17 = MEMORY[0x277D3FAD8];
              localizedNameWithService = [v14 localizedNameWithService];
              v19 = [v17 preferenceSpecifierNamed:localizedNameWithService target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

              [v19 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
              [v19 setProperty:v14 forKey:@"Table"];
              identifier = [v14 identifier];
              [v19 setProperty:identifier forKey:@"TableIdentifier"];

              [v27 addObject:v19];
              v5 = v19;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v10);
      }

      v21 = *(&selfCopy->super.super.super.super.super.super.isa + v26);
      *(&selfCopy->super.super.super.super.super.super.isa + v26) = v27;
      v22 = v27;

      v3 = *(&selfCopy->super.super.super.super.super.super.isa + v26);
    }

    preCustomBrailleSpecifiers = v3;
  }

  else
  {
    preCustomBrailleSpecifiers = [(VoiceOverBrailleInputOutputController *)self preCustomBrailleSpecifiers];
  }

  v24 = *MEMORY[0x277D85DE8];

  return preCustomBrailleSpecifiers;
}

- (id)preCustomBrailleSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v7 = [accessibilityDomainAccessor stringForKey:*MEMORY[0x277CE8010]];

    v8 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v7];
    v32 = v8;
    v33 = v7;
    if (v7)
    {
      v9 = v8;
      supportsTranslationModeContracted = [v8 supportsTranslationModeContracted];
      supportsTranslationMode8Dot = [v9 supportsTranslationMode8Dot];
    }

    else
    {
      supportsTranslationModeContracted = 1;
      supportsTranslationMode8Dot = 1;
    }

    v11 = MEMORY[0x277D3FAD8];
    v12 = settingsLocString(@"SIXDOT_MODE", @"VoiceOverSettings");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v14 = *MEMORY[0x277D3FFB8];
    [v13 setProperty:@"SixDotBraille" forKey:*MEMORY[0x277D3FFB8]];
    [array addObject:v13];
    if ([(VoiceOverBrailleInputOutputController *)self _shouldShowEightDotBraille])
    {
      v15 = MEMORY[0x277D3FAD8];
      v16 = settingsLocString(@"EIGHTDOT_MODE", @"VoiceOverSettings");
      v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v17 setProperty:@"EightDotBraille" forKey:v14];
      v18 = [MEMORY[0x277CCABB0] numberWithBool:supportsTranslationMode8Dot];
      v34 = *MEMORY[0x277D3FF38];
      [v17 setProperty:v18 forKey:?];

      [array addObject:v17];
      v13 = v17;
    }

    else
    {
      v34 = *MEMORY[0x277D3FF38];
    }

    v19 = MEMORY[0x277D3FAD8];
    v20 = settingsLocString(@"CONTRACTION_MODE", @"VoiceOverSettings");
    v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v21 setProperty:@"ContractedBraille" forKey:v14];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:supportsTranslationModeContracted];
    [v21 setProperty:v22 forKey:v34];

    [array addObject:v21];
    if ([(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
    {
      v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [array addObject:v23];
      v24 = MEMORY[0x277D3FAD8];
      v25 = settingsLocString(@"GRADE2_AUTO_TRANSLATE", @"VoiceOverSettings");
      v26 = [v24 preferenceSpecifierNamed:v25 target:self set:sel_setGradeTwoAutoTransateEnabled_specifier_ get:sel_gradeTwoAutoTranslatedEnabled_ detail:0 cell:6 edit:0];

      [v26 setProperty:@"GRADE2_AUTO_TRANSLATE" forKey:v14];
      [array addObject:v26];
      _shouldShowAutoTranslate = [(VoiceOverBrailleInputOutputController *)self _shouldShowAutoTranslate];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:_shouldShowAutoTranslate];
      [v26 setProperty:v28 forKey:v34];

      v21 = v26;
    }

    v29 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (BOOL)_shouldShowAutoTranslate
{
  if ([(VoiceOverBrailleInputOutputController *)self _isActivityMode])
  {
    return 0;
  }

  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [accessibilityDomainAccessor integerForKey:*MEMORY[0x277CE7FE0]];

  return (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

- (id)gradeTwoAutoTranslatedEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", *MEMORY[0x277CE8020])}];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:path];
  if (VOSCustomBrailleEnabled())
  {
    v8 = [v7 propertyForKey:@"TableIdentifier"];
    _isDisplayInput = [(VoiceOverBrailleInputOutputController *)self _isDisplayInput];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v11 = accessibilityDomainAccessor;
    v12 = MEMORY[0x277CE7FE8];
    if (!_isDisplayInput)
    {
      v12 = MEMORY[0x277CE8000];
    }

    v13 = [accessibilityDomainAccessor objectForKey:*v12];

    if (v13 && ([v8 isEqualToString:v13] & 1) != 0)
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    [cellCopy setAccessoryType:v14];
  }

  else
  {
    v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
    if ([(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
    {
      v15 = +[VoiceOverBrailleController brailleSettingsInputValue];
    }

    else
    {
      v15 = +[VoiceOverBrailleController brailleSettingsOutputValue];
    }

    v16 = v15;
    if ([v8 isEqualToString:@"SixDotBraille"])
    {
      v17 = 1;
    }

    else
    {
      v18 = [v8 isEqualToString:@"EightDotBraille"];
      v17 = 2;
      if (!v18)
      {
        v17 = 3;
      }
    }

    if (v17 == v16)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [cellCopy setAccessoryType:v19];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = __UIAccessibilitySafeClass();
        [v14 setChecked:0];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v16 = __UIAccessibilitySafeClass();

  [v16 setChecked:1];
  v17 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:pathCopy];
  if (!VOSCustomBrailleEnabled())
  {
    v21 = *MEMORY[0x277D3FFB8];
    v22 = [v17 propertyForKey:*MEMORY[0x277D3FFB8]];
    if ([v22 isEqualToString:@"SixDotBraille"])
    {
      v23 = 1;
    }

    else
    {
      v27 = [v17 propertyForKey:v21];
      if ([v27 isEqualToString:@"EightDotBraille"])
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }
    }

    _isDisplayInput = [(VoiceOverBrailleInputOutputController *)self _isDisplayInput];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
    if (_isDisplayInput)
    {
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v18 forKey:*MEMORY[0x277CE7FE0]];

      v18 = [(VoiceOverBrailleInputOutputController *)self specifierForID:@"GRADE2_AUTO_TRANSLATE"];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[VoiceOverBrailleInputOutputController _shouldShowAutoTranslate](self, "_shouldShowAutoTranslate")}];
      [v18 setProperty:v29 forKey:*MEMORY[0x277D3FF38]];

      [(VoiceOverBrailleInputOutputController *)self reloadSpecifier:v18];
      goto LABEL_23;
    }

    v26 = MEMORY[0x277CE7FF8];
    goto LABEL_22;
  }

  v18 = [v17 propertyForKey:@"TableIdentifier"];
  if (![(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v18 forKey:*MEMORY[0x277CE8000]];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v25 = [accessibilityDomainAccessor BOOLForKey:*MEMORY[0x277CE8008]];

    if (!v25)
    {
      goto LABEL_23;
    }

    v26 = MEMORY[0x277CE7FE8];
LABEL_22:
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v18 forKey:*v26];
    goto LABEL_23;
  }

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v18 forKey:*MEMORY[0x277CE7FE8]];
  v19 = [(VoiceOverBrailleInputOutputController *)self specifierForID:@"GRADE2_AUTO_TRANSLATE"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[VoiceOverBrailleInputOutputController _shouldShowAutoTranslate](self, "_shouldShowAutoTranslate")}];
  [v19 setProperty:v20 forKey:*MEMORY[0x277D3FF38]];

  [(VoiceOverBrailleInputOutputController *)self reloadSpecifier:v19];
LABEL_23:

  [(VoiceOverBrailleInputOutputController *)self reload];
  v30 = *MEMORY[0x277D85DE8];
}

@end