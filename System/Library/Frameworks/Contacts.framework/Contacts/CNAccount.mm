@interface CNAccount
+ (BOOL)ios_requestAccountSyncWithOptions:(unint64_t)options;
+ (id)identifierProvider;
+ (id)localAccount;
+ (id)makeIdentifierString;
+ (id)os_log;
+ (id)predicateForAccountForContainerWithIdentifier:(id)identifier;
+ (id)predicateForAccountWithExternalIdentifier:(id)identifier;
+ (id)predicateForAccountsWithIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (CNAccount)initWithCoder:(id)coder;
- (CNAccount)initWithExternalIdentifier:(id)identifier;
- (CNAccount)initWithIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier;
- (CNAccount)initWithIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier iOSLegacyIdentifier:(int)legacyIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNAccount

+ (id)os_log
{
  if (os_log_cn_once_token_1_0 != -1)
  {
    +[CNAccount os_log];
  }

  v3 = os_log_cn_once_object_1_0;

  return v3;
}

uint64_t __19__CNAccount_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNAccount");
  v1 = os_log_cn_once_object_1_0;
  os_log_cn_once_object_1_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)localAccount
{
  if (localAccount_cn_once_token_2 != -1)
  {
    +[CNAccount localAccount];
  }

  v3 = localAccount_cn_once_object_2;

  return v3;
}

uint64_t __25__CNAccount_localAccount__block_invoke()
{
  v0 = [[CNAccount alloc] initWithIdentifier:@"local" externalIdentifier:0];
  v1 = localAccount_cn_once_object_2;
  localAccount_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)identifierProvider
{
  if (identifierProvider_cn_once_token_3 != -1)
  {
    +[CNAccount identifierProvider];
  }

  v3 = identifierProvider_cn_once_object_3;

  return v3;
}

uint64_t __31__CNAccount_identifierProvider__block_invoke()
{
  v0 = [[CNUuidIdentifierProvider alloc] initWithSuffix:@"ABAccount"];
  v1 = identifierProvider_cn_once_object_3;
  identifierProvider_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)makeIdentifierString
{
  identifierProvider = [self identifierProvider];
  makeIdentifier = [identifierProvider makeIdentifier];

  return makeIdentifier;
}

+ (BOOL)ios_requestAccountSyncWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v20 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [defaultStore accountIdentifiersEnabledToSyncDataclass:*MEMORY[0x1E6959AF0]];
  v6 = [v5 count];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        sharedConnection = [getDADConnectionClass() sharedConnection];
        [sharedConnection updateContentsOfAllFoldersForAccountID:v11 andDataclasses:2 isUserRequested:optionsCopy & 1];

        sharedConnection2 = [getDADConnectionClass() sharedConnection];
        [sharedConnection2 updateFolderListForAccountID:v11 andDataclasses:2 isUserRequested:optionsCopy & 1];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v6 != 0;
}

- (CNAccount)initWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  makeIdentifier = [objc_opt_class() makeIdentifier];
  v6 = [(CNAccount *)self initWithIdentifier:makeIdentifier externalIdentifier:identifierCopy];

  return v6;
}

- (CNAccount)initWithIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier
{
  identifierCopy = identifier;
  externalIdentifierCopy = externalIdentifier;
  v15.receiver = self;
  v15.super_class = CNAccount;
  v8 = [(CNAccount *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [externalIdentifierCopy copy];
    externalIdentifierString = v8->_externalIdentifierString;
    v8->_externalIdentifierString = v11;

    v8->_iOSLegacyIdentifier = -1;
    v13 = v8;
  }

  return v8;
}

- (CNAccount)initWithIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier iOSLegacyIdentifier:(int)legacyIdentifier
{
  identifierCopy = identifier;
  externalIdentifierCopy = externalIdentifier;
  v17.receiver = self;
  v17.super_class = CNAccount;
  v10 = [(CNAccount *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [externalIdentifierCopy copy];
    externalIdentifierString = v10->_externalIdentifierString;
    v10->_externalIdentifierString = v13;

    v10->_iOSLegacyIdentifier = legacyIdentifier;
    v15 = v10;
  }

  return v10;
}

- (CNAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNAccount *)self initWithIdentifier:0 externalIdentifier:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalIdentifierString"];
    v10 = [v9 copy];
    externalIdentifierString = v5->_externalIdentifierString;
    v5->_externalIdentifierString = v10;

    v5->_iOSLegacyIdentifier = [coderCopy decodeInt32ForKey:@"iOSLegacyIdentifier"];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_externalIdentifierString forKey:@"_externalIdentifierString"];
  [coderCopy encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_externalIdentifierString withName:@"externalIdentifierString"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_iOSLegacyIdentifier];
  v7 = [v3 appendObject:v6 withName:@"iOSLegacyIdentifier"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __21__CNAccount_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __21__CNAccount_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  selfCopy = self;
  v15 = equalCopy;
  v7 = equalCopy;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, selfCopy}];

  return self;
}

uint64_t __21__CNAccount_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __21__CNAccount_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalIdentifierString];
  v4 = [*(a1 + 40) externalIdentifierString];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __17__CNAccount_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __17__CNAccount_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __17__CNAccount_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __17__CNAccount_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalIdentifierString];
  v3 = [v1 objectHash:v2];

  return v3;
}

+ (id)predicateForAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABAccountForExternalIdentifierPredicate alloc] initWithAccountExternalIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForAccountForContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABAccountForContainerPredicate alloc] initWithContainerIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForAccountsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[CNiOSABAccountIdentifiersPredicate alloc] initWithIdentifiers:identifiersCopy];

  return v4;
}

@end