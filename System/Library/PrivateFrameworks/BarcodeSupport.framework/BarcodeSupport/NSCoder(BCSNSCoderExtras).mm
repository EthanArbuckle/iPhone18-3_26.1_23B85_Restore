@interface NSCoder(BCSNSCoderExtras)
- (id)_bcs_strictlyDecodeObjectOfClass:()BCSNSCoderExtras forKey:;
@end

@implementation NSCoder(BCSNSCoderExtras)

- (id)_bcs_strictlyDecodeObjectOfClass:()BCSNSCoderExtras forKey:
{
  v1 = [self decodeObjectOfClass:? forKey:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end