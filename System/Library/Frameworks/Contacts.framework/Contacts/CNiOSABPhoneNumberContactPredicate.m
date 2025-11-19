@interface CNiOSABPhoneNumberContactPredicate
+ (id)countryCodeForPredicate:(id)a3;
+ (id)stringValueForPredicate:(id)a3;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABPhoneNumberContactPredicate

+ (id)stringValueForPredicate:(id)a3
{
  v3 = *MEMORY[0x1E6996568];
  v4 = a3;
  v5 = [(CNPhoneNumberContactPredicate *)v4 digits];
  LOBYTE(v3) = (*(v3 + 16))(v3, v5);

  if (v3)
  {
    v6 = [(CNPhoneNumberContactPredicate *)v4 phoneNumber];

    v7 = [v6 digits];
    v4 = v6;
  }

  else
  {
    v7 = [(CNPhoneNumberContactPredicate *)v4 digits];
  }

  return v7;
}

+ (id)countryCodeForPredicate:(id)a3
{
  v3 = *MEMORY[0x1E6996568];
  v4 = a3;
  v5 = [(CNPhoneNumberContactPredicate *)v4 countryCode];
  LOBYTE(v3) = (*(v3 + 16))(v3, v5);

  if (v3)
  {
    v6 = [(CNPhoneNumberContactPredicate *)v4 phoneNumber];

    v7 = [v6 countryCode];
    v4 = v6;
  }

  else
  {
    v7 = [(CNPhoneNumberContactPredicate *)v4 countryCode];
  }

  return v7;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = a4;
  v10 = [objc_opt_class() stringValueForPredicate:self];
  v11 = [objc_opt_class() countryCodeForPredicate:self];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    if (a7)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *a7 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E698A130];
    v14 = [(CNPhoneNumberContactPredicate *)self prefixHint];
    v15 = [(CNPhoneNumberContactPredicate *)self groupIdentifiers];
    v16 = [v13 predicateForContactsMatchingPhoneNumber:v10 country:v11 homeCountryCode:0 prefixHint:v14 groupIdentifiers:v15 limitToOneResult:-[CNPhoneNumberContactPredicate returnsMultipleResults](self) ^ 1];

    [v9 sortOrder];
    v12 = ABAddressBookCopyAllPeopleForBufferPredicate();
  }

  return v12;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
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
    v11 = [(CNPhoneNumberContactPredicate *)self prefixHint];
    v12 = [(CNPhoneNumberContactPredicate *)self groupIdentifiers];
    v9 = [v10 predicateForContactsMatchingPhoneNumber:v7 country:v8 homeCountryCode:0 prefixHint:v11 groupIdentifiers:v12 limitToOneResult:-[CNPhoneNumberContactPredicate returnsMultipleResults](self) ^ 1];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  CNSetError(a5, 400, 0);
LABEL_5:

  return v9;
}

@end