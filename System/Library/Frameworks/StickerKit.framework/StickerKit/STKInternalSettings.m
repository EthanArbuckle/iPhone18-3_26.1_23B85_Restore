@interface STKInternalSettings
+ (BOOL)BOOLForKey:(id)a3 withDefaultValue:(BOOL)a4;
+ (BOOL)isInternalBuild;
+ (BOOL)isSeedBuild;
+ (NSUserDefaults)defaults;
+ (double)floatForKey:(id)a3 withDefaultValue:(double)a4;
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
+ (id)settingsValueForKey:(id)a3;
+ (id)showCameraSettingsValue;
+ (id)showDisambiguationUISettingsValue;
+ (id)useGPGenerationUISettingsValue;
+ (id)useNewCollectionViewSettingsValue;
+ (id)useNewRecencyServiceSettingsValue;
+ (int64_t)integerForKey:(id)a3 withDefaultValue:(int64_t)a4;
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

+ (id)settingsValueForKey:(id)a3
{
  v4 = [a3 stringByAppendingString:@"SettingsValue"];
  v5 = NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 performSelector:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isInternalBuild
{
  if ([a1 emulateNonInternalBuild])
  {
    return 0;
  }

  return MEMORY[0x1EEE11D50]();
}

+ (BOOL)isSeedBuild
{
  if ([a1 emulateSeedBuild])
  {
    return 1;
  }

  return MEMORY[0x1EEE11D60]();
}

+ (id)runVGFRemoveBackgroundSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 runVGFRemoveBackground];

  return [v2 numberWithBool:v3];
}

+ (id)autoPopulateDebugPromptsSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 autoPopulateDebugPrompts];

  return [v2 numberWithBool:v3];
}

+ (id)bypassPersonCheckSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 bypassPersonCheck];

  return [v2 numberWithBool:v3];
}

+ (id)disableLanguageCheckSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disableLanguageCheck];

  return [v2 numberWithBool:v3];
}

+ (id)disablePromptSafetySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disablePromptSafety];

  return [v2 numberWithBool:v3];
}

+ (id)disableImageSafetySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disableImageSafety];

  return [v2 numberWithBool:v3];
}

+ (id)showCameraSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 showCamera];

  return [v2 numberWithBool:v3];
}

+ (id)showDisambiguationUISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 showDisambiguationUI];

  return [v2 numberWithBool:v3];
}

+ (id)autoSelectSingleAmbiguitySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 autoSelectSingleAmbiguity];

  return [v2 numberWithBool:v3];
}

+ (id)disableRewritesSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disableRewrites];

  return [v2 numberWithBool:v3];
}

+ (id)defaultRewriteCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 defaultRewriteCount];

  return [v2 numberWithInteger:v3];
}

+ (id)maxRewriteWordCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 maxRewriteWordCount];

  return [v2 numberWithInteger:v3];
}

+ (id)emulateNonInternalBuildSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 emulateNonInternalBuild];

  return [v2 numberWithBool:v3];
}

+ (id)emulateSeedBuildSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 emulateSeedBuild];

  return [v2 numberWithBool:v3];
}

+ (id)pinBottomLabelToBottomSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 pinBottomLabelToBottom];

  return [v2 numberWithBool:v3];
}

+ (id)enableEnglishLanguageAnalysisSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 enableEnglishLanguageAnalysis];

  return [v2 numberWithBool:v3];
}

+ (id)useNewCollectionViewSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 useNewCollectionView];

  return [v2 numberWithBool:v3];
}

+ (id)allowEmojiKeyboardSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 allowEmojiKeyboard];

  return [v2 numberWithBool:v3];
}

+ (id)useGPGenerationUISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 useGPGenerationUI];

  return [v2 numberWithBool:v3];
}

+ (id)useNewRecencyServiceSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 useNewRecencyService];

  return [v2 numberWithBool:v3];
}

+ (id)genmojiPosterSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 genmojiPoster];

  return [v2 numberWithBool:v3];
}

+ (id)emojiPosterSearchSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 emojiPosterSearch];

  return [v2 numberWithBool:v3];
}

+ (id)defaultGenmojiCandidateCountSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 defaultGenmojiCandidateCount];

  return [v2 numberWithInteger:v3];
}

+ (BOOL)BOOLForKey:(id)a3 withDefaultValue:(BOOL)a4
{
  v6 = [a1 defaultsKeyForKey:a3];
  v7 = [a1 defaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v8 BOOLValue];
  }

  return a4;
}

+ (double)floatForKey:(id)a3 withDefaultValue:(double)a4
{
  v6 = [a1 defaultsKeyForKey:a3];
  v7 = [a1 defaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    [v8 floatValue];
    a4 = v9;
  }

  return a4;
}

+ (int64_t)integerForKey:(id)a3 withDefaultValue:(int64_t)a4
{
  v6 = [a1 defaultsKeyForKey:a3];
  v7 = [a1 defaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v8 integerValue];
  }

  return a4;
}

@end