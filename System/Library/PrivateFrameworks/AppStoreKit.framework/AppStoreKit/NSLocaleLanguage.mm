@interface NSLocaleLanguage
- (BOOL)isEqual:(id)equal;
- (NSLocaleLanguage)initWithLocaleIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation NSLocaleLanguage

- (NSLocaleLanguage)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NSLocaleLanguage;
  v5 = [(NSLocaleLanguage *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
    v7 = v6;
    if (v6)
    {
      languageCode = [v6 languageCode];
      if ([languageCode length])
      {
        [(NSLocaleLanguage *)v5 setTwoCharacterCode:languageCode];
        threeCharacterLanguageCode = [v7 threeCharacterLanguageCode];
        [(NSLocaleLanguage *)v5 setThreeCharacterCode:threeCharacterLanguageCode];

        v10 = v5;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  twoCharacterCode = [(NSLocaleLanguage *)self twoCharacterCode];
  v3 = [twoCharacterCode hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      twoCharacterCode = [(NSLocaleLanguage *)self twoCharacterCode];
      twoCharacterCode2 = [(NSLocaleLanguage *)equalCopy twoCharacterCode];
      v7 = [twoCharacterCode isEqual:twoCharacterCode2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end