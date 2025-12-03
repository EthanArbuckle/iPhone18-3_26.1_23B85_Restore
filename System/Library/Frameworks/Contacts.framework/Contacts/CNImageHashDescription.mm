@interface CNImageHashDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNImageHashDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  imageHash = [contactCopy imageHash];
  if (!imageHash)
  {
    imageHash2 = [otherCopy imageHash];
    if (!imageHash2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  imageHash3 = [contactCopy imageHash];
  imageHash4 = [otherCopy imageHash];
  v11 = [imageHash3 isEqual:imageHash4];

  if (!imageHash)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageHash"];

  v7 = [v9 copy];
  v8 = contactCopy[79];
  contactCopy[79] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3A8];
  }

  return d != 0;
}

@end