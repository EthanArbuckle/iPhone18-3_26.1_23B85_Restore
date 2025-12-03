@interface AXVoiceOverDeletionFeedbackController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverDeletionFeedbackController

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
    v8 = settingsLocString(@"FEEDBACK_SPEAK", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_279CF0 forKey:@"AXSVoiceOverDeletionFeedback"];
    [v7 addObject:v9];
    v10 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_279D08 forKey:@"AXSVoiceOverDeletionFeedback"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"FEEDBACK_CHANGE_PITCH", @"VoiceOverSettings");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_279D20 forKey:@"AXSVoiceOverDeletionFeedback"];
    [v7 addObject:v13];
    v14 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_279D38 forKey:@"AXSVoiceOverDeletionFeedback"];
    [v7 addObject:v15];
    v16 = [v7 copy];
    v17 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v16;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v5 = +[AXSettings sharedInstance];
  voiceOverDeletionFeedback = [v5 voiceOverDeletionFeedback];

  specifier = [cellCopy specifier];
  v8 = [specifier propertyForKey:@"AXSVoiceOverDeletionFeedback"];
  v9 = [v8 integerValue] == voiceOverDeletionFeedback;

  [cellCopy setChecked:v9];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = AXVoiceOverDeletionFeedbackController;
  pathCopy = path;
  [(AXVoiceOverDeletionFeedbackController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverDeletionFeedbackController *)self specifierForIndexPath:pathCopy, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverDeletionFeedback"];
  integerValue = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverDeletionFeedback:integerValue];

  [(AXVoiceOverDeletionFeedbackController *)self beginUpdates];
  [(AXVoiceOverDeletionFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverDeletionFeedbackController *)self endUpdates];
}

@end