@interface CNPostalAddressesDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)address:(id)address winsTieBreakerAgainstAddress:(id)againstAddress;
- (BOOL)address:(id)address winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:(id)completeness;
- (BOOL)address:(id)address winsTieBreakerAgainstAddressUsingStateNameCompleteness:(id)completeness;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)isPostalCodeValue:(id)value equivalentToValue:(id)toValue;
- (BOOL)isStateValue:(id)value equivalentToValue:(id)toValue;
- (BOOL)isValue:(id)value equivalentToValue:(id)toValue forKey:(id)key;
- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value;
- (id)summarizationKeys;
- (unint64_t)indexOfUSState:(id)state;
- (unint64_t)preferenceScoreForAddress:(id)address;
- (unint64_t)preferenceScoreForKey:(id)key;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPostalAddressesDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  postalAddresses = [contactCopy postalAddresses];
  if (!postalAddresses)
  {
    postalAddresses2 = [otherCopy postalAddresses];
    if (!postalAddresses2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  postalAddresses3 = [contactCopy postalAddresses];
  postalAddresses4 = [otherCopy postalAddresses];
  v11 = [postalAddresses3 isEqual:postalAddresses4];

  if (!postalAddresses)
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

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_postalAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[55];
  contactCopy[55] = v10;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  v25[6] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  withValueCopy = withValue;
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
        v14 = [valueCopy valueForKey:v13];
        v15 = [withValueCopy valueForKey:v13];
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

- (BOOL)isValue:(id)value equivalentToValue:(id)toValue forKey:(id)key
{
  valueCopy = value;
  toValueCopy = toValue;
  keyCopy = key;
  if (valueCopy)
  {
    v11 = valueCopy;
  }

  else
  {
    v11 = &stru_1F094DAB0;
  }

  if (toValueCopy)
  {
    v12 = toValueCopy;
  }

  else
  {
    v12 = &stru_1F094DAB0;
  }

  if ([(__CFString *)v11 localizedCaseInsensitiveCompare:v12])
  {
    if ([keyCopy isEqual:@"state"])
    {
      v13 = [(CNPostalAddressesDescription *)self isStateValue:valueCopy equivalentToValue:toValueCopy];
    }

    else if ([keyCopy isEqual:@"postalCode"])
    {
      v13 = [(CNPostalAddressesDescription *)self isPostalCodeValue:valueCopy equivalentToValue:toValueCopy];
    }

    else
    {
      if (![keyCopy isEqual:@"street"])
      {
        v14 = 0;
        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E69967C0] isStreetAddress:valueCopy equivalentToStreetAddress:toValueCopy];
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

- (BOOL)isStateValue:(id)value equivalentToValue:(id)toValue
{
  toValueCopy = toValue;
  v7 = [(CNPostalAddressesDescription *)self indexOfUSState:value];
  v8 = [(CNPostalAddressesDescription *)self indexOfUSState:toValueCopy];

  return v7 == v8;
}

- (unint64_t)indexOfUSState:(id)state
{
  stateCopy = state;
  v4 = +[CNAddressFormats usaStateAbbreviations];
  v5 = [v4 indexOfObject:stateCopy];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[CNAddressFormats usaStateNames];
    v5 = [v6 indexOfObject:stateCopy];
  }

  return v5;
}

- (BOOL)isPostalCodeValue:(id)value equivalentToValue:(id)toValue
{
  valueCopy = value;
  toValueCopy = toValue;
  if ([valueCopy length] && objc_msgSend(toValueCopy, "length"))
  {
    if ([valueCopy hasPrefix:toValueCopy] & 1) != 0 || (objc_msgSend(toValueCopy, "hasPrefix:", valueCopy))
    {
      v7 = 1;
    }

    else
    {
      v9 = [valueCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F094DAB0];
      v10 = [toValueCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F094DAB0];
      v7 = [v9 localizedCaseInsensitiveCompare:v10] == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue
{
  valueCopy = value;
  unifiedValueCopy = unifiedValue;
  v8 = [(CNPostalAddressesDescription *)self preferenceScoreForAddress:valueCopy];
  v9 = [(CNPostalAddressesDescription *)self preferenceScoreForAddress:unifiedValueCopy];
  if (v8 == v9)
  {
    v10 = [(CNPostalAddressesDescription *)self address:valueCopy winsTieBreakerAgainstAddress:unifiedValueCopy];
  }

  else
  {
    v10 = v8 > v9;
  }

  return v10;
}

- (unint64_t)preferenceScoreForAddress:(id)address
{
  v19[7] = *MEMORY[0x1E69E9840];
  addressCopy = address;
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
        v12 = [addressCopy valueForKey:{v11, v14}];
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

- (unint64_t)preferenceScoreForKey:(id)key
{
  if ([@"street" isEqual:key])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)address:(id)address winsTieBreakerAgainstAddress:(id)againstAddress
{
  addressCopy = address;
  againstAddressCopy = againstAddress;
  v8 = [(CNPostalAddressesDescription *)self address:addressCopy winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:againstAddressCopy]|| [(CNPostalAddressesDescription *)self address:addressCopy winsTieBreakerAgainstAddressUsingStateNameCompleteness:againstAddressCopy];

  return v8;
}

- (BOOL)address:(id)address winsTieBreakerAgainstAddressUsingPostalCodeCompleteness:(id)completeness
{
  addressCopy = address;
  completenessCopy = completeness;
  street = [addressCopy street];
  if (![street length])
  {

LABEL_5:
    postalCode = [addressCopy postalCode];
    if ([postalCode length])
    {
      postalCode2 = [addressCopy postalCode];
      postalCode3 = [completenessCopy postalCode];
      v14 = [postalCode2 isEqual:postalCode3];

      if (v14)
      {
        v10 = 0;
        goto LABEL_11;
      }

      postalCode = [addressCopy postalCode];
      v15 = [postalCode length];
      postalCode4 = [completenessCopy postalCode];
      v10 = v15 > [postalCode4 length];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_11;
  }

  street2 = [completenessCopy street];
  v9 = [street2 length];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)address:(id)address winsTieBreakerAgainstAddressUsingStateNameCompleteness:(id)completeness
{
  completenessCopy = completeness;
  addressCopy = address;
  v7 = +[CNAddressFormats usaStateNames];
  state = [addressCopy state];

  if ([v7 containsObject:state])
  {
    state2 = [completenessCopy state];
    v10 = [v7 containsObject:state2] ^ 1;
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

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A260];
  }

  return d != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value
{
  if (CNLabeledValueValueFromABMultiValueValue__cn_once_token_6 != -1)
  {
    [CNPostalAddressesDescription(iOSAB) CNLabeledValueValueFromABMultiValueValue:];
  }

  v5 = CNLabeledValueValueFromABMultiValueValue__cn_once_object_6;
  v6 = [(CNMultiValuePropertyDescription *)self CNLabeledValueValueFromABMultiValueValue:value destinationClass:objc_opt_class() settersByABKeys:v5];

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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
{
  v4 = ABMultiValueValueFromCNLabeledValueValue__cn_once_token_7;
  valueCopy = value;
  if (v4 != -1)
  {
    [CNPostalAddressesDescription(iOSAB) ABMultiValueValueFromCNLabeledValueValue:];
  }

  v6 = [(CNMultiValuePropertyDescription *)self ABMultiValueValueFromCNLabeledValueValue:valueCopy gettersByABKeys:ABMultiValueValueFromCNLabeledValueValue__cn_once_object_7];

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