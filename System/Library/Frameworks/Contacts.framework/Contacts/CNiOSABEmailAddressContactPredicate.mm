@interface CNiOSABEmailAddressContactPredicate
- (BOOL)_inputsAreValid;
- (BOOL)_stringsAreNonEmpty:(id)empty;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABEmailAddressContactPredicate

- (BOOL)_inputsAreValid
{
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  if ([emailAddresses count])
  {
    emailAddresses2 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v5 = [(CNiOSABEmailAddressContactPredicate *)self _stringsAreNonEmpty:emailAddresses2];
  }

  else
  {
    v5 = 0;
  }

  groupIdentifiers = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
  if ([groupIdentifiers count])
  {
    groupIdentifiers2 = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v8 = [(CNiOSABEmailAddressContactPredicate *)self _stringsAreNonEmpty:groupIdentifiers2];
  }

  else
  {
    v8 = 1;
  }

  return v5 && v8;
}

- (BOOL)_stringsAreNonEmpty:(id)empty
{
  emptyCopy = empty;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CNiOSABEmailAddressContactPredicate__stringsAreNonEmpty___block_invoke;
  v6[3] = &unk_1E74160D0;
  v6[4] = &v7;
  [emptyCopy enumerateObjectsUsingBlock:v6];
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

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  if ([(CNiOSABEmailAddressContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    v11 = *MEMORY[0x1E698A340];
    emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
    groupIdentifiers = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v14 = [v10 predicateForContactsMatchingMultivalueProperty:v11 values:emailAddresses groupIdentifiers:groupIdentifiers containerIdentifiers:0 limitToOneResult:-[CNEmailAddressContactPredicate returnsMultipleResults](self map:{"returnsMultipleResults") ^ 1, 0}];

    [requestCopy sortOrder];
    v15 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  else if (error)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  if ([(CNiOSABEmailAddressContactPredicate *)self _inputsAreValid:book])
  {
    v7 = MEMORY[0x1E698A130];
    v8 = *MEMORY[0x1E698A340];
    emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
    groupIdentifiers = [(CNEmailAddressContactPredicate *)self groupIdentifiers];
    v11 = [v7 predicateForContactsMatchingMultivalueProperty:v8 values:emailAddresses groupIdentifiers:groupIdentifiers containerIdentifiers:0 limitToOneResult:-[CNEmailAddressContactPredicate returnsMultipleResults](self map:{"returnsMultipleResults") ^ 1, 0}];
  }

  else
  {
    CNSetError(error, 400, 0);
    v11 = 0;
  }

  return v11;
}

@end