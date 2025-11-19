@interface CNSocialProfilesDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3;
- (id)summarizationKeys;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNSocialProfilesDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 socialProfiles];
  if (!v8)
  {
    v4 = [v7 socialProfiles];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 socialProfiles];
  v10 = [v7 socialProfiles];
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

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_socialProfiles", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[54];
  v6[54] = v10;
}

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CN socialProfileToFoundationProfileTransform];
  v8 = (v7)[2](v7, v6);

  v9 = +[CN socialProfileToFoundationProfileTransform];
  v10 = (v9)[2](v9, v5);

  LOBYTE(v9) = CNSocialProfileEquivalentValues();
  return v9;
}

- (id)summarizationKeys
{
  if (summarizationKeys_cn_once_token_10 != -1)
  {
    [CNSocialProfilesDescription summarizationKeys];
  }

  v3 = summarizationKeys_cn_once_object_10;

  return v3;
}

uint64_t __48__CNSocialProfilesDescription_summarizationKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"username", @"userIdentifier", @"displayname", 0}];
  v1 = summarizationKeys_cn_once_object_10;
  summarizationKeys_cn_once_object_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A5B0];
  }

  return a3 != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3
{
  if (CNLabeledValueValueFromABMultiValueValue__cn_once_token_4 != -1)
  {
    [CNSocialProfilesDescription(iOSAB) CNLabeledValueValueFromABMultiValueValue:];
  }

  v5 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_4;
  v6 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:a3 destinationClass:objc_opt_class() settersByABKeys:v5];

  return v6;
}

void __79__CNSocialProfilesDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue___block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E698A5F8];
  v0 = [&__block_literal_global_81_0 copy];
  v11[0] = v0;
  v10[1] = *MEMORY[0x1E698A5D0];
  v1 = [&__block_literal_global_83 copy];
  v11[1] = v1;
  v10[2] = *MEMORY[0x1E698A608];
  v2 = [&__block_literal_global_85_0 copy];
  v11[2] = v2;
  v10[3] = *MEMORY[0x1E698A600];
  v3 = [&__block_literal_global_87_0 copy];
  v11[3] = v3;
  v10[4] = *MEMORY[0x1E698A5A8];
  v4 = [&__block_literal_global_89_1 copy];
  v11[4] = v4;
  v10[5] = *MEMORY[0x1E698A330];
  v5 = [&__block_literal_global_91 copy];
  v11[5] = v5;
  v10[6] = *MEMORY[0x1E698A328];
  v6 = [&__block_literal_global_93 copy];
  v11[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = [v7 copy];
  v9 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_4;
  CNLabeledValueValueFromABMultiValueValue__cn_once_object_4 = v8;
}

void __79__CNSocialProfilesDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = +[CNiOSABConstantsMapping ABToCNPersonSocialProfileConstantsMapping];

  v6 = v4;
  if (v5)
  {
    v7 = +[CNiOSABConstantsMapping ABToCNPersonSocialProfileConstantsMapping];
    v6 = [v7 mappedConstant:v4];
  }

  [v8 setService:v6];
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
{
  v4 = ABMultiValueValueFromCNLabeledValueValue__cn_once_token_5;
  v5 = a3;
  if (v4 != -1)
  {
    [CNSocialProfilesDescription(iOSAB) ABMultiValueValueFromCNLabeledValueValue:];
  }

  v6 = [(CNMultiValuePropertyDescription *)self ABMultiValueValueFromCNLabeledValueValue:v5 gettersByABKeys:ABMultiValueValueFromCNLabeledValueValue__cn_once_object_5];

  return v6;
}

void __79__CNSocialProfilesDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue___block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E698A5F8];
  v0 = [&__block_literal_global_98 copy];
  v11[0] = v0;
  v10[1] = *MEMORY[0x1E698A5D0];
  v1 = [&__block_literal_global_100_0 copy];
  v11[1] = v1;
  v10[2] = *MEMORY[0x1E698A608];
  v2 = [&__block_literal_global_102 copy];
  v11[2] = v2;
  v10[3] = *MEMORY[0x1E698A600];
  v3 = [&__block_literal_global_104_1 copy];
  v11[3] = v3;
  v10[4] = *MEMORY[0x1E698A5A8];
  v4 = [&__block_literal_global_106 copy];
  v11[4] = v4;
  v10[5] = *MEMORY[0x1E698A330];
  v5 = [&__block_literal_global_108 copy];
  v11[5] = v5;
  v10[6] = *MEMORY[0x1E698A328];
  v6 = [&__block_literal_global_110_1 copy];
  v11[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = [v7 copy];
  v9 = ABMultiValueValueFromCNLabeledValueValue__cn_once_object_5;
  ABMultiValueValueFromCNLabeledValueValue__cn_once_object_5 = v8;
}

id __79__CNSocialProfilesDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = +[CNiOSABConstantsMapping CNToABPersonSocialProfileConstantsMapping];

  if (v3)
  {
    v4 = +[CNiOSABConstantsMapping CNToABPersonSocialProfileConstantsMapping];
    v5 = [v4 mappedConstant:v2];

    v2 = v5;
  }

  return v2;
}

@end