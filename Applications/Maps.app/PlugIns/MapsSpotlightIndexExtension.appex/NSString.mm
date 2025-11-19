@interface NSString
- (NSString)_maps_sha1Hash;
@end

@implementation NSString

- (NSString)_maps_sha1Hash
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  CC_SHA1([v2 bytes], objc_msgSend(v2, "length"), md);
  v3 = objc_alloc_init(NSMutableString);
  for (i = 0; i != 20; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  return v3;
}

@end