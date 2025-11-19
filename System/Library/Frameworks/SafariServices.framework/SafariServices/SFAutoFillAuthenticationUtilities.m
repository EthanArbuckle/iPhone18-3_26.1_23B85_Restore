@interface SFAutoFillAuthenticationUtilities
+ (id)customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:(id)a3;
+ (id)passcodePromptForFillingCreditCard;
+ (id)passcodePromptForFillingSavedAccount;
+ (id)passcodePromptForFillingTimeBasedOneTimeCode;
+ (id)passcodePromptForLoggingInWithSavedAccountOnWebsite:(id)a3;
+ (id)passcodePromptForUsingPasskey;
+ (id)passcodePromptForViewingSavedAccounts;
@end

@implementation SFAutoFillAuthenticationUtilities

+ (id)passcodePromptForViewingSavedAccounts
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingSavedAccount
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingCreditCard
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingTimeBasedOneTimeCode
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForUsingPasskey
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 stringWithFormat:v5, v4];

  return v6;
}

+ (id)passcodePromptForLoggingInWithSavedAccountOnWebsite:(id)a3
{
  v3 = MEMORY[0x1E69C8860];
  v4 = a3;
  v5 = [v3 currentDevice];
  [v5 deviceClass];

  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, v4];

  return v8;
}

@end