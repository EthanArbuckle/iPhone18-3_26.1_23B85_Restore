@interface CNiOSABContactWithNamePredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABContactWithNamePredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v10 = *MEMORY[0x1E6996568];
  v11 = [(CNContactWithNamePredicate *)self name:book];
  LODWORD(v10) = (*(v10 + 16))(v10, v11);

  if (v10)
  {
    if (!error)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v12 = 0;
    return v12;
  }

  name = [(CNContactWithNamePredicate *)self name];
  v12 = ABAddressBookCopyPeopleWithName(book, name);

  if (v12)
  {
    return v12;
  }

  v14 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(0, 0, 0, v14);
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v8 = *MEMORY[0x1E6996568];
  v9 = [(CNContactWithNamePredicate *)self name:book];
  LODWORD(v8) = (*(v8 + 16))(v8, v9);

  if (v8)
  {
    CNSetError(error, 400, 0);
    v10 = 0;
  }

  else
  {
    if (ABCFTSIsEnabled())
    {
      WordTokenizer = ABAddressBookGetWordTokenizer();
      SearchCollator = ABAddressBookGetSearchCollator();
      v13 = MEMORY[0x1E698A130];
      name = [(CNContactWithNamePredicate *)self name];
      [v13 predicateForContactsMatchingText:name tokenizer:WordTokenizer collator:SearchCollator matchNameFieldsOnly:1];
    }

    else
    {
      v15 = MEMORY[0x1E698A130];
      name = [(CNContactWithNamePredicate *)self name];
      [v15 predicateForContactsMatchingName:name addressBook:book];
    }
    v10 = ;
  }

  return v10;
}

@end