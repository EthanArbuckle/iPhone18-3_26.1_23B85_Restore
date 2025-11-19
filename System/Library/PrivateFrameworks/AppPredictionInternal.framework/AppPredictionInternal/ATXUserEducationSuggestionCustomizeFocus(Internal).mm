@interface ATXUserEducationSuggestionCustomizeFocus(Internal)
+ (id)supportedModeSemanticTypeStrings;
+ (uint64_t)suggestionsAreSupportedForModeSemanticType:()Internal;
- (id)server;
- (id)userDefaultsKeyForTrackingSuggestionState;
@end

@implementation ATXUserEducationSuggestionCustomizeFocus(Internal)

- (id)server
{
  v0 = +[ATXUserEducationSuggestionServer sharedInstance];
  v1 = [v0 customizeFocusServer];

  return v1;
}

+ (id)supportedModeSemanticTypeStrings
{
  v1 = [a1 supportedModeSemanticTypes];
  v2 = [v1 _pas_mappedArrayWithTransform:&__block_literal_global_180];

  return v2;
}

+ (uint64_t)suggestionsAreSupportedForModeSemanticType:()Internal
{
  v4 = [a1 supportedModeSemanticTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (id)userDefaultsKeyForTrackingSuggestionState
{
  v2 = MEMORY[0x277CCACA8];
  v7.receiver = a1;
  v7.super_class = &off_283AFDB68;
  v3 = objc_msgSendSuper2(&v7, sel_userDefaultsKeyForTrackingSuggestionState);
  [a1 modeSemanticType];
  v4 = DNDModeSemanticTypeToString();
  v5 = [v2 stringWithFormat:@"%@.%@.%@", v3, @"CustomizeFocus", v4];

  return v5;
}

@end