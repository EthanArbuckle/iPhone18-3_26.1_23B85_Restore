@interface STKInternalSettings
+ (BOOL)BOOLForKey:(id)key withDefaultValue:(BOOL)value;
+ (BOOL)isInternalBuild;
+ (BOOL)isSeedBuild;
+ (NSUserDefaults)defaults;
+ (double)floatForKey:(id)key withDefaultValue:(double)value;
+ (id)allowEmojiKeyboardSettingsValue;
+ (id)autoPopulateDebugPromptsSettingsValue;
+ (id)autoSelectSingleAmbiguitySettingsValue;
+ (id)bypassPersonCheckSettingsValue;
+ (id)defaultGenmojiCandidateCountSettingsValue;
+ (id)defaultRewriteCountSettingsValue;
+ (id)disableImageSafetySettingsValue;
+ (id)disableLanguageCheckSettingsValue;
+ (id)disablePromptSafetySettingsValue;
+ (id)disableRewritesSettingsValue;
+ (id)emojiPosterSearchSettingsValue;
+ (id)emulateNonInternalBuildSettingsValue;
+ (id)emulateSeedBuildSettingsValue;
+ (id)enableEnglishLanguageAnalysisSettingsValue;
+ (id)genmojiPosterSettingsValue;
+ (id)maxRewriteWordCountSettingsValue;
+ (id)pinBottomLabelToBottomSettingsValue;
+ (id)runVGFRemoveBackgroundSettingsValue;
+ (id)settingsValueForKey:(id)key;
+ (id)showCameraSettingsValue;
+ (id)showDisambiguationUISettingsValue;
+ (id)useGPGenerationUISettingsValue;
+ (id)useNewCollectionViewSettingsValue;
+ (id)useNewRecencyServiceSettingsValue;
+ (int64_t)integerForKey:(id)key withDefaultValue:(int64_t)value;
@end

@implementation STKInternalSettings

+ (NSUserDefaults)defaults
{
  if (defaults_onceToken != -1)
  {
    +[STKInternalSettings defaults];
  }

  v3 = defaults_sDefaults;

  return v3;
}

uint64_t __31__STKInternalSettings_defaults__block_invoke()
{
  defaults_sDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.StickerKit.InternalSettings"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)settingsValueForKey:(id)key
{
  v4 = [key stringByAppendingString:@"SettingsValue"];
  v5 = NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [self performSelector:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isInternalBuild
{
  if ([self emulateNonInternalBuild])
  {
    return 0;
  }

  return MEMORY[0x1EEE11D50]();
}

+ (BOOL)isSeedBuild
{
  if ([self emulateSeedBuild])
  {
    return 1;
  }

  return MEMORY[0x1EEE11D60]();
}

+ (id)runVGFRemoveBackgroundSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  runVGFRemoveBackground = [self runVGFRemoveBackground];

  return [v2 numberWithBool:runVGFRemoveBackground];
}

+ (id)autoPopulateDebugPromptsSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  autoPopulateDebugPrompts = [self autoPopulateDebugPrompts];

  return [v2 numberWithBool:autoPopulateDebugPrompts];
}

+ (id)bypassPersonCheckSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  bypassPersonCheck = [self bypassPersonCheck];

  return [v2 numberWithBool:bypassPersonCheck];
}

+ (id)disableLanguageCheckSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  disableLanguageCheck = [self disableLanguageCheck];

  return [v2 numberWithBool:disableLanguageCheck];
}

+ (id)disablePromptSafetySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  disablePromptSafety = [self disablePromptSafety];

  return [v2 numberWithBool:disablePromptSafety];
}

+ (id)disableImageSafetySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  disableImageSafety = [self disableImageSafety];

  return [v2 numberWithBool:disableImageSafety];
}

+ (id)showCameraSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  showCamera = [self showCamera];

  return [v2 numberWithBool:showCamera];
}

+ (id)showDisambiguationUISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  showDisambiguationUI = [self showDisambiguationUI];

  return [v2 numberWithBool:showDisambiguationUI];
}

+ (id)autoSelectSingleAmbiguitySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  autoSelectSingleAmbiguity = [self autoSelectSingleAmbiguity];

  return [v2 numberWithBool:autoSelectSingleAmbiguity];
}

+ (id)disableRewritesSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  disableRewrites = [self disableRewrites];

  return [v2 numberWithBool:disableRewrites];
}

+ (id)defaultRewriteCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  defaultRewriteCount = [self defaultRewriteCount];

  return [v2 numberWithInteger:defaultRewriteCount];
}

+ (id)maxRewriteWordCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  maxRewriteWordCount = [self maxRewriteWordCount];

  return [v2 numberWithInteger:maxRewriteWordCount];
}

+ (id)emulateNonInternalBuildSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  emulateNonInternalBuild = [self emulateNonInternalBuild];

  return [v2 numberWithBool:emulateNonInternalBuild];
}

+ (id)emulateSeedBuildSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  emulateSeedBuild = [self emulateSeedBuild];

  return [v2 numberWithBool:emulateSeedBuild];
}

+ (id)pinBottomLabelToBottomSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  pinBottomLabelToBottom = [self pinBottomLabelToBottom];

  return [v2 numberWithBool:pinBottomLabelToBottom];
}

+ (id)enableEnglishLanguageAnalysisSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  enableEnglishLanguageAnalysis = [self enableEnglishLanguageAnalysis];

  return [v2 numberWithBool:enableEnglishLanguageAnalysis];
}

+ (id)useNewCollectionViewSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  useNewCollectionView = [self useNewCollectionView];

  return [v2 numberWithBool:useNewCollectionView];
}

+ (id)allowEmojiKeyboardSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  allowEmojiKeyboard = [self allowEmojiKeyboard];

  return [v2 numberWithBool:allowEmojiKeyboard];
}

+ (id)useGPGenerationUISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  useGPGenerationUI = [self useGPGenerationUI];

  return [v2 numberWithBool:useGPGenerationUI];
}

+ (id)useNewRecencyServiceSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  useNewRecencyService = [self useNewRecencyService];

  return [v2 numberWithBool:useNewRecencyService];
}

+ (id)genmojiPosterSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  genmojiPoster = [self genmojiPoster];

  return [v2 numberWithBool:genmojiPoster];
}

+ (id)emojiPosterSearchSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  emojiPosterSearch = [self emojiPosterSearch];

  return [v2 numberWithBool:emojiPosterSearch];
}

+ (id)defaultGenmojiCandidateCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  defaultGenmojiCandidateCount = [self defaultGenmojiCandidateCount];

  return [v2 numberWithInteger:defaultGenmojiCandidateCount];
}

+ (BOOL)BOOLForKey:(id)key withDefaultValue:(BOOL)value
{
  v6 = [self defaultsKeyForKey:key];
  defaults = [self defaults];
  v8 = [defaults objectForKey:v6];

  if (v8)
  {
    value = [v8 BOOLValue];
  }

  return value;
}

+ (double)floatForKey:(id)key withDefaultValue:(double)value
{
  v6 = [self defaultsKeyForKey:key];
  defaults = [self defaults];
  v8 = [defaults objectForKey:v6];

  if (v8)
  {
    [v8 floatValue];
    value = v9;
  }

  return value;
}

+ (int64_t)integerForKey:(id)key withDefaultValue:(int64_t)value
{
  v6 = [self defaultsKeyForKey:key];
  defaults = [self defaults];
  v8 = [defaults objectForKey:v6];

  if (v8)
  {
    value = [v8 integerValue];
  }

  return value;
}

@end