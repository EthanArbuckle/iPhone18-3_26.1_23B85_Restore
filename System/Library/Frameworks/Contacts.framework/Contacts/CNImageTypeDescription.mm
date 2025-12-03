@interface CNImageTypeDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNImageTypeDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  imageType = [contactCopy imageType];
  if (!imageType)
  {
    imageType2 = [otherCopy imageType];
    if (!imageType2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  imageType3 = [contactCopy imageType];
  imageType4 = [otherCopy imageType];
  v11 = [imageType3 isEqual:imageType4];

  if (!imageType)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageType"];

  v7 = [v9 copy];
  v8 = contactCopy[78];
  contactCopy[78] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3B8];
  }

  return d != 0;
}

@end