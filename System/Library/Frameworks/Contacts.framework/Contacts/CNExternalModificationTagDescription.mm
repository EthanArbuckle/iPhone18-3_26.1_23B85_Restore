@interface CNExternalModificationTagDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExternalModificationTagDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  externalModificationTag = [contactCopy externalModificationTag];
  if (!externalModificationTag)
  {
    externalModificationTag2 = [otherCopy externalModificationTag];
    if (!externalModificationTag2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  externalModificationTag3 = [contactCopy externalModificationTag];
  externalModificationTag4 = [otherCopy externalModificationTag];
  v11 = [externalModificationTag3 isEqual:externalModificationTag4];

  if (!externalModificationTag)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalModificationTag"];

  v7 = [v9 copy];
  v8 = contactCopy[60];
  contactCopy[60] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A350];
  }

  return d != 0;
}

@end