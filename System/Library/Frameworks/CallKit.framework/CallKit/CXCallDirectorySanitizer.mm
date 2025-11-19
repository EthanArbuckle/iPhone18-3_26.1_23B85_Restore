@interface CXCallDirectorySanitizer
- (CXCallDirectorySanitizer)init;
- (id)canonicalizedPhoneNumber:(id)a3;
@end

@implementation CXCallDirectorySanitizer

- (CXCallDirectorySanitizer)init
{
  v13.receiver = self;
  v13.super_class = CXCallDirectorySanitizer;
  v2 = [(CXCallDirectorySanitizer *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    phoneNumbersCharacterSet = v2->_phoneNumbersCharacterSet;
    v2->_phoneNumbersCharacterSet = v3;

    v5 = [(NSCharacterSet *)v2->_phoneNumbersCharacterSet invertedSet];
    nonPhoneNumbersCharacterSet = v2->_nonPhoneNumbersCharacterSet;
    v2->_nonPhoneNumbersCharacterSet = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v7 formUnionWithCharacterSet:v8];

    v9 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v7 formUnionWithCharacterSet:v9];

    [v7 addCharactersInString:@"+"];
    v10 = [v7 copy];
    phoneNumbersIgnoredCharacterSet = v2->_phoneNumbersIgnoredCharacterSet;
    v2->_phoneNumbersIgnoredCharacterSet = v10;
  }

  return v2;
}

- (id)canonicalizedPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectorySanitizer *)self phoneNumbersIgnoredCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 componentsJoinedByString:&stru_1F2C96788];

  v8 = [(CXCallDirectorySanitizer *)self nonPhoneNumbersCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8];

  v10 = 0;
  if ([v7 length])
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = strtoll([v7 UTF8String], 0, 10);
      v10 = 0;
      if ((v11 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v11];
      }
    }
  }

  return v10;
}

@end