@interface CNiOSABContactWithNamePredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABContactWithNamePredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v10 = *MEMORY[0x1E6996568];
  v11 = [(CNContactWithNamePredicate *)self name:a3];
  LODWORD(v10) = (*(v10 + 16))(v10, v11);

  if (v10)
  {
    if (!a7)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v12 = 0;
    return v12;
  }

  v13 = [(CNContactWithNamePredicate *)self name];
  v12 = ABAddressBookCopyPeopleWithName(a3, v13);

  if (v12)
  {
    return v12;
  }

  v14 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(0, 0, 0, v14);
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x1E6996568];
  v9 = [(CNContactWithNamePredicate *)self name:a3];
  LODWORD(v8) = (*(v8 + 16))(v8, v9);

  if (v8)
  {
    CNSetError(a5, 400, 0);
    v10 = 0;
  }

  else
  {
    if (ABCFTSIsEnabled())
    {
      WordTokenizer = ABAddressBookGetWordTokenizer();
      SearchCollator = ABAddressBookGetSearchCollator();
      v13 = MEMORY[0x1E698A130];
      v14 = [(CNContactWithNamePredicate *)self name];
      [v13 predicateForContactsMatchingText:v14 tokenizer:WordTokenizer collator:SearchCollator matchNameFieldsOnly:1];
    }

    else
    {
      v15 = MEMORY[0x1E698A130];
      v14 = [(CNContactWithNamePredicate *)self name];
      [v15 predicateForContactsMatchingName:v14 addressBook:a3];
    }
    v10 = ;
  }

  return v10;
}

@end