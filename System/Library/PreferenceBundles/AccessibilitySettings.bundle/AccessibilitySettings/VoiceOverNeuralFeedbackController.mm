@interface VoiceOverNeuralFeedbackController
- (id)_feedbackRelatedSpecifiers;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverNeuralFeedbackController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    _feedbackRelatedSpecifiers = [(VoiceOverNeuralFeedbackController *)self _feedbackRelatedSpecifiers];
    [v5 addObjectsFromArray:_feedbackRelatedSpecifiers];

    v7 = [v5 copy];
    v8 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v7;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (id)_feedbackRelatedSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = settingsLocString(@"VO_RECOGNITION_FEEDBACK_FOOTER", @"VoiceOverSettings");
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v6 = settingsLocString(@"FEEDBACK_SPEAK", @"VoiceOverSettings");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v7 setProperty:&off_27B388 forKey:@"AXSVoiceOverDiscoveredMLContentFeedback"];
  [v3 addObject:v7];
  v8 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setProperty:&off_27B3A0 forKey:@"AXSVoiceOverDiscoveredMLContentFeedback"];
  [v3 addObject:v9];
  v10 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v11 setProperty:&off_27B3B8 forKey:@"AXSVoiceOverDiscoveredMLContentFeedback"];
  [v3 addObject:v11];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * i) setProperty:&__kCFBooleanTrue forKey:@"kAXFeedbackRelatedSettingsKey"];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  return v12;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v5 = +[AXSettings sharedInstance];
  voiceOverNeuralElementFeedback = [v5 voiceOverNeuralElementFeedback];

  specifier = [cellCopy specifier];
  v8 = [specifier propertyForKey:@"AXSVoiceOverDiscoveredMLContentFeedback"];
  v9 = [v8 integerValue] == voiceOverNeuralElementFeedback;

  [cellCopy setChecked:v9];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = VoiceOverNeuralFeedbackController;
  pathCopy = path;
  [(VoiceOverNeuralFeedbackController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverNeuralFeedbackController *)self specifierForIndexPath:pathCopy, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverDiscoveredMLContentFeedback"];
  integerValue = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverNeuralElementFeedback:integerValue];

  [(VoiceOverNeuralFeedbackController *)self beginUpdates];
  [(VoiceOverNeuralFeedbackController *)self reloadSpecifiers];
  [(VoiceOverNeuralFeedbackController *)self endUpdates];
}

@end