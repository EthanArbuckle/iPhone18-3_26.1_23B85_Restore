@interface NSString(ImageCaptureAdditions)
- (uint64_t)baseImageFileDigits;
- (uint64_t)baseImageFilePrefix;
@end

@implementation NSString(ImageCaptureAdditions)

- (uint64_t)baseImageFilePrefix
{
  if ([self length] < 4)
  {
    return 0;
  }

  v2 = [self characterAtIndex:0];
  v3 = ([self characterAtIndex:1] << 16) + (v2 << 24);
  v4 = v3 + ([self characterAtIndex:2] << 8);
  return (v4 + [self characterAtIndex:3]);
}

- (uint64_t)baseImageFileDigits
{
  stringByDeletingPathExtension = [self stringByDeletingPathExtension];
  v2 = [stringByDeletingPathExtension length];
  if (v2 < 4)
  {
    integerValue = 0;
  }

  else
  {
    v3 = [stringByDeletingPathExtension substringFromIndex:v2 - 4];
    integerValue = [v3 integerValue];
  }

  return integerValue;
}

@end