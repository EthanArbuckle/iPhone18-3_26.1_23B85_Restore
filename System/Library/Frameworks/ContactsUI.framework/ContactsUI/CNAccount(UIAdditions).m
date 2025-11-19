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
  v1 = [a1 externalIdentifierString];
  v2 = objc_opt_class();
  if (v1)
  {
    v3 = [v2 _cnui_accountStore];
    v4 = [v3 accountWithIdentifier:v1];
    v5 = [v4 displayAccount];

    v6 = [objc_opt_class() _cnui_displayNameForACAccount:v5];
  }

  else
  {
    v6 = [v2 _cnui_displayNameForLocal];
  }

  return v6;
}

+ (uint64_t)_cnui_isFacebookACAccount:()UIAdditions
{
  v3 = [a3 accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E6959848]];

  return v5;
}

+ (id)_cnui_displayNameForACAccount:()UIAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [a1 _cnui_displayNameForLocal];
    goto LABEL_6;
  }

  v6 = [v4 accountDescription];
  if (v6)
  {
LABEL_6:
    v8 = v6;
    goto LABEL_7;
  }

  v7 = [v5 accountType];
  v8 = [v7 accountTypeDescription];

  if (!v8)
  {
    v9 = CNContactsUIBundle();
    v8 = [v9 localizedStringForKey:@"UNKNOWN_SOURCE_STRING" value:&stru_1F0CE7398 table:@"Localized"];
  }

LABEL_7:

  return v8;
}

+ (id)_cnui_displayNameForLocal
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 model];

  return v1;
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
  aBlock[5] = a1;
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
  v10 = a1;
  v7 = v4;
  dispatch_after(v5, v6, v8);
}

@end