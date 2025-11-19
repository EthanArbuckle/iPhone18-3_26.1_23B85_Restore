@interface VSAccount
- (BOOL)isEqual:(id)a3;
- (NSString)identityProviderDisplayName;
- (VSAccount)init;
- (VSAccount)initWithCoder:(id)a3;
- (VSAccountStore)accountStore;
- (id)description;
- (id)effectiveModificationDate;
- (unint64_t)contentsHash;
- (unint64_t)hash;
- (void)effectiveModificationDate;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(VSAccount *)self username];
  v4 = [v3 hash];

  v15 = v4;
  v5 = [(VSAccount *)self preferredAppID];
  v6 = [v5 hash];
  v13[3] ^= v6;

  v7 = [(VSAccount *)self authenticationToken];
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
  [v7 conditionallyUnwrapObject:v11 otherwise:v10];

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
  v3 = [(VSAccount *)self keychainItem];
  v4 = [v3 modificationDate];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(VSAccount *)self legacyKeychainItem];
    v7 = [v6 modificationDate];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(VSAccount *)self effectiveModificationDate];
      }

      v8 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v5 = v8;
  }

  return v5;
}

- (NSString)identityProviderDisplayName
{
  v2 = [(VSAccount *)self optionalIdentityProviderDisplayName];
  v3 = [v2 object];

  return v3;
}

- (VSAccount)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSAccount *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountTypeDescription"];
    [(VSAccount *)v5 setAccountTypeDescription:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountDescription"];
    [(VSAccount *)v5 setAccountDescription:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityProviderDisplayName"];
    v9 = [VSOptional optionalWithObject:v8];
    [(VSAccount *)v5 setOptionalIdentityProviderDisplayName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityProviderID"];
    v11 = [v10 copy];
    v12 = [VSOptional optionalWithObject:v11];
    [(VSAccount *)v5 setIdentityProviderID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    [(VSAccount *)v5 setUsername:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredAppID"];
    [(VSAccount *)v5 setPreferredAppID:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[VSAccount setVersion:](v5, "setVersion:", [v15 unsignedIntegerValue]);

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"synchronizable"];
    -[VSAccount setSynchronizable:](v5, "setSynchronizable:", [v16 BOOLValue]);

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
    v18 = v17;
    if (!v17)
    {
LABEL_10:

      goto LABEL_11;
    }

    v19 = v17;
    v20 = [v4 decodeIntegerForKey:@"authenticationTokenKind"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSAccount *)self accountTypeDescription];
  [v4 encodeObject:v5 forKey:@"accountTypeDescription"];

  v6 = [(VSAccount *)self accountDescription];
  [v4 encodeObject:v6 forKey:@"accountDescription"];

  v7 = [(VSAccount *)self identityProviderDisplayName];
  [v4 encodeObject:v7 forKey:@"identityProviderDisplayName"];

  v8 = [(VSAccount *)self identityProviderID];
  v9 = [v8 object];
  [v4 encodeObject:v9 forKey:@"identityProviderID"];

  v10 = [(VSAccount *)self username];
  [v4 encodeObject:v10 forKey:@"username"];

  v11 = [(VSAccount *)self preferredAppID];
  [v4 encodeObject:v11 forKey:@"preferredAppID"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VSAccount version](self, "version")}];
  [v4 encodeObject:v12 forKey:@"version"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSAccount isSynchronizable](self, "isSynchronizable")}];
  [v4 encodeObject:v13 forKey:@"synchronizable"];

  v14 = [(VSAccount *)self authenticationToken];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __29__VSAccount_encodeWithCoder___block_invoke;
  v16[3] = &unk_278B74E30;
  v17 = v4;
  v15 = v4;
  [v14 conditionallyUnwrapObject:v16];
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
  v3 = [(VSAccount *)self accountTypeDescription];
  v4 = [v3 hash];

  v5 = [(VSAccount *)self accountDescription];
  v6 = [v5 hash] ^ v4;

  v7 = [(VSAccount *)self optionalIdentityProviderDisplayName];
  v8 = [v7 hash];

  v9 = [(VSAccount *)self identityProviderID];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(VSAccount *)self username];
  v12 = [v11 hash];

  v13 = [(VSAccount *)self authenticationToken];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    if (v4)
    {
      v6 = v4;
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
      v12 = [(VSAccount *)self accountTypeDescription];
      v13 = [(VSAccount *)v11 accountTypeDescription];
      v14 = v12;
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        if (!v14 || !v15)
        {
          goto LABEL_28;
        }

        v17 = [v14 isEqual:v15];

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v19 = [(VSAccount *)self accountDescription];
      v20 = [(VSAccount *)v11 accountDescription];
      v14 = v19;
      v21 = v20;
      v16 = v21;
      if (v14 == v21)
      {
      }

      else
      {
        if (!v14 || !v21)
        {
          goto LABEL_28;
        }

        v22 = [v14 isEqual:v21];

        if ((v22 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v23 = [(VSAccount *)self optionalIdentityProviderDisplayName];
      v24 = [(VSAccount *)v11 optionalIdentityProviderDisplayName];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_27;
      }

      v26 = [(VSAccount *)self identityProviderID];
      v27 = [(VSAccount *)v11 identityProviderID];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_27;
      }

      v29 = [(VSAccount *)self username];
      v30 = [(VSAccount *)v11 username];
      v14 = v29;
      v31 = v30;
      v16 = v31;
      if (v14 == v31)
      {

LABEL_34:
        v14 = [(VSAccount *)self authenticationToken];
        v16 = [(VSAccount *)v11 authenticationToken];
        v18 = [v14 isEqual:v16];
        goto LABEL_29;
      }

      if (v14 && v31)
      {
        v32 = [v14 isEqual:v31];

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
  v5 = [(VSAccount *)self accountTypeDescription];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"accountTypeDescription", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSAccount *)self accountDescription];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"accountDescription", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(VSAccount *)self identityProviderDisplayName];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"identityProviderDisplayName", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(VSAccount *)self identityProviderID];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"identityProviderID", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v17 = [(VSAccount *)self username];
  v18 = [v16 stringWithFormat:@"%@ = %@", @"username", v17];
  [v3 addObject:v18];

  v19 = MEMORY[0x277CCACA8];
  v20 = [(VSAccount *)self authenticationToken];
  v21 = [v19 stringWithFormat:@"%@ = %@", @"authenticationToken", v20];
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
  v3 = a1;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "VSAccount has neither a legacy or modern item with a modification date: %@", &v2, 0xCu);
}

@end