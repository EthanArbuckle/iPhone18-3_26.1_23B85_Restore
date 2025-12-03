@interface CNiOSABOrganizationNameContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNiOSABOrganizationNameContactPredicate)initWithCoder:(id)coder;
- (CNiOSABOrganizationNameContactPredicate)initWithOrganizationName:(id)name;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABOrganizationNameContactPredicate

- (CNiOSABOrganizationNameContactPredicate)initWithOrganizationName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = CNiOSABOrganizationNameContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    organizationName = v5->_organizationName;
    v5->_organizationName = v6;

    v8 = v5;
  }

  return v5;
}

- (CNiOSABOrganizationNameContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABOrganizationNameContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_organizationName"];
    v7 = [v6 copy];
    organizationName = v5->_organizationName;
    v5->_organizationName = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABOrganizationNameContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_organizationName forKey:{@"_organizationName", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactWithOrganizationName:]"];
  organizationName = [(CNiOSABOrganizationNameContactPredicate *)self organizationName];
  v6 = [v3 appendName:@"organizationName" object:organizationName];

  build = [v3 build];

  return build;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABOrganizationNameContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
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
  v22[1] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E698A138];
  environmentCopy = environment;
  requestCopy = request;
  organizationName = [(CNiOSABOrganizationNameContactPredicate *)self organizationName];
  v16 = [v12 personPredicateWithValue:organizationName comparison:3 forProperty:*MEMORY[0x1E698A4E0] addressBook:book];

  if (v16)
  {
    v22[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
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

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v5 = MEMORY[0x1E698A130];
  v6 = [(CNiOSABOrganizationNameContactPredicate *)self organizationName:book];
  v7 = [v5 predicateForContactsMatchingOrganizationName:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CNiOSABOrganizationNameContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __51__CNiOSABOrganizationNameContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) organizationName];
  v4 = [*(a1 + 40) organizationName];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CNiOSABOrganizationNameContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __47__CNiOSABOrganizationNameContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) organizationName];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end