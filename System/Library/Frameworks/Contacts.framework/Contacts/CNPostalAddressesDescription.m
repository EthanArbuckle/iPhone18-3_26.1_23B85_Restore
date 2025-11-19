@interface CNPostalAddressesDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)address:(id)a3 winsTieBreakerAgainstAddress:(id)a4;
- (BOOL)address:(id)a3 winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:(id)a4;
- (BOOL)address:(id)a3 winsTieBreakerAgainstAddressUsingStateNameCompleteness:(id)a4;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)isPostalCodeValue:(id)a3 equivalentToValue:(id)a4;
- (BOOL)isStateValue:(id)a3 equivalentToValue:(id)a4;
- (BOOL)isValue:(id)a3 equivalentToValue:(id)a4 forKey:(id)a5;
- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3;
- (id)summarizationKeys;
- (unint64_t)indexOfUSState:(id)a3;
- (unint64_t)preferenceScoreForAddress:(id)a3;
- (unint64_t)preferenceScoreForKey:(id)a3;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNPostalAddressesDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 postalAddresses];
  if (!v8)
  {
    v4 = [v7 postalAddresses];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 postalAddresses];
  v10 = [v7 postalAddresses];
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

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_postalAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[55];
  v6[55] = v10;
}

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  v25[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v25[0] = @"street";
  v25[1] = @"subLocality";
  v25[2] = @"city";
  v25[3] = @"subAdministrativeArea";
  v25[4] = @"state";
  v25[5] = @"postalCode";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v5 valueForKey:v13];
        v15 = [v6 valueForKey:v13];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          if (![(CNPostalAddressesDescription *)self isValue:v14 equivalentToValue:v15 forKey:v13])
          {

            goto LABEL_16;
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isValue:(id)a3 equivalentToValue:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_1F094DAB0;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &stru_1F094DAB0;
  }

  if ([(__CFString *)v11 localizedCaseInsensitiveCompare:v12])
  {
    if ([v10 isEqual:@"state"])
    {
      v13 = [(CNPostalAddressesDescription *)self isStateValue:v8 equivalentToValue:v9];
    }

    else if ([v10 isEqual:@"postalCode"])
    {
      v13 = [(CNPostalAddressesDescription *)self isPostalCodeValue:v8 equivalentToValue:v9];
    }

    else
    {
      if (![v10 isEqual:@"street"])
      {
        v14 = 0;
        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E69967C0] isStreetAddress:v8 equivalentToStreetAddress:v9];
    }

    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

LABEL_16:

  return v14;
}

- (BOOL)isStateValue:(id)a3 equivalentToValue:(id)a4
{
  v6 = a4;
  v7 = [(CNPostalAddressesDescription *)self indexOfUSState:a3];
  v8 = [(CNPostalAddressesDescription *)self indexOfUSState:v6];

  return v7 == v8;
}

- (unint64_t)indexOfUSState:(id)a3
{
  v3 = a3;
  v4 = +[CNAddressFormats usaStateAbbreviations];
  v5 = [v4 indexOfObject:v3];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[CNAddressFormats usaStateNames];
    v5 = [v6 indexOfObject:v3];
  }

  return v5;
}

- (BOOL)isPostalCodeValue:(id)a3 equivalentToValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    if ([v5 hasPrefix:v6] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", v5))
    {
      v7 = 1;
    }

    else
    {
      v9 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F094DAB0];
      v10 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F094DAB0];
      v7 = [v9 localizedCaseInsensitiveCompare:v10] == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPostalAddressesDescription *)self preferenceScoreForAddress:v6];
  v9 = [(CNPostalAddressesDescription *)self preferenceScoreForAddress:v7];
  if (v8 == v9)
  {
    v10 = [(CNPostalAddressesDescription *)self address:v6 winsTieBreakerAgainstAddress:v7];
  }

  else
  {
    v10 = v8 > v9;
  }

  return v10;
}

- (unint64_t)preferenceScoreForAddress:(id)a3
{
  v19[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19[0] = @"street";
  v19[1] = @"subLocality";
  v19[2] = @"city";
  v19[3] = @"subAdministrativeArea";
  v19[4] = @"state";
  v19[5] = @"postalCode";
  v19[6] = @"ISOCountryCode";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:7];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v4 valueForKey:{v11, v14}];
        if (v12)
        {
          v8 += [(CNPostalAddressesDescription *)self preferenceScoreForKey:v11];
          if ([@"postalCode" isEqualToString:v11])
          {
            v8 += [(CNPostalAddressesDescription *)self postalCodeIsMoreComplete:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)preferenceScoreForKey:(id)a3
{
  if ([@"street" isEqual:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)address:(id)a3 winsTieBreakerAgainstAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPostalAddressesDescription *)self address:v6 winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:v7]|| [(CNPostalAddressesDescription *)self address:v6 winsTieBreakerAgainstAddressUsingStateNameCompleteness:v7];

  return v8;
}

- (BOOL)address:(id)a3 winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 street];
  if (![v7 length])
  {

LABEL_5:
    v11 = [v5 postalCode];
    if ([v11 length])
    {
      v12 = [v5 postalCode];
      v13 = [v6 postalCode];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        v10 = 0;
        goto LABEL_11;
      }

      v11 = [v5 postalCode];
      v15 = [v11 length];
      v16 = [v6 postalCode];
      v10 = v15 > [v16 length];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_11;
  }

  v8 = [v6 street];
  v9 = [v8 length];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)address:(id)a3 winsTieBreakerAgainstAddressUsingStateNameCompleteness:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CNAddressFormats usaStateNames];
  v8 = [v6 state];

  if ([v7 containsObject:v8])
  {
    v9 = [v5 state];
    v10 = [v7 containsObject:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)summarizationKeys
{
  if (summarizationKeys_cn_once_token_11 != -1)
  {
    [CNPostalAddressesDescription summarizationKeys];
  }

  v3 = summarizationKeys_cn_once_object_11;

  return v3;
}

uint64_t __49__CNPostalAddressesDescription_summarizationKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"street", @"subLocality", @"city", @"subAdministrativeArea", @"state", @"postalCode", @"country", 0}];
  v1 = summarizationKeys_cn_once_object_11;
  summarizationKeys_cn_once_object_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A260];
  }

  return a3 != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3
{
  if (CNLabeledValueValueFromABMultiValueValue__cn_once_token_6 != -1)
  {
    [CNPostalAddressesDescription(iOSAB) CNLabeledValueValueFromABMultiValueValue:];
  }

  v5 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_6;
  v6 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:a3 destinationClass:objc_opt_class() settersByABKeys:v5];

  return v6;
}

void __80__CNPostalAddressesDescription_iOSAB__CNLabeledValueValueFromABMultiValueValue___block_invoke()
{
  v12[8] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E698A270];
  v0 = [&__block_literal_global_114 copy];
  v12[0] = v0;
  v11[1] = *MEMORY[0x1E698A280];
  v1 = [&__block_literal_global_116_0 copy];
  v12[1] = v1;
  v11[2] = *MEMORY[0x1E698A248];
  v2 = [&__block_literal_global_118 copy];
  v12[2] = v2;
  v11[3] = *MEMORY[0x1E698A278];
  v3 = [&__block_literal_global_120 copy];
  v12[3] = v3;
  v11[4] = *MEMORY[0x1E698A268];
  v4 = [&__block_literal_global_122_0 copy];
  v12[4] = v4;
  v11[5] = *MEMORY[0x1E698A288];
  v5 = [&__block_literal_global_124 copy];
  v12[5] = v5;
  v11[6] = *MEMORY[0x1E698A258];
  v6 = [&__block_literal_global_126 copy];
  v12[6] = v6;
  v11[7] = *MEMORY[0x1E698A250];
  v7 = [&__block_literal_global_128_0 copy];
  v12[7] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = [v8 copy];
  v10 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_6;
  CNLabeledValueValueFromABMultiValueValue__cn_once_object_6 = v9;
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
{
  v4 = ABMultiValueValueFromCNLabeledValueValue__cn_once_token_7;
  v5 = a3;
  if (v4 != -1)
  {
    [CNPostalAddressesDescription(iOSAB) ABMultiValueValueFromCNLabeledValueValue:];
  }

  v6 = [(CNMultiValuePropertyDescription *)self ABMultiValueValueFromCNLabeledValueValue:v5 gettersByABKeys:ABMultiValueValueFromCNLabeledValueValue__cn_once_object_7];

  return v6;
}

void __80__CNPostalAddressesDescription_iOSAB__ABMultiValueValueFromCNLabeledValueValue___block_invoke()
{
  v12[8] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E698A270];
  v0 = [&__block_literal_global_133 copy];
  v12[0] = v0;
  v11[1] = *MEMORY[0x1E698A280];
  v1 = [&__block_literal_global_135 copy];
  v12[1] = v1;
  v11[2] = *MEMORY[0x1E698A248];
  v2 = [&__block_literal_global_137_0 copy];
  v12[2] = v2;
  v11[3] = *MEMORY[0x1E698A278];
  v3 = [&__block_literal_global_139 copy];
  v12[3] = v3;
  v11[4] = *MEMORY[0x1E698A268];
  v4 = [&__block_literal_global_141 copy];
  v12[4] = v4;
  v11[5] = *MEMORY[0x1E698A288];
  v5 = [&__block_literal_global_143_0 copy];
  v12[5] = v5;
  v11[6] = *MEMORY[0x1E698A258];
  v6 = [&__block_literal_global_145 copy];
  v12[6] = v6;
  v11[7] = *MEMORY[0x1E698A250];
  v7 = [&__block_literal_global_147 copy];
  v12[7] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = [v8 copy];
  v10 = ABMultiValueValueFromCNLabeledValueValue__cn_once_object_7;
  ABMultiValueValueFromCNLabeledValueValue__cn_once_object_7 = v9;
}

@end