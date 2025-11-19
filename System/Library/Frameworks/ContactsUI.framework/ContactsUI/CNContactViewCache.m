@interface CNContactViewCache
+ (BOOL)isCandidatePolicy:(id)a3 ofContactInCandidateContainerWithType:(int64_t)a4 preferredOverPolicy:(id)a5 ofContactInContainerWithType:(int64_t)a6;
- (CNCache)cachedAccounts;
- (CNCache)cachedContactToContainerIDs;
- (CNCache)cachedContainers;
- (CNCache)cachedPolicies;
- (CNCache)cachedTopAccounts;
- (CNContactStore)contactStore;
- (CNContactViewCache)init;
- (id)_accountForContainer:(id)a3;
- (id)_policyForContact:(id)a3;
- (id)_uncachedContainerForContact:(id)a3 inStore:(id)a4;
- (id)accountForContact:(id)a3;
- (id)accountForContainer:(id)a3 shouldUseTopLevelAccount:(BOOL)a4;
- (id)bestPolicyForContact:(id)a3;
- (id)containerForContact:(id)a3;
- (id)containerIdentifierForContact:(id)a3;
- (id)defaultContainerPolicy;
- (id)nts_lazyContactStore;
- (id)policyForContact:(id)a3;
- (id)policyForContainer:(id)a3;
- (id)policyForContainerWithIdentifier:(id)a3;
- (id)policyForDefaultContainer;
- (id)predicateForContainerForContact:(id)a3 inStore:(id)a4;
- (void)resetCache;
@end

@implementation CNContactViewCache

- (CNContactViewCache)init
{
  v6.receiver = self;
  v6.super_class = CNContactViewCache;
  v2 = [(CNContactViewCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_accountForContainer:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695CD10];
    v5 = [a3 identifier];
    v6 = [v4 predicateForAccountForContainerWithIdentifier:v5];

    v7 = [(CNContactViewCache *)self contactStore];
    v8 = [v7 accountsMatchingPredicate:v6 error:0];

    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bestPolicyForContact:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isUnified])
  {
    v5 = [v4 linkedContacts];
  }

  else
  {
    v27[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {

    goto LABEL_22;
  }

  v8 = v7;
  v20 = v4;
  obj = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v23;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [(CNContactViewCache *)self containerForContact:*(*(&v22 + 1) + 8 * i), v20];
      if (v13)
      {
        v14 = [(CNContactViewCache *)self contactStore];
        v15 = [v13 identifier];
        v16 = [v14 policyForContainerWithIdentifier:v15 error:0];

        if (v16)
        {
          v17 = [objc_opt_class() isCandidatePolicy:v16 ofContactInCandidateContainerWithType:objc_msgSend(v13 preferredOverPolicy:"type") ofContactInContainerWithType:{v9, v10}];
          if ([objc_opt_class() shouldIgnorePolicyOfContactInGuarianRestrictedContainer:v13])
          {
            v18 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
            v10 = 3;
            goto LABEL_15;
          }

          if (v17)
          {
            v10 = [v13 type];
            v18 = v16;
LABEL_15:

            v9 = v18;
          }
        }
      }
    }

    v6 = obj;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);

  v4 = v20;
  if (!v9)
  {
LABEL_22:
    v9 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  }

  return v9;
}

- (id)defaultContainerPolicy
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  v4 = [(CNContactViewCache *)self contactStore];
  v5 = [v4 defaultContainerIdentifier];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v6 = v3;
  }

  else
  {
    v7 = [(CNContactViewCache *)self contactStore];
    v8 = [v7 policyForContainerWithIdentifier:v5 error:0];

    if (v8)
    {
      v9 = [(CNContactViewCache *)self contactStore];
      v10 = MEMORY[0x1E695CE48];
      v17[0] = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [v10 predicateForContainersWithIdentifiers:v11];
      v13 = [v9 containersMatchingPredicate:v12 error:0];
      v14 = [v13 firstObject];

      if ([objc_opt_class() shouldIgnorePolicyOfContactInGuarianRestrictedContainer:v14])
      {
        v15 = v3;
      }

      else
      {
        v15 = v8;
      }

      v6 = v15;
    }

    else
    {
      v6 = v3;
    }
  }

  return v6;
}

- (id)_policyForContact:(id)a3
{
  if (a3)
  {
    [(CNContactViewCache *)self bestPolicyForContact:?];
  }

  else
  {
    [(CNContactViewCache *)self defaultContainerPolicy];
  }
  v3 = ;

  return v3;
}

- (id)_uncachedContainerForContact:(id)a3 inStore:(id)a4
{
  v6 = a4;
  v7 = [(CNContactViewCache *)self predicateForContainerForContact:a3 inStore:v6];
  if (v7)
  {
    v8 = [v6 containersMatchingPredicate:v7 error:0];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  return v9;
}

- (id)predicateForContainerForContact:(id)a3 inStore:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 hasBeenPersisted])
  {
    v7 = MEMORY[0x1E695CE48];
    v8 = [v5 identifier];
    v9 = [v7 predicateForContainerOfContactWithIdentifier:v8];
  }

  else
  {
    v10 = [v6 defaultContainerIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x1E695CE48];
      v15[0] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v9 = [v12 predicateForContainersWithIdentifiers:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)containerForContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactViewCache *)self contactStore];
    v6 = [(CNContactViewCache *)self containerIdentifierForContact:v4];
    if (v6)
    {
      v7 = [(CNContactViewCache *)self cachedContainers];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__CNContactViewCache_containerForContact___block_invoke;
      v11[3] = &unk_1E74E5058;
      v11[4] = self;
      v12 = v4;
      v13 = v5;
      v8 = [v7 objectForKey:v6 onCacheMiss:v11];

      v9 = (*(*MEMORY[0x1E6996590] + 16))();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __42__CNContactViewCache_containerForContact___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _uncachedContainerForContact:*(a1 + 40) inStore:*(a1 + 48)];
  v2 = (*(*MEMORY[0x1E6996588] + 16))();

  return v2;
}

- (CNCache)cachedTopAccounts
{
  cachedTopAccounts = self->_cachedTopAccounts;
  if (!cachedTopAccounts)
  {
    v4 = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedTopAccounts;
    self->_cachedTopAccounts = v4;

    cachedTopAccounts = self->_cachedTopAccounts;
  }

  return cachedTopAccounts;
}

- (CNCache)cachedAccounts
{
  cachedAccounts = self->_cachedAccounts;
  if (!cachedAccounts)
  {
    v4 = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedAccounts;
    self->_cachedAccounts = v4;

    cachedAccounts = self->_cachedAccounts;
  }

  return cachedAccounts;
}

- (CNCache)cachedPolicies
{
  cachedPolicies = self->_cachedPolicies;
  if (!cachedPolicies)
  {
    v4 = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedPolicies;
    self->_cachedPolicies = v4;

    cachedPolicies = self->_cachedPolicies;
  }

  return cachedPolicies;
}

- (CNCache)cachedContainers
{
  cachedContainers = self->_cachedContainers;
  if (!cachedContainers)
  {
    v4 = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedContainers;
    self->_cachedContainers = v4;

    cachedContainers = self->_cachedContainers;
  }

  return cachedContainers;
}

- (CNCache)cachedContactToContainerIDs
{
  cachedContactToContainerIDs = self->_cachedContactToContainerIDs;
  if (!cachedContactToContainerIDs)
  {
    v4 = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedContactToContainerIDs;
    self->_cachedContactToContainerIDs = v4;

    cachedContactToContainerIDs = self->_cachedContactToContainerIDs;
  }

  return cachedContactToContainerIDs;
}

- (id)containerIdentifierForContact:(id)a3
{
  v4 = a3;
  if ([v4 hasBeenPersisted])
  {
    v5 = [(CNContactViewCache *)self cachedContactToContainerIDs];
    v6 = [v4 identifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__CNContactViewCache_containerIdentifierForContact___block_invoke;
    v14[3] = &unk_1E74E5030;
    v14[4] = self;
    v15 = v4;
    v7 = [v5 objectForKey:v6 onCacheMiss:v14];
  }

  else
  {
    v11 = [(CNContactViewCache *)self contactStore];
    v7 = [v11 defaultContainerIdentifier];
  }

  v12 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v7, v8, v9, v10);

  return v12;
}

id __52__CNContactViewCache_containerIdentifierForContact___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 contactStore];
  v5 = [v2 _uncachedContainerForContact:v3 inStore:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) cachedContainers];
    v7 = [v5 identifier];
    [v6 setObject:v5 forKey:v7];
  }

  v8 = *MEMORY[0x1E6996588];
  v9 = [v5 identifier];
  v10 = (*(v8 + 16))(v8, v9);

  return v10;
}

- (void)resetCache
{
  [(CNContactViewCache *)self setCachedContactToContainerIDs:0];
  [(CNContactViewCache *)self setCachedContainers:0];
  [(CNContactViewCache *)self setCachedPolicies:0];
  [(CNContactViewCache *)self setCachedAccounts:0];

  [(CNContactViewCache *)self setCachedTopAccounts:0];
}

- (id)accountForContainer:(id)a3 shouldUseTopLevelAccount:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      [(CNContactViewCache *)self cachedTopAccounts];
    }

    else
    {
      [(CNContactViewCache *)self cachedAccounts];
    }
    v8 = ;
    v9 = [v6 identifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__CNContactViewCache_accountForContainer_shouldUseTopLevelAccount___block_invoke;
    v12[3] = &unk_1E74E5008;
    v12[4] = self;
    v13 = v6;
    v14 = a4;
    v10 = [v8 objectForKey:v9 onCacheMiss:v12];

    v7 = (*(*MEMORY[0x1E6996590] + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__CNContactViewCache_accountForContainer_shouldUseTopLevelAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accountForContainer:*(a1 + 40)];
  v3 = [MEMORY[0x1E695CD10] _cnui_accountStore];
  v4 = [v2 externalIdentifierString];
  v5 = [v3 accountWithIdentifier:v4];

  if (*(a1 + 48) == 1)
  {
    v6 = [v5 displayAccount];

    v5 = v6;
  }

  v7 = (*(*MEMORY[0x1E6996588] + 16))();

  return v7;
}

- (id)accountForContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactViewCache *)self containerIdentifierForContact:v4];
    if (v5)
    {
      v6 = [(CNContactViewCache *)self cachedContainers];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __40__CNContactViewCache_accountForContact___block_invoke;
      v17 = &unk_1E74E4FE0;
      v18 = self;
      v19 = v4;
      v7 = [v6 objectForKey:v5 onCacheMiss:&v14];

      v11 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v7, v8, v9, v10);
      v12 = [(CNContactViewCache *)self accountForContainer:v11, v14, v15, v16, v17, v18];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __40__CNContactViewCache_accountForContact___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 contactStore];
  v4 = [v1 _uncachedContainerForContact:v2 inStore:v3];

  v5 = (*(*MEMORY[0x1E6996588] + 16))();

  return v5;
}

- (id)policyForContainerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewCache *)self cachedPolicies];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CNContactViewCache_policyForContainerWithIdentifier___block_invoke;
  v13[3] = &unk_1E74E4FB8;
  v13[4] = self;
  v14 = v4;
  v6 = v4;
  v7 = [v5 objectForKey:v6 onCacheMiss:v13];

  v11 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v7, v8, v9, v10);

  return v11;
}

id __55__CNContactViewCache_policyForContainerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactStore];
  v3 = [v2 policyForContainerWithIdentifier:*(a1 + 40) error:0];

  v4 = (*(*MEMORY[0x1E6996588] + 16))();

  return v4;
}

- (id)policyForDefaultContainer
{
  v3 = [(CNContactViewCache *)self contactStore];
  v4 = [v3 defaultContainerIdentifier];
  v5 = [(CNContactViewCache *)self policyForContainerWithIdentifier:v4];

  return v5;
}

- (id)policyForContainer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    if (v6)
    {
LABEL_3:
      v7 = [(CNContactViewCache *)self policyForContainerWithIdentifier:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [(CNContactViewCache *)self contactStore];
    v6 = [v8 defaultContainerIdentifier];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)policyForContact:(id)a3
{
  v4 = a3;
  v8 = [(CNContactViewCache *)self containerIdentifierForContact:v4];
  if (v8)
  {
    v9 = [(CNContactViewCache *)self cachedPolicies];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__CNContactViewCache_policyForContact___block_invoke;
    v13[3] = &unk_1E74E4FB8;
    v13[4] = self;
    v14 = v4;
    v10 = [v9 objectForKey:v8 onCacheMiss:v13];
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v10, v5, v6, v7);

  return v11;
}

id __39__CNContactViewCache_policyForContact___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E6996588];
  v2 = [*(a1 + 32) _policyForContact:*(a1 + 40)];
  v3 = (*(v1 + 16))(v1, v2);

  return v3;
}

- (id)nts_lazyContactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (CNContactStore)contactStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

+ (BOOL)isCandidatePolicy:(id)a3 ofContactInCandidateContainerWithType:(int64_t)a4 preferredOverPolicy:(id)a5 ofContactInContainerWithType:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9 || v10)
  {
    if (isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_token_6 != -1)
    {
      dispatch_once(&isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_token_6, &__block_literal_global_44691);
    }

    v13 = isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_object_6;
    if ([v11 isReadonly])
    {
      v14 = [v9 isReadonly] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v16 = [v13 indexOfObject:v15];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    v18 = [v13 indexOfObject:v17];

    if (v16 < v18)
    {
      v12 = 1;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void __127__CNContactViewCache_isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType___block_invoke()
{
  v0 = isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_object_6;
  isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_object_6 = &unk_1F0D4B9D0;
}

@end