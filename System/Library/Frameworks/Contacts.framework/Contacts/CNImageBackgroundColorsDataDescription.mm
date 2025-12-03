@interface CNImageBackgroundColorsDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNImageBackgroundColorsDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  imageBackgroundColorsData = [contactCopy imageBackgroundColorsData];
  if (!imageBackgroundColorsData)
  {
    imageBackgroundColorsData2 = [otherCopy imageBackgroundColorsData];
    if (!imageBackgroundColorsData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  imageBackgroundColorsData3 = [contactCopy imageBackgroundColorsData];
  imageBackgroundColorsData4 = [otherCopy imageBackgroundColorsData];
  v11 = [imageBackgroundColorsData3 isEqual:imageBackgroundColorsData4];

  if (!imageBackgroundColorsData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageBackgroundColorsData"];

  v7 = [v9 copy];
  v8 = contactCopy[86];
  contactCopy[86] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3A0];
  }

  return d != 0;
}

@end