@interface CNExternalUUIDDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNExternalUUIDDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  externalUUID = [contactCopy externalUUID];
  if (!externalUUID)
  {
    externalUUID2 = [otherCopy externalUUID];
    if (!externalUUID2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  externalUUID3 = [contactCopy externalUUID];
  externalUUID4 = [otherCopy externalUUID];
  v11 = [externalUUID3 isEqual:externalUUID4];

  if (!externalUUID)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalUUID"];

  v7 = [v9 copy];
  v8 = contactCopy[61];
  contactCopy[61] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A360];
  }

  return d != 0;
}

@end