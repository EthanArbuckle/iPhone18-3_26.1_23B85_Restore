@interface CNEmailAddressesDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)standardLabels;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNEmailAddressesDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  emailAddresses = [contactCopy emailAddresses];
  if (!emailAddresses)
  {
    emailAddresses2 = [otherCopy emailAddresses];
    if (!emailAddresses2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  emailAddresses3 = [contactCopy emailAddresses];
  emailAddresses4 = [otherCopy emailAddresses];
  v11 = [emailAddresses3 isEqual:emailAddresses4];

  if (!emailAddresses)
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

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_emailAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[49];
  contactCopy[49] = v10;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &stru_1F094DAB0;
  }

  if (withValue)
  {
    withValueCopy = withValue;
  }

  else
  {
    withValueCopy = &stru_1F094DAB0;
  }

  return [(__CFString *)valueCopy localizedCaseInsensitiveCompare:withValueCopy]== 0;
}

- (id)standardLabels
{
  if (standardLabels_cn_once_token_4 != -1)
  {
    [CNEmailAddressesDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_4;

  return v3;
}

uint64_t __45__CNEmailAddressesDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Home>!$_", @"_$!<Work>!$_", @"_$!<School>!$_", @"iCloud", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_4;
  standardLabels_cn_once_object_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A340];
  }

  return d != 0;
}

@end