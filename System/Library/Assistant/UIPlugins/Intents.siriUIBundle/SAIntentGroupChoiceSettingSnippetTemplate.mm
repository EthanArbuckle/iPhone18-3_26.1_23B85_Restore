@interface SAIntentGroupChoiceSettingSnippetTemplate
- (id)commandIdentifier;
@end

@implementation SAIntentGroupChoiceSettingSnippetTemplate

- (id)commandIdentifier
{
  v2 = [(SAIntentGroupChoiceSettingSnippetTemplate *)self updateSlotCommand];
  v3 = [v2 aceId];

  return v3;
}

@end