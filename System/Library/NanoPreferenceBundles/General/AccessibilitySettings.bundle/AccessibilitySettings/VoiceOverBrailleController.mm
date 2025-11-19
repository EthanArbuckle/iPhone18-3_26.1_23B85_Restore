@interface VoiceOverBrailleController
+ (int64_t)brailleSettingsInputValue;
+ (int64_t)brailleSettingsOutputValue;
- (id)_brailleDisplayAlertDuration:(id)a3;
- (id)_currentBrailleTable:(id)a3;
- (id)_stringForBrailleMode:(int64_t)a3;
- (id)brailleDisplayInput:(id)a3;
- (id)brailleDisplayOutput:(id)a3;
- (id)gradeTwoAutoTranslatedEnabled:(id)a3;
- (id)specifiers;
- (id)syncTablesEnabled:(id)a3;
- (id)wordWrapEnabled:(id)a3;
- (void)setSyncTablesEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation VoiceOverBrailleController

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = VoiceOverBrailleController;
  [(AccessibilityBridgeBaseController *)&v16 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__VoiceOverBrailleController_viewDidLoad__block_invoke;
  v13[3] = &unk_278B90C70;
  objc_copyWeak(&v14, &location);
  [v3 registerUpdateBlock:v13 forRetrieveSelector:sel_voiceOverBrailleTableIdentifier withListener:self];

  objc_destroyWeak(&v14);
  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__VoiceOverBrailleController_viewDidLoad__block_invoke_2;
  v11[3] = &unk_278B90C70;
  objc_copyWeak(&v12, &location);
  [v4 registerUpdateBlock:v11 forRetrieveSelector:sel_voiceOverBrailleAlertDisplayDuration withListener:self];

  objc_destroyWeak(&v12);
  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__VoiceOverBrailleController_viewDidLoad__block_invoke_3;
  v9[3] = &unk_278B90C70;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:sel_voiceOverTouchBrailleDisplayOutputMode withListener:self];

  objc_destroyWeak(&v10);
  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__VoiceOverBrailleController_viewDidLoad__block_invoke_4;
  v7[3] = &unk_278B90C70;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:sel_voiceOverTouchBrailleDisplayInputMode withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__VoiceOverBrailleController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"tableIdentifier"];
  [v2 reloadSpecifier:v1 animated:0];
}

void __41__VoiceOverBrailleController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"voiceOverBrailleAlertDisplayDuration"];
  [v2 reloadSpecifier:v1 animated:0];
}

void __41__VoiceOverBrailleController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"BrailleDisplayOutput"];
  [v2 reloadSpecifier:v1 animated:1];
}

void __41__VoiceOverBrailleController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"BrailleDisplayInput"];
  [v2 reloadSpecifier:v1 animated:1];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = @"BrailleOutput";
    v38 = settingsLocString(@"BrailleOutput", @"VoiceOverSettings");
    if (VOSCustomBrailleEnabled())
    {
      v7 = MEMORY[0x277D3FAD8];
      v8 = settingsLocString(@"BrailleSyncInputOutput", @"VoiceOverSettings");
      v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setSyncTablesEnabled_specifier_ get:sel_syncTablesEnabled_ detail:0 cell:6 edit:0];

      [v5 addObject:v9];
      v10 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v11 = [v10 BOOLForKey:*MEMORY[0x277CE8008]];

      if (v11)
      {
        v6 = @"BrailleInputAndOutput";
        v12 = settingsLocString(@"BrailleInputAndOutput", @"VoiceOverSettings");

        v13 = 0;
        v38 = v12;
      }

      else
      {
        v13 = 1;
        v6 = @"BrailleOutput";
      }
    }

    else
    {
      v9 = 0;
      v13 = 1;
    }

    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v38 target:self set:0 get:sel_brailleDisplayOutput_ detail:objc_opt_class() cell:2 edit:0];

    v15 = *MEMORY[0x277D3FFB8];
    [v14 setProperty:@"BrailleDisplayOutput" forKey:*MEMORY[0x277D3FFB8]];
    [v14 setProperty:v6 forKey:@"BrailleDisplayInputOutputTitleKey"];
    [v5 addObject:v14];
    if (v13)
    {
      v16 = MEMORY[0x277D3FAD8];
      v17 = settingsLocString(@"BrailleInput", @"VoiceOverSettings");
      v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:sel_brailleDisplayInput_ detail:objc_opt_class() cell:2 edit:0];

      [v18 setProperty:@"BrailleDisplayInput" forKey:v15];
      [v5 addObject:v18];
      v14 = v18;
    }

    v19 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];

    [v5 addObject:v19];
    if (VOSCustomBrailleEnabled())
    {
      v20 = MEMORY[0x277D3FAD8];
      v21 = settingsLocString(@"GRADE2_AUTO_TRANSLATE", @"VoiceOverSettings");
      v22 = [v20 preferenceSpecifierNamed:v21 target:self set:sel_setGradeTwoAutoTransateEnabled_specifier_ get:sel_gradeTwoAutoTranslatedEnabled_ detail:0 cell:6 edit:0];

      [v5 addObject:v22];
      v19 = v22;
    }

    v23 = MEMORY[0x277D3FAD8];
    v24 = settingsLocString(@"WORD_WRAP", @"VoiceOverSettings");
    v25 = [v23 preferenceSpecifierNamed:v24 target:self set:sel_setWordWrap_specifier_ get:sel_wordWrapEnabled_ detail:0 cell:6 edit:0];

    [v5 addObject:v25];
    v26 = MEMORY[0x277D3FAD8];
    v27 = settingsLocString(@"BRAILLE_DISPLAY_TIMEOUT", @"VoiceOverSettings");
    v28 = [v26 preferenceSpecifierNamed:v27 target:self set:0 get:sel__brailleDisplayAlertDuration_ detail:objc_opt_class() cell:2 edit:0];

    [v28 setProperty:@"voiceOverBrailleAlertDisplayDuration" forKey:v15];
    [v5 addObject:v28];
    v29 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v30 = [v29 firstObject];
    v31 = [v30 hasPrefix:@"en"];

    if (v31)
    {
      v32 = MEMORY[0x277D3FAD8];
      v33 = settingsLocString(@"BRAILLE_TABLES", @"VoiceOverSettings");
      v34 = [v32 preferenceSpecifierNamed:v33 target:self set:0 get:sel__currentBrailleTable_ detail:objc_opt_class() cell:1 edit:0];

      [v34 setProperty:@"tableIdentifier" forKey:v15];
      [v5 addObject:v34];
      v25 = v34;
    }

    v35 = [v5 copy];
    v36 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v35;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_currentBrailleTable:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE8010]];

  if (!v4 || [v4 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xueb"])
  {
    v5 = @"ENGLISH_UNIFIED_BRAILLE_TABLE";
LABEL_4:
    v6 = settingsLocString(v5, @"VoiceOverSettings");
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xna"])
  {
    v5 = @"ENGLISH_US_BRAILLE_TABLE";
    goto LABEL_4;
  }

  v8 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v4];
  v6 = [v8 localizedName];

LABEL_5:

  return v6;
}

- (id)_brailleDisplayAlertDuration:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE7FD8]];

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v5 = *MEMORY[0x277CE69D8];
  }

  v6 = AXLocalizedTimeSummary();

  return v6;
}

- (id)wordWrapEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE8018]];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  return v5;
}

+ (int64_t)brailleSettingsOutputValue
{
  v2 = [a1 accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FF8]];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (int64_t)brailleSettingsInputValue
{
  v2 = [a1 accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FE0]];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)brailleDisplayOutput:(id)a3
{
  if (VOSCustomBrailleEnabled())
  {
    v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [v4 objectForKey:*MEMORY[0x277CE8000]];

    v6 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v5];
    v7 = [v6 localizedNameWithService];
  }

  else
  {
    v7 = -[VoiceOverBrailleController _stringForBrailleMode:](self, "_stringForBrailleMode:", [objc_opt_class() brailleSettingsOutputValue]);
  }

  return v7;
}

- (id)brailleDisplayInput:(id)a3
{
  if (VOSCustomBrailleEnabled())
  {
    v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [v4 objectForKey:*MEMORY[0x277CE7FE8]];

    v6 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v5];
    v7 = [v6 localizedNameWithService];
  }

  else
  {
    v7 = -[VoiceOverBrailleController _stringForBrailleMode:](self, "_stringForBrailleMode:", [objc_opt_class() brailleSettingsInputValue]);
  }

  return v7;
}

- (id)_stringForBrailleMode:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90CB8[a3 - 1], @"VoiceOverSettings");
  }

  return v4;
}

- (id)syncTablesEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLForKey:", *MEMORY[0x277CE8008])}];

  return v5;
}

- (void)setSyncTablesEnabled:(id)a3 specifier:(id)a4
{
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:a3 forKey:*MEMORY[0x277CE8008]];
  v5 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = [v5 objectForKey:*MEMORY[0x277CE8000]];

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v6 forKey:*MEMORY[0x277CE7FE8]];
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (id)gradeTwoAutoTranslatedEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLForKey:", *MEMORY[0x277CE8020])}];

  return v5;
}

@end