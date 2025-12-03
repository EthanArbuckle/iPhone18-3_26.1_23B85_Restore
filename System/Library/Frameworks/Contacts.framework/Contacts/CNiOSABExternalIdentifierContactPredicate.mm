@interface CNiOSABExternalIdentifierContactPredicate
- (BOOL)_inputsAreValid;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABExternalIdentifierContactPredicate

- (BOOL)_inputsAreValid
{
  externalIdentifiers = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
  v4 = [externalIdentifiers count];

  if (!v4)
  {
    return 0;
  }

  externalIdentifiers2 = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
  v6 = [externalIdentifiers2 _cn_all:&__block_literal_global_25];

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  if ([(CNiOSABExternalIdentifierContactPredicate *)self _inputsAreValid])
  {
    v10 = MEMORY[0x1E698A130];
    externalIdentifiers = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
    v12 = [v10 predicateForContactsWithExternalIdentifiers:externalIdentifiers];

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
  if ([(CNiOSABExternalIdentifierContactPredicate *)self _inputsAreValid:book])
  {
    v7 = MEMORY[0x1E698A130];
    externalIdentifiers = [(CNExternalIdentifierContactPredicate *)self externalIdentifiers];
    v9 = [v7 predicateForContactsWithExternalIdentifiers:externalIdentifiers];
  }

  else
  {
    CNSetError(error, 400, 0);
    v9 = 0;
  }

  return v9;
}

@end