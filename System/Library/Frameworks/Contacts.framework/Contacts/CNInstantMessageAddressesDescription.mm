@interface CNInstantMessageAddressesDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value;
- (id)summarizationKeys;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNInstantMessageAddressesDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  instantMessageAddresses = [contactCopy instantMessageAddresses];
  if (!instantMessageAddresses)
  {
    instantMessageAddresses2 = [otherCopy instantMessageAddresses];
    if (!instantMessageAddresses2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  instantMessageAddresses3 = [contactCopy instantMessageAddresses];
  instantMessageAddresses4 = [otherCopy instantMessageAddresses];
  v11 = [instantMessageAddresses3 isEqual:instantMessageAddresses4];

  if (!instantMessageAddresses)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_instantMessageAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[52];
  contactCopy[52] = v10;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  valueCopy = value;
  withValueCopy = withValue;
  v7 = valueCopy;
  v8 = withValueCopy;
  username = [v7 username];
  username2 = [v8 username];
  userIdentifier2 = &stru_1F094DAB0;
  if (username)
  {
    v12 = username;
  }

  else
  {
    v12 = &stru_1F094DAB0;
  }

  if (username2)
  {
    v13 = username2;
  }

  else
  {
    v13 = &stru_1F094DAB0;
  }

  v14 = [(__CFString *)v12 localizedCaseInsensitiveCompare:v13];

  service = [v7 service];
  service2 = [v8 service];
  if (service)
  {
    v17 = service;
  }

  else
  {
    v17 = &stru_1F094DAB0;
  }

  if (service2)
  {
    v18 = service2;
  }

  else
  {
    v18 = &stru_1F094DAB0;
  }

  v19 = [(__CFString *)v17 localizedCaseInsensitiveCompare:v18];

  userIdentifier = [v7 userIdentifier];
  if (!userIdentifier)
  {
    userIdentifier2 = [v8 userIdentifier];
    if (!userIdentifier2)
    {
      v23 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  userIdentifier3 = [v7 userIdentifier];
  userIdentifier4 = [v8 userIdentifier];
  v23 = [userIdentifier3 isEqual:userIdentifier4];

  if (!userIdentifier)
  {
    goto LABEL_18;
  }

LABEL_19:

  return ((v14 | v19) == 0) & v23;
}

- (id)summarizationKeys
{
  if (summarizationKeys_cn_once_token_9 != -1)
  {
    [CNInstantMessageAddressesDescription summarizationKeys];
  }

  v3 = summarizationKeys_cn_once_object_9;

  return v3;
}

uint64_t __57__CNInstantMessageAddressesDescription_summarizationKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"username", @"service", 0}];
  v1 = summarizationKeys_cn_once_object_9;
  summarizationKeys_cn_once_object_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3C8];
  }

  return d != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value
{
  if (CNLabeledValueValueFromABMultiValueValue__cn_once_token_2 != -1)
  {
    [CNInstantMessageAddressesDescription(iOSAB) CNLabeledValueValueFromABMultiValueValue:];
  }

  v5 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_2;
  v6 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:value destinationClass:objc_opt_class() settersByABKeys:v5];

  return v6;
}

void __88__CNInstantMessageAddressesDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue___block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E698A430];
  v0 = [&__block_literal_global_54_1 copy];
  v9[0] = v0;
  v8[1] = *MEMORY[0x1E698A428];
  v1 = [&__block_literal_global_56_0 copy];
  v9[1] = v1;
  v8[2] = *MEMORY[0x1E698A400];
  v2 = [&__block_literal_global_58_0 copy];
  v9[2] = v2;
  v8[3] = *MEMORY[0x1E698A330];
  v3 = [&__block_literal_global_60_0 copy];
  v9[3] = v3;
  v8[4] = *MEMORY[0x1E698A328];
  v4 = [&__block_literal_global_62_0 copy];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = [v5 copy];
  v7 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_2;
  CNLabeledValueValueFromABMultiValueValue__cn_once_object_2 = v6;
}

void __88__CNInstantMessageAddressesDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = +[CNiOSABConstantsMapping ABToCNPersonInstantMessageConstantsMapping];

  v6 = v4;
  if (v5)
  {
    v7 = +[CNiOSABConstantsMapping ABToCNPersonInstantMessageConstantsMapping];
    v6 = [v7 mappedConstant:v4];
  }

  [v8 setService:v6];
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
{
  v4 = ABMultiValueValueFromCNLabeledValueValue__cn_once_token_3;
  valueCopy = value;
  if (v4 != -1)
  {
    [CNInstantMessageAddressesDescription(iOSAB) ABMultiValueValueFromCNLabeledValueValue:];
  }

  v6 = [(CNMultiValuePropertyDescription *)self ABMultiValueValueFromCNLabeledValueValue:valueCopy gettersByABKeys:ABMultiValueValueFromCNLabeledValueValue__cn_once_object_3];

  return v6;
}

void __88__CNInstantMessageAddressesDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue___block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E698A430];
  v0 = [&__block_literal_global_69 copy];
  v9[0] = v0;
  v8[1] = *MEMORY[0x1E698A428];
  v1 = [&__block_literal_global_71 copy];
  v9[1] = v1;
  v8[2] = *MEMORY[0x1E698A400];
  v2 = [&__block_literal_global_73 copy];
  v9[2] = v2;
  v8[3] = *MEMORY[0x1E698A330];
  v3 = [&__block_literal_global_75_0 copy];
  v9[3] = v3;
  v8[4] = *MEMORY[0x1E698A328];
  v4 = [&__block_literal_global_77 copy];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = [v5 copy];
  v7 = ABMultiValueValueFromCNLabeledValueValue__cn_once_object_3;
  ABMultiValueValueFromCNLabeledValueValue__cn_once_object_3 = v6;
}

id __88__CNInstantMessageAddressesDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = +[CNiOSABConstantsMapping CNToABPersonInstantMessageConstantsMapping];

  if (v3)
  {
    v4 = +[CNiOSABConstantsMapping CNToABPersonInstantMessageConstantsMapping];
    v5 = [v4 mappedConstant:v2];

    v2 = v5;
  }

  return v2;
}

@end