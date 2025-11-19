@interface CNiOSABSocialProfileContactPredicate
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
@end

@implementation CNiOSABSocialProfileContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABSocialProfileContactPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
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
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    *a5 = 0;
  }

  v13 = +[CN socialProfilesDescription];
  v14 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v15 = [objc_msgSend(v13 ABMultiValueValueFromCNLabeledValueValue:{v14), "mutableCopy"}];

  v16 = *MEMORY[0x1E698A328];
  v17 = [v15 objectForKey:*MEMORY[0x1E698A328]];
  if ([v17 count])
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v17 firstObject];
    v20 = [v18 stringWithFormat:@"%%%@%%", v19];

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
    v24 = a5;
    v25 = v13;
    v26 = v12;
    v27 = [v11 sortOrder];
    v28 = [v11 options];
    v29 = v27;
    v12 = v26;
    v13 = v25;
    v30 = [CNiOSFetchExecution contactsMatchingPredicates:v23 sortOrdering:v29 matchInfos:v24 options:v28 addressBook:a3 environment:v12 error:a7];
  }

  else
  {
    CNSetError(a7, 400, 0);
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingSocialProfile:]"];
  v5 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v6 = [v3 appendName:@"socialProfile" object:v5];

  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CNiOSABSocialProfileContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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