@interface NSData(AvatarUI)
- (id)avt_SHA256;
@end

@implementation NSData(AvatarUI)

- (id)avt_SHA256
{
  v5 = *MEMORY[0x1E69E9840];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 16; ++i)
  {
    [v1 appendFormat:@"%02x", md[i]];
  }

  return v1;
}

@end