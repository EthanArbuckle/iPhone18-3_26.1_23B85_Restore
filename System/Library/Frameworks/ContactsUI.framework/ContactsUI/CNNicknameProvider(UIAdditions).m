@interface CNNicknameProvider(UIAdditions)
- (id)sharingAudienceDisplayString;
@end

@implementation CNNicknameProvider(UIAdditions)

- (id)sharingAudienceDisplayString
{
  v1 = [a1 sharingAudience];
  if (v1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v2 = off_1E74E67C8[v1];
    v3 = CNContactsUIBundle();
    v4 = [v3 localizedStringForKey:v2 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v4;
}

@end