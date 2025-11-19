@interface CNPhoneNumbersDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4;
- (id)equivalentLabelSets;
- (id)standardLabels;
- (id)stringForIndexingForContact:(id)a3;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
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

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 phoneNumbers];
  if (!v8)
  {
    v4 = [v7 phoneNumbers];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 phoneNumbers];
  v10 = [v7 phoneNumbers];
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

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_phoneNumbers", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[48];
  v6[48] = v10;
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

- (id)stringForIndexingForContact:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD60] string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v7 = [v3 phoneNumbers];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) value];
          v13 = [v12 digits];
          v14 = [v12 countryCode];
          v15 = _PNCopyIndexStringsForAddressBookSearch();

          if (v15)
          {
            v16 = [v15 componentsJoinedByString:@" "];
            [v6 appendString:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v3 = v18;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];
    if (v5)
    {
      v6 = v5;
      v4 = [CNPhoneNumber phoneNumberWithCopiedStringValue:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A548];
  }

  return a3 != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3
{
  if (a3)
  {
    v5 = CFGetTypeID(a3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [CNPhoneNumber phoneNumberWithCopiedStringValue:a3];
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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 stringValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end