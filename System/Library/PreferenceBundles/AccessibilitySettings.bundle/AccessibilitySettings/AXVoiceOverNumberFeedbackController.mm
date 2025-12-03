@interface AXVoiceOverNumberFeedbackController
- (id)getValueSelectedBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverNumberFeedbackController

- (id)getValueSelectedBlock
{
  specifier = [(AXVoiceOverNumberFeedbackController *)self specifier];
  v3 = [specifier propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  specifier = [(AXVoiceOverNumberFeedbackController *)self specifier];
  v3 = [specifier propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    specifier = [(AXVoiceOverNumberFeedbackController *)self specifier];
    v9 = [specifier propertyForKey:@"showDefault"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      v11 = settingsLocString(@"DEFAULT", @"VoiceOverSettings");
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v7 addObject:v12];
    }

    v13 = settingsLocString(@"NUMBER_FEEDBACK_WORDS", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_27ADD0 forKey:@"AXSVoiceOverNumberFeedback"];
    [v7 addObject:v14];
    v15 = settingsLocString(@"NUMBER_FEEDBACK_DIGITS", @"VoiceOverSettings");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:&off_27ADE8 forKey:@"AXSVoiceOverNumberFeedback"];
    [v7 addObject:v16];
    v17 = [v7 copy];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  getValueSelectedBlock = [(AXVoiceOverNumberFeedbackController *)self getValueSelectedBlock];
  if (getValueSelectedBlock)
  {
    getValueSelectedBlock2 = [(AXVoiceOverNumberFeedbackController *)self getValueSelectedBlock];
    v8 = getValueSelectedBlock2[2]();
    integerValue = [v8 integerValue];
  }

  else
  {
    getValueSelectedBlock2 = +[AXSettings sharedInstance];
    integerValue = [getValueSelectedBlock2 voiceOverNumberFeedback];
  }

  specifier = [cellCopy specifier];
  v11 = [specifier propertyForKey:@"AXSVoiceOverNumberFeedback"];
  v12 = [v11 integerValue] == integerValue;

  [cellCopy setChecked:v12];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AXVoiceOverNumberFeedbackController;
  pathCopy = path;
  [(AXVoiceOverNumberFeedbackController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverNumberFeedbackController *)self specifierForIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverNumberFeedback"];

  setValueSelectedBlock = [(AXVoiceOverNumberFeedbackController *)self setValueSelectedBlock];

  if (setValueSelectedBlock)
  {
    setValueSelectedBlock2 = [(AXVoiceOverNumberFeedbackController *)self setValueSelectedBlock];
    (setValueSelectedBlock2)[2](setValueSelectedBlock2, v8);
  }

  else
  {
    integerValue = [v8 integerValue];
    setValueSelectedBlock2 = +[AXSettings sharedInstance];
    [setValueSelectedBlock2 setVoiceOverNumberFeedback:integerValue];
  }

  [(AXVoiceOverNumberFeedbackController *)self beginUpdates];
  [(AXVoiceOverNumberFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverNumberFeedbackController *)self endUpdates];
}

@end