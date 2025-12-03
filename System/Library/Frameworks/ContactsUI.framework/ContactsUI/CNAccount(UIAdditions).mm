@interface CNAccount(UIAdditions)
+ (id)_cnui_displayNameForACAccount:()UIAdditions;
+ (id)_cnui_displayNameForLocal;
+ (uint64_t)_cnui_isFacebookACAccount:()UIAdditions;
+ (uint64_t)_cnui_requestRefreshWithUserAction:()UIAdditions;
+ (void)_cnui_canRequestRefreshWithCompletion:()UIAdditions;
- (id)_cnui_displayName;
@end

@implementation CNAccount(UIAdditions)

- (id)_cnui_displayName
{
  externalIdentifierString = [self externalIdentifierString];
  v2 = objc_opt_class();
  if (externalIdentifierString)
  {
    _cnui_accountStore = [v2 _cnui_accountStore];
    v4 = [_cnui_accountStore accountWithIdentifier:externalIdentifierString];
    displayAccount = [v4 displayAccount];

    _cnui_displayNameForLocal = [objc_opt_class() _cnui_displayNameForACAccount:displayAccount];
  }

  else
  {
    _cnui_displayNameForLocal = [v2 _cnui_displayNameForLocal];
  }

  return _cnui_displayNameForLocal;
}

+ (uint64_t)_cnui_isFacebookACAccount:()UIAdditions
{
  accountType = [a3 accountType];
  identifier = [accountType identifier];
  v5 = [identifier isEqualToString:*MEMORY[0x1E6959848]];

  return v5;
}

+ (id)_cnui_displayNameForACAccount:()UIAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    _cnui_displayNameForLocal = [self _cnui_displayNameForLocal];
    goto LABEL_6;
  }

  _cnui_displayNameForLocal = [v4 accountDescription];
  if (_cnui_displayNameForLocal)
  {
LABEL_6:
    accountTypeDescription = _cnui_displayNameForLocal;
    goto LABEL_7;
  }

  accountType = [v5 accountType];
  accountTypeDescription = [accountType accountTypeDescription];

  if (!accountTypeDescription)
  {
    v9 = CNContactsUIBundle();
    accountTypeDescription = [v9 localizedStringForKey:@"UNKNOWN_SOURCE_STRING" value:&stru_1F0CE7398 table:@"Localized"];
  }

LABEL_7:

  return accountTypeDescription;
}

+ (id)_cnui_displayNameForLocal
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  model = [currentDevice model];

  return model;
}

+ (uint64_t)_cnui_requestRefreshWithUserAction:()UIAdditions
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CNAccount_UIAdditions___cnui_requestRefreshWithUserAction___block_invoke;
  aBlock[3] = &unk_1E74E5810;
  aBlock[4] = &v12;
  aBlock[5] = self;
  v11 = a3;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a3)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = dispatch_time(0, 1000000000);
    v7 = dispatch_get_global_queue(9, 0);
    dispatch_after(v6, v7, v5);
  }

  v8 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v8;
}

+ (void)_cnui_canRequestRefreshWithCompletion:()UIAdditions
{
  v4 = a3;
  v5 = dispatch_time(0, 100000000);
  v6 = dispatch_get_global_queue(9, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CNAccount_UIAdditions___cnui_canRequestRefreshWithCompletion___block_invoke;
  v8[3] = &unk_1E74E57E8;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  dispatch_after(v5, v6, v8);
}

@end