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
  customizeFocusServer = [v0 customizeFocusServer];

  return customizeFocusServer;
}

+ (id)supportedModeSemanticTypeStrings
{
  supportedModeSemanticTypes = [self supportedModeSemanticTypes];
  v2 = [supportedModeSemanticTypes _pas_mappedArrayWithTransform:&__block_literal_global_180];

  return v2;
}

+ (uint64_t)suggestionsAreSupportedForModeSemanticType:()Internal
{
  supportedModeSemanticTypes = [self supportedModeSemanticTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [supportedModeSemanticTypes containsObject:v5];

  return v6;
}

- (id)userDefaultsKeyForTrackingSuggestionState
{
  v2 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = &off_283AFDB68;
  v3 = objc_msgSendSuper2(&v7, sel_userDefaultsKeyForTrackingSuggestionState);
  [self modeSemanticType];
  v4 = DNDModeSemanticTypeToString();
  v5 = [v2 stringWithFormat:@"%@.%@.%@", v3, @"CustomizeFocus", v4];

  return v5;
}

@end