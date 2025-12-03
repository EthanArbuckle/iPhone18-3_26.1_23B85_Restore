@interface CNExternalImageURIDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExternalImageURIDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  externalImageURI = [contactCopy externalImageURI];
  if (!externalImageURI)
  {
    externalImageURI2 = [otherCopy externalImageURI];
    if (!externalImageURI2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  externalImageURI3 = [contactCopy externalImageURI];
  externalImageURI4 = [otherCopy externalImageURI];
  v11 = [externalImageURI3 isEqual:externalImageURI4];

  if (!externalImageURI)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalImageURI"];

  v7 = [v9 copy];
  v8 = contactCopy[62];
  contactCopy[62] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3C0];
  }

  return d != 0;
}

@end