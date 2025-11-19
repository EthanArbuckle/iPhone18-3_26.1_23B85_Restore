@interface NSLocale(NSLocale)
- (NSString)debugDescription;
- (uint64_t)encodeWithCoder:()NSLocale;
- (uint64_t)initWithCoder:()NSLocale;
@end

@implementation NSLocale(NSLocale)

- (NSString)debugDescription
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = a1;
  v2.super_class = NSLocale_0;
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ '%@'}", objc_msgSendSuper2(&v2, sel_debugDescription), [a1 localeIdentifier]);
}

- (uint64_t)encodeWithCoder:()NSLocale
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLocales cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a1 localeIdentifier];

  return [a3 encodeObject:v5 forKey:@"NS.identifier"];
}

- (uint64_t)initWithCoder:()NSLocale
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLocales cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.identifier"];
  if (_NSIsNSString())
  {

    return [a1 initWithLocaleIdentifier:v5];
  }

  else
  {
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, 0)}];

    return 0;
  }
}

@end