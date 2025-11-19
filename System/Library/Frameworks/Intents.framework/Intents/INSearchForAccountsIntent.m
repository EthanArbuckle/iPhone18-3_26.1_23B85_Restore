@interface INSearchForAccountsIntent
- (INAccountType)accountType;
- (INBalanceType)requestedBalanceType;
- (INSearchForAccountsIntent)initWithAccountNickname:(INSpeakableString *)accountNickname accountType:(INAccountType)accountType organizationName:(INSpeakableString *)organizationName requestedBalanceType:(INBalanceType)requestedBalanceType;
- (INSpeakableString)accountNickname;
- (INSpeakableString)organizationName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAccountNickname:(id)a3;
- (void)setAccountType:(int64_t)a3;
- (void)setOrganizationName:(id)a3;
- (void)setRequestedBalanceType:(int64_t)a3;
@end

@implementation INSearchForAccountsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSearchForAccountsIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"accountNickname";
  v3 = [(INSearchForAccountsIntent *)self accountNickname];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v4;
  v16[1] = @"accountType";
  v5 = [(INSearchForAccountsIntent *)self accountType];
  if ((v5 - 1) > 6)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E7280DB8[v5 - 1];
  }

  v7 = v6;
  v17[1] = v7;
  v16[2] = @"organizationName";
  v8 = [(INSearchForAccountsIntent *)self organizationName];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v9;
  v16[3] = @"requestedBalanceType";
  v10 = [(INSearchForAccountsIntent *)self requestedBalanceType];
  if ((v10 - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E727F950[v10 - 1];
  }

  v12 = v11;
  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  if (!v8)
  {
  }

  if (!v3)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setRequestedBalanceType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasRequestedBalanceType:0];
  }

  else
  {
    [v4 setRequestedBalanceType:?];
  }
}

- (INBalanceType)requestedBalanceType
{
  v3 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v4 = [v3 hasRequestedBalanceType];
  v5 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v6 = [v5 requestedBalanceType];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INBalanceTypeUnknown;
  }

  return v7;
}

- (void)setOrganizationName:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setOrganizationName:v5];
}

- (INSpeakableString)organizationName
{
  v2 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v3 = [v2 organizationName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setAccountType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 6)
  {
    [v4 setHasAccountType:0];
  }

  else
  {
    [v4 setAccountType:?];
  }
}

- (INAccountType)accountType
{
  v3 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v4 = [v3 hasAccountType];
  v5 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v6 = [v5 accountType];
  if (((v6 - 1 < 7) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INAccountTypeUnknown;
  }

  return v7;
}

- (void)setAccountNickname:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setAccountNickname:v5];
}

- (INSpeakableString)accountNickname
{
  v2 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v3 = [v2 accountNickname];
  v4 = INIntentSlotValueTransformFromDataString(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForAccountsIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end