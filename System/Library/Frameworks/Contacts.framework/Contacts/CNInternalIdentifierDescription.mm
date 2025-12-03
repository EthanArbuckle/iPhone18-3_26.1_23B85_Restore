@interface CNInternalIdentifierDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNInternalIdentifierDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  internalIdentifier = [contactCopy internalIdentifier];
  if (!internalIdentifier)
  {
    internalIdentifier2 = [otherCopy internalIdentifier];
    if (!internalIdentifier2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  internalIdentifier3 = [contactCopy internalIdentifier];
  internalIdentifier4 = [otherCopy internalIdentifier];
  v11 = [internalIdentifier3 isEqual:internalIdentifier4];

  if (!internalIdentifier)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_internalIdentifier"];

  v7 = [v9 copy];
  v8 = contactCopy[1];
  contactCopy[1] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A438];
  }

  return d != 0;
}

@end