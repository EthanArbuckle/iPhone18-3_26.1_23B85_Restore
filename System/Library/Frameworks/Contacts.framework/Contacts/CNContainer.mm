@interface CNContainer
+ (NSPredicate)predicateForContainerOfContactWithIdentifier:(NSString *)contactIdentifier;
+ (NSPredicate)predicateForContainerOfGroupWithIdentifier:(NSString *)groupIdentifier;
+ (NSPredicate)predicateForContainersWithIdentifiers:(NSArray *)identifiers;
+ (id)descriptionForContainerType:(int64_t)type;
+ (id)identifierProvider;
+ (id)makeDefaultContainerPermissions;
+ (id)makeIdentifierString;
+ (id)predicateForContainerWithExternalIdentifier:(id)identifier;
+ (id)predicateForContainerWithProviderIdentifier:(id)identifier;
+ (id)predicateForContainersInAccountWithExternalIdentifier:(id)identifier;
+ (id)predicateForContainersInAccountWithIdentifier:(id)identifier includingDisabledContainers:(BOOL)containers;
+ (id)predicateForContainersIncludingDisabled:(BOOL)disabled;
+ (id)predicateForContainersWithType:(int64_t)type includingDisabledContainers:(BOOL)containers;
+ (id)predicateForDefaultContainerForAccountWithIdentifier:(id)identifier;
+ (id)predicateForLocalContainerIncludingDisabled:(BOOL)disabled;
+ (id)predicateForiOSLegacyIdentifier:(int)identifier;
- (BOOL)isEqual:(id)equal;
- (CNContainer)init;
- (CNContainer)initWithCoder:(id)coder;
- (CNContainer)initWithContainer:(id)container;
- (CNContainer)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type;
- (CNContainer)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type iOSLegacyIdentifier:(int)legacyIdentifier accountIdentifier:(id)accountIdentifier enabled:(BOOL)enabled permissions:(id)permissions externalIdentifier:(id)self0 externalModificationTag:(id)self1 externalSyncTag:(id)self2 externalSyncData:(id)self3 constraintsPath:(id)self4 meIdentifier:(id)self5 restrictions:(unint64_t)self6 guardianRestricted:(BOOL)self7 lastSyncDate:(id)self8 providerIdentifier:(id)self9 providerMetadata:(id)metadata;
- (CNContainer)initWithName:(id)name;
- (CNContainer)initWithName:(id)name type:(int64_t)type;
- (CNContainer)initWithName:(id)name type:(int64_t)type externalIdentifier:(id)identifier;
- (CNContainer)snapshot;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)predicateForContainersInAccountWithIdentifier:(id)identifier includingDisabledContainers:(BOOL)containers
{
  containersCopy = containers;
  identifierCopy = identifier;
  v6 = [[CNiOSABContainersForAccountPredicate alloc] initWithAccountIdentifier:identifierCopy includingDisabledContainers:containersCopy];

  return v6;
}

+ (id)predicateForContainersInAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABContainersForAccountExternalIdentifierPredicate alloc] initWithAccountExternalIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForDefaultContainerForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABDefaultContainerForAccountPredicate alloc] initWithAccountIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForContainersWithType:(int64_t)type includingDisabledContainers:(BOOL)containers
{
  v4 = [[CNiOSABContainersForTypePredicate alloc] initWithType:type includingDisabledContainers:containers];

  return v4;
}

+ (id)predicateForContainerWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABContainerExternalIdentifierPredicate alloc] initWithExternalIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForContainerWithProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABContainerProviderIdentifierPredicate alloc] initWithProviderIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForContainersIncludingDisabled:(BOOL)disabled
{
  v3 = [[CNiOSABDisabledContainersPredicate alloc] initWithDisabledContainersIncluded:disabled];

  return v3;
}

+ (id)predicateForLocalContainerIncludingDisabled:(BOOL)disabled
{
  v3 = [[CNiOSABLocalContainerPredicate alloc] initWithDisabledContainerIncluded:disabled];

  return v3;
}

+ (id)predicateForiOSLegacyIdentifier:(int)identifier
{
  v3 = [[CNiOSABContaineriOSLegacyIdentifierPredicate alloc] initWithiOSLegacyIdentifier:*&identifier];

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
  identifierProvider = [self identifierProvider];
  makeIdentifier = [identifierProvider makeIdentifier];

  return makeIdentifier;
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
  makeIdentifier = [objc_opt_class() makeIdentifier];
  makeDefaultContainerPermissions = [objc_opt_class() makeDefaultContainerPermissions];
  v5 = [(CNContainer *)self initWithIdentifier:makeIdentifier accountIdentifier:0 name:&stru_1F094DAB0 type:0 permissions:makeDefaultContainerPermissions externalIdentifier:0];

  return v5;
}

- (CNContainer)initWithName:(id)name
{
  nameCopy = name;
  makeIdentifier = [objc_opt_class() makeIdentifier];
  makeDefaultContainerPermissions = [objc_opt_class() makeDefaultContainerPermissions];
  v7 = [(CNContainer *)self initWithIdentifier:makeIdentifier accountIdentifier:0 name:nameCopy type:0 permissions:makeDefaultContainerPermissions externalIdentifier:0];

  return v7;
}

- (CNContainer)initWithName:(id)name type:(int64_t)type
{
  nameCopy = name;
  makeIdentifier = [objc_opt_class() makeIdentifier];
  makeDefaultContainerPermissions = [objc_opt_class() makeDefaultContainerPermissions];
  v9 = [(CNContainer *)self initWithIdentifier:makeIdentifier accountIdentifier:0 name:nameCopy type:type permissions:makeDefaultContainerPermissions externalIdentifier:0];

  return v9;
}

- (CNContainer)initWithName:(id)name type:(int64_t)type externalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  makeIdentifier = [objc_opt_class() makeIdentifier];
  makeDefaultContainerPermissions = [objc_opt_class() makeDefaultContainerPermissions];
  v12 = [(CNContainer *)self initWithIdentifier:makeIdentifier accountIdentifier:0 name:nameCopy type:type permissions:makeDefaultContainerPermissions externalIdentifier:identifierCopy];

  return v12;
}

- (CNContainer)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type
{
  nameCopy = name;
  identifierCopy = identifier;
  makeDefaultContainerPermissions = [objc_opt_class() makeDefaultContainerPermissions];
  v11 = [(CNContainer *)self initWithIdentifier:identifierCopy accountIdentifier:0 name:nameCopy type:type permissions:makeDefaultContainerPermissions externalIdentifier:0];

  return v11;
}

- (CNContainer)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type iOSLegacyIdentifier:(int)legacyIdentifier accountIdentifier:(id)accountIdentifier enabled:(BOOL)enabled permissions:(id)permissions externalIdentifier:(id)self0 externalModificationTag:(id)self1 externalSyncTag:(id)self2 externalSyncData:(id)self3 constraintsPath:(id)self4 meIdentifier:(id)self5 restrictions:(unint64_t)self6 guardianRestricted:(BOOL)self7 lastSyncDate:(id)self8 providerIdentifier:(id)self9 providerMetadata:(id)metadata
{
  identifierCopy = identifier;
  nameCopy = name;
  accountIdentifierCopy = accountIdentifier;
  permissionsCopy = permissions;
  externalIdentifierCopy = externalIdentifier;
  tagCopy = tag;
  v25 = accountIdentifierCopy;
  syncTagCopy = syncTag;
  dataCopy = data;
  pathCopy = path;
  v28 = nameCopy;
  meIdentifierCopy = meIdentifier;
  dateCopy = date;
  providerIdentifierCopy = providerIdentifier;
  metadataCopy = metadata;
  v70.receiver = self;
  v70.super_class = CNContainer;
  v33 = [(CNContainer *)&v70 init];
  if (v33)
  {
    v34 = [identifierCopy copy];
    identifier = v33->_identifier;
    v33->_identifier = v34;

    v36 = [v28 copy];
    name = v33->_name;
    v33->_name = v36;

    v33->_type = type;
    v33->_iOSLegacyIdentifier = legacyIdentifier;
    v33->_enabled = enabled;
    v38 = [v25 copy];
    accountIdentifier = v33->_accountIdentifier;
    v33->_accountIdentifier = v38;

    v40 = [permissionsCopy copy];
    permissions = v33->_permissions;
    v33->_permissions = v40;

    v42 = [externalIdentifierCopy copy];
    externalIdentifier = v33->_externalIdentifier;
    v33->_externalIdentifier = v42;

    v44 = [tagCopy copy];
    externalModificationTag = v33->_externalModificationTag;
    v33->_externalModificationTag = v44;

    v46 = [syncTagCopy copy];
    externalSyncTag = v33->_externalSyncTag;
    v33->_externalSyncTag = v46;

    v48 = [dataCopy copy];
    externalSyncData = v33->_externalSyncData;
    v33->_externalSyncData = v48;

    v50 = [pathCopy copy];
    constraintsPath = v33->_constraintsPath;
    v33->_constraintsPath = v50;

    v52 = [meIdentifierCopy copy];
    meIdentifier = v33->_meIdentifier;
    v33->_meIdentifier = v52;

    v33->_restrictions = restrictions;
    v33->_guardianRestricted = restricted;
    v54 = [dateCopy copy];
    lastSyncDate = v33->_lastSyncDate;
    v33->_lastSyncDate = v54;

    v56 = [providerIdentifierCopy copy];
    providerIdentifier = v33->_providerIdentifier;
    v33->_providerIdentifier = v56;

    v58 = [metadataCopy copy];
    providerMetadata = v33->_providerMetadata;
    v33->_providerMetadata = v58;

    v60 = v33;
  }

  return v33;
}

- (CNContainer)initWithContainer:(id)container
{
  containerCopy = container;
  identifier = [containerCopy identifier];
  name = [containerCopy name];
  type = [containerCopy type];
  iOSLegacyIdentifier = [containerCopy iOSLegacyIdentifier];
  accountIdentifier = [containerCopy accountIdentifier];
  isEnabled = [containerCopy isEnabled];
  permissions = [containerCopy permissions];
  externalIdentifier = [containerCopy externalIdentifier];
  externalModificationTag = [containerCopy externalModificationTag];
  externalSyncTag = [containerCopy externalSyncTag];
  externalSyncData = [containerCopy externalSyncData];
  constraintsPath = [containerCopy constraintsPath];
  meIdentifier = [containerCopy meIdentifier];
  restrictions = [containerCopy restrictions];
  isGuardianRestricted = [containerCopy isGuardianRestricted];
  lastSyncDate = [containerCopy lastSyncDate];
  providerIdentifier = [containerCopy providerIdentifier];
  providerMetadata = [containerCopy providerMetadata];

  LOBYTE(v12) = isGuardianRestricted;
  v24 = [(CNContainer *)self initWithIdentifier:identifier name:name type:type iOSLegacyIdentifier:iOSLegacyIdentifier accountIdentifier:accountIdentifier enabled:isEnabled permissions:permissions externalIdentifier:externalIdentifier externalModificationTag:externalModificationTag externalSyncTag:externalSyncTag externalSyncData:externalSyncData constraintsPath:constraintsPath meIdentifier:meIdentifier restrictions:restrictions guardianRestricted:v12 lastSyncDate:lastSyncDate providerIdentifier:providerIdentifier providerMetadata:providerMetadata];

  return v24;
}

- (CNContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [coderCopy decodeIntegerForKey:@"type"];
  [coderCopy decodeInt32ForKey:@"iOSLegacyIdentifier"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  [coderCopy decodeBoolForKey:@"enabled"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permissions"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalSyncTag"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalSyncData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"constraintsPath"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restrictions"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [coderCopy decodeBoolForKey:@"guardianRestricted"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerMetadata"];
  v29 = v11;
  v28 = v11;
  LOBYTE(v27) = v10;
  v33 = v4;
  v26 = v4;
  v14 = v34;
  v15 = v32;
  v16 = [CNContainer initWithIdentifier:"initWithIdentifier:name:type:iOSLegacyIdentifier:accountIdentifier:enabled:permissions:externalIdentifier:externalModificationTag:externalSyncTag:externalSyncData:constraintsPath:meIdentifier:restrictions:guardianRestricted:lastSyncDate:providerIdentifier:providerMetadata:" name:v30 type:v37 iOSLegacyIdentifier:v36 accountIdentifier:v26 enabled:v5 permissions:v6 externalIdentifier:v7 externalModificationTag:unsignedIntegerValue externalSyncTag:v27 externalSyncData:v28 constraintsPath:v12 meIdentifier:v13 restrictions:? guardianRestricted:? lastSyncDate:? providerIdentifier:? providerMetadata:?];
  if (v16)
  {
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = v18;
    v14 = v34;
    v15 = v32;
    v21 = [v17 setWithObjects:{v20, v19, 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"snapshot"];
    snapshot = v16->_snapshot;
    v16->_snapshot = v22;

    v24 = v16;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeObject:self->_permissions forKey:@"permissions"];
  [coderCopy encodeObject:self->_externalIdentifier forKey:@"externalIdentifier"];
  [coderCopy encodeObject:self->_externalModificationTag forKey:@"externalModificationTag"];
  [coderCopy encodeObject:self->_externalSyncTag forKey:@"externalSyncTag"];
  [coderCopy encodeObject:self->_externalSyncData forKey:@"externalSyncData"];
  [coderCopy encodeObject:self->_constraintsPath forKey:@"constraintsPath"];
  [coderCopy encodeObject:self->_meIdentifier forKey:@"meIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_restrictions];
  [coderCopy encodeObject:v5 forKey:@"restrictions"];

  [coderCopy encodeObject:self->_snapshot forKey:@"snapshot"];
  [coderCopy encodeBool:self->_guardianRestricted forKey:@"guardianRestricted"];
  [coderCopy encodeObject:self->_lastSyncDate forKey:@"lastSyncDate"];
  [coderCopy encodeObject:self->_providerIdentifier forKey:@"providerIdentifier"];
  [coderCopy encodeObject:self->_providerMetadata forKey:@"providerMetadata"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(CNContainer *)[CNMutableContainer alloc] initWithContainer:self];
  snapshot = self->_snapshot;
  null = [MEMORY[0x1E695DFB0] null];

  if (snapshot == null)
  {
    [(CNMutableContainer *)v4 setSnapshot:self];
  }

  return v4;
}

- (CNContainer)snapshot
{
  v3 = self->_snapshot;
  null = [MEMORY[0x1E695DFB0] null];

  if (v3 == null)
  {
    selfCopy = self;

    v3 = selfCopy;
  }

  return v3;
}

+ (id)descriptionForContainerType:(int64_t)type
{
  if (type <= 1000)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        return @"CardDAV";
      }

      if (type == 1000)
      {
        return @"CardDAVSearch";
      }
    }

    else
    {
      if (type == 1)
      {
        return @"Local";
      }

      if (type == 2)
      {
        return @"Exchange";
      }
    }

    return @"<unknown container type>";
  }

  if (type > 1002)
  {
    if (type == 1003)
    {
      return @"ContactProvider";
    }

    if (type == 1004)
    {
      return @"AcceptedIntroductions";
    }

    return @"<unknown container type>";
  }

  if (type == 1001)
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
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)
      || (v5 = -[CNContainer identifier](self, "identifier"), v6 = -[CNContainer identifier](equalCopy, "identifier"), v5 | v6) && ![v5 isEqual:v6]
      || (v7 = -[CNContainer name](self, "name"), v8 = -[CNContainer name](equalCopy, "name"), v7 | v8) && ![v7 isEqual:v8]
      || (v9 = [(CNContainer *)self type], v9 != [(CNContainer *)equalCopy type])
      || (v10 = [(CNContainer *)self iOSLegacyIdentifier], v10 != [(CNContainer *)equalCopy iOSLegacyIdentifier])
      || (v11 = -[CNContainer accountIdentifier](self, "accountIdentifier"), v12 = -[CNContainer accountIdentifier](equalCopy, "accountIdentifier"), v11 | v12) && ![v11 isEqual:v12]
      || (v13 = [(CNContainer *)self isEnabled], v13 != [(CNContainer *)equalCopy isEnabled])
      || (v15 = -[CNContainer permissions](self, "permissions"), v16 = -[CNContainer permissions](equalCopy, "permissions"), v15 | v16) && ![v15 isEqual:v16]
      || (v17 = -[CNContainer externalIdentifier](self, "externalIdentifier"), v18 = -[CNContainer externalIdentifier](equalCopy, "externalIdentifier"), v17 | v18) && ![v17 isEqual:v18]
      || (v19 = -[CNContainer externalModificationTag](self, "externalModificationTag"), v20 = -[CNContainer externalModificationTag](equalCopy, "externalModificationTag"), v19 | v20) && ![v19 isEqual:v20]
      || (v21 = -[CNContainer externalSyncTag](self, "externalSyncTag"), v22 = -[CNContainer externalSyncTag](equalCopy, "externalSyncTag"), v21 | v22) && ![v21 isEqual:v22]
      || (v23 = -[CNContainer externalSyncData](self, "externalSyncData"), v24 = -[CNContainer externalSyncData](equalCopy, "externalSyncData"), v23 | v24) && ![v23 isEqual:v24]
      || (v25 = -[CNContainer constraintsPath](self, "constraintsPath"), v26 = -[CNContainer constraintsPath](equalCopy, "constraintsPath"), v25 | v26) && ![v25 isEqual:v26]
      || (v27 = -[CNContainer meIdentifier](self, "meIdentifier"), v28 = -[CNContainer meIdentifier](equalCopy, "meIdentifier"), v27 | v28) && ![v27 isEqual:v28]
      || (v29 = [(CNContainer *)self isGuardianRestricted], v29 != [(CNContainer *)equalCopy isGuardianRestricted])
      || (v30 = [(CNContainer *)self restrictions], v30 != [(CNContainer *)equalCopy restrictions])
      || (v31 = -[CNContainer lastSyncDate](self, "lastSyncDate"), v32 = -[CNContainer lastSyncDate](equalCopy, "lastSyncDate"), v31 | v32) && ![v31 isEqual:v32]
      || (v33 = -[CNContainer providerIdentifier](self, "providerIdentifier"), v34 = -[CNContainer providerIdentifier](equalCopy, "providerIdentifier"), v33 | v34) && ![v33 isEqual:v34]
      || (v35 = -[CNContainer providerMetadata](self, "providerMetadata"), v36 = -[CNContainer providerMetadata](equalCopy, "providerMetadata"), v35 | v36) && ![v35 isEqual:v36])
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  identifier = [(CNContainer *)self identifier];
  v5 = [v3 objectHash:identifier];

  v6 = MEMORY[0x1E6996730];
  name = [(CNContainer *)self name];
  v8 = [v6 objectHash:name] - v5 + 32 * v5;

  type = [(CNContainer *)self type];
  if (type >= CNContainerTypeUnassigned)
  {
    v10 = type;
  }

  else
  {
    v10 = -type;
  }

  v11 = 31 * (v10 - v8 + 32 * v8);
  iOSLegacyIdentifier = [(CNContainer *)self iOSLegacyIdentifier];
  if (iOSLegacyIdentifier >= 0)
  {
    v13 = iOSLegacyIdentifier;
  }

  else
  {
    v13 = -iOSLegacyIdentifier;
  }

  v14 = v11 + v13;
  v15 = MEMORY[0x1E6996730];
  accountIdentifier = [(CNContainer *)self accountIdentifier];
  v17 = 31 * ([v15 objectHash:accountIdentifier] - v14 + 32 * v14);

  v18 = v17 + [(CNContainer *)self isEnabled];
  v19 = MEMORY[0x1E6996730];
  permissions = [(CNContainer *)self permissions];
  v21 = [v19 objectHash:permissions] - v18 + 32 * v18;

  v22 = MEMORY[0x1E6996730];
  externalIdentifier = [(CNContainer *)self externalIdentifier];
  v24 = [v22 objectHash:externalIdentifier] - v21 + 32 * v21;

  v25 = MEMORY[0x1E6996730];
  externalModificationTag = [(CNContainer *)self externalModificationTag];
  v27 = [v25 objectHash:externalModificationTag] - v24 + 32 * v24;

  v28 = MEMORY[0x1E6996730];
  externalSyncTag = [(CNContainer *)self externalSyncTag];
  v30 = [v28 objectHash:externalSyncTag] - v27 + 32 * v27;

  v31 = MEMORY[0x1E6996730];
  externalSyncData = [(CNContainer *)self externalSyncData];
  v33 = [v31 objectHash:externalSyncData] - v30 + 32 * v30;

  v34 = MEMORY[0x1E6996730];
  constraintsPath = [(CNContainer *)self constraintsPath];
  v36 = [v34 objectHash:constraintsPath] - v33 + 32 * v33;

  v37 = MEMORY[0x1E6996730];
  meIdentifier = [(CNContainer *)self meIdentifier];
  v39 = [v37 objectHash:meIdentifier] - v36 + 32 * v36;

  v40 = 31 * ([(CNContainer *)self restrictions]- v39 + 32 * v39);
  v41 = v40 + [(CNContainer *)self isGuardianRestricted];
  v42 = MEMORY[0x1E6996730];
  lastSyncDate = [(CNContainer *)self lastSyncDate];
  v44 = [v42 objectHash:lastSyncDate] - v41 + 32 * v41;

  v45 = MEMORY[0x1E6996730];
  providerIdentifier = [(CNContainer *)self providerIdentifier];
  v47 = [v45 objectHash:providerIdentifier] - v44 + 32 * v44;

  v48 = MEMORY[0x1E6996730];
  providerMetadata = [(CNContainer *)self providerMetadata];
  v50 = [v48 objectHash:providerMetadata] - v47 + 32 * v47;

  return v50 + 0x76BB734BA8507DD1;
}

@end