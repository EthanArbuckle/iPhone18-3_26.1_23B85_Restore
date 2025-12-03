@interface CNExternalRepresentationDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExternalRepresentationDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  externalRepresentation = [contactCopy externalRepresentation];
  if (!externalRepresentation)
  {
    externalRepresentation2 = [otherCopy externalRepresentation];
    if (!externalRepresentation2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  externalRepresentation3 = [contactCopy externalRepresentation];
  externalRepresentation4 = [otherCopy externalRepresentation];
  v11 = [externalRepresentation3 isEqual:externalRepresentation4];

  if (!externalRepresentation)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalRepresentation"];

  v7 = [v9 copy];
  v8 = contactCopy[59];
  contactCopy[59] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A358];
  }

  return d != 0;
}

@end