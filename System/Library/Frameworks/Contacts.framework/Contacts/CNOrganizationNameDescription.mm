@interface CNOrganizationNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNOrganizationNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  organizationName = [contactCopy organizationName];
  if (!organizationName)
  {
    organizationName2 = [otherCopy organizationName];
    if (!organizationName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  organizationName3 = [contactCopy organizationName];
  organizationName4 = [otherCopy organizationName];
  v11 = [organizationName3 isEqual:organizationName4];

  if (!organizationName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_organizationName"];

  v7 = [v9 copy];
  v8 = contactCopy[24];
  contactCopy[24] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4E0];
  }

  return d != 0;
}

@end