@interface CNLinkIdentifierDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNLinkIdentifierDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  linkIdentifier = [contactCopy linkIdentifier];
  if (!linkIdentifier)
  {
    linkIdentifier2 = [otherCopy linkIdentifier];
    if (!linkIdentifier2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  linkIdentifier3 = [contactCopy linkIdentifier];
  linkIdentifier4 = [otherCopy linkIdentifier];
  v11 = [linkIdentifier3 isEqual:linkIdentifier4];

  if (!linkIdentifier)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_linkIdentifier"];

  v7 = [v9 copy];
  v8 = contactCopy[41];
  contactCopy[41] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A180];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyLinkUUID();
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end