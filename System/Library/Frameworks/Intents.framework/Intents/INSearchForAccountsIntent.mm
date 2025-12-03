@interface INSearchForAccountsIntent
- (INAccountType)accountType;
- (INBalanceType)requestedBalanceType;
- (INSearchForAccountsIntent)initWithAccountNickname:(INSpeakableString *)accountNickname accountType:(INAccountType)accountType organizationName:(INSpeakableString *)organizationName requestedBalanceType:(INBalanceType)requestedBalanceType;
- (INSpeakableString)accountNickname;
- (INSpeakableString)organizationName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAccountNickname:(id)nickname;
- (void)setAccountType:(int64_t)type;
- (void)setOrganizationName:(id)name;
- (void)setRequestedBalanceType:(int64_t)type;
@end

@implementation INSearchForAccountsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSearchForAccountsIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"accountNickname";
  accountNickname = [(INSearchForAccountsIntent *)self accountNickname];
  null = accountNickname;
  if (!accountNickname)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"accountType";
  accountType = [(INSearchForAccountsIntent *)self accountType];
  if ((accountType - 1) > 6)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E7280DB8[accountType - 1];
  }

  v7 = v6;
  v17[1] = v7;
  v16[2] = @"organizationName";
  organizationName = [(INSearchForAccountsIntent *)self organizationName];
  null2 = organizationName;
  if (!organizationName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null2;
  v16[3] = @"requestedBalanceType";
  requestedBalanceType = [(INSearchForAccountsIntent *)self requestedBalanceType];
  if ((requestedBalanceType - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E727F950[requestedBalanceType - 1];
  }

  v12 = v11;
  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  if (!organizationName)
  {
  }

  if (!accountNickname)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setRequestedBalanceType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasRequestedBalanceType:0];
  }

  else
  {
    [_typedBackingStore setRequestedBalanceType:?];
  }
}

- (INBalanceType)requestedBalanceType
{
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  hasRequestedBalanceType = [_typedBackingStore hasRequestedBalanceType];
  _typedBackingStore2 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  requestedBalanceType = [_typedBackingStore2 requestedBalanceType];
  if (((requestedBalanceType - 1 < 3) & hasRequestedBalanceType) != 0)
  {
    v7 = requestedBalanceType;
  }

  else
  {
    v7 = INBalanceTypeUnknown;
  }

  return v7;
}

- (void)setOrganizationName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setOrganizationName:v5];
}

- (INSpeakableString)organizationName
{
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  organizationName = [_typedBackingStore organizationName];
  v4 = INIntentSlotValueTransformFromDataString(organizationName);

  return v4;
}

- (void)setAccountType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 6)
  {
    [_typedBackingStore setHasAccountType:0];
  }

  else
  {
    [_typedBackingStore setAccountType:?];
  }
}

- (INAccountType)accountType
{
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  hasAccountType = [_typedBackingStore hasAccountType];
  _typedBackingStore2 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  accountType = [_typedBackingStore2 accountType];
  if (((accountType - 1 < 7) & hasAccountType) != 0)
  {
    v7 = accountType;
  }

  else
  {
    v7 = INAccountTypeUnknown;
  }

  return v7;
}

- (void)setAccountNickname:(id)nickname
{
  nicknameCopy = nickname;
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nicknameCopy);

  [_typedBackingStore setAccountNickname:v5];
}

- (INSpeakableString)accountNickname
{
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  accountNickname = [_typedBackingStore accountNickname];
  v4 = INIntentSlotValueTransformFromDataString(accountNickname);

  return v4;
}

- (INSearchForAccountsIntent)initWithAccountNickname:(INSpeakableString *)accountNickname accountType:(INAccountType)accountType organizationName:(INSpeakableString *)organizationName requestedBalanceType:(INBalanceType)requestedBalanceType
{
  v10 = accountNickname;
  v11 = organizationName;
  v15.receiver = self;
  v15.super_class = INSearchForAccountsIntent;
  v12 = [(INIntent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(INSearchForAccountsIntent *)v12 setAccountNickname:v10];
    [(INSearchForAccountsIntent *)v13 setAccountType:accountType];
    [(INSearchForAccountsIntent *)v13 setOrganizationName:v11];
    [(INSearchForAccountsIntent *)v13 setRequestedBalanceType:requestedBalanceType];
  }

  return v13;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForAccountsIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end