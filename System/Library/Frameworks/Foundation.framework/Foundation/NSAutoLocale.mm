@interface NSAutoLocale
- (NSAutoLocale)initWithCoder:(id)coder;
@end

@implementation NSAutoLocale

- (NSAutoLocale)initWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];

  if ((allowsKeyedCoding & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLocales cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];

  return autoupdatingCurrentLocale;
}

@end