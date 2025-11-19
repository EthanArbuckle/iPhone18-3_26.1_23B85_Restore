@interface NSCharacterSet(AXFRExtras)
+ (id)whitespaceNewlineAndSpecialCharacterSet;
+ (id)wordBreakCharacterSet;
@end

@implementation NSCharacterSet(AXFRExtras)

+ (id)whitespaceNewlineAndSpecialCharacterSet
{
  if (whitespaceNewlineAndSpecialCharacterSet_CharacterSet)
  {
    v0 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
  }

  else
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v2 = 65520;
    v3 = 15;
    do
    {
      [v1 appendFormat:@"%C", v2];
      v2 = (v2 + 1);
      --v3;
    }

    while (v3);
    v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v4 mutableCopy];

    [v5 addCharactersInString:v1];
    v6 = [v5 copy];
    v7 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
    whitespaceNewlineAndSpecialCharacterSet_CharacterSet = v6;

    v0 = whitespaceNewlineAndSpecialCharacterSet_CharacterSet;
  }

  return v0;
}

+ (id)wordBreakCharacterSet
{
  if (wordBreakCharacterSet_CharacterSetIncludesPunctuation)
  {
    v0 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
  }

  else
  {
    v1 = [MEMORY[0x1E696AB08] whitespaceNewlineAndSpecialCharacterSet];
    v2 = [v1 mutableCopy];

    [v2 addCharactersInString:@"\x05"];
    v3 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v2 formUnionWithCharacterSet:v3];
    v4 = [v2 copy];
    v5 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
    wordBreakCharacterSet_CharacterSetIncludesPunctuation = v4;

    v0 = wordBreakCharacterSet_CharacterSetIncludesPunctuation;
  }

  return v0;
}

@end