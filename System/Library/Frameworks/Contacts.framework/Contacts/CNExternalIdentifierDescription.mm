@interface CNExternalIdentifierDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExternalIdentifierDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  externalIdentifier = [contactCopy externalIdentifier];
  if (!externalIdentifier)
  {
    externalIdentifier2 = [otherCopy externalIdentifier];
    if (!externalIdentifier2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  externalIdentifier3 = [contactCopy externalIdentifier];
  externalIdentifier4 = [otherCopy externalIdentifier];
  v11 = [externalIdentifier3 isEqual:externalIdentifier4];

  if (!externalIdentifier)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalIdentifier"];

  v7 = [v9 copy];
  v8 = contactCopy[58];
  contactCopy[58] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A348];
  }

  return d != 0;
}

@end