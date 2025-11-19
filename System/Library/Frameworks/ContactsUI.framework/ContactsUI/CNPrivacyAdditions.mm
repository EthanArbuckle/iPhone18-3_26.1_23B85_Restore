@interface CNPrivacyAdditions
+ (void)updateAccessDeniedView:(id)a3 forAuthorizationStatus:(int64_t)a4;
@end

@implementation CNPrivacyAdditions

+ (void)updateAccessDeniedView:(id)a3 forAuthorizationStatus:(int64_t)a4
{
  v9 = a3;
  if (a4 == 1)
  {
    v7 = CNContactsUIBundle();
    v6 = [v7 localizedStringForKey:@"ACCESS_DENIED_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v8 = 0;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"ACCESS_DENIED_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"ACCESS_DENIED_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
  v8 = 0;
LABEL_7:
  [v9 setTitle:v6];
  [v9 setMessage:v8];
}

@end