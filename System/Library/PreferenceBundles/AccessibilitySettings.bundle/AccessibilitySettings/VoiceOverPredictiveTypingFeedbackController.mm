@interface VoiceOverPredictiveTypingFeedbackController
- (id)inlineTextCompletionAppearanceFeedbackString:(id)string;
- (id)inlineTextCompletionInsertionFeedback:(id)feedback;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation VoiceOverPredictiveTypingFeedbackController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VoiceOverPredictiveTypingFeedbackController;
  [(VoiceOverPredictiveTypingFeedbackController *)&v12 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __58__VoiceOverPredictiveTypingFeedbackController_viewDidLoad__block_invoke;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  v4 = objc_loadWeakRetained(&location);
  [v3 registerUpdateBlock:v9 forRetrieveSelector:"voiceOverInlineTextCompletionAppearanceFeedback" withListener:v4];

  objc_destroyWeak(&v10);
  v5 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __58__VoiceOverPredictiveTypingFeedbackController_viewDidLoad__block_invoke_2;
  v7[3] = &unk_255388;
  objc_copyWeak(&v8, &location);
  v6 = objc_loadWeakRetained(&location);
  [v5 registerUpdateBlock:v7 forRetrieveSelector:"voiceOverInlineTextCompletionInsertionFeedback" withListener:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__VoiceOverPredictiveTypingFeedbackController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"InlineTextCompletionAppearanceFeedback"];
}

void __58__VoiceOverPredictiveTypingFeedbackController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"InlineTextCompletionInsertionFeedback"];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithName:0];
    v7 = settingsLocString(@"PREDICTIVE_TEXT_APPEARANCE_FEEDBACK_FOOTER", @"VoiceOverSettings");
    v8 = PSFooterTextGroupKey;
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = settingsLocString(@"PREDICTIVE_TEXT_APPEARANCE_FEEDBACK_TITLE", @"VoiceOverSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"inlineTextCompletionAppearanceFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v10 setProperty:&__block_literal_global_71 forKey:@"setValueSelectedBlock"];
    [v10 setProperty:&__block_literal_global_314_0 forKey:@"getValueSelectedBlock"];
    v19 = PSIDKey;
    [v10 setProperty:@"InlineTextCompletionAppearanceFeedback" forKey:?];
    v18 = PSSpecifierIsSearchableKey;
    [v10 setProperty:&__kCFBooleanFalse forKey:?];
    v11 = AXInBuddySetupKey;
    [v10 setProperty:&__kCFBooleanTrue forKey:AXInBuddySetupKey];
    [v5 addObject:v10];
    v12 = [PSSpecifier groupSpecifierWithName:0];

    v13 = settingsLocString(@"PREDICTIVE_TEXT_INSERTION_FEEDBACK_FOOTER", @"VoiceOverSettings");
    [v12 setProperty:v13 forKey:v8];

    [v5 addObject:v12];
    v14 = settingsLocString(@"PREDICTIVE_TEXT_INSERTION_FEEDBACK_TITLE", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"inlineTextCompletionInsertionFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v15 setProperty:&__block_literal_global_327 forKey:@"setValueSelectedBlock"];
    [v15 setProperty:&__block_literal_global_329 forKey:@"getValueSelectedBlock"];
    [v15 setProperty:@"InlineTextCompletionInsertionFeedback" forKey:v19];
    [v15 setProperty:&__kCFBooleanFalse forKey:v18];
    [v15 setProperty:&__kCFBooleanTrue forKey:v11];
    [v5 addObject:v15];
    v16 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __57__VoiceOverPredictiveTypingFeedbackController_specifiers__block_invoke(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverInlineTextCompletionAppearanceFeedback:a2];
}

int64_t __57__VoiceOverPredictiveTypingFeedbackController_specifiers__block_invoke_2(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverInlineTextCompletionAppearanceFeedback];

  return v2;
}

void __57__VoiceOverPredictiveTypingFeedbackController_specifiers__block_invoke_3(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverInlineTextCompletionInsertionFeedback:a2];
}

int64_t __57__VoiceOverPredictiveTypingFeedbackController_specifiers__block_invoke_4(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverInlineTextCompletionInsertionFeedback];

  return v2;
}

- (id)inlineTextCompletionAppearanceFeedbackString:(id)string
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverInlineTextCompletionAppearanceFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)inlineTextCompletionInsertionFeedback:(id)feedback
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverInlineTextCompletionInsertionFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

@end