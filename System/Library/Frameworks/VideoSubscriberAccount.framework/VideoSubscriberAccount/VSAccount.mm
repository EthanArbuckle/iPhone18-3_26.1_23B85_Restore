@interface VSAccount
- (BOOL)isEqual:(id)equal;
- (NSString)identityProviderDisplayName;
- (VSAccount)init;
- (VSAccount)initWithCoder:(id)coder;
- (VSAccountStore)accountStore;
- (id)description;
- (id)effectiveModificationDate;
- (unint64_t)contentsHash;
- (unint64_t)hash;
- (void)effectiveModificationDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAccount

- (VSAccount)init
{
  v10.receiver = self;
  v10.super_class = VSAccount;
  v2 = [(VSAccount *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    optionalIdentityProviderDisplayName = v2->_optionalIdentityProviderDisplayName;
    v2->_optionalIdentityProviderDisplayName = v3;

    v5 = objc_alloc_init(VSOptional);
    identityProviderID = v2->_identityProviderID;
    v2->_identityProviderID = v5;

    v7 = objc_alloc_init(VSOptional);
    authenticationToken = v2->_authenticationToken;
    v2->_authenticationToken = v7;

    v2->_version = 1;
  }

  return v2;
}

- (unint64_t)contentsHash
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  username = [(VSAccount *)self username];
  v4 = [username hash];

  v15 = v4;
  preferredAppID = [(VSAccount *)self preferredAppID];
  v6 = [preferredAppID hash];
  v13[3] ^= v6;

  authenticationToken = [(VSAccount *)self authenticationToken];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __25__VSAccount_contentsHash__block_invoke;
  v11[3] = &unk_278B74E08;
  v11[4] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__VSAccount_contentsHash__block_invoke_2;
  v10[3] = &unk_278B733D8;
  v10[4] = self;
  [authenticationToken conditionallyUnwrapObject:v11 otherwise:v10];

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __25__VSAccount_contentsHash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 body];
  *(*(*(a1 + 32) + 8) + 24) ^= [v4 hash];

  v5 = [v3 expirationDate];

  *(*(*(a1 + 32) + 8) + 24) ^= [v5 hash];
}

void __25__VSAccount_contentsHash__block_invoke_2(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __25__VSAccount_contentsHash__block_invoke_2_cold_1(a1, v2);
  }
}

- (id)effectiveModificationDate
{
  keychainItem = [(VSAccount *)self keychainItem];
  modificationDate = [keychainItem modificationDate];

  if (modificationDate)
  {
    v5 = modificationDate;
  }

  else
  {
    legacyKeychainItem = [(VSAccount *)self legacyKeychainItem];
    modificationDate2 = [legacyKeychainItem modificationDate];

    if (modificationDate2)
    {
      distantPast = modificationDate2;
    }

    else
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(VSAccount *)self effectiveModificationDate];
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v5 = distantPast;
  }

  return v5;
}

- (NSString)identityProviderDisplayName
{
  optionalIdentityProviderDisplayName = [(VSAccount *)self optionalIdentityProviderDisplayName];
  object = [optionalIdentityProviderDisplayName object];

  return object;
}

- (VSAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v5 = [(VSAccount *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountTypeDescription"];
    [(VSAccount *)v5 setAccountTypeDescription:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountDescription"];
    [(VSAccount *)v5 setAccountDescription:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityProviderDisplayName"];
    v9 = [VSOptional optionalWithObject:v8];
    [(VSAccount *)v5 setOptionalIdentityProviderDisplayName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityProviderID"];
    v11 = [v10 copy];
    v12 = [VSOptional optionalWithObject:v11];
    [(VSAccount *)v5 setIdentityProviderID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    [(VSAccount *)v5 setUsername:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredAppID"];
    [(VSAccount *)v5 setPreferredAppID:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[VSAccount setVersion:](v5, "setVersion:", [v15 unsignedIntegerValue]);

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"synchronizable"];
    -[VSAccount setSynchronizable:](v5, "setSynchronizable:", [v16 BOOLValue]);

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
    v18 = v17;
    if (!v17)
    {
LABEL_10:

      goto LABEL_11;
    }

    v19 = v17;
    v20 = [coderCopy decodeIntegerForKey:@"authenticationTokenKind"];
    if (v20)
    {
      if (v20 != 1)
      {
        v22 = 0;
        goto LABEL_9;
      }

      v21 = off_278B728D8;
    }

    else
    {
      v21 = off_278B72928;
    }

    v22 = [objc_alloc(*v21) initWithSerializedData:v19];
LABEL_9:
    v23 = [VSOptional optionalWithObject:v22];
    [(VSAccount *)v5 setAuthenticationToken:v23];

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  accountTypeDescription = [(VSAccount *)self accountTypeDescription];
  [coderCopy encodeObject:accountTypeDescription forKey:@"accountTypeDescription"];

  accountDescription = [(VSAccount *)self accountDescription];
  [coderCopy encodeObject:accountDescription forKey:@"accountDescription"];

  identityProviderDisplayName = [(VSAccount *)self identityProviderDisplayName];
  [coderCopy encodeObject:identityProviderDisplayName forKey:@"identityProviderDisplayName"];

  identityProviderID = [(VSAccount *)self identityProviderID];
  object = [identityProviderID object];
  [coderCopy encodeObject:object forKey:@"identityProviderID"];

  username = [(VSAccount *)self username];
  [coderCopy encodeObject:username forKey:@"username"];

  preferredAppID = [(VSAccount *)self preferredAppID];
  [coderCopy encodeObject:preferredAppID forKey:@"preferredAppID"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VSAccount version](self, "version")}];
  [coderCopy encodeObject:v12 forKey:@"version"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSAccount isSynchronizable](self, "isSynchronizable")}];
  [coderCopy encodeObject:v13 forKey:@"synchronizable"];

  authenticationToken = [(VSAccount *)self authenticationToken];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __29__VSAccount_encodeWithCoder___block_invoke;
  v16[3] = &unk_278B74E30;
  v17 = coderCopy;
  v15 = coderCopy;
  [authenticationToken conditionallyUnwrapObject:v16];
}

void __29__VSAccount_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) encodeInteger:objc_msgSend(v3 forKey:{"isOpaque"), @"authenticationTokenKind"}];
  v4 = *(a1 + 32);
  v5 = [v3 serializedData];

  [v4 encodeObject:v5 forKey:@"authenticationToken"];
}

- (unint64_t)hash
{
  accountTypeDescription = [(VSAccount *)self accountTypeDescription];
  v4 = [accountTypeDescription hash];

  accountDescription = [(VSAccount *)self accountDescription];
  v6 = [accountDescription hash] ^ v4;

  optionalIdentityProviderDisplayName = [(VSAccount *)self optionalIdentityProviderDisplayName];
  v8 = [optionalIdentityProviderDisplayName hash];

  identityProviderID = [(VSAccount *)self identityProviderID];
  v10 = v6 ^ v8 ^ [identityProviderID hash];

  username = [(VSAccount *)self username];
  v12 = [username hash];

  authenticationToken = [(VSAccount *)self authenticationToken];
  v14 = v12 ^ [authenticationToken hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    if (equalCopy)
    {
      v6 = equalCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = 0;
LABEL_31:

        goto LABEL_32;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSAccount.", v10}];
      }

      v11 = v6;
      accountTypeDescription = [(VSAccount *)self accountTypeDescription];
      accountTypeDescription2 = [(VSAccount *)v11 accountTypeDescription];
      authenticationToken = accountTypeDescription;
      v15 = accountTypeDescription2;
      authenticationToken2 = v15;
      if (authenticationToken == v15)
      {
      }

      else
      {
        if (!authenticationToken || !v15)
        {
          goto LABEL_28;
        }

        v17 = [authenticationToken isEqual:v15];

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      accountDescription = [(VSAccount *)self accountDescription];
      accountDescription2 = [(VSAccount *)v11 accountDescription];
      authenticationToken = accountDescription;
      v21 = accountDescription2;
      authenticationToken2 = v21;
      if (authenticationToken == v21)
      {
      }

      else
      {
        if (!authenticationToken || !v21)
        {
          goto LABEL_28;
        }

        v22 = [authenticationToken isEqual:v21];

        if ((v22 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      optionalIdentityProviderDisplayName = [(VSAccount *)self optionalIdentityProviderDisplayName];
      optionalIdentityProviderDisplayName2 = [(VSAccount *)v11 optionalIdentityProviderDisplayName];
      v25 = [optionalIdentityProviderDisplayName isEqual:optionalIdentityProviderDisplayName2];

      if (!v25)
      {
        goto LABEL_27;
      }

      identityProviderID = [(VSAccount *)self identityProviderID];
      identityProviderID2 = [(VSAccount *)v11 identityProviderID];
      v28 = [identityProviderID isEqual:identityProviderID2];

      if (!v28)
      {
        goto LABEL_27;
      }

      username = [(VSAccount *)self username];
      username2 = [(VSAccount *)v11 username];
      authenticationToken = username;
      v31 = username2;
      authenticationToken2 = v31;
      if (authenticationToken == v31)
      {

LABEL_34:
        authenticationToken = [(VSAccount *)self authenticationToken];
        authenticationToken2 = [(VSAccount *)v11 authenticationToken];
        v18 = [authenticationToken isEqual:authenticationToken2];
        goto LABEL_29;
      }

      if (authenticationToken && v31)
      {
        v32 = [authenticationToken isEqual:v31];

        if ((v32 & 1) == 0)
        {
LABEL_27:
          v18 = 0;
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_34;
      }

LABEL_28:

      v18 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v18 = 0;
  }

LABEL_32:

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  accountTypeDescription = [(VSAccount *)self accountTypeDescription];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"accountTypeDescription", accountTypeDescription];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  accountDescription = [(VSAccount *)self accountDescription];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"accountDescription", accountDescription];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  identityProviderDisplayName = [(VSAccount *)self identityProviderDisplayName];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"identityProviderDisplayName", identityProviderDisplayName];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  identityProviderID = [(VSAccount *)self identityProviderID];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"identityProviderID", identityProviderID];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  username = [(VSAccount *)self username];
  v18 = [v16 stringWithFormat:@"%@ = %@", @"username", username];
  [v3 addObject:v18];

  v19 = MEMORY[0x277CCACA8];
  authenticationToken = [(VSAccount *)self authenticationToken];
  v21 = [v19 stringWithFormat:@"%@ = %@", @"authenticationToken", authenticationToken];
  [v3 addObject:v21];

  v22 = MEMORY[0x277CCACA8];
  v27.receiver = self;
  v27.super_class = VSAccount;
  v23 = [(VSAccount *)&v27 description];
  v24 = [v3 componentsJoinedByString:{@", "}];
  v25 = [v22 stringWithFormat:@"<%@ %@>", v23, v24];

  return v25;
}

- (VSAccountStore)accountStore
{
  WeakRetained = objc_loadWeakRetained(&self->_accountStore);

  return WeakRetained;
}

void __25__VSAccount_contentsHash__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "Attempted to calculate contents hash for account with no authenticationToken: %@", &v3, 0xCu);
}

- (void)effectiveModificationDate
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "VSAccount has neither a legacy or modern item with a modification date: %@", &v2, 0xCu);
}

@end