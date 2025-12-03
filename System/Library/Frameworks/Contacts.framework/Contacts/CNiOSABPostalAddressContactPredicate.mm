@interface CNiOSABPostalAddressContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNiOSABPostalAddressContactPredicate)initWithCoder:(id)coder;
- (CNiOSABPostalAddressContactPredicate)initWithPostalAddress:(id)address;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABPostalAddressContactPredicate

- (CNiOSABPostalAddressContactPredicate)initWithPostalAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = CNiOSABPostalAddressContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (CNiOSABPostalAddressContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABPostalAddressContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postalAddress"];
    v7 = [v6 copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABPostalAddressContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_postalAddress forKey:{@"_postalAddress", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABPostalAddressContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    code = [v9 code];
    userInfo = [v10 userInfo];
    *error = [CNErrorFactory errorWithCode:code userInfo:userInfo];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  v24[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  requestCopy = request;
  v12 = +[CN postalAddressesDescription];
  postalAddress = [(CNiOSABPostalAddressContactPredicate *)self postalAddress];
  v14 = [v12 ABMultiValueValueFromCNLabeledValueValue:postalAddress];

  v15 = [MEMORY[0x1E698A138] personPredicateWithValue:v14 comparison:3 forProperty:*MEMORY[0x1E698A260] addressBook:book];
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

  sortOrder = [requestCopy sortOrder];
  options = [requestCopy options];

  v20 = [CNiOSFetchExecution contactsMatchingPredicates:v17 sortOrdering:sortOrder matchInfos:infos options:options addressBook:book environment:environmentCopy error:nserror];

  if (v16)
  {
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CNiOSABPostalAddressContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
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