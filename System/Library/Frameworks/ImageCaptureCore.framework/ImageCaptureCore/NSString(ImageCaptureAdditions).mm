@interface NSString(ImageCaptureAdditions)
- (uint64_t)baseImageFileDigits;
- (uint64_t)baseImageFilePrefix;
@end

@implementation NSString(ImageCaptureAdditions)

- (uint64_t)baseImageFilePrefix
{
  if ([a1 length] < 4)
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  v3 = ([a1 characterAtIndex:1] << 16) + (v2 << 24);
  v4 = v3 + ([a1 characterAtIndex:2] << 8);
  return (v4 + [a1 characterAtIndex:3]);
}

- (uint64_t)baseImageFileDigits
{
  v1 = [a1 stringByDeletingPathExtension];
  v2 = [v1 length];
  if (v2 < 4)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 substringFromIndex:v2 - 4];
    v4 = [v3 integerValue];
  }

  return v4;
}

@end