@interface CNiOSABEmailAddressContactPredicate
- (BOOL)_inputsAreValid;
- (BOOL)_stringsAreNonEmpty:(id)a3;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABEmailAddressContactPredicate

- (BOOL)_inputsAreValid
{
  v3 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  if ([v3 count])
  {
    v4 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v5 = [(CNiOSABEmailAddressContactPredicate *)self _stringsAreNonEmpty:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
  if ([v6 count])
  {
    v7 = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v8 = [(CNiOSABEmailAddressContactPredicate *)self _stringsAreNonEmpty:v7];
  }

  else
  {
    v8 = 1;
  }

  return v5 && v8;
}

- (BOOL)_stringsAreNonEmpty:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CNiOSABEmailAddressContactPredicate__stringsAreNonEmpty___block_invoke;
  v6[3] = &unk_1E74160D0;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __59__CNiOSABEmailAddressContactPredicate__stringsAreNonEmpty___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 length];
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = a4;
  if ([(CNiOSABEmailAddressContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    v11 = *MEMORY[0x1E698A340];
    v12 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v13 = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v14 = [v10 predicateForContactsMatchingMultivalueProperty:v11 values:v12 groupIdentifiers:v13 containerIdentifiers:0 limitToOneResult:-[CNEmailAddressContactPredicate returnsMultipleResults](self map:{"returnsMultipleResults") ^ 1, 0}];

    [v9 sortOrder];
    v15 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  else if (a7)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  if ([(CNiOSABEmailAddressContactPredicate *)self _inputsAreValid:a3])
  {
    v7 = MEMORY[0x1E698A130];
    v8 = *MEMORY[0x1E698A340];
    v9 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v10 = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v11 = [v7 predicateForContactsMatchingMultivalueProperty:v8 values:v9 groupIdentifiers:v10 containerIdentifiers:0 limitToOneResult:-[CNEmailAddressContactPredicate returnsMultipleResults](self map:{"returnsMultipleResults") ^ 1, 0}];
  }

  else
  {
    CNSetError(a5, 400, 0);
    v11 = 0;
  }

  return v11;
}

@end