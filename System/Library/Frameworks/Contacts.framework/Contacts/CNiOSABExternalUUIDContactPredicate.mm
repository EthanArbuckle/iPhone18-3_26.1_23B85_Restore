@interface CNiOSABExternalUUIDContactPredicate
- (BOOL)_inputsAreValid;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABExternalUUIDContactPredicate

- (BOOL)_inputsAreValid
{
  v3 = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
  v6 = [v5 _cn_all:&__block_literal_global_160];

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = a4;
  if ([(CNiOSABExternalUUIDContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    v11 = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
    v12 = [v10 predicateForContactsWithExternalUUIDs:v11];

    [v9 sortOrder];
    v13 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  else if (a7)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  if ([(CNiOSABExternalUUIDContactPredicate *)self _inputsAreValid:a3])
  {
    v7 = MEMORY[0x1E698A130];
    v8 = [(CNExternalUUIDContactPredicate *)self externalUUIDs];
    v9 = [v7 predicateForContactsWithExternalUUIDs:v8];
  }

  else
  {
    CNSetError(a5, 400, 0);
    v9 = 0;
  }

  return v9;
}

@end