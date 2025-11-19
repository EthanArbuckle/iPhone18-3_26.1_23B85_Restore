@interface AuthenticationChallengeDialogRequest
+ (id)dialogForAuthenticationChallenge:(id)a3;
@end

@implementation AuthenticationChallengeDialogRequest

+ (id)dialogForAuthenticationChallenge:(id)a3
{
  v3 = a3;
  v4 = [v3 localizedTitle];
  v5 = [v3 localizedMessage];
  v6 = [AMSDialogRequest requestWithTitle:v4 message:v5];

  v7 = ASDLocalizedString();
  v8 = [AMSDialogAction actionWithTitle:v7 style:2];

  [v8 setIdentifier:@"AuthenticationChallengeDialogActionCancel"];
  [v6 addButtonAction:v8];
  v9 = ASDLocalizedString();
  v10 = [AMSDialogAction actionWithTitle:v9 style:0];

  [v10 setIdentifier:@"AuthenticationChallengeDialogActionOkay"];
  [v6 addButtonAction:v10];
  v11 = ASDLocalizedString();
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:0];
  v13 = [v3 user];

  [v12 setText:v13];
  [v6 addTextField:v12];
  v14 = ASDLocalizedString();
  v15 = [AMSDialogTextField textFieldWithPlaceholder:v14 secure:1];

  [v15 setKeyboardType:0];
  [v6 addTextField:v15];

  return v6;
}

@end