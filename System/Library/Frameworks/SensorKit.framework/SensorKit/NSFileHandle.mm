@interface NSFileHandle
- (void)pathname;
@end

@implementation NSFileHandle

- (void)pathname
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = [result fileDescriptor];
    if (v1 < 0 || fcntl(v1, 50, v3) < 0)
    {
      result = 0;
    }

    else
    {
      result = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end