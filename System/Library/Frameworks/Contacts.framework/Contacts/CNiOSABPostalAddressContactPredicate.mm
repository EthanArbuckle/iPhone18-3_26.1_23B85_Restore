@interface CNiOSABPostalAddressContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNiOSABPostalAddressContactPredicate)initWithCoder:(id)a3;
- (CNiOSABPostalAddressContactPredicate)initWithPostalAddress:(id)a3;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABPostalAddressContactPredicate

- (CNiOSABPostalAddressContactPredicate)initWithPostalAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNiOSABPostalAddressContactPredicate;
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

- (CNiOSABPostalAddressContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABPostalAddressContactPredicate;
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
  v5.super_class = CNiOSABPostalAddressContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_postalAddress forKey:{@"_postalAddress", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABPostalAddressContactPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (a7)
  {
    v12 = [v9 code];
    v13 = [v10 userInfo];
    *a7 = [CNErrorFactory errorWithCode:v12 userInfo:v13];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a4;
  v12 = +[CN postalAddressesDescription];
  v13 = [(CNiOSABPostalAddressContactPredicate *)self postalAddress];
  v14 = [v12 ABMultiValueValueFromCNLabeledValueValue:v13];

  v15 = [MEMORY[0x1E698A138] personPredicateWithValue:v14 comparison:3 forProperty:*MEMORY[0x1E698A260] addressBook:a3];
  v16 = v15;
  if (v15)
  {
    v24[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v11 sortOrder];
  v19 = [v11 options];

  v20 = [CNiOSFetchExecution contactsMatchingPredicates:v17 sortOrdering:v18 matchInfos:a5 options:v19 addressBook:a3 environment:v10 error:a7];

  if (v16)
  {
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CNiOSABPostalAddressContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __48__CNiOSABPostalAddressContactPredicate_isEqual___block_invoke(uint64_t a1)
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
  v3[2] = __44__CNiOSABPostalAddressContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __44__CNiOSABPostalAddressContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) postalAddress];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end