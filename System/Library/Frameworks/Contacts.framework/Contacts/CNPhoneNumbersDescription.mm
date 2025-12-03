@interface CNPhoneNumbersDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length;
- (id)equivalentLabelSets;
- (id)standardLabels;
- (id)stringForIndexingForContact:(id)contact;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPhoneNumbersDescription

- (id)equivalentLabelSets
{
  if (equivalentLabelSets_cn_once_token_2 != -1)
  {
    [CNPhoneNumbersDescription equivalentLabelSets];
  }

  v3 = equivalentLabelSets_cn_once_object_2;

  return v3;
}

void __48__CNPhoneNumbersDescription_equivalentLabelSets__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"iPhone", @"Apple Watch", @"_$!<Mobile>!$_", 0}];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"_$!<Main>!$_", @"_$!<Home>!$_", 0}];
  v2 = [v0 initWithObjects:{v4, v1, 0}];
  v3 = equivalentLabelSets_cn_once_object_2;
  equivalentLabelSets_cn_once_object_2 = v2;
}

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  phoneNumbers = [contactCopy phoneNumbers];
  if (!phoneNumbers)
  {
    phoneNumbers2 = [otherCopy phoneNumbers];
    if (!phoneNumbers2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  phoneNumbers3 = [contactCopy phoneNumbers];
  phoneNumbers4 = [otherCopy phoneNumbers];
  v11 = [phoneNumbers3 isEqual:phoneNumbers4];

  if (!phoneNumbers)
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

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_phoneNumbers", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[48];
  contactCopy[48] = v10;
}

- (id)standardLabels
{
  if (standardLabels_cn_once_token_3 != -1)
  {
    [CNPhoneNumbersDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_3;

  return v3;
}

uint64_t __43__CNPhoneNumbersDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Mobile>!$_", @"_$!<Home>!$_", @"_$!<Work>!$_", @"_$!<School>!$_", @"iPhone", @"Apple Watch", @"_$!<Main>!$_", @"_$!<HomeFAX>!$_", @"_$!<WorkFAX>!$_", @"_$!<Pager>!$_", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_3;
  standardLabels_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)stringForIndexingForContact:(id)contact
{
  v24 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v5 = [phoneNumbers count];

  if (v5)
  {
    string = [MEMORY[0x1E696AD60] string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = contactCopy;
    phoneNumbers2 = [contactCopy phoneNumbers];
    v8 = [phoneNumbers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(phoneNumbers2);
          }

          value = [*(*(&v19 + 1) + 8 * i) value];
          digits = [value digits];
          countryCode = [value countryCode];
          v15 = _PNCopyIndexStringsForAddressBookSearch();

          if (v15)
          {
            v16 = [v15 componentsJoinedByString:@" "];
            [string appendString:v16];
          }
        }

        v9 = [phoneNumbers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    contactCopy = v18;
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length
{
  bytesCopy = bytes;
  if (bytes)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:length encoding:4];
    if (v5)
    {
      v6 = v5;
      bytesCopy = [CNPhoneNumber phoneNumberWithCopiedStringValue:v5];
    }

    else
    {
      bytesCopy = 0;
    }
  }

  return bytesCopy;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A548];
  }

  return d != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value
{
  if (value)
  {
    v5 = CFGetTypeID(value);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [CNPhoneNumber phoneNumberWithCopiedStringValue:value];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [valueCopy stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

@end