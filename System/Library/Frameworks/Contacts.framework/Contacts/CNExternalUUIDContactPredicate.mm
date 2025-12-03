@interface CNExternalUUIDContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNExternalUUIDContactPredicate)initWithCoder:(id)coder;
- (CNExternalUUIDContactPredicate)initWithExternalUUIDs:(id)ds;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNExternalUUIDContactPredicate

- (CNExternalUUIDContactPredicate)initWithExternalUUIDs:(id)ds
{
  dsCopy = ds;
  v10.receiver = self;
  v10.super_class = CNExternalUUIDContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    externalUUIDs = v5->_externalUUIDs;
    v5->_externalUUIDs = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingExternalUUIDs:]"];
  externalUUIDs = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
  v6 = [v3 appendName:@"externalUUIDs" object:externalUUIDs];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNExternalUUIDContactPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v16 = equalCopy;
  selfCopy = self;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNExternalUUIDContactPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy2 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy2}];

  return self;
}

BOOL __42__CNExternalUUIDContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) externalUUIDs];
  v3 = [v2 count];
  v4 = [*(a1 + 40) externalUUIDs];
  v5 = v3 == [v4 count];

  return v5;
}

uint64_t __42__CNExternalUUIDContactPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v2 = [*(a1 + 32) externalUUIDs];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CNExternalUUIDContactPredicate_isEqual___block_invoke_3;
  v5[3] = &unk_1E7412E60;
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __42__CNExternalUUIDContactPredicate_isEqual___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 externalUUIDs];
  v10 = [v9 objectAtIndexedSubscript:a3];

  LOBYTE(a3) = [MEMORY[0x1E69966F0] isString:v8 localizedCaseInsensitiveEqualToOther:v10];
  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CNExternalUUIDContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __38__CNExternalUUIDContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalUUIDs];
  v3 = [v1 arrayHash:v2];

  return v3;
}

- (CNExternalUUIDContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNExternalUUIDContactPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_externalUUIDs"];
    v10 = [v9 copy];
    externalUUIDs = v5->_externalUUIDs;
    v5->_externalUUIDs = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNExternalUUIDContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_externalUUIDs forKey:{@"_externalUUIDs", v5.receiver, v5.super_class}];
}

@end