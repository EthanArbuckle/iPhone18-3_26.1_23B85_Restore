@interface UIViewController(AccountManagerExtras)
- (uint64_t)safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary:()AccountManagerExtras;
@end

@implementation UIViewController(AccountManagerExtras)

- (uint64_t)safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary:()AccountManagerExtras
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:0];
  v6 = [objc_alloc(MEMORY[0x1E6999F48]) initWithPolicyChangeHandler:0];
  v23[0] = @"com.apple.mobilesafari";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v8 = [v6 requestPoliciesForBundleIdentifiers:v7 withError:0];

  applicationState = [v5 applicationState];
  if ([applicationState isRestricted])
  {
  }

  else
  {
    v10 = [v8 objectForKeyedSubscript:@"com.apple.mobilesafari"];
    integerValue = [v10 integerValue];

    if (!integerValue)
    {
      v20 = 1;
      goto LABEL_5;
    }
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = _WBSLocalizedString();
  host = [v4 host];
  v15 = [v12 stringWithFormat:v13, host];

  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:0 preferredStyle:1];
  v17 = MEMORY[0x1E69DC648];
  v18 = _WBSLocalizedString();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __101__UIViewController_AccountManagerExtras__safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary___block_invoke;
  v22[3] = &unk_1E848FBF8;
  v22[4] = self;
  v19 = [v17 actionWithTitle:v18 style:0 handler:v22];
  [v16 addAction:v19];

  [self presentViewController:v16 animated:1 completion:0];
  v20 = 0;
LABEL_5:

  return v20;
}

@end