@interface SFAutoFillAuthenticationUtilities
+ (id)customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:(id)website;
+ (id)passcodePromptForFillingCreditCard;
+ (id)passcodePromptForFillingSavedAccount;
+ (id)passcodePromptForFillingTimeBasedOneTimeCode;
+ (id)passcodePromptForLoggingInWithSavedAccountOnWebsite:(id)website;
+ (id)passcodePromptForUsingPasskey;
+ (id)passcodePromptForViewingSavedAccounts;
@end

@implementation SFAutoFillAuthenticationUtilities

+ (id)passcodePromptForViewingSavedAccounts
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingSavedAccount
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingCreditCard
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForFillingTimeBasedOneTimeCode
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)passcodePromptForUsingPasskey
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:(id)website
{
  v3 = MEMORY[0x1E696AEC0];
  websiteCopy = website;
  v5 = _WBSLocalizedString();
  websiteCopy = [v3 stringWithFormat:v5, websiteCopy];

  return websiteCopy;
}

+ (id)passcodePromptForLoggingInWithSavedAccountOnWebsite:(id)website
{
  v3 = MEMORY[0x1E69C8860];
  websiteCopy = website;
  currentDevice = [v3 currentDevice];
  [currentDevice deviceClass];

  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  websiteCopy = [v6 stringWithFormat:v7, websiteCopy];

  return websiteCopy;
}

@end