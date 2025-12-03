@interface CNFullscreenImageDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNFullscreenImageDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  fullscreenImageData = [contactCopy fullscreenImageData];
  if (!fullscreenImageData)
  {
    fullscreenImageData2 = [otherCopy fullscreenImageData];
    if (!fullscreenImageData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  fullscreenImageData3 = [contactCopy fullscreenImageData];
  fullscreenImageData4 = [otherCopy fullscreenImageData];
  v11 = [fullscreenImageData3 isEqual:fullscreenImageData4];

  if (!fullscreenImageData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fullscreenImageData"];

  v7 = [v9 copy];
  v8 = contactCopy[38];
  contactCopy[38] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A158];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyImageDataWithFormat(person, 4u);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end