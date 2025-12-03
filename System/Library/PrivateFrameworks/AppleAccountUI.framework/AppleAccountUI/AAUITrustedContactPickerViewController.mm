@interface AAUITrustedContactPickerViewController
+ (id)addressKindAndHandleForSingleAddressContact:(id)contact;
- (AAUITrustedContactPickerViewController)init;
@end

@implementation AAUITrustedContactPickerViewController

- (AAUITrustedContactPickerViewController)init
{
  v23[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AAUITrustedContactPickerViewController;
  v2 = [(AAUITrustedContactPickerViewController *)&v18 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695C258];
    v23[0] = *MEMORY[0x1E695C258];
    v4 = 0x1E695D000uLL;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v7 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v5 error:0];
    identifier = [v7 identifier];
    if (identifier)
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)) AND (NOT %K IN $IDENTIFIERS)", v3];
      v20 = identifier;
      v21 = @"IDENTIFIERS";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v22 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [v9 predicateWithSubstitutionVariables:v11];
      [(CNContactPickerViewController *)v2 setPredicateForEnablingContact:v12];

      v4 = 0x1E695D000;
    }

    else
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
      [(CNContactPickerViewController *)v2 setPredicateForEnablingContact:v9];
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
    [(CNContactPickerViewController *)v2 setPredicateForSelectionOfContact:v13];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(property == 'emailAddresses') OR (property == 'phoneNumbers')"];
    [(CNContactPickerViewController *)v2 setPredicateForSelectionOfProperty:v14];

    v15 = *MEMORY[0x1E695C330];
    v19[0] = *MEMORY[0x1E695C208];
    v19[1] = v15;
    v16 = [*(v4 + 3784) arrayWithObjects:v19 count:2];
    [(CNContactPickerViewController *)v2 setDisplayedPropertyKeys:v16];
  }

  return v2;
}

+ (id)addressKindAndHandleForSingleAddressContact:(id)contact
{
  v23 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = contactCopy;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "AAUITrustedContactPickerViewController extracting handle and type for contact: %@", &v21, 0xCu);
  }

  phoneNumbers = [contactCopy phoneNumbers];
  if ([phoneNumbers count] == 1)
  {
    emailAddresses = [contactCopy emailAddresses];
    v7 = [emailAddresses count] == 0;
  }

  else
  {
    v7 = 0;
  }

  phoneNumbers2 = [contactCopy phoneNumbers];
  if ([phoneNumbers2 count])
  {

    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  emailAddresses2 = [contactCopy emailAddresses];
  v10 = [emailAddresses2 count];

  if (v7)
  {
LABEL_10:
    phoneNumbers3 = [contactCopy phoneNumbers];
    firstObject = [phoneNumbers3 firstObject];
    value = [firstObject value];
    stringValue = [value stringValue];

    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = stringValue;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "AAUITrustedContactPickerViewController extracted phone number: %@", &v21, 0xCu);
    }

    v16 = 1;
LABEL_13:

    goto LABEL_19;
  }

  if (v10 == 1)
  {
    emailAddresses3 = [contactCopy emailAddresses];
    firstObject2 = [emailAddresses3 firstObject];
    stringValue = [firstObject2 value];

    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = stringValue;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "AAUITrustedContactPickerViewController extracted email: %@", &v21, 0xCu);
    }

    v16 = 0;
    goto LABEL_13;
  }

LABEL_18:
  stringValue = 0;
  v16 = 5;
LABEL_19:
  v19 = [[AAUIHandleWithKind alloc] initWithHandle:stringValue kind:v16];

  return v19;
}

@end