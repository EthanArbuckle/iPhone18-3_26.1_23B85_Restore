@interface INPaymentAccount(AssistantCardService)
- (id)acs_formattedAccountName;
@end

@implementation INPaymentAccount(AssistantCardService)

- (id)acs_formattedAccountName
{
  nickname = [self nickname];
  spokenPhrase = [nickname spokenPhrase];
  if ([spokenPhrase length])
  {
    [self nickname];
  }

  else
  {
    [self organizationName];
  }
  v4 = ;
  spokenPhrase2 = [v4 spokenPhrase];

  return spokenPhrase2;
}

@end