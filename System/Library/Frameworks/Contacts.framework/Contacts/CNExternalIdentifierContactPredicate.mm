@interface CNExternalIdentifierContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNExternalIdentifierContactPredicate)initWithCoder:(id)a3;
- (CNExternalIdentifierContactPredicate)initWithExternalIdentifiers:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNExternalIdentifierContactPredicate

- (CNExternalIdentifierContactPredicate)initWithExternalIdentifiers:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNExternalIdentifierContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    externalIdentifiers = v5->_externalIdentifiers;
    v5->_externalIdentifiers = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNExternalIdentifierContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_externalIdentifiers forKey:{@"_externalIdentifiers", v5.receiver, v5.super_class}];
}

- (CNExternalIdentifierContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNExternalIdentifierContactPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_externalIdentifiers"];
    v10 = [v9 copy];
    externalIdentifiers = v5->_externalIdentifiers;
    v5->_externalIdentifiers = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v16 = v4;
  v17 = self;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

BOOL __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) externalIdentifiers];
  v3 = [v2 count];
  v4 = [*(a1 + 40) externalIdentifiers];
  v5 = v3 == [v4 count];

  return v5;
}

uint64_t __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v2 = [*(a1 + 32) externalIdentifiers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke_3;
  v5[3] = &unk_1E7412E60;
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __48__CNExternalIdentifierContactPredicate_isEqual___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 externalIdentifiers];
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
  v3[2] = __44__CNExternalIdentifierContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __44__CNExternalIdentifierContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalIdentifiers];
  v3 = [v1 arrayHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsWithExternalIdentifiers:]"];
  v5 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
  v6 = [v3 appendName:@"externalIdentifiers" object:v5];

  v7 = [v3 build];

  return v7;
}

@end