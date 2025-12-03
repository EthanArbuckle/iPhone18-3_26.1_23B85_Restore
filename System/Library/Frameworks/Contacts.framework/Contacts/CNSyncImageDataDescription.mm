@interface CNSyncImageDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNSyncImageDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  syncImageData = [contactCopy syncImageData];
  if (!syncImageData)
  {
    syncImageData2 = [otherCopy syncImageData];
    if (!syncImageData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  syncImageData3 = [contactCopy syncImageData];
  syncImageData4 = [otherCopy syncImageData];
  v11 = [syncImageData3 isEqual:syncImageData4];

  if (!syncImageData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_syncImageData"];

  v7 = [v9 copy];
  v8 = contactCopy[39];
  contactCopy[39] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A188];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyImageDataWithFormat(person, 5u);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end