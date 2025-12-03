@interface CNPhonemeDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPhonemeDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  phonemeData = [contactCopy phonemeData];
  if (!phonemeData)
  {
    phonemeData2 = [otherCopy phonemeData];
    if (!phonemeData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  phonemeData3 = [contactCopy phonemeData];
  phonemeData4 = [otherCopy phonemeData];
  v11 = [phonemeData3 isEqual:phonemeData4];

  if (!phonemeData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phonemeData"];

  v7 = [v9 copy];
  v8 = contactCopy[43];
  contactCopy[43] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A560];
  }

  return d != 0;
}

@end