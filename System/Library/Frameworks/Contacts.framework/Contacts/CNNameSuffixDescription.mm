@interface CNNameSuffixDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNNameSuffixDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  nameSuffix = [contactCopy nameSuffix];
  if (!nameSuffix)
  {
    nameSuffix2 = [otherCopy nameSuffix];
    if (!nameSuffix2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  nameSuffix3 = [contactCopy nameSuffix];
  nameSuffix4 = [otherCopy nameSuffix];
  v11 = [nameSuffix3 isEqual:nameSuffix4];

  if (!nameSuffix)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nameSuffix"];

  v7 = [v9 copy];
  v8 = contactCopy[8];
  contactCopy[8] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A628];
  }

  return d != 0;
}

@end