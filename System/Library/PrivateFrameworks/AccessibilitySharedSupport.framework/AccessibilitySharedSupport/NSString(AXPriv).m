@interface NSString(AXPriv)
+ (uint64_t)_characterSetWithPattern:()AXPriv;
+ (uint64_t)_ideographSet;
+ (uint64_t)_japaneseLetterSet;
- (uint64_t)_isJapanesePhrase;
- (uint64_t)_isOnlyIdeographs;
@end

@implementation NSString(AXPriv)

+ (uint64_t)_characterSetWithPattern:()AXPriv
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  HIDWORD(v9) = 0;
  v4 = [v3 length];
  if ([v3 _fastCharacterContents])
  {
    v5 = uset_openPattern();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    [v3 getCharacters:&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v4}];
    v5 = uset_openPattern();
  }

  if (SHIDWORD(v9) >= 1)
  {
    NSLog(&cfstr_CouldnTCreateU.isa, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (uint64_t)_ideographSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NSString_AXPriv___ideographSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_ideographSet___onceToken != -1)
  {
    dispatch_once(&_ideographSet___onceToken, block);
  }

  return _ideographSet___ideographSet;
}

+ (uint64_t)_japaneseLetterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NSString_AXPriv___japaneseLetterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_japaneseLetterSet___onceToken != -1)
  {
    dispatch_once(&_japaneseLetterSet___onceToken, block);
  }

  return _japaneseLetterSet___japaneseLetterSet;
}

- (uint64_t)_isOnlyIdeographs
{
  v2 = [objc_opt_class() _ideographSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_isJapanesePhrase
{
  v2 = [objc_opt_class() _japaneseLetterSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

@end