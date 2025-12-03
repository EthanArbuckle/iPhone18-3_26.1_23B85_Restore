@interface __NSLocalTimeZone
- (__NSLocalTimeZone)initWithCoder:(id)coder;
@end

@implementation __NSLocalTimeZone

- (__NSLocalTimeZone)initWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];

  if ((allowsKeyedCoding & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSTimeZone cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];

  return localTimeZone;
}

@end