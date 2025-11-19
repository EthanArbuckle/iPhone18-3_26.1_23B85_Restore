@interface __NSLocalTimeZone
- (__NSLocalTimeZone)initWithCoder:(id)a3;
@end

@implementation __NSLocalTimeZone

- (__NSLocalTimeZone)initWithCoder:(id)a3
{
  v4 = [a3 allowsKeyedCoding];

  if ((v4 & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSTimeZone cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [MEMORY[0x1E695DFE8] localTimeZone];

  return v5;
}

@end