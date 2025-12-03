@interface CNPreferredChannelDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPreferredChannelDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  preferredChannel = [contactCopy preferredChannel];
  if (!preferredChannel)
  {
    preferredChannel2 = [otherCopy preferredChannel];
    if (!preferredChannel2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  preferredChannel3 = [contactCopy preferredChannel];
  preferredChannel4 = [otherCopy preferredChannel];
  v11 = [preferredChannel3 isEqual:preferredChannel4];

  if (!preferredChannel)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredChannel"];

  v7 = [v9 copy];
  v8 = contactCopy[75];
  contactCopy[75] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A568];
  }

  return d != 0;
}

@end