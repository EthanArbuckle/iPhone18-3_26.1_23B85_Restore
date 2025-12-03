@interface CNNicknameNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNNicknameNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  nickname = [contactCopy nickname];
  if (!nickname)
  {
    nickname2 = [otherCopy nickname];
    if (!nickname2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  nickname3 = [contactCopy nickname];
  nickname4 = [otherCopy nickname];
  v11 = [nickname3 isEqual:nickname4];

  if (!nickname)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nickname"];

  v7 = [v9 copy];
  v8 = contactCopy[10];
  contactCopy[10] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4C8];
  }

  return d != 0;
}

@end