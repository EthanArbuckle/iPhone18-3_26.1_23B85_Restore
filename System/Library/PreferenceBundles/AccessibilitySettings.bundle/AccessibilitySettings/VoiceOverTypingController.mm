@interface VoiceOverTypingController
- (id)_keyboardTimeoutStart:(id)start;
- (id)cursorOutput:(id)output;
- (id)phoneticsEnabled:(id)enabled;
- (id)specifiers;
- (id)typingMode:(id)mode;
- (id)voModifierKey:(id)key;
- (void)viewDidLoad;
@end

@implementation VoiceOverTypingController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = VoiceOverTypingController;
  [(VoiceOverTypingController *)&v13 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __40__VoiceOverTypingController_viewDidLoad__block_invoke;
  v10[3] = &unk_255388;
  objc_copyWeak(&v11, &location);
  [v3 registerUpdateBlock:v10 forRetrieveSelector:"voiceOverContinuousPathKeyboardStartTimeout" withListener:self];

  objc_destroyWeak(&v11);
  v4 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __40__VoiceOverTypingController_viewDidLoad__block_invoke_2;
  v8[3] = &unk_255388;
  objc_copyWeak(&v9, &location);
  [v4 registerUpdateBlock:v8 forRetrieveSelector:"voiceOverKeyboardModifierChoice" withListener:self];

  objc_destroyWeak(&v9);
  v5 = +[AXSettings sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __40__VoiceOverTypingController_viewDidLoad__block_invoke_3;
  v6[3] = &unk_255388;
  objc_copyWeak(&v7, &location);
  [v5 registerUpdateBlock:v6 forRetrieveSelector:"voiceOverCursorOutputStyle" withListener:self];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __40__VoiceOverTypingController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __40__VoiceOverTypingController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __40__VoiceOverTypingController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

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
    v6 = +[NSMutableArray array];
    v7 = settingsLocString(@"TYPING_MODE_TITLE", @"VoiceOverSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"typingMode:" detail:objc_opt_class() cell:2 edit:0];

    v9 = PSValidTitlesKey;
    [v8 setProperty:&off_27CC68 forKey:PSValidTitlesKey];
    v10 = PSValidValuesKey;
    [v8 setProperty:&off_27CC80 forKey:PSValidValuesKey];
    [v8 setProperty:&__block_literal_global_61 forKey:@"blockGetter"];
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __39__VoiceOverTypingController_specifiers__block_invoke_2;
    v27[3] = &unk_2589F0;
    objc_copyWeak(&v28, &location);
    v11 = objc_retainBlock(v27);
    [v8 setProperty:v11 forKey:@"blockSetter"];

    v12 = PSStringsKey;
    [v8 setProperty:@"VoiceOverSettings" forKey:PSStringsKey];
    [v8 setProperty:&__kCFBooleanTrue forKey:@"inBuddySetup"];
    v13 = PSIDKey;
    [v8 setProperty:@"TYPING_MODE_TITLE" forKey:PSIDKey];
    [v6 addObject:v8];
    v14 = settingsLocString(@"PHONETICS_TITLE", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"phoneticsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v15 setProperty:&off_27CC98 forKey:v9];
    [v15 setProperty:&off_27CCB0 forKey:v10];
    [v15 setProperty:&__block_literal_global_390 forKey:@"blockGetter"];
    [v15 setProperty:&__block_literal_global_392 forKey:@"blockSetter"];
    [v15 setProperty:@"VoiceOverSettings" forKey:v12];
    [v15 setProperty:&__kCFBooleanTrue forKey:@"inBuddySetup"];
    [v15 setProperty:@"PHONETICS_TITLE" forKey:v13];
    [v6 addObject:v15];
    v16 = settingsLocString(@"TYPING_FEEDBACK", @"VoiceOverSettings");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v17 setProperty:@"VoiceOverTypingFeedbackSettings" forKey:@"searchPlist"];
    [v17 setProperty:&__kCFBooleanTrue forKey:@"inBuddySetup"];
    [v17 setProperty:@"TYPING_FEEDBACK" forKey:v13];
    [v6 addObject:v17];
    v18 = settingsLocString(@"MODIFIER_KEYS", @"VoiceOverSettings");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"voModifierKey:" detail:objc_opt_class() cell:2 edit:0];

    [v19 setProperty:&__kCFBooleanTrue forKey:@"inBuddySetup"];
    [v19 setProperty:@"MODIFIER_KEYS" forKey:v13];
    [v6 addObject:v19];
    v20 = settingsLocString(@"CURSOR_OUTPUT_TITLE", @"VoiceOverSettings");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:"cursorOutput:" detail:objc_opt_class() cell:2 edit:0];

    [v21 setProperty:&__kCFBooleanTrue forKey:@"inBuddySetup"];
    [v21 setProperty:@"CURSOR_OUTPUT" forKey:v13];
    [v6 addObject:v21];
    v22 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT", @"VoiceOverSettings");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"_keyboardTimeoutStart:" detail:objc_opt_class() cell:2 edit:0];

    [v23 setProperty:@"KEYBOARD_TIMING_TIMEOUT" forKey:v13];
    [v6 addObject:v23];
    v24 = [v6 copy];
    v25 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v24;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v4;
}

NSNumber *__cdecl __39__VoiceOverTypingController_specifiers__block_invoke(id a1)
{
  v1 = _AXSVoiceOverTouchTypingMode();

  return [NSNumber numberWithLong:v1];
}

void __39__VoiceOverTypingController_specifiers__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 integerValue];
  _AXSVoiceOverTouchSetTypingMode();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

NSNumber *__cdecl __39__VoiceOverTypingController_specifiers__block_invoke_3(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 voiceOverPhoneticsFeedback]);

  return v2;
}

void __39__VoiceOverTypingController_specifiers__block_invoke_4(id a1, id a2)
{
  v2 = [a2 integerValue];
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverPhoneticsFeedback:v2];
}

- (id)_keyboardTimeoutStart:(id)start
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverContinuousPathKeyboardStartTimeout];
  v4 = AXLocalizedTimeSummary();

  return v4;
}

- (id)voModifierKey:(id)key
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[VoiceOverModifierKeyController modifierShortStringDescription:](VoiceOverModifierKeyController, "modifierShortStringDescription:", [v3 voiceOverKeyboardModifierChoice]);

  return v4;
}

- (id)cursorOutput:(id)output
{
  v3 = +[AXSettings sharedInstance];
  voiceOverCursorOutputStyle = [v3 voiceOverCursorOutputStyle];

  if (voiceOverCursorOutputStyle == &dword_0 + 1)
  {
    v5 = @"CURSOR_OUTPUT_PASS";
    goto LABEL_5;
  }

  if (voiceOverCursorOutputStyle == &dword_0 + 2)
  {
    v5 = @"CURSOR_OUTPUT_TORIGHT";
LABEL_5:
    v6 = settingsLocString(v5, @"VoiceOverSettings");
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)typingMode:(id)mode
{
  modeCopy = mode;
  objc_opt_class();
  v4 = [modeCopy propertyForKey:PSValidValuesKey];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [NSNumber numberWithLong:_AXSVoiceOverTouchTypingMode()];
  v7 = [v5 indexOfObject:v6];

  objc_opt_class();
  v8 = [modeCopy propertyForKey:PSValidTitlesKey];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 objectAtIndexedSubscript:v7];
  v11 = [modeCopy propertyForKey:PSStringsKey];
  v12 = settingsLocString(v10, v11);

  return v12;
}

- (id)phoneticsEnabled:(id)enabled
{
  enabledCopy = enabled;
  objc_opt_class();
  v4 = [enabledCopy propertyForKey:PSValidValuesKey];
  v5 = __UIAccessibilityCastAsClass();

  v6 = +[AXSettings sharedInstance];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 voiceOverPhoneticsFeedback]);
  v8 = [v5 indexOfObject:v7];

  objc_opt_class();
  v9 = [enabledCopy propertyForKey:PSValidTitlesKey];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 objectAtIndexedSubscript:v8];
  v12 = [enabledCopy propertyForKey:PSStringsKey];
  v13 = settingsLocString(v11, v12);

  return v13;
}

@end