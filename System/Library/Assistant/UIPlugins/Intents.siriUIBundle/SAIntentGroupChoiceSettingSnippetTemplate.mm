@interface SAIntentGroupChoiceSettingSnippetTemplate
- (id)commandIdentifier;
@end

@implementation SAIntentGroupChoiceSettingSnippetTemplate

- (id)commandIdentifier
{
  updateSlotCommand = [(SAIntentGroupChoiceSettingSnippetTemplate *)self updateSlotCommand];
  aceId = [updateSlotCommand aceId];

  return aceId;
}

@end