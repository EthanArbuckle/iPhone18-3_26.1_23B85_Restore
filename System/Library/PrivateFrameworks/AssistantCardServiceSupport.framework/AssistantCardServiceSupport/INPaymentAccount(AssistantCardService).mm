@interface INPaymentAccount(AssistantCardService)
- (id)acs_formattedAccountName;
@end

@implementation INPaymentAccount(AssistantCardService)

- (id)acs_formattedAccountName
{
  v2 = [a1 nickname];
  v3 = [v2 spokenPhrase];
  if ([v3 length])
  {
    [a1 nickname];
  }

  else
  {
    [a1 organizationName];
  }
  v4 = ;
  v5 = [v4 spokenPhrase];

  return v5;
}

@end