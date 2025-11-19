@interface CNPostalAddressContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNPostalAddressContactPredicate)initWithCoder:(id)a3;
- (CNPostalAddressContactPredicate)initWithPostalAddress:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNPostalAddressContactPredicate

- (CNPostalAddressContactPredicate)initWithPostalAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNPostalAddressContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingPostalAddress:]"];
  v5 = [(CNPostalAddressContactPredicate *)self postalAddress];
  v6 = [v5 dictionaryRepresentation];
  v7 = [v3 appendName:@"postalAddress" object:v6];

  v8 = [v3 build];

  return v8;
}

- (CNPostalAddressContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNPostalAddressContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_postalAddress"];
    v7 = [v6 copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNPostalAddressContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_postalAddress forKey:{@"_postalAddress", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNPostalAddressContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __43__CNPostalAddressContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) postalAddress];
  v4 = [*(a1 + 40) postalAddress];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CNPostalAddressContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __39__CNPostalAddressContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) postalAddress];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end