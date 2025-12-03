@interface CNiOSABInstantMessageAddressContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNiOSABInstantMessageAddressContactPredicate)initWithCoder:(id)coder;
- (CNiOSABInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)address;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABInstantMessageAddressContactPredicate

- (CNiOSABInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = CNiOSABInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    imAddress = v5->_imAddress;
    v5->_imAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (CNiOSABInstantMessageAddressContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imAddress"];
    v7 = [v6 copy];
    imAddress = v5->_imAddress;
    v5->_imAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABInstantMessageAddressContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imAddress forKey:{@"_imAddress", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v13 = 0;
  v8 = [(CNiOSABInstantMessageAddressContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    *error = v9;
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  v30[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentCopy = environment;
  if (infos)
  {
    *infos = 0;
  }

  v14 = +[CN instantMessagAddressesDescription];
  imAddress = [(CNiOSABInstantMessageAddressContactPredicate *)self imAddress];
  v16 = [objc_msgSend(v14 ABMultiValueValueFromCNLabeledValueValue:{imAddress), "mutableCopy"}];

  [v16 removeObjectForKey:*MEMORY[0x1E698A328]];
  v17 = MEMORY[0x1E698A128];
  sortOrder = [requestCopy sortOrder];
  v19 = [v17 personPredicateWithValue:v16 comparison:sortOrder forProperty:*MEMORY[0x1E698A3C8]];
  v20 = v19;
  if (v19)
  {
    v30[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v22 = environmentCopy;
    bookCopy = book;
    sortOrder2 = [requestCopy sortOrder];
    options = [requestCopy options];
    v26 = bookCopy;
    environmentCopy = v22;
    v27 = [CNiOSFetchExecution contactsMatchingPredicates:v21 sortOrdering:sortOrder2 matchInfos:infos options:options addressBook:v26 environment:v22 error:nserror];
  }

  else
  {
    v28 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (nserror)
    {
      v28 = v28;
      *nserror = v28;
    }

    v27 = 0;
  }

  return v27;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingInstantMessageAddress:]"];
  imAddress = [(CNiOSABInstantMessageAddressContactPredicate *)self imAddress];
  v6 = [v3 appendName:@"im" object:imAddress];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CNiOSABInstantMessageAddressContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __56__CNiOSABInstantMessageAddressContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) imAddress];
  v4 = [*(a1 + 40) imAddress];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CNiOSABInstantMessageAddressContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __52__CNiOSABInstantMessageAddressContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) imAddress];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end