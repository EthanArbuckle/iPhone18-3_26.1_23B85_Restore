@interface CNContactViewCache
+ (BOOL)isCandidatePolicy:(id)policy ofContactInCandidateContainerWithType:(int64_t)type preferredOverPolicy:(id)overPolicy ofContactInContainerWithType:(int64_t)withType;
- (CNCache)cachedAccounts;
- (CNCache)cachedContactToContainerIDs;
- (CNCache)cachedContainers;
- (CNCache)cachedPolicies;
- (CNCache)cachedTopAccounts;
- (CNContactStore)contactStore;
- (CNContactViewCache)init;
- (id)_accountForContainer:(id)container;
- (id)_policyForContact:(id)contact;
- (id)_uncachedContainerForContact:(id)contact inStore:(id)store;
- (id)accountForContact:(id)contact;
- (id)accountForContainer:(id)container shouldUseTopLevelAccount:(BOOL)account;
- (id)bestPolicyForContact:(id)contact;
- (id)containerForContact:(id)contact;
- (id)containerIdentifierForContact:(id)contact;
- (id)defaultContainerPolicy;
- (id)nts_lazyContactStore;
- (id)policyForContact:(id)contact;
- (id)policyForContainer:(id)container;
- (id)policyForContainerWithIdentifier:(id)identifier;
- (id)policyForDefaultContainer;
- (id)predicateForContainerForContact:(id)contact inStore:(id)store;
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

- (id)_accountForContainer:(id)container
{
  if (container)
  {
    v4 = MEMORY[0x1E695CD10];
    identifier = [container identifier];
    v6 = [v4 predicateForAccountForContainerWithIdentifier:identifier];

    contactStore = [(CNContactViewCache *)self contactStore];
    v8 = [contactStore accountsMatchingPredicate:v6 error:0];

    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)bestPolicyForContact:(id)contact
{
  v27[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([contactCopy isUnified])
  {
    linkedContacts = [contactCopy linkedContacts];
  }

  else
  {
    v27[0] = contactCopy;
    linkedContacts = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = linkedContacts;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {

    goto LABEL_22;
  }

  v8 = v7;
  v20 = contactCopy;
  obj = v6;
  mEMORY[0x1E695CF48]2 = 0;
  type = 0;
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
        contactStore = [(CNContactViewCache *)self contactStore];
        identifier = [v13 identifier];
        v16 = [contactStore policyForContainerWithIdentifier:identifier error:0];

        if (v16)
        {
          v17 = [objc_opt_class() isCandidatePolicy:v16 ofContactInCandidateContainerWithType:objc_msgSend(v13 preferredOverPolicy:"type") ofContactInContainerWithType:{mEMORY[0x1E695CF48]2, type}];
          if ([objc_opt_class() shouldIgnorePolicyOfContactInGuarianRestrictedContainer:v13])
          {
            mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
            type = 3;
            goto LABEL_15;
          }

          if (v17)
          {
            type = [v13 type];
            mEMORY[0x1E695CF48] = v16;
LABEL_15:

            mEMORY[0x1E695CF48]2 = mEMORY[0x1E695CF48];
          }
        }
      }
    }

    v6 = obj;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);

  contactCopy = v20;
  if (!mEMORY[0x1E695CF48]2)
  {
LABEL_22:
    mEMORY[0x1E695CF48]2 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  }

  return mEMORY[0x1E695CF48]2;
}

- (id)defaultContainerPolicy
{
  v17[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  contactStore = [(CNContactViewCache *)self contactStore];
  defaultContainerIdentifier = [contactStore defaultContainerIdentifier];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v6 = mEMORY[0x1E695CF48];
  }

  else
  {
    contactStore2 = [(CNContactViewCache *)self contactStore];
    v8 = [contactStore2 policyForContainerWithIdentifier:defaultContainerIdentifier error:0];

    if (v8)
    {
      contactStore3 = [(CNContactViewCache *)self contactStore];
      v10 = MEMORY[0x1E695CE48];
      v17[0] = defaultContainerIdentifier;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [v10 predicateForContainersWithIdentifiers:v11];
      v13 = [contactStore3 containersMatchingPredicate:v12 error:0];
      firstObject = [v13 firstObject];

      if ([objc_opt_class() shouldIgnorePolicyOfContactInGuarianRestrictedContainer:firstObject])
      {
        v15 = mEMORY[0x1E695CF48];
      }

      else
      {
        v15 = v8;
      }

      v6 = v15;
    }

    else
    {
      v6 = mEMORY[0x1E695CF48];
    }
  }

  return v6;
}

- (id)_policyForContact:(id)contact
{
  if (contact)
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

- (id)_uncachedContainerForContact:(id)contact inStore:(id)store
{
  storeCopy = store;
  v7 = [(CNContactViewCache *)self predicateForContainerForContact:contact inStore:storeCopy];
  if (v7)
  {
    v8 = [storeCopy containersMatchingPredicate:v7 error:0];
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = [MEMORY[0x1E695DFB0] null];
  }

  return firstObject;
}

- (id)predicateForContainerForContact:(id)contact inStore:(id)store
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  if ([contactCopy hasBeenPersisted])
  {
    v7 = MEMORY[0x1E695CE48];
    identifier = [contactCopy identifier];
    v9 = [v7 predicateForContainerOfContactWithIdentifier:identifier];
  }

  else
  {
    defaultContainerIdentifier = [storeCopy defaultContainerIdentifier];
    v11 = defaultContainerIdentifier;
    if (defaultContainerIdentifier)
    {
      v12 = MEMORY[0x1E695CE48];
      v15[0] = defaultContainerIdentifier;
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

- (id)containerForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    contactStore = [(CNContactViewCache *)self contactStore];
    v6 = [(CNContactViewCache *)self containerIdentifierForContact:contactCopy];
    if (v6)
    {
      cachedContainers = [(CNContactViewCache *)self cachedContainers];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__CNContactViewCache_containerForContact___block_invoke;
      v11[3] = &unk_1E74E5058;
      v11[4] = self;
      v12 = contactCopy;
      v13 = contactStore;
      v8 = [cachedContainers objectForKey:v6 onCacheMiss:v11];

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
    cache = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedTopAccounts;
    self->_cachedTopAccounts = cache;

    cachedTopAccounts = self->_cachedTopAccounts;
  }

  return cachedTopAccounts;
}

- (CNCache)cachedAccounts
{
  cachedAccounts = self->_cachedAccounts;
  if (!cachedAccounts)
  {
    cache = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedAccounts;
    self->_cachedAccounts = cache;

    cachedAccounts = self->_cachedAccounts;
  }

  return cachedAccounts;
}

- (CNCache)cachedPolicies
{
  cachedPolicies = self->_cachedPolicies;
  if (!cachedPolicies)
  {
    cache = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedPolicies;
    self->_cachedPolicies = cache;

    cachedPolicies = self->_cachedPolicies;
  }

  return cachedPolicies;
}

- (CNCache)cachedContainers
{
  cachedContainers = self->_cachedContainers;
  if (!cachedContainers)
  {
    cache = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedContainers;
    self->_cachedContainers = cache;

    cachedContainers = self->_cachedContainers;
  }

  return cachedContainers;
}

- (CNCache)cachedContactToContainerIDs
{
  cachedContactToContainerIDs = self->_cachedContactToContainerIDs;
  if (!cachedContactToContainerIDs)
  {
    cache = [MEMORY[0x1E6996660] cache];
    v5 = self->_cachedContactToContainerIDs;
    self->_cachedContactToContainerIDs = cache;

    cachedContactToContainerIDs = self->_cachedContactToContainerIDs;
  }

  return cachedContactToContainerIDs;
}

- (id)containerIdentifierForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    cachedContactToContainerIDs = [(CNContactViewCache *)self cachedContactToContainerIDs];
    identifier = [contactCopy identifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__CNContactViewCache_containerIdentifierForContact___block_invoke;
    v14[3] = &unk_1E74E5030;
    v14[4] = self;
    v15 = contactCopy;
    defaultContainerIdentifier = [cachedContactToContainerIDs objectForKey:identifier onCacheMiss:v14];
  }

  else
  {
    contactStore = [(CNContactViewCache *)self contactStore];
    defaultContainerIdentifier = [contactStore defaultContainerIdentifier];
  }

  v12 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], defaultContainerIdentifier, v8, v9, v10);

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

- (id)accountForContainer:(id)container shouldUseTopLevelAccount:(BOOL)account
{
  containerCopy = container;
  if (containerCopy)
  {
    if (account)
    {
      [(CNContactViewCache *)self cachedTopAccounts];
    }

    else
    {
      [(CNContactViewCache *)self cachedAccounts];
    }
    v8 = ;
    identifier = [containerCopy identifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__CNContactViewCache_accountForContainer_shouldUseTopLevelAccount___block_invoke;
    v12[3] = &unk_1E74E5008;
    v12[4] = self;
    v13 = containerCopy;
    accountCopy = account;
    v10 = [v8 objectForKey:identifier onCacheMiss:v12];

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

- (id)accountForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = [(CNContactViewCache *)self containerIdentifierForContact:contactCopy];
    if (v5)
    {
      cachedContainers = [(CNContactViewCache *)self cachedContainers];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __40__CNContactViewCache_accountForContact___block_invoke;
      v17 = &unk_1E74E4FE0;
      selfCopy = self;
      v19 = contactCopy;
      v7 = [cachedContainers objectForKey:v5 onCacheMiss:&v14];

      v11 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v7, v8, v9, v10);
      selfCopy = [(CNContactViewCache *)self accountForContainer:v11, v14, v15, v16, v17, selfCopy];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (id)policyForContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedPolicies = [(CNContactViewCache *)self cachedPolicies];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CNContactViewCache_policyForContainerWithIdentifier___block_invoke;
  v13[3] = &unk_1E74E4FB8;
  v13[4] = self;
  v14 = identifierCopy;
  v6 = identifierCopy;
  v7 = [cachedPolicies objectForKey:v6 onCacheMiss:v13];

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
  contactStore = [(CNContactViewCache *)self contactStore];
  defaultContainerIdentifier = [contactStore defaultContainerIdentifier];
  v5 = [(CNContactViewCache *)self policyForContainerWithIdentifier:defaultContainerIdentifier];

  return v5;
}

- (id)policyForContainer:(id)container
{
  containerCopy = container;
  v5 = containerCopy;
  if (containerCopy)
  {
    identifier = [containerCopy identifier];
    if (identifier)
    {
LABEL_3:
      v7 = [(CNContactViewCache *)self policyForContainerWithIdentifier:identifier];
      goto LABEL_6;
    }
  }

  else
  {
    contactStore = [(CNContactViewCache *)self contactStore];
    identifier = [contactStore defaultContainerIdentifier];

    if (identifier)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)policyForContact:(id)contact
{
  contactCopy = contact;
  v8 = [(CNContactViewCache *)self containerIdentifierForContact:contactCopy];
  if (v8)
  {
    cachedPolicies = [(CNContactViewCache *)self cachedPolicies];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__CNContactViewCache_policyForContact___block_invoke;
    v13[3] = &unk_1E74E4FB8;
    v13[4] = self;
    v14 = contactCopy;
    v10 = [cachedPolicies objectForKey:v8 onCacheMiss:v13];
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

+ (BOOL)isCandidatePolicy:(id)policy ofContactInCandidateContainerWithType:(int64_t)type preferredOverPolicy:(id)overPolicy ofContactInContainerWithType:(int64_t)withType
{
  policyCopy = policy;
  overPolicyCopy = overPolicy;
  v11 = overPolicyCopy;
  if (!policyCopy || overPolicyCopy)
  {
    if (isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_token_6 != -1)
    {
      dispatch_once(&isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_token_6, &__block_literal_global_44691);
    }

    v13 = isCandidatePolicy_ofContactInCandidateContainerWithType_preferredOverPolicy_ofContactInContainerWithType__cn_once_object_6;
    if ([v11 isReadonly])
    {
      v14 = [policyCopy isReadonly] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v16 = [v13 indexOfObject:v15];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:withType];
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