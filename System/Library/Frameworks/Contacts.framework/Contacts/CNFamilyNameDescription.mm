@interface CNFamilyNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNFamilyNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  familyName = [contactCopy familyName];
  if (!familyName)
  {
    familyName2 = [otherCopy familyName];
    if (!familyName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  familyName3 = [contactCopy familyName];
  familyName4 = [otherCopy familyName];
  v11 = [familyName3 isEqual:familyName4];

  if (!familyName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyName"];

  v7 = [v9 copy];
  v8 = contactCopy[7];
  contactCopy[7] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A478];
  }

  return d != 0;
}

@end