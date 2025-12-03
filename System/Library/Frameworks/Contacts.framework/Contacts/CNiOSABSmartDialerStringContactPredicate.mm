@interface CNiOSABSmartDialerStringContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNiOSABSmartDialerStringContactPredicate)initWithCoder:(id)coder;
- (CNiOSABSmartDialerStringContactPredicate)initWithString:(id)string;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (id)cn_fetchPeopleInAddressBook:(void *)book fetchRequest:(id)request progressiveResults:(id)results completion:(id)completion environment:(id)environment;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABSmartDialerStringContactPredicate

- (CNiOSABSmartDialerStringContactPredicate)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CNiOSABSmartDialerStringContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    smartDialerString = v5->_smartDialerString;
    v5->_smartDialerString = v6;
  }

  return v5;
}

- (CNiOSABSmartDialerStringContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABSmartDialerStringContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smartDialerString"];
    v7 = [v6 copy];
    smartDialerString = v5->_smartDialerString;
    v5->_smartDialerString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABSmartDialerStringContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_smartDialerString forKey:{@"_smartDialerString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABSmartDialerStringContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
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
  v23[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentCopy = environment;
  v14 = *MEMORY[0x1E6996568];
  smartDialerString = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LODWORD(v14) = (*(v14 + 16))(v14, smartDialerString);

  if (v14)
  {
    v16 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (nserror)
    {
      v16 = v16;
      *nserror = v16;
    }

    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x1E698A128];
    smartDialerString2 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v20 = [v18 personPredicateWithSmartDialerStringLike:smartDialerString2 addressBook:book];

    if (v20)
    {
      v23[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v21 = 0;
    }

    v17 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v21, [requestCopy sortOrder], infos, objc_msgSend(requestCopy, "options"), book, environmentCopy, nserror);
    if (v20)
    {
    }
  }

  return v17;
}

- (id)cn_fetchPeopleInAddressBook:(void *)book fetchRequest:(id)request progressiveResults:(id)results completion:(id)completion environment:(id)environment
{
  v24[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
  environmentCopy = environment;
  v16 = *MEMORY[0x1E6996568];
  smartDialerString = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LOBYTE(v16) = (*(v16 + 16))(v16, smartDialerString);

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v19 = MEMORY[0x1E698A128];
    smartDialerString2 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v21 = [v19 personPredicateWithSmartDialerStringLike:smartDialerString2 addressBook:book];

    if (v21)
    {
      v24[0] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }

    else
    {
      v22 = 0;
    }

    v18 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:options:addressBook:progressiveResults:completion:environment:", v22, [requestCopy sortOrder], objc_msgSend(requestCopy, "options"), book, resultsCopy, completionCopy, environmentCopy);
    if (v21)
    {
    }
  }

  return v18;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v7 = *MEMORY[0x1E6996568];
  smartDialerString = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  LODWORD(v7) = (*(v7 + 16))(v7, smartDialerString);

  if (v7)
  {
    CNSetError(error, 400, 0);
  }

  else if (ABCFTSIsEnabled())
  {
    WordTokenizer = ABAddressBookGetWordTokenizer();
    SearchCollator = ABAddressBookGetSearchCollator();
    v11 = MEMORY[0x1E698A130];
    smartDialerString2 = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
    v13 = [v11 predicateForContactsMatchingSmartDialerString:smartDialerString2 tokenizer:WordTokenizer collator:SearchCollator];

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
  smartDialerString = [(CNiOSABSmartDialerStringContactPredicate *)self smartDialerString];
  v6 = [v3 appendName:@"smartDialerString" object:smartDialerString];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNiOSABSmartDialerStringContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
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