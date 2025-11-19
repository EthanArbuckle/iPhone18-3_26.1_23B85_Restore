@interface CNInstantMessageAddressesDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3;
- (id)summarizationKeys;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNInstantMessageAddressesDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 instantMessageAddresses];
  if (!v8)
  {
    v4 = [v7 instantMessageAddresses];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 instantMessageAddresses];
  v10 = [v7 instantMessageAddresses];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_instantMessageAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[52];
  v6[52] = v10;
}

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [v7 username];
  v10 = [v8 username];
  v11 = &stru_1F094DAB0;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &stru_1F094DAB0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = &stru_1F094DAB0;
  }

  v14 = [(__CFString *)v12 localizedCaseInsensitiveCompare:v13];

  v15 = [v7 service];
  v16 = [v8 service];
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1F094DAB0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F094DAB0;
  }

  v19 = [(__CFString *)v17 localizedCaseInsensitiveCompare:v18];

  v20 = [v7 userIdentifier];
  if (!v20)
  {
    v11 = [v8 userIdentifier];
    if (!v11)
    {
      v23 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v21 = [v7 userIdentifier];
  v22 = [v8 userIdentifier];
  v23 = [v21 isEqual:v22];

  if (!v20)
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

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A3C8];
  }

  return a3 != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3
{
  if (CNLabeledValueValueFromABMultiValueValue__cn_once_token_2 != -1)
  {
    [CNInstantMessageAddressesDescription(iOSAB) CNLabeledValueValueFromABMultiValueValue:];
  }

  v5 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_2;
  v6 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:a3 destinationClass:objc_opt_class() settersByABKeys:v5];

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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
{
  v4 = ABMultiValueValueFromCNLabeledValueValue__cn_once_token_3;
  v5 = a3;
  if (v4 != -1)
  {
    [CNInstantMessageAddressesDescription(iOSAB) ABMultiValueValueFromCNLabeledValueValue:];
  }

  v6 = [(CNMultiValuePropertyDescription *)self ABMultiValueValueFromCNLabeledValueValue:v5 gettersByABKeys:ABMultiValueValueFromCNLabeledValueValue__cn_once_object_3];

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