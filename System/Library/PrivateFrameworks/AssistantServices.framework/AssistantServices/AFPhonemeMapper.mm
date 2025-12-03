@interface AFPhonemeMapper
+ (id)_buildRegexMatchingSubstrings:(id)substrings;
+ (id)_mapForLanguageCode:(id)code;
- (AFPhonemeMapper)initWithLanguageCode:(id)code;
- (id)stringByReplacingPhonemesInString:(id)string;
@end

@implementation AFPhonemeMapper

- (id)stringByReplacingPhonemesInString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(stringCopy, "length")}];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3010000000;
    v25 = 0;
    v26 = 0;
    v24 = &unk_19152ACD1;
    regex = self->_regex;
    v7 = [stringCopy length];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __53__AFPhonemeMapper_stringByReplacingPhonemesInString___block_invoke;
    v16 = &unk_1E7342660;
    v20 = &v21;
    v8 = v5;
    v17 = v8;
    v9 = stringCopy;
    v18 = v9;
    selfCopy = self;
    [(NSRegularExpression *)regex enumerateMatchesInString:v9 options:0 range:0 usingBlock:v7, &v13];
    v10 = [v9 substringFromIndex:{v22[5] + v22[4], v13, v14, v15, v16}];
    [v8 appendString:v10];

    v11 = v8;
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __53__AFPhonemeMapper_stringByReplacingPhonemesInString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 range];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
    v6 = *(*(*(a1 + 56) + 8) + 40) + *(*(*(a1 + 56) + 8) + 32);
    if (v3 >= v6)
    {
      v7 = v4;
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) substringWithRange:{v6, v3 - v6}];
      [v8 appendString:v9];

      v15 = [*(a1 + 40) substringWithRange:{v5, v7}];
      if (v15)
      {
        v10 = [*(*(a1 + 48) + 16) objectForKey:v15];
        v11 = v15;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        [*(a1 + 32) appendString:?];
      }

      v14 = *(*(a1 + 56) + 8);
      *(v14 + 32) = v5;
      *(v14 + 40) = v7;
    }
  }
}

- (AFPhonemeMapper)initWithLanguageCode:(id)code
{
  codeCopy = code;
  v15.receiver = self;
  v15.super_class = AFPhonemeMapper;
  v5 = [(AFPhonemeMapper *)&v15 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    languageCode = v5->_languageCode;
    v5->_languageCode = v6;

    v8 = [AFPhonemeMapper _mapForLanguageCode:v5->_languageCode];
    phonemeMap = v5->_phonemeMap;
    v5->_phonemeMap = v8;

    v10 = v5->_phonemeMap;
    if (v10)
    {
      allKeys = [(NSDictionary *)v10 allKeys];
      v12 = [AFPhonemeMapper _buildRegexMatchingSubstrings:allKeys];
      regex = v5->_regex;
      v5->_regex = v12;
    }

    else
    {
      allKeys = v5;
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_buildRegexMatchingSubstrings:(id)substrings
{
  v19 = *MEMORY[0x1E69E9840];
  substringsCopy = substrings;
  if ([substringsCopy count])
  {
    v4 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = substringsCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AE70] escapedPatternForString:{*(*(&v14 + 1) + 8 * i), v14}];
          [v4 appendString:v10];

          [v4 appendString:@"|"];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, @""}]);
    v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v4 options:0 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_mapForLanguageCode:(id)code
{
  if (code)
  {
    v3 = MEMORY[0x1E696AAE8];
    codeCopy = code;
    v5 = [v3 bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:codeCopy ofType:@"plist" inDirectory:@"PhonemeMaps"];

    v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end