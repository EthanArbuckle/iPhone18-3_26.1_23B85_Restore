@interface CNiOSABPhoneNumberContactPredicate
+ (id)countryCodeForPredicate:(id)predicate;
+ (id)stringValueForPredicate:(id)predicate;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABPhoneNumberContactPredicate

+ (id)stringValueForPredicate:(id)predicate
{
  v3 = *MEMORY[0x1E6996568];
  predicateCopy = predicate;
  digits = [(CNPhoneNumberContactPredicate *)predicateCopy digits];
  LOBYTE(v3) = (*(v3 + 16))(v3, digits);

  if (v3)
  {
    phoneNumber = [(CNPhoneNumberContactPredicate *)predicateCopy phoneNumber];

    digits2 = [phoneNumber digits];
    predicateCopy = phoneNumber;
  }

  else
  {
    digits2 = [(CNPhoneNumberContactPredicate *)predicateCopy digits];
  }

  return digits2;
}

+ (id)countryCodeForPredicate:(id)predicate
{
  v3 = *MEMORY[0x1E6996568];
  predicateCopy = predicate;
  countryCode = [(CNPhoneNumberContactPredicate *)predicateCopy countryCode];
  LOBYTE(v3) = (*(v3 + 16))(v3, countryCode);

  if (v3)
  {
    phoneNumber = [(CNPhoneNumberContactPredicate *)predicateCopy phoneNumber];

    countryCode2 = [phoneNumber countryCode];
    predicateCopy = phoneNumber;
  }

  else
  {
    countryCode2 = [(CNPhoneNumberContactPredicate *)predicateCopy countryCode];
  }

  return countryCode2;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  v10 = [objc_opt_class() stringValueForPredicate:self];
  v11 = [objc_opt_class() countryCodeForPredicate:self];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    if (error)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E698A130];
    prefixHint = [(CNPhoneNumberContactPredicate *)self prefixHint];
    groupIdentifiers = [(CNPhoneNumberContactPredicate *)self groupIdentifiers];
    v16 = [v13 predicateForContactsMatchingPhoneNumber:v10 country:v11 homeCountryCode:0 prefixHint:prefixHint groupIdentifiers:groupIdentifiers limitToOneResult:-[CNPhoneNumberContactPredicate returnsMultipleResults](self) ^ 1];

    [requestCopy sortOrder];
    v12 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  return v12;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v7 = [objc_opt_class() stringValueForPredicate:self];
  v8 = [objc_opt_class() countryCodeForPredicate:self];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E698A130];
    prefixHint = [(CNPhoneNumberContactPredicate *)self prefixHint];
    groupIdentifiers = [(CNPhoneNumberContactPredicate *)self groupIdentifiers];
    v9 = [v10 predicateForContactsMatchingPhoneNumber:v7 country:v8 homeCountryCode:0 prefixHint:prefixHint groupIdentifiers:groupIdentifiers limitToOneResult:-[CNPhoneNumberContactPredicate returnsMultipleResults](self) ^ 1];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  CNSetError(error, 400, 0);
LABEL_5:

  return v9;
}

@end