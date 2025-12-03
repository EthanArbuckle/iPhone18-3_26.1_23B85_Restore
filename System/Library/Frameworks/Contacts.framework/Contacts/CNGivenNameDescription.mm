@interface CNGivenNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNGivenNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  givenName = [contactCopy givenName];
  if (!givenName)
  {
    givenName2 = [otherCopy givenName];
    if (!givenName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  givenName3 = [contactCopy givenName];
  givenName4 = [otherCopy givenName];
  v11 = [givenName3 isEqual:givenName4];

  if (!givenName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_givenName"];

  v7 = [v9 copy];
  v8 = contactCopy[5];
  contactCopy[5] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A380];
  }

  return d != 0;
}

@end