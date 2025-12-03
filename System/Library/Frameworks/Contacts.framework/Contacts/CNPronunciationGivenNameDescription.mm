@interface CNPronunciationGivenNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPronunciationGivenNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  pronunciationGivenName = [contactCopy pronunciationGivenName];
  if (!pronunciationGivenName)
  {
    pronunciationGivenName2 = [otherCopy pronunciationGivenName];
    if (!pronunciationGivenName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  pronunciationGivenName3 = [contactCopy pronunciationGivenName];
  pronunciationGivenName4 = [otherCopy pronunciationGivenName];
  v11 = [pronunciationGivenName3 isEqual:pronunciationGivenName4];

  if (!pronunciationGivenName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pronunciationGivenName"];

  v7 = [v9 copy];
  v8 = contactCopy[15];
  contactCopy[15] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A378];
  }

  return d != 0;
}

@end