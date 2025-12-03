@interface CNiOSABHandleStringsContactPredicate
+ (id)peopleForPredicate:(id)predicate sortOrder:(unsigned int)order addressBook:(void *)book;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (id)handlesPredicateWithMap:(id)map;
@end

@implementation CNiOSABHandleStringsContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
  v13 = [handleStrings count];

  if (v13)
  {
    if (infos)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    }

    else
    {
      dictionary = 0;
      v15 = 0;
    }

    v17 = [(CNiOSABHandleStringsContactPredicate *)self handlesPredicateWithMap:v15];
    v16 = [objc_opt_class() peopleForPredicate:v17 sortOrder:objc_msgSend(requestCopy addressBook:{"sortOrder"), book}];
    populateMatchInfoFromMap_block_invoke(v16, dictionary, v15, v16);
    if (infos)
    {
      v18 = dictionary;
      *infos = dictionary;
    }
  }

  else
  {
    if (error)
    {
      *error = [CNErrorFactory errorWithCode:400 userInfo:0];
    }

    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)handlesPredicateWithMap:(id)map
{
  v4 = MEMORY[0x1E6996728];
  mapCopy = map;
  handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
  v7 = [v4 classificationOfHandleStrings:handleStrings];

  emailAddresses = [v7 emailAddresses];
  phoneNumbers = [v7 phoneNumbers];
  unknown = [v7 unknown];
  [unknown _cn_each:&__block_literal_global_6_2];

  v11 = MEMORY[0x1E698A130];
  containerIdentifiers = [(CNHandleStringsContactPredicate *)self containerIdentifiers];
  v13 = [v11 predicateForContactsMatchingPhoneNumbers:phoneNumbers emailAddresses:emailAddresses containerIdentifiers:containerIdentifiers map:mapCopy];

  return v13;
}

+ (id)peopleForPredicate:(id)predicate sortOrder:(unsigned int)order addressBook:(void *)book
{
  if (predicate)
  {
    v5 = ABAddressBookCopyAllPeopleForBufferPredicate();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v6 = [(CNHandleStringsContactPredicate *)self handleStrings:book];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    v9 = [(CNiOSABHandleStringsContactPredicate *)self handlesPredicateWithMap:v8];
    v10 = v9;
    if (v9)
    {
      predicateForNoContacts = v9;
    }

    else
    {
      predicateForNoContacts = [MEMORY[0x1E698A130] predicateForNoContacts];
    }

    predicateForNoContacts2 = predicateForNoContacts;
  }

  else
  {
    predicateForNoContacts2 = [MEMORY[0x1E698A130] predicateForNoContacts];
  }

  return predicateForNoContacts2;
}

@end