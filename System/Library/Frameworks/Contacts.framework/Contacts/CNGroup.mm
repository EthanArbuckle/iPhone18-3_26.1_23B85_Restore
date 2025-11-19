@interface CNGroup
+ (NSPredicate)predicateForGroupsInContainerWithIdentifier:(NSString *)containerIdentifier;
+ (NSPredicate)predicateForGroupsWithIdentifiers:(NSArray *)identifiers;
+ (NSPredicate)predicateForSubgroupsInGroupWithIdentifier:(NSString *)parentGroupIdentifier;
+ (id)identifierProvider;
+ (id)makeIdentifierString;
+ (id)predicateForGroupsWithMemberContact:(id)a3 includeAllParentGroups:(BOOL)a4;
+ (id)predicateForGroupsWithMemberGroup:(id)a3 includeAllParentGroups:(BOOL)a4;
+ (id)predicateForGroupsWithNameMatching:(id)a3;
+ (id)predicateForiOSLegacyIdentifier:(int)a3;
- (BOOL)isEqual:(id)a3;
- (CNGroup)initWithCoder:(id)a3;
- (CNGroup)initWithGroup:(id)a3;
- (CNGroup)initWithIdentifier:(id)a3 name:(id)a4 creationDate:(id)a5 modificationDate:(id)a6 iOSLegacyIdentifier:(int)a7;
- (CNGroup)initWithName:(id)a3;
- (CNGroup)snapshot;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNGroup

+ (id)identifierProvider
{
  if (identifierProvider_cn_once_token_0_0 != -1)
  {
    +[CNGroup identifierProvider];
  }

  v3 = identifierProvider_cn_once_object_0_0;

  return v3;
}

uint64_t __29__CNGroup_identifierProvider__block_invoke()
{
  v0 = [[CNUuidIdentifierProvider alloc] initWithSuffix:@"ABGroup"];
  v1 = identifierProvider_cn_once_object_0_0;
  identifierProvider_cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)makeIdentifierString
{
  v2 = [a1 identifierProvider];
  v3 = [v2 makeIdentifier];

  return v3;
}

- (CNGroup)initWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() makeIdentifier];
  v6 = [(CNGroup *)self initWithIdentifier:v5 name:v4];

  return v6;
}

- (CNGroup)initWithIdentifier:(id)a3 name:(id)a4 creationDate:(id)a5 modificationDate:(id)a6 iOSLegacyIdentifier:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29.receiver = self;
  v29.super_class = CNGroup;
  v16 = [(CNGroup *)&v29 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = *MEMORY[0x1E69964C0];
    v20 = [v13 copy];
    v21 = (*(v19 + 16))(v19, v20);
    name = v16->_name;
    v16->_name = v21;

    v23 = [v14 copy];
    creationDate = v16->_creationDate;
    v16->_creationDate = v23;

    v25 = [v15 copy];
    modificationDate = v16->_modificationDate;
    v16->_modificationDate = v25;

    v16->_iOSLegacyIdentifier = a7;
    v27 = v16;
  }

  return v16;
}

- (CNGroup)initWithGroup:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = CNGroup;
  v5 = [(CNGroup *)&v37 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = *MEMORY[0x1E69964C0];
    v10 = [v4 name];
    v11 = [v10 copy];
    v12 = (*(v9 + 16))(v9, v11);
    name = v5->_name;
    v5->_name = v12;

    v5->_iOSLegacyIdentifier = [v4 iOSLegacyIdentifier];
    v14 = [v4 creationDate];
    v15 = [v14 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = [v4 modificationDate];
    v18 = [v17 copy];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v18;

    v20 = [v4 externalIdentifier];
    v21 = [v20 copy];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v21;

    v23 = [v4 externalRepresentation];
    v24 = [v23 copy];
    externalRepresentation = v5->_externalRepresentation;
    v5->_externalRepresentation = v24;

    v26 = [v4 externalModificationTag];
    v27 = [v26 copy];
    externalModificationTag = v5->_externalModificationTag;
    v5->_externalModificationTag = v27;

    v29 = [v4 externalUUID];
    v30 = [v29 copy];
    externalUUID = v5->_externalUUID;
    v5->_externalUUID = v30;

    v32 = [v4 snapshot];
    v33 = [v32 copy];
    snapshot = v5->_snapshot;
    v5->_snapshot = v33;

    v35 = v5;
  }

  return v5;
}

- (CNGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = CNGroup;
  v5 = [(CNGroup *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    if (!v5->_name)
    {
      v5->_name = &stru_1F094DAB0;
    }

    v5->_iOSLegacyIdentifier = [v4 decodeInt32ForKey:@"iOSLegacyIdentifier"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v13 = [v12 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    v16 = [v15 copy];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalRepresentation"];
    v21 = [v20 copy];
    externalRepresentation = v5->_externalRepresentation;
    v5->_externalRepresentation = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
    v24 = [v23 copy];
    externalModificationTag = v5->_externalModificationTag;
    v5->_externalModificationTag = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalUUID"];
    v27 = [v26 copy];
    externalUUID = v5->_externalUUID;
    v5->_externalUUID = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"snapshot"];
    v33 = [v32 copy];
    snapshot = v5->_snapshot;
    v5->_snapshot = v33;

    v35 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [v5 encodeObject:self->_externalIdentifier forKey:@"externalIdentifier"];
  [v5 encodeObject:self->_externalRepresentation forKey:@"externalRepresentation"];
  [v5 encodeObject:self->_externalModificationTag forKey:@"externalModificationTag"];
  [v5 encodeObject:self->_externalUUID forKey:@"externalUUID"];
  [v5 encodeObject:self->_snapshot forKey:@"snapshot"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CNGroup *)[CNMutableGroup alloc] initWithGroup:self];
  snapshot = self->_snapshot;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (snapshot == v6)
  {
    [(CNMutableGroup *)v4 setSnapshot:self];
  }

  return v4;
}

- (CNGroup)snapshot
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

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_name withName:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_iOSLegacyIdentifier];
  v7 = [v3 appendObject:v6 withName:@"iOSLegacyIdentifier"];

  v8 = [v3 appendObject:self->_creationDate withName:@"creationDate"];
  v9 = [v3 appendObject:self->_modificationDate withName:@"modificationDate"];
  v10 = [v3 appendObject:self->_externalIdentifier withName:@"externalURI"];
  v11 = [v3 appendObject:self->_externalRepresentation withName:@"externalRepresentation"];
  v12 = [v3 appendObject:self->_externalModificationTag withName:@"externalModificationTag"];
  v13 = [v3 appendObject:self->_externalUUID withName:@"externalUUID"];
  v14 = [v3 build];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v23 = MEMORY[0x1E69966F0];
  v22 = objc_opt_class();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __19__CNGroup_isEqual___block_invoke;
  v40[3] = &unk_1E7412228;
  v40[4] = self;
  v41 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __19__CNGroup_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v5 = v41;
  v39 = v5;
  v6 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __19__CNGroup_isEqual___block_invoke_3;
  v36[3] = &unk_1E7412228;
  v36[4] = self;
  v7 = v5;
  v37 = v7;
  v8 = _Block_copy(v36);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __19__CNGroup_isEqual___block_invoke_4;
  v34[3] = &unk_1E7412228;
  v34[4] = self;
  v9 = v7;
  v35 = v9;
  v10 = _Block_copy(v34);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __19__CNGroup_isEqual___block_invoke_5;
  v32[3] = &unk_1E7412228;
  v32[4] = self;
  v11 = v9;
  v33 = v11;
  v12 = _Block_copy(v32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __19__CNGroup_isEqual___block_invoke_6;
  v30[3] = &unk_1E7412228;
  v30[4] = self;
  v13 = v11;
  v31 = v13;
  v14 = _Block_copy(v30);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __19__CNGroup_isEqual___block_invoke_7;
  v28[3] = &unk_1E7412228;
  v28[4] = self;
  v15 = v13;
  v29 = v15;
  v16 = _Block_copy(v28);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __19__CNGroup_isEqual___block_invoke_8;
  v26[3] = &unk_1E7412228;
  v26[4] = self;
  v17 = v15;
  v27 = v17;
  v18 = _Block_copy(v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __19__CNGroup_isEqual___block_invoke_9;
  v24[3] = &unk_1E7412228;
  v24[4] = self;
  v25 = v17;
  v19 = v17;
  v20 = _Block_copy(v24);
  LOBYTE(self) = [v23 isObject:v19 kindOfClass:v22 andEqualToObject:self withBlocks:{v40, v6, v8, v10, v12, v14, v16, v18, v20, 0}];

  return self;
}

uint64_t __19__CNGroup_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 40) name];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) creationDate];
  v4 = [*(a1 + 40) creationDate];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) modificationDate];
  v4 = [*(a1 + 40) modificationDate];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalIdentifier];
  v4 = [*(a1 + 40) externalIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalRepresentation];
  v4 = [*(a1 + 40) externalRepresentation];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalModificationTag];
  v4 = [*(a1 + 40) externalModificationTag];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __19__CNGroup_isEqual___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalUUID];
  v4 = [*(a1 + 40) externalUUID];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __15__CNGroup_hash__block_invoke;
  v22[3] = &unk_1E7412250;
  v22[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __15__CNGroup_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __15__CNGroup_hash__block_invoke_3;
  v20[3] = &unk_1E7412250;
  v20[4] = self;
  v5 = _Block_copy(v20);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __15__CNGroup_hash__block_invoke_4;
  v19[3] = &unk_1E7412250;
  v19[4] = self;
  v6 = _Block_copy(v19);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __15__CNGroup_hash__block_invoke_5;
  v18[3] = &unk_1E7412250;
  v18[4] = self;
  v7 = _Block_copy(v18);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __15__CNGroup_hash__block_invoke_6;
  v17[3] = &unk_1E7412250;
  v17[4] = self;
  v8 = _Block_copy(v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __15__CNGroup_hash__block_invoke_7;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  v9 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __15__CNGroup_hash__block_invoke_8;
  v15[3] = &unk_1E7412250;
  v15[4] = self;
  v10 = _Block_copy(v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __15__CNGroup_hash__block_invoke_9;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v11 = _Block_copy(v14);
  v12 = [v3 hashWithBlocks:{v22, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  return v12;
}

uint64_t __15__CNGroup_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) iOSLegacyIdentifier];

  return [v1 integerHash:v2];
}

uint64_t __15__CNGroup_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) creationDate];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) modificationDate];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalRepresentation];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalModificationTag];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __15__CNGroup_hash__block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalUUID];
  v3 = [v1 objectHash:v2];

  return v3;
}

+ (NSPredicate)predicateForGroupsWithIdentifiers:(NSArray *)identifiers
{
  v3 = identifiers;
  v4 = [[CNiOSABGroupIdentifiersPredicate alloc] initWithIdentifiers:v3];

  return v4;
}

+ (NSPredicate)predicateForSubgroupsInGroupWithIdentifier:(NSString *)parentGroupIdentifier
{
  v3 = parentGroupIdentifier;
  v4 = [[CNiOSABGroupsInGroupPredicate alloc] initWithParentGroupIdentifier:v3];

  return v4;
}

+ (NSPredicate)predicateForGroupsInContainerWithIdentifier:(NSString *)containerIdentifier
{
  v3 = containerIdentifier;
  v4 = [[CNiOSABGroupsInContainerPredicate alloc] initWithContainerIdentifier:v3];

  return v4;
}

+ (id)predicateForGroupsWithMemberContact:(id)a3 includeAllParentGroups:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNiOSABGroupsWithMembersPredicate alloc] initWithContact:v5 includeAllParentGroups:v4];

  return v6;
}

+ (id)predicateForGroupsWithMemberGroup:(id)a3 includeAllParentGroups:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNiOSABGroupsWithMembersPredicate alloc] initWithGroup:v5 includeAllParentGroups:v4];

  return v6;
}

+ (id)predicateForGroupsWithNameMatching:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABGroupNameMatchingPredicate alloc] initWithName:v3];

  return v4;
}

+ (id)predicateForiOSLegacyIdentifier:(int)a3
{
  v3 = [[CNiOSABGroupiOSLegacyIdentifierPredicate alloc] initWithiOSLegacyIdentifier:*&a3];

  return v3;
}

@end