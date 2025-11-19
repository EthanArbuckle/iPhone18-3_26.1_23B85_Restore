@interface NSString(AvatarUI)
- (id)avt_MD5String;
@end

@implementation NSString(AvatarUI)

- (id)avt_MD5String
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 dataUsingEncoding:4];
  CC_MD5([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = [v2 copy];

  return v4;
}

@end