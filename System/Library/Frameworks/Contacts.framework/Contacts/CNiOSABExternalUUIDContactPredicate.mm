@interface CNiOSABExternalUUIDContactPredicate
- (BOOL)_inputsAreValid;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABExternalUUIDContactPredicate

- (BOOL)_inputsAreValid
{
  externalUUIDs = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
  v4 = [externalUUIDs count];

  if (!v4)
  {
    return 0;
  }

  externalUUIDs2 = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
  v6 = [externalUUIDs2 _cn_all:&__block_literal_global_160];

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  if ([(CNiOSABExternalUUIDContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    externalUUIDs = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
    v12 = [v10 predicateForContactsWithExternalUUIDs:externalUUIDs];

    [requestCopy sortOrder];
    v13 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  else if (error)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  if ([(CNiOSABExternalUUIDContactPredicate *)self _inputsAreValid:book])
  {
    v7 = MEMORY[0x1E698A130];
    externalUUIDs = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
    v9 = [v7 predicateForContactsWithExternalUUIDs:externalUUIDs];
  }

  else
  {
    CNSetError(error, 400, 0);
    v9 = 0;
  }

  return v9;
}

@end