@interface CNExplicitDisplayNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExplicitDisplayNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  explicitDisplayName = [contactCopy explicitDisplayName];
  if (!explicitDisplayName)
  {
    explicitDisplayName2 = [otherCopy explicitDisplayName];
    if (!explicitDisplayName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  explicitDisplayName3 = [contactCopy explicitDisplayName];
  explicitDisplayName4 = [otherCopy explicitDisplayName];
  v11 = [explicitDisplayName3 isEqual:explicitDisplayName4];

  if (!explicitDisplayName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_explicitDisplayName"];

  v7 = [v9 copy];
  v8 = contactCopy[17];
  contactCopy[17] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A320];
  }

  return d != 0;
}

@end