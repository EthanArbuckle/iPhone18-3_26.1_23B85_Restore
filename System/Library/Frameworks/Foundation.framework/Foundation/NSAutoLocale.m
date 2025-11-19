@interface NSAutoLocale
- (NSAutoLocale)initWithCoder:(id)a3;
@end

@implementation NSAutoLocale

- (NSAutoLocale)initWithCoder:(id)a3
{
  v4 = [a3 allowsKeyedCoding];

  if ((v4 & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLocales cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];

  return v5;
}

@end