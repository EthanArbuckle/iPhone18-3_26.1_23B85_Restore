@interface CNiOSABSmartDialerStringContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNiOSABSmartDialerStringContactPredicate)initWithCoder:(id)a3;
- (CNiOSABSmartDialerStringContactPredicate)initWithString:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
- (id)cn_fetchPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 progressiveResults:(id)a5 completion:(id)a6 environment:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABSmartDialerStringContactPredicate

- (CNiOSABSmartDialerStringContactPredicate)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNiOSABSmartDialerStringContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    smartDialerString = v5->_smartDialerString;
    v5->_smartDialerString = v6;
  }

  return v5;
}

- (CNiOSABSmartDialerStringContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABSmartDialerStringContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_smartDialerString"];
    v7 = [v6 copy];
    smartDialerString = v5->_smartDialerString;
    v5->_smartDialerString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABSmartDialerStringContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_smartDialerString forKey:{@"_smartDialerString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABSmartDialerStringContactPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
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
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = *MEMORY[0x1E6996568];
  v15 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LODWORD(v14) = (*(v14 + 16))(v14, v15);

  if (v14)
  {
    v16 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (a7)
    {
      v16 = v16;
      *a7 = v16;
    }

    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x1E698A128];
    v19 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v20 = [v18 personPredicateWithSmartDialerStringLike:v19 addressBook:a3];

    if (v20)
    {
      v23[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v21 = 0;
    }

    v17 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v21, [v12 sortOrder], a5, objc_msgSend(v12, "options"), a3, v13, a7);
    if (v20)
    {
    }
  }

  return v17;
}

- (id)cn_fetchPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 progressiveResults:(id)a5 completion:(id)a6 environment:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = *MEMORY[0x1E6996568];
  v17 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LOBYTE(v16) = (*(v16 + 16))(v16, v17);

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v19 = MEMORY[0x1E698A128];
    v20 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v21 = [v19 personPredicateWithSmartDialerStringLike:v20 addressBook:a3];

    if (v21)
    {
      v24[0] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }

    else
    {
      v22 = 0;
    }

    v18 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:", v22, [v12 sortOrder], objc_msgSend(v12, "options"), a3, v13, v14, v15);
    if (v21)
    {
    }
  }

  return v18;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v7 = *MEMORY[0x1E6996568];
  v8 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LODWORD(v7) = (*(v7 + 16))(v7, v8);

  if (v7)
  {
    CNSetError(a5, 400, 0);
  }

  else if (ABCFTSIsEnabled())
  {
    WordTokenizer = ABAddressBookGetWordTokenizer();
    SearchCollator = ABAddressBookGetSearchCollator();
    v11 = MEMORY[0x1E698A130];
    v12 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v13 = [v11 predicateForContactsMatchingSmartDialerString:v12 tokenizer:WordTokenizer collator:SearchCollator];

    goto LABEL_6;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingSmartDialerString:]"];
  v5 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  v6 = [v3 appendName:@"smartDialerString" object:v5];

  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNiOSABSmartDialerStringContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __52__CNiOSABSmartDialerStringContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) smartDialerString];
  v4 = [*(a1 + 40) smartDialerString];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__CNiOSABSmartDialerStringContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __48__CNiOSABSmartDialerStringContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) smartDialerString];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end