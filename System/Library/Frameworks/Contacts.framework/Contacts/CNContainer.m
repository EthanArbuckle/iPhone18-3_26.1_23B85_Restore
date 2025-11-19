@interface CNContainer
+ (NSPredicate)predicateForContainerOfContactWithIdentifier:(NSString *)contactIdentifier;
+ (NSPredicate)predicateForContainerOfGroupWithIdentifier:(NSString *)groupIdentifier;
+ (NSPredicate)predicateForContainersWithIdentifiers:(NSArray *)identifiers;
+ (id)descriptionForContainerType:(int64_t)a3;
+ (id)identifierProvider;
+ (id)makeDefaultContainerPermissions;
+ (id)makeIdentifierString;
+ (id)predicateForContainerWithExternalIdentifier:(id)a3;
+ (id)predicateForContainerWithProviderIdentifier:(id)a3;
+ (id)predicateForContainersInAccountWithExternalIdentifier:(id)a3;
+ (id)predicateForContainersInAccountWithIdentifier:(id)a3 includingDisabledContainers:(BOOL)a4;
+ (id)predicateForContainersIncludingDisabled:(BOOL)a3;
+ (id)predicateForContainersWithType:(int64_t)a3 includingDisabledContainers:(BOOL)a4;
+ (id)predicateForDefaultContainerForAccountWithIdentifier:(id)a3;
+ (id)predicateForLocalContainerIncludingDisabled:(BOOL)a3;
+ (id)predicateForiOSLegacyIdentifier:(int)a3;
- (BOOL)isEqual:(id)a3;
- (CNContainer)init;
- (CNContainer)initWithCoder:(id)a3;
- (CNContainer)initWithContainer:(id)a3;
- (CNContainer)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5;
- (CNContainer)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 iOSLegacyIdentifier:(int)a6 accountIdentifier:(id)a7 enabled:(BOOL)a8 permissions:(id)a9 externalIdentifier:(id)a10 externalModificationTag:(id)a11 externalSyncTag:(id)a12 externalSyncData:(id)a13 constraintsPath:(id)a14 meIdentifier:(id)a15 restrictions:(unint64_t)a16 guardianRestricted:(BOOL)a17 lastSyncDate:(id)a18 providerIdentifier:(id)a19 providerMetadata:(id)a20;
- (CNContainer)initWithName:(id)a3;
- (CNContainer)initWithName:(id)a3 type:(int64_t)a4;
- (CNContainer)initWithName:(id)a3 type:(int64_t)a4 externalIdentifier:(id)a5;
- (CNContainer)snapshot;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContainer

+ (NSPredicate)predicateForContainersWithIdentifiers:(NSArray *)identifiers
{
  v3 = identifiers;
  v4 = [[CNiOSABContainerIdentifiersPredicate alloc] initWithIdentifiers:v3];

  return v4;
}

+ (NSPredicate)predicateForContainerOfContactWithIdentifier:(NSString *)contactIdentifier
{
  v3 = contactIdentifier;
  v4 = [[CNiOSABContainerOfContactPredicate alloc] initWithContactIdentifier:v3];

  return v4;
}

+ (NSPredicate)predicateForContainerOfGroupWithIdentifier:(NSString *)groupIdentifier
{
  v3 = groupIdentifier;
  v4 = [[CNiOSABContainerOfGroupPredicate alloc] initWithGroupIdentifier:v3];

  return v4;
}

+ (id)predicateForContainersInAccountWithIdentifier:(id)a3 includingDisabledContainers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNiOSABContainersForAccountPredicate alloc] initWithAccountIdentifier:v5 includingDisabledContainers:v4];

  return v6;
}

+ (id)predicateForContainersInAccountWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABContainersForAccountExternalIdentifierPredicate alloc] initWithAccountExternalIdentifier:v3];

  return v4;
}

+ (id)predicateForDefaultContainerForAccountWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABDefaultContainerForAccountPredicate alloc] initWithAccountIdentifier:v3];

  return v4;
}

+ (id)predicateForContainersWithType:(int64_t)a3 includingDisabledContainers:(BOOL)a4
{
  v4 = [[CNiOSABContainersForTypePredicate alloc] initWithType:a3 includingDisabledContainers:a4];

  return v4;
}

+ (id)predicateForContainerWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABContainerExternalIdentifierPredicate alloc] initWithExternalIdentifier:v3];

  return v4;
}

+ (id)predicateForContainerWithProviderIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABContainerProviderIdentifierPredicate alloc] initWithProviderIdentifier:v3];

  return v4;
}

+ (id)predicateForContainersIncludingDisabled:(BOOL)a3
{
  v3 = [[CNiOSABDisabledContainersPredicate alloc] initWithDisabledContainersIncluded:a3];

  return v3;
}

+ (id)predicateForLocalContainerIncludingDisabled:(BOOL)a3
{
  v3 = [[CNiOSABLocalContainerPredicate alloc] initWithDisabledContainerIncluded:a3];

  return v3;
}

+ (id)predicateForiOSLegacyIdentifier:(int)a3
{
  v3 = [[CNiOSABContaineriOSLegacyIdentifierPredicate alloc] initWithiOSLegacyIdentifier:*&a3];

  return v3;
}

+ (id)identifierProvider
{
  if (identifierProvider_cn_once_token_0_1 != -1)
  {
    +[CNContainer identifierProvider];
  }

  v3 = identifierProvider_cn_once_object_0_1;

  return v3;
}

uint64_t __33__CNContainer_identifierProvider__block_invoke()
{
  v0 = [[CNUuidIdentifierProvider alloc] initWithSuffix:@"ABContainer"];
  v1 = identifierProvider_cn_once_object_0_1;
  identifierProvider_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)makeIdentifierString
{
  v2 = [a1 identifierProvider];
  v3 = [v2 makeIdentifier];

  return v3;
}

+ (id)makeDefaultContainerPermissions
{
  if (makeDefaultContainerPermissions_cn_once_token_1 != -1)
  {
    +[CNContainer makeDefaultContainerPermissions];
  }

  v3 = makeDefaultContainerPermissions_cn_once_object_1;

  return v3;
}

uint64_t __46__CNContainer_makeDefaultContainerPermissions__block_invoke()
{
  v0 = [[CNContainerPermissions alloc] initWithCanCreateContacts:0 canDeleteContacts:0 canCreateGroups:0];
  v1 = makeDefaultContainerPermissions_cn_once_object_1;
  makeDefaultContainerPermissions_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContainer)init
{
  v3 = [objc_opt_class() makeIdentifier];
  v4 = [objc_opt_class() makeDefaultContainerPermissions];
  v5 = [(CNContainer *)self initWithIdentifier:v3 accountIdentifier:0 name:&stru_1F094DAB0 type:0 permissions:v4 externalIdentifier:0];

  return v5;
}

- (CNContainer)initWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() makeIdentifier];
  v6 = [objc_opt_class() makeDefaultContainerPermissions];
  v7 = [(CNContainer *)self initWithIdentifier:v5 accountIdentifier:0 name:v4 type:0 permissions:v6 externalIdentifier:0];

  return v7;
}

- (CNContainer)initWithName:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() makeIdentifier];
  v8 = [objc_opt_class() makeDefaultContainerPermissions];
  v9 = [(CNContainer *)self initWithIdentifier:v7 accountIdentifier:0 name:v6 type:a4 permissions:v8 externalIdentifier:0];

  return v9;
}

- (CNContainer)initWithName:(id)a3 type:(int64_t)a4 externalIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() makeIdentifier];
  v11 = [objc_opt_class() makeDefaultContainerPermissions];
  v12 = [(CNContainer *)self initWithIdentifier:v10 accountIdentifier:0 name:v9 type:a4 permissions:v11 externalIdentifier:v8];

  return v12;
}

- (CNContainer)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() makeDefaultContainerPermissions];
  v11 = [(CNContainer *)self initWithIdentifier:v9 accountIdentifier:0 name:v8 type:a5 permissions:v10 externalIdentifier:0];

  return v11;
}

- (CNContainer)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 iOSLegacyIdentifier:(int)a6 accountIdentifier:(id)a7 enabled:(BOOL)a8 permissions:(id)a9 externalIdentifier:(id)a10 externalModificationTag:(id)a11 externalSyncTag:(id)a12 externalSyncData:(id)a13 constraintsPath:(id)a14 meIdentifier:(id)a15 restrictions:(unint64_t)a16 guardianRestricted:(BOOL)a17 lastSyncDate:(id)a18 providerIdentifier:(id)a19 providerMetadata:(id)a20
{
  v22 = a3;
  v23 = a4;
  v24 = a7;
  v69 = a9;
  v68 = a10;
  v67 = a11;
  v25 = v24;
  v66 = a12;
  v26 = a13;
  v27 = a14;
  v28 = v23;
  v29 = a15;
  v30 = a18;
  v31 = a19;
  v32 = a20;
  v70.receiver = self;
  v70.super_class = CNContainer;
  v33 = [(CNContainer *)&v70 init];
  if (v33)
  {
    v34 = [v22 copy];
    identifier = v33->_identifier;
    v33->_identifier = v34;

    v36 = [v28 copy];
    name = v33->_name;
    v33->_name = v36;

    v33->_type = a5;
    v33->_iOSLegacyIdentifier = a6;
    v33->_enabled = a8;
    v38 = [v25 copy];
    accountIdentifier = v33->_accountIdentifier;
    v33->_accountIdentifier = v38;

    v40 = [v69 copy];
    permissions = v33->_permissions;
    v33->_permissions = v40;

    v42 = [v68 copy];
    externalIdentifier = v33->_externalIdentifier;
    v33->_externalIdentifier = v42;

    v44 = [v67 copy];
    externalModificationTag = v33->_externalModificationTag;
    v33->_externalModificationTag = v44;

    v46 = [v66 copy];
    externalSyncTag = v33->_externalSyncTag;
    v33->_externalSyncTag = v46;

    v48 = [v26 copy];
    externalSyncData = v33->_externalSyncData;
    v33->_externalSyncData = v48;

    v50 = [v27 copy];
    constraintsPath = v33->_constraintsPath;
    v33->_constraintsPath = v50;

    v52 = [v29 copy];
    meIdentifier = v33->_meIdentifier;
    v33->_meIdentifier = v52;

    v33->_restrictions = a16;
    v33->_guardianRestricted = a17;
    v54 = [v30 copy];
    lastSyncDate = v33->_lastSyncDate;
    v33->_lastSyncDate = v54;

    v56 = [v31 copy];
    providerIdentifier = v33->_providerIdentifier;
    v33->_providerIdentifier = v56;

    v58 = [v32 copy];
    providerMetadata = v33->_providerMetadata;
    v33->_providerMetadata = v58;

    v60 = v33;
  }

  return v33;
}

- (CNContainer)initWithContainer:(id)a3
{
  v3 = a3;
  v22 = [v3 identifier];
  v21 = [v3 name];
  v20 = [v3 type];
  v19 = [v3 iOSLegacyIdentifier];
  v18 = [v3 accountIdentifier];
  v17 = [v3 isEnabled];
  v25 = [v3 permissions];
  v16 = [v3 externalIdentifier];
  v14 = [v3 externalModificationTag];
  v15 = [v3 externalSyncTag];
  v13 = [v3 externalSyncData];
  v4 = [v3 constraintsPath];
  v5 = [v3 meIdentifier];
  v6 = [v3 restrictions];
  v7 = [v3 isGuardianRestricted];
  v8 = [v3 lastSyncDate];
  v9 = [v3 providerIdentifier];
  v10 = [v3 providerMetadata];

  LOBYTE(v12) = v7;
  v24 = [(CNContainer *)self initWithIdentifier:v22 name:v21 type:v20 iOSLegacyIdentifier:v19 accountIdentifier:v18 enabled:v17 permissions:v25 externalIdentifier:v16 externalModificationTag:v14 externalSyncTag:v15 externalSyncData:v13 constraintsPath:v4 meIdentifier:v5 restrictions:v6 guardianRestricted:v12 lastSyncDate:v8 providerIdentifier:v9 providerMetadata:v10];

  return v24;
}

- (CNContainer)initWithCoder:(id)a3
{
  v3 = a3;
  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [v3 decodeIntegerForKey:@"type"];
  [v3 decodeInt32ForKey:@"iOSLegacyIdentifier"];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  [v3 decodeBoolForKey:@"enabled"];
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"permissions"];
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v36 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalSyncTag"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalSyncData"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"constraintsPath"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"meIdentifier"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"restrictions"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v3 decodeBoolForKey:@"guardianRestricted"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"providerIdentifier"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"providerMetadata"];
  v29 = v11;
  v28 = v11;
  LOBYTE(v27) = v10;
  v33 = v4;
  v26 = v4;
  v14 = v34;
  v15 = v32;
  v16 = [CNContainer initWithIdentifier:"initWithIdentifier:name:type:iOSLegacyIdentifier:accountIdentifier:enabled:permissions:externalIdentifier:externalModificationTag:externalSyncTag:externalSyncData:constraintsPath:meIdentifier:restrictions:guardianRestricted:lastSyncDate:providerIdentifier:providerMetadata:" name:v30 type:v37 iOSLegacyIdentifier:v36 accountIdentifier:v26 enabled:v5 permissions:v6 externalIdentifier:v7 externalModificationTag:v9 externalSyncTag:v27 externalSyncData:v28 constraintsPath:v12 meIdentifier:v13 restrictions:? guardianRestricted:? lastSyncDate:? providerIdentifier:? providerMetadata:?];
  if (v16)
  {
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = v18;
    v14 = v34;
    v15 = v32;
    v21 = [v17 setWithObjects:{v20, v19, 0}];
    v22 = [v3 decodeObjectOfClasses:v21 forKey:@"snapshot"];
    snapshot = v16->_snapshot;
    v16->_snapshot = v22;

    v24 = v16;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_name forKey:@"name"];
  [v6 encodeInteger:self->_type forKey:@"type"];
  [v6 encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
  [v6 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v6 encodeBool:self->_enabled forKey:@"enabled"];
  [v6 encodeObject:self->_permissions forKey:@"permissions"];
  [v6 encodeObject:self->_externalIdentifier forKey:@"externalIdentifier"];
  [v6 encodeObject:self->_externalModificationTag forKey:@"externalModificationTag"];
  [v6 encodeObject:self->_externalSyncTag forKey:@"externalSyncTag"];
  [v6 encodeObject:self->_externalSyncData forKey:@"externalSyncData"];
  [v6 encodeObject:self->_constraintsPath forKey:@"constraintsPath"];
  [v6 encodeObject:self->_meIdentifier forKey:@"meIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_restrictions];
  [v6 encodeObject:v5 forKey:@"restrictions"];

  [v6 encodeObject:self->_snapshot forKey:@"snapshot"];
  [v6 encodeBool:self->_guardianRestricted forKey:@"guardianRestricted"];
  [v6 encodeObject:self->_lastSyncDate forKey:@"lastSyncDate"];
  [v6 encodeObject:self->_providerIdentifier forKey:@"providerIdentifier"];
  [v6 encodeObject:self->_providerMetadata forKey:@"providerMetadata"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CNContainer *)[CNMutableContainer alloc] initWithContainer:self];
  snapshot = self->_snapshot;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (snapshot == v6)
  {
    [(CNMutableContainer *)v4 setSnapshot:self];
  }

  return v4;
}

- (CNContainer)snapshot
{
  v3 = self->_snapshot;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v4)
  {
    v5 = self;

    v3 = v5;
  }

  return v3;
}

+ (id)descriptionForContainerType:(int64_t)a3
{
  if (a3 <= 1000)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        return @"CardDAV";
      }

      if (a3 == 1000)
      {
        return @"CardDAVSearch";
      }
    }

    else
    {
      if (a3 == 1)
      {
        return @"Local";
      }

      if (a3 == 2)
      {
        return @"Exchange";
      }
    }

    return @"<unknown container type>";
  }

  if (a3 > 1002)
  {
    if (a3 == 1003)
    {
      return @"ContactProvider";
    }

    if (a3 == 1004)
    {
      return @"AcceptedIntroductions";
    }

    return @"<unknown container type>";
  }

  if (a3 == 1001)
  {
    return @"ExchangeGAL";
  }

  else
  {
    return @"LDAP";
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = MEMORY[0x1E696AEC0];
  type = self->_type;
  v6 = [objc_opt_class() descriptionForContainerType:type];
  v7 = [v4 stringWithFormat:@"%ld(%@)", type, v6];

  v8 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v9 = [v3 appendObject:self->_name withName:@"name"];
  v10 = [v3 appendObject:v7 withName:@"type"];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_iOSLegacyIdentifier];
  v12 = [v3 appendObject:v11 withName:@"iOSLegacyIdentifier"];

  v13 = [v3 appendObject:self->_accountIdentifier withName:@"accountIdentifier"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  v15 = [v3 appendObject:v14 withName:@"enabled"];

  v16 = [v3 appendObject:self->_externalIdentifier withName:@"externalIdentifier"];
  v17 = [v3 appendObject:self->_externalModificationTag withName:@"externalModificationTag"];
  v18 = [v3 appendObject:self->_externalSyncTag withName:@"externalSyncTag"];
  v19 = [v3 appendObject:self->_externalSyncData withName:@"externalSyncData"];
  v20 = [v3 appendObject:self->_constraintsPath withName:@"constraintsPath"];
  v21 = [v3 appendObject:self->_meIdentifier withName:@"meIdentifier"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_restrictions];
  v23 = [v3 appendObject:v22 withName:@"restrictions"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_guardianRestricted];
  v25 = [v3 appendObject:v24 withName:@"guardianRestricted"];

  v26 = [v3 appendObject:self->_lastSyncDate withName:@"lastSyncDate"];
  v27 = [v3 appendObject:self->_providerIdentifier withName:@"providerIdentifier"];
  v28 = [v3 build];

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)
      || (v5 = -[CNContainer identifier](self, "identifier"), v6 = -[CNContainer identifier](v4, "identifier"), v5 | v6) && ![v5 isEqual:v6]
      || (v7 = -[CNContainer name](self, "name"), v8 = -[CNContainer name](v4, "name"), v7 | v8) && ![v7 isEqual:v8]
      || (v9 = [(CNContainer *)self type], v9 != [(CNContainer *)v4 type])
      || (v10 = [(CNContainer *)self iOSLegacyIdentifier], v10 != [(CNContainer *)v4 iOSLegacyIdentifier])
      || (v11 = -[CNContainer accountIdentifier](self, "accountIdentifier"), v12 = -[CNContainer accountIdentifier](v4, "accountIdentifier"), v11 | v12) && ![v11 isEqual:v12]
      || (v13 = [(CNContainer *)self isEnabled], v13 != [(CNContainer *)v4 isEnabled])
      || (v15 = -[CNContainer permissions](self, "permissions"), v16 = -[CNContainer permissions](v4, "permissions"), v15 | v16) && ![v15 isEqual:v16]
      || (v17 = -[CNContainer externalIdentifier](self, "externalIdentifier"), v18 = -[CNContainer externalIdentifier](v4, "externalIdentifier"), v17 | v18) && ![v17 isEqual:v18]
      || (v19 = -[CNContainer externalModificationTag](self, "externalModificationTag"), v20 = -[CNContainer externalModificationTag](v4, "externalModificationTag"), v19 | v20) && ![v19 isEqual:v20]
      || (v21 = -[CNContainer externalSyncTag](self, "externalSyncTag"), v22 = -[CNContainer externalSyncTag](v4, "externalSyncTag"), v21 | v22) && ![v21 isEqual:v22]
      || (v23 = -[CNContainer externalSyncData](self, "externalSyncData"), v24 = -[CNContainer externalSyncData](v4, "externalSyncData"), v23 | v24) && ![v23 isEqual:v24]
      || (v25 = -[CNContainer constraintsPath](self, "constraintsPath"), v26 = -[CNContainer constraintsPath](v4, "constraintsPath"), v25 | v26) && ![v25 isEqual:v26]
      || (v27 = -[CNContainer meIdentifier](self, "meIdentifier"), v28 = -[CNContainer meIdentifier](v4, "meIdentifier"), v27 | v28) && ![v27 isEqual:v28]
      || (v29 = [(CNContainer *)self isGuardianRestricted], v29 != [(CNContainer *)v4 isGuardianRestricted])
      || (v30 = [(CNContainer *)self restrictions], v30 != [(CNContainer *)v4 restrictions])
      || (v31 = -[CNContainer lastSyncDate](self, "lastSyncDate"), v32 = -[CNContainer lastSyncDate](v4, "lastSyncDate"), v31 | v32) && ![v31 isEqual:v32]
      || (v33 = -[CNContainer providerIdentifier](self, "providerIdentifier"), v34 = -[CNContainer providerIdentifier](v4, "providerIdentifier"), v33 | v34) && ![v33 isEqual:v34]
      || (v35 = -[CNContainer providerMetadata](self, "providerMetadata"), v36 = -[CNContainer providerMetadata](v4, "providerMetadata"), v35 | v36) && ![v35 isEqual:v36])
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNContainer *)self identifier];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNContainer *)self name];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = [(CNContainer *)self type];
  if (v9 >= CNContainerTypeUnassigned)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v11 = 31 * (v10 - v8 + 32 * v8);
  v12 = [(CNContainer *)self iOSLegacyIdentifier];
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v14 = v11 + v13;
  v15 = MEMORY[0x1E6996730];
  v16 = [(CNContainer *)self accountIdentifier];
  v17 = 31 * ([v15 objectHash:v16] - v14 + 32 * v14);

  v18 = v17 + [(CNContainer *)self isEnabled];
  v19 = MEMORY[0x1E6996730];
  v20 = [(CNContainer *)self permissions];
  v21 = [v19 objectHash:v20] - v18 + 32 * v18;

  v22 = MEMORY[0x1E6996730];
  v23 = [(CNContainer *)self externalIdentifier];
  v24 = [v22 objectHash:v23] - v21 + 32 * v21;

  v25 = MEMORY[0x1E6996730];
  v26 = [(CNContainer *)self externalModificationTag];
  v27 = [v25 objectHash:v26] - v24 + 32 * v24;

  v28 = MEMORY[0x1E6996730];
  v29 = [(CNContainer *)self externalSyncTag];
  v30 = [v28 objectHash:v29] - v27 + 32 * v27;

  v31 = MEMORY[0x1E6996730];
  v32 = [(CNContainer *)self externalSyncData];
  v33 = [v31 objectHash:v32] - v30 + 32 * v30;

  v34 = MEMORY[0x1E6996730];
  v35 = [(CNContainer *)self constraintsPath];
  v36 = [v34 objectHash:v35] - v33 + 32 * v33;

  v37 = MEMORY[0x1E6996730];
  v38 = [(CNContainer *)self meIdentifier];
  v39 = [v37 objectHash:v38] - v36 + 32 * v36;

  v40 = 31 * ([(CNContainer *)self restrictions]- v39 + 32 * v39);
  v41 = v40 + [(CNContainer *)self isGuardianRestricted];
  v42 = MEMORY[0x1E6996730];
  v43 = [(CNContainer *)self lastSyncDate];
  v44 = [v42 objectHash:v43] - v41 + 32 * v41;

  v45 = MEMORY[0x1E6996730];
  v46 = [(CNContainer *)self providerIdentifier];
  v47 = [v45 objectHash:v46] - v44 + 32 * v44;

  v48 = MEMORY[0x1E6996730];
  v49 = [(CNContainer *)self providerMetadata];
  v50 = [v48 objectHash:v49] - v47 + 32 * v47;

  return v50 + 0x76BB734BA8507DD1;
}

@end