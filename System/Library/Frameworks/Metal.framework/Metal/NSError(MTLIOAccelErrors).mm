@interface NSError(MTLIOAccelErrors)
- (uint64_t)initWithIOAccelError:()MTLIOAccelErrors;
@end

@implementation NSError(MTLIOAccelErrors)

- (uint64_t)initWithIOAccelError:()MTLIOAccelErrors
{
  if (a3 > 0x12)
  {
    v4 = "Internal Error";
    v6 = 1;
    v5 = "Internal Error";
  }

  else
  {
    v4 = off_1E6EEC708[a3];
    v5 = off_1E6EEC7A0[a3];
    v6 = qword_185DE3650[a3];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%08x:%s)", v5, a3, v4];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E696A578]];

  return [self initWithDomain:@"MTLCommandBufferErrorDomain" code:v6 userInfo:v8];
}

@end