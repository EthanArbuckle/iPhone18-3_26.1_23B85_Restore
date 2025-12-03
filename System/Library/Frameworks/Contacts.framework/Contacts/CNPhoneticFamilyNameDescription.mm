@interface CNPhoneticFamilyNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPhoneticFamilyNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  phoneticFamilyName = [contactCopy phoneticFamilyName];
  if (!phoneticFamilyName)
  {
    phoneticFamilyName2 = [otherCopy phoneticFamilyName];
    if (!phoneticFamilyName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  phoneticFamilyName3 = [contactCopy phoneticFamilyName];
  phoneticFamilyName4 = [otherCopy phoneticFamilyName];
  v11 = [phoneticFamilyName3 isEqual:phoneticFamilyName4];

  if (!phoneticFamilyName)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phoneticFamilyName"];

  v7 = [v9 copy];
  v8 = contactCopy[13];
  contactCopy[13] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A468];
  }

  return d != 0;
}

@end