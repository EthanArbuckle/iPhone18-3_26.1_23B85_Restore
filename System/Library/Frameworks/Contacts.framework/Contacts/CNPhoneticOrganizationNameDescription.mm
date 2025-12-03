@interface CNPhoneticOrganizationNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPhoneticOrganizationNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  phoneticOrganizationName = [contactCopy phoneticOrganizationName];
  if (!phoneticOrganizationName)
  {
    phoneticOrganizationName2 = [otherCopy phoneticOrganizationName];
    if (!phoneticOrganizationName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  phoneticOrganizationName3 = [contactCopy phoneticOrganizationName];
  phoneticOrganizationName4 = [otherCopy phoneticOrganizationName];
  v11 = [phoneticOrganizationName3 isEqual:phoneticOrganizationName4];

  if (!phoneticOrganizationName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phoneticOrganizationName"];

  v7 = [v9 copy];
  v8 = contactCopy[14];
  contactCopy[14] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4D8];
  }

  return d != 0;
}

@end