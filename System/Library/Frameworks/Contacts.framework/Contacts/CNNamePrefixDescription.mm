@interface CNNamePrefixDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNNamePrefixDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  namePrefix = [contactCopy namePrefix];
  if (!namePrefix)
  {
    namePrefix2 = [otherCopy namePrefix];
    if (!namePrefix2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  namePrefix3 = [contactCopy namePrefix];
  namePrefix4 = [otherCopy namePrefix];
  v11 = [namePrefix3 isEqual:namePrefix4];

  if (!namePrefix)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_namePrefix"];

  v7 = [v9 copy];
  v8 = contactCopy[4];
  contactCopy[4] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A580];
  }

  return d != 0;
}

@end