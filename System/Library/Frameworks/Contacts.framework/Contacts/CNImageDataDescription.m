@interface CNImageDataDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNImageDataDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 imageData];
  if (!v8)
  {
    v4 = [v7 imageData];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 imageData];
  v10 = [v7 imageData];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];

  v7 = [v9 copy];
  v8 = v5[32];
  v5[32] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A170];
  }

  return a3 != 0;
}

- (void)ABValueForABPerson:(void *)a3
{
  result = ABPersonCopyImageDataWithFormat(a3, kABPersonImageFormatOriginalSize);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end