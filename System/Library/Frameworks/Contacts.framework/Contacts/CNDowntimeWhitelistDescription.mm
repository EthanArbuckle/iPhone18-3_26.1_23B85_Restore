@interface CNDowntimeWhitelistDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNDowntimeWhitelistDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  downtimeWhitelist = [contactCopy downtimeWhitelist];
  if (!downtimeWhitelist)
  {
    downtimeWhitelist2 = [otherCopy downtimeWhitelist];
    if (!downtimeWhitelist2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  downtimeWhitelist3 = [contactCopy downtimeWhitelist];
  downtimeWhitelist4 = [otherCopy downtimeWhitelist];
  v11 = [downtimeWhitelist3 isEqual:downtimeWhitelist4];

  if (!downtimeWhitelist)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downtimeWhitelist"];

  v7 = [v9 copy];
  v8 = contactCopy[77];
  contactCopy[77] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A338];
  }

  return d != 0;
}

@end