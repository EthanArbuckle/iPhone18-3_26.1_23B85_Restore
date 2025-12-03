@interface AXVoiceOverTraitFeedbackController
+ (id)descriptionForOption:(id)option;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverTraitFeedbackController

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
    v8 = settingsLocString(@"FEEDBACK_SPEAK_BEFORE", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27A218 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v9];
    v10 = settingsLocString(@"FEEDBACK_SPEAK_AFTER", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27A230 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"FEEDBACK_SPEAK_NONE", @"VoiceOverSettings");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A248 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v13];
    v14 = [v7 copy];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v14;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v5 = +[AXSettings sharedInstance];
  voiceOverTraitFeedback = [v5 voiceOverTraitFeedback];

  specifier = [cellCopy specifier];
  v8 = [specifier propertyForKey:@"AXSVoiceOverTraitFeedback"];
  v9 = [v8 integerValue] == voiceOverTraitFeedback;

  [cellCopy setChecked:v9];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = AXVoiceOverTraitFeedbackController;
  pathCopy = path;
  [(AXVoiceOverTraitFeedbackController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverTraitFeedbackController *)self specifierForIndexPath:pathCopy, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverTraitFeedback"];
  integerValue = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverTraitFeedback:integerValue];

  [(AXVoiceOverTraitFeedbackController *)self beginUpdates];
  [(AXVoiceOverTraitFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverTraitFeedbackController *)self endUpdates];
}

+ (id)descriptionForOption:(id)option
{
  if (option)
  {
    integerValue = [option integerValue];
    v4 = objc_opt_new();
    if (integerValue <= 2)
    {
      v5 = settingsLocString(off_2577D0[integerValue], @"VoiceOverSettings");
      [v4 addObject:v5];
    }

    v6 = [NSListFormatter localizedStringByJoiningStrings:v4];
  }

  else
  {
    v6 = settingsLocString(@"DEFAULT", @"Accessibility");
  }

  return v6;
}

@end