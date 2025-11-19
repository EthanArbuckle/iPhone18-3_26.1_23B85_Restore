@interface CNiOSABExternalIdentifierContactPredicate
- (BOOL)_inputsAreValid;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABExternalIdentifierContactPredicate

- (BOOL)_inputsAreValid
{
  v3 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
  v6 = [v5 _cn_all:&__block_literal_global_25];

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = a4;
  if ([(CNiOSABExternalIdentifierContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    v11 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
    v12 = [v10 predicateForContactsWithExternalIdentifiers:v11];

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
  if ([(CNiOSABExternalIdentifierContactPredicate *)self _inputsAreValid:a3])
  {
    v7 = MEMORY[0x1E698A130];
    v8 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
    v9 = [v7 predicateForContactsWithExternalIdentifiers:v8];
  }

  else
  {
    CNSetError(a5, 400, 0);
    v9 = 0;
  }

  return v9;
}

@end