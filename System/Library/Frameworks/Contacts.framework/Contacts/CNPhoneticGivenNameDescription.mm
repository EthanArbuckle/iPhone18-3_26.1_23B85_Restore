@interface CNPhoneticGivenNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPhoneticGivenNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  phoneticGivenName = [contactCopy phoneticGivenName];
  if (!phoneticGivenName)
  {
    phoneticGivenName2 = [otherCopy phoneticGivenName];
    if (!phoneticGivenName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  phoneticGivenName3 = [contactCopy phoneticGivenName];
  phoneticGivenName4 = [otherCopy phoneticGivenName];
  v11 = [phoneticGivenName3 isEqual:phoneticGivenName4];

  if (!phoneticGivenName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phoneticGivenName"];

  v7 = [v9 copy];
  v8 = contactCopy[11];
  contactCopy[11] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A370];
  }

  return d != 0;
}

@end