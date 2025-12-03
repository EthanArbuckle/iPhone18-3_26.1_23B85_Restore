@interface NSString(SKAdditions)
- (id)sk_SHA1Hash;
@end

@implementation NSString(SKAdditions)

- (id)sk_SHA1Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  v5[0] = 0;
  v5[1] = 0;
  LODWORD(v6) = 0;
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), v5);
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:20];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

@end