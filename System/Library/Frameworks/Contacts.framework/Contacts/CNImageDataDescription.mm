@interface CNImageDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNImageDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  imageData = [contactCopy imageData];
  if (!imageData)
  {
    imageData2 = [otherCopy imageData];
    if (!imageData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  imageData3 = [contactCopy imageData];
  imageData4 = [otherCopy imageData];
  v11 = [imageData3 isEqual:imageData4];

  if (!imageData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];

  v7 = [v9 copy];
  v8 = contactCopy[32];
  contactCopy[32] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A170];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyImageDataWithFormat(person, kABPersonImageFormatOriginalSize);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end