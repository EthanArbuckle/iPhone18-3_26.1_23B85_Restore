@interface CNPreferredApplePersonaIdentifierDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPreferredApplePersonaIdentifierDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  preferredApplePersonaIdentifier = [contactCopy preferredApplePersonaIdentifier];
  if (!preferredApplePersonaIdentifier)
  {
    preferredApplePersonaIdentifier2 = [otherCopy preferredApplePersonaIdentifier];
    if (!preferredApplePersonaIdentifier2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  preferredApplePersonaIdentifier3 = [contactCopy preferredApplePersonaIdentifier];
  preferredApplePersonaIdentifier4 = [otherCopy preferredApplePersonaIdentifier];
  v11 = [preferredApplePersonaIdentifier3 isEqual:preferredApplePersonaIdentifier4];

  if (!preferredApplePersonaIdentifier)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredApplePersonaIdentifier"];

  v7 = [v9 copy];
  v8 = contactCopy[74];
  contactCopy[74] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A578];
  }

  return d != 0;
}

@end