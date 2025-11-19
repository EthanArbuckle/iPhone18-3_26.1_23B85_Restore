@interface CNiOSABHandleStringsContactPredicate
+ (id)peopleForPredicate:(id)a3 sortOrder:(unsigned int)a4 addressBook:(void *)a5;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (id)handlesPredicateWithMap:(id)a3;
@end

@implementation CNiOSABHandleStringsContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v11 = a4;
  v12 = [(CNHandleStringsContactPredicate *)self handleStrings];
  v13 = [v12 count];

  if (v13)
  {
    if (a5)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v17 = [(CNiOSABHandleStringsContactPredicate *)self handlesPredicateWithMap:v15];
    v16 = [objc_opt_class() peopleForPredicate:v17 sortOrder:objc_msgSend(v11 addressBook:{"sortOrder"), a3}];
    populateMatchInfoFromMap_block_invoke(v16, v14, v15, v16);
    if (a5)
    {
      v18 = v14;
      *a5 = v14;
    }
  }

  else
  {
    if (a7)
    {
      *a7 = [CNErrorFactory errorWithCode:400 userInfo:0];
    }

    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)handlesPredicateWithMap:(id)a3
{
  v4 = MEMORY[0x1E6996728];
  v5 = a3;
  v6 = [(CNHandleStringsContactPredicate *)self handleStrings];
  v7 = [v4 classificationOfHandleStrings:v6];

  v8 = [v7 emailAddresses];
  v9 = [v7 phoneNumbers];
  v10 = [v7 unknown];
  [v10 _cn_each:&__block_literal_global_6_2];

  v11 = MEMORY[0x1E698A130];
  v12 = [(CNHandleStringsContactPredicate *)self containerIdentifiers];
  v13 = [v11 predicateForContactsMatchingPhoneNumbers:v9 emailAddresses:v8 containerIdentifiers:v12 map:v5];

  return v13;
}

+ (id)peopleForPredicate:(id)a3 sortOrder:(unsigned int)a4 addressBook:(void *)a5
{
  if (a3)
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

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v6 = [(CNHandleStringsContactPredicate *)self handleStrings:a3];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    v9 = [(CNiOSABHandleStringsContactPredicate *)self handlesPredicateWithMap:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E698A130] predicateForNoContacts];
    }

    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x1E698A130] predicateForNoContacts];
  }

  return v12;
}

@end