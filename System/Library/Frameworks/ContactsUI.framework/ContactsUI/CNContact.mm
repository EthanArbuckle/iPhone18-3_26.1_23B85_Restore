@interface CNContact
@end

@implementation CNContact

uint64_t __44__CNContact_UIAdditions__suggestionsEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableSuggestions", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  v2 = v1;
  suggestionsEnabled_enabled = v2;
  return result;
}

uint64_t __60__CNContact_UIAdditions__copyWithCuratingBirthdaySuggestion__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSuggested])
  {
    v3 = [v2 isBirthday];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __86__CNContact_UIAdditions__validPropertiesByEvaluatingPredicate_onMultiValueProperties___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() multiValuePropertiesSupportingPredicateValidation];
  v4 = [v3 containsObject:v2];

  return v4;
}

uint64_t __35__CNContact_UIAdditions__birthdays__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSuggested])
  {
    v3 = [v2 isBirthday];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __75__CNContact_UIAdditions__multiValuePropertiesSupportingPredicateValidation__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C208];
  v6[0] = *MEMORY[0x1E695C330];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695C360];
  v6[2] = *MEMORY[0x1E695C418];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695C3D0];
  v6[4] = *MEMORY[0x1E695C1F0];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E695C2B0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = [v3 copy];
  v5 = multiValuePropertiesSupportingPredicateValidation_cn_once_object_2;
  multiValuePropertiesSupportingPredicateValidation_cn_once_object_2 = v4;
}

void __48__CNContact_UIAdditions__descriptorForAllUIKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = +[CNContactViewController descriptorForRequiredKeys];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContact(UIAdditions) descriptorForAllUIKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForAllUIKeys_cn_once_object_1;
  descriptorForAllUIKeys_cn_once_object_1 = v4;
}

uint64_t __59__CNContact_UIAdditions__nameAndPhotoSharingDebugUIEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableNameAndPhotoSharingDebugUI", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  nameAndPhotoSharingDebugUIEnabled_enabled = v2;
  return result;
}

uint64_t __52__CNContact_UIAdditions__downtimeWhitelistUIEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableDowntimeWhiteListUI", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  downtimeWhitelistUIEnabled_enabled = v2;
  return result;
}

uint64_t __47__CNContact_UIAdditions__settableMeCardEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableSettableMeCard", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  settableMeCardEnabled_enabled = v2;
  return result;
}

uint64_t __39__CNContact_UIAdditions__geminiEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableGemini", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  geminiEnabled_enabled = v2;
  return result;
}

uint64_t __45__CNContact_UIAdditions__quickActionsEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnableQuickActions", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  quickActionsEnabled_enabled = v2;
  return result;
}

uint64_t __52__CNContact_UIAdditions__suggestionsShownInEditMode__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNShowSuggestionsInEditMode", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  suggestionsShownInEditMode_enabled = v2;
  return result;
}

id __41__CNContact_Blocked__allNumbersAndEmails__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 unformattedInternationalStringValue];

  return v3;
}

@end