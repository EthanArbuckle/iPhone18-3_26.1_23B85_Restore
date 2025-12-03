@interface MPVoicemailTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MPVoicemailTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPVoicemailTableViewController" hasInstanceMethod:@"voicemailMessageViewModelForVoicemail:isExpanded:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"MPVoicemailTableViewController" hasInstanceMethod:@"voicemailController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPVoicemailController" hasInstanceMethod:@"callProviderManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MobilePhone.FTMessage" hasInstanceMethod:@"receiverDestinationID" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MobilePhone.FTMessage" hasInstanceMethod:@"receiverISOCountryCode" withFullSignature:{"@", 0}];
}

uint64_t __96__MPVoicemailTableViewControllerAccessibility_voicemailMessageViewModelForVoicemail_isExpanded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) receiverDestinationID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __96__MPVoicemailTableViewControllerAccessibility_voicemailMessageViewModelForVoicemail_isExpanded___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) receiverISOCountryCode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end