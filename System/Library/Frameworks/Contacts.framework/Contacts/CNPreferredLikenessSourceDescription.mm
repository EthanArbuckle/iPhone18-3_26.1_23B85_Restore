@interface CNPreferredLikenessSourceDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPreferredLikenessSourceDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  preferredLikenessSource = [contactCopy preferredLikenessSource];
  if (!preferredLikenessSource)
  {
    preferredLikenessSource2 = [otherCopy preferredLikenessSource];
    if (!preferredLikenessSource2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  preferredLikenessSource3 = [contactCopy preferredLikenessSource];
  preferredLikenessSource4 = [otherCopy preferredLikenessSource];
  v11 = [preferredLikenessSource3 isEqual:preferredLikenessSource4];

  if (!preferredLikenessSource)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredLikenessSource"];

  v7 = [v9 copy];
  v8 = contactCopy[73];
  contactCopy[73] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A570];
  }

  return d != 0;
}

@end