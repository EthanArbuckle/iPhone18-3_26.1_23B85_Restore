@interface CNiOSABSocialProfileContactPredicate
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
@end

@implementation CNiOSABSocialProfileContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABSocialProfileContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
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
  v33[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentCopy = environment;
  if (infos)
  {
    *infos = 0;
  }

  v13 = +[CN socialProfilesDescription];
  socialProfile = [(CNSocialProfileContactPredicate *)self socialProfile];
  v15 = [objc_msgSend(v13 ABMultiValueValueFromCNLabeledValueValue:{socialProfile), "mutableCopy"}];

  v16 = *MEMORY[0x1E698A328];
  v17 = [v15 objectForKey:*MEMORY[0x1E698A328]];
  if ([v17 count])
  {
    v18 = MEMORY[0x1E696AEC0];
    firstObject = [v17 firstObject];
    v20 = [v18 stringWithFormat:@"%%%@%%", firstObject];

    [v15 setObject:v20 forKey:v16];
  }

  else if (v17)
  {
    [v15 removeObjectForKey:v16];
  }

  v21 = [MEMORY[0x1E698A128] personPredicateWithValue:v15 comparison:0 forProperty:*MEMORY[0x1E698A5B0]];
  v22 = v21;
  if (v21)
  {
    v33[0] = v21;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    infosCopy = infos;
    v25 = v13;
    v26 = environmentCopy;
    sortOrder = [requestCopy sortOrder];
    options = [requestCopy options];
    v29 = sortOrder;
    environmentCopy = v26;
    v13 = v25;
    v30 = [CNiOSFetchExecution contactsMatchingPredicates:v23 sortOrdering:v29 matchInfos:infosCopy options:options addressBook:book environment:environmentCopy error:nserror];
  }

  else
  {
    CNSetError(nserror, 400, 0);
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingSocialProfile:]"];
  socialProfile = [(CNSocialProfileContactPredicate *)self socialProfile];
  v6 = [v3 appendName:@"socialProfile" object:socialProfile];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CNiOSABSocialProfileContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __48__CNiOSABSocialProfileContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) socialProfile];
  v4 = [*(a1 + 40) socialProfile];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

@end