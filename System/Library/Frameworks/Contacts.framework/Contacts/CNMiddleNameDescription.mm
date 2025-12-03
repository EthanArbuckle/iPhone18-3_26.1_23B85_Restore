@interface CNMiddleNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNMiddleNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  middleName = [contactCopy middleName];
  if (!middleName)
  {
    middleName2 = [otherCopy middleName];
    if (!middleName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  middleName3 = [contactCopy middleName];
  middleName4 = [otherCopy middleName];
  v11 = [middleName3 isEqual:middleName4];

  if (!middleName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_middleName"];

  v7 = [v9 copy];
  v8 = contactCopy[6];
  contactCopy[6] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4B0];
  }

  return d != 0;
}

@end