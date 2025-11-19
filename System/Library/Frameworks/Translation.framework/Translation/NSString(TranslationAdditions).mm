@interface NSString(TranslationAdditions)
- (BOOL)lt_isWhiteSpaceOnlyString;
- (CFIndex)lt_codeUnitsRangeFromCodePointsRange:()TranslationAdditions;
- (id)lt_wordRangesWithLocale:()TranslationAdditions;
- (id)lt_wordRangesWithoutOmittingPunctuationWithLocale:()TranslationAdditions;
- (uint64_t)lt_codePointsRangeFromCodeUnitsRange:()TranslationAdditions;
@end

@implementation NSString(TranslationAdditions)

- (id)lt_wordRangesWithLocale:()TranslationAdditions
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD89D8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = *MEMORY[0x277CD8978];
  v19[0] = *MEMORY[0x277CD8978];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v9 = [v6 initWithTagSchemes:v8];

  [v9 setString:a1];
  v10 = [a1 length];
  v11 = [v5 lt_nlLanguageCode];

  if (v11)
  {
    [v9 setLanguage:v11 range:{0, v10}];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__NSString_TranslationAdditions__lt_wordRangesWithLocale___block_invoke;
  v17[3] = &unk_278B6E448;
  v18 = v12;
  v13 = v12;
  [v9 enumerateTagsInRange:0 unit:v10 scheme:0 options:v7 usingBlock:{38, v17}];
  v14 = [v13 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)lt_wordRangesWithoutOmittingPunctuationWithLocale:()TranslationAdditions
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD89D8]);
  v6 = *MEMORY[0x277CD8978];
  v24[0] = *MEMORY[0x277CD8978];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v8 = [v5 initWithTagSchemes:v7];

  [v8 setString:a1];
  v9 = [a1 length];
  v10 = [v4 lt_nlLanguageCode];
  if (v10)
  {
    [v8 setLanguage:v10 range:{0, v9}];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __84__NSString_TranslationAdditions__lt_wordRangesWithoutOmittingPunctuationWithLocale___block_invoke;
  v19 = &unk_278B6E470;
  v21 = v22;
  v12 = v11;
  v20 = v12;
  [v8 enumerateTagsInRange:0 unit:v9 scheme:0 options:v6 usingBlock:{32, &v16}];
  v13 = [v12 copy];

  _Block_object_dispose(v22, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (CFIndex)lt_codeUnitsRangeFromCodePointsRange:()TranslationAdditions
{
  if (!(a3 | a4))
  {
    return 0;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    Length = CFStringGetLength(theString);
    v9 = a3 + a4;
    if (Length >= 1)
    {
      v10 = Length;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        if ((CFStringGetCharacterAtIndex(theString, v13) & 0xFC00) != 0xDC00)
        {
          if (a3 == v12)
          {
            v11 = v13;
          }

          if (v9 == v12)
          {
            v12 = v9;
            goto LABEL_15;
          }

          ++v12;
        }

        if (v10 == ++v13)
        {
          goto LABEL_15;
        }
      }
    }

    v12 = 0;
    v11 = 0;
LABEL_15:
    if (v12 == v9)
    {
      return v11;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)lt_codePointsRangeFromCodeUnitsRange:()TranslationAdditions
{
  if (!(a3 | a4))
  {
    return 0;
  }

  v5 = a3;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a3 < [(__CFString *)a1 length])
  {
    v8 = v5 + a4;
    if (v5 + a4 <= [(__CFString *)a1 length])
    {
      if (v5 < 1)
      {
        v5 = 0;
        v4 = 0;
      }

      else
      {
        v4 = 0;
        for (i = 0; i != v5; ++i)
        {
          if ((CFStringGetCharacterAtIndex(a1, i) & 0xFC00) != 0xD800)
          {
            ++v4;
          }
        }
      }

      if ((CFStringGetCharacterAtIndex(a1, v5) & 0xFC00) == 0xDC00)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v5 < v8)
      {
        v11 = 0;
        do
        {
          if ((CFStringGetCharacterAtIndex(a1, v5) & 0xFC00) != 0xD800)
          {
            ++v11;
          }

          ++v5;
        }

        while (v8 != v5);
        v5 = v8;
      }

      if (v8 != [(__CFString *)a1 length]&& (CFStringGetCharacterAtIndex(a1, v5) & 0xFC00) == 0xDC00)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v4;
}

- (BOOL)lt_isWhiteSpaceOnlyString
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [v2 invertedSet];

  v4 = [a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL;
  return v4;
}

@end