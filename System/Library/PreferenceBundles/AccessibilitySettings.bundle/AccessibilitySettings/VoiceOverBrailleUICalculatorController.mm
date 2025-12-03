@interface VoiceOverBrailleUICalculatorController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverBrailleUICalculatorController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = settingsLocString(@"NEMETH_CALCULATOR_CODE", @"BrailleUI");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"NEMETH_CALCULATOR_CODE" forKey:PSIDKey];
    [v6 addObject:v8];
    v9 = settingsLocString(@"NEMETH_CALCULATOR_CODE_NEMETH", @"BrailleUI");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:&__kCFBooleanFalse forKey:@"usesUEBMath"];
    [v6 addObject:v10];
    v11 = settingsLocString(@"NEMETH_CALCULATOR_CODE_UEB_MATH", @"BrailleUI");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&__kCFBooleanTrue forKey:@"usesUEBMath"];
    [v6 addObject:v12];
    v13 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v6;
    v14 = v6;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverBrailleUICalculatorController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"usesUEBMath"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleUICalculatorUsesUEBMath = [v9 voiceOverTouchBrailleUICalculatorUsesUEBMath];

    [cellCopy setChecked:{voiceOverTouchBrailleUICalculatorUsesUEBMath ^ objc_msgSend(v8, "BOOLValue") ^ 1}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = VoiceOverBrailleUICalculatorController;
  [(VoiceOverBrailleUICalculatorController *)&v25 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(VoiceOverBrailleUICalculatorController *)self specifierForIndexPath:pathCopy];
  v17 = [v16 propertyForKey:@"usesUEBMath"];
  v18 = v17;
  if (v17)
  {
    bOOLValue = [v17 BOOLValue];
    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverTouchBrailleUICalculatorUsesUEBMath:bOOLValue];

    [(VoiceOverBrailleUICalculatorController *)self reload];
  }
}

@end