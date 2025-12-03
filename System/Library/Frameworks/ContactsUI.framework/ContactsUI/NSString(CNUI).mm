@interface NSString(CNUI)
- (id)cnui_stringByTransliteratingToKanaAsName:()CNUI;
- (id)cnui_stringByTransliteratingToPhoneticCharactersForProperty:()CNUI;
- (uint64_t)cnui_firstUTF32Character;
- (uint64_t)cnui_shouldTransliterateToLatin;
- (uint64_t)cnui_shouldUseJapaneseTransliteration;
- (uint64_t)cnui_shouldUseZhuyinTransliteration;
@end

@implementation NSString(CNUI)

- (id)cnui_stringByTransliteratingToPhoneticCharactersForProperty:()CNUI
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695C350];
  v14 = *MEMORY[0x1E695C340];
  v4 = v14;
  v15 = v5;
  v16 = *MEMORY[0x1E695C348];
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v14 count:3];
  v9 = [v4 isEqualToString:{v7, v14, v15, v16, v17}];
  v10 = [v8 containsObject:v7];

  if ([self cnui_shouldUseJapaneseTransliteration])
  {
    selfCopy = [self cnui_stringByTransliteratingToKanaAsName:v10];
    goto LABEL_16;
  }

  if ([self _isOnlyIdeographs])
  {
    if ([self cnui_shouldUseZhuyinTransliteration])
    {
      if (v9)
      {
        [self _stringByTransliteratingToZhuyinAsFamilyName];
      }

      else
      {
        [self _stringByTransliteratingToZhuyin];
      }

      selfCopy = LABEL_7:;
      goto LABEL_16;
    }

    if ([self cnui_shouldTransliterateToLatin])
    {
      if (v9)
      {
        [self _stringByTransliteratingToPinyinAsFamilyName];
      }

      else
      {
        [self _stringByTransliteratingToPinyin];
      }

      goto LABEL_7;
    }
  }

  else if ([self cnui_shouldTransliterateToLatin])
  {
    selfCopy = [self _stringByApplyingTransform:@"Any-Latin Any-Title; NFD"];;
    goto LABEL_16;
  }

  selfCopy = self;
LABEL_16:
  v12 = selfCopy;

  return v12;
}

- (uint64_t)cnui_shouldTransliterateToLatin
{
  if (cnui_shouldTransliterateToLatin___onceToken != -1)
  {
    dispatch_once(&cnui_shouldTransliterateToLatin___onceToken, &__block_literal_global_62371);
  }

  result = [cnui_shouldTransliterateToLatin___supportedScripts containsIndex:25];
  if (result)
  {
    [self cnui_firstUTF32Character];
    return [cnui_shouldTransliterateToLatin___supportedScripts containsIndex:uscript_getScript()] ^ 1;
  }

  return result;
}

- (uint64_t)cnui_shouldUseZhuyinTransliteration
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = MEMORY[0x19A8F92C0]();
  v2 = [v1 isEqualToString:@"Zhuyin"];

  if (v2)
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  UIKeyboardGetActiveInputModes();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v3 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v16;
  while (2)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      v10 = MEMORY[0x19A8F92C0](v9);
      v11 = [v10 isEqualToString:{@"Zhuyin", v15}];

      if (v11)
      {
        v6 = 1;
      }

      else
      {
        v12 = MEMORY[0x19A8F92C0](v9);
        v13 = [v12 isEqualToString:@"Pinyin"];

        v5 |= v13;
        if ((v6 & 1) == 0)
        {
          continue;
        }
      }

      if (v5)
      {
        LOBYTE(v3) = 0;
        goto LABEL_16;
      }
    }

    v3 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      continue;
    }

    break;
  }

  LOBYTE(v3) = v6 & (v5 ^ 1);
LABEL_16:

  return v3 & 1;
}

- (uint64_t)cnui_shouldUseJapaneseTransliteration
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v1 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    v4 = *MEMORY[0x1E695D9B0];
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v6 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:*(*(&v11 + 1) + 8 * i)];
        v7 = [v6 objectForKeyedSubscript:v4];

        if ([v7 isEqualToString:@"ja"])
        {

          v9 = 1;
          goto LABEL_13;
        }

        v8 = [v7 isEqualToString:@"zh"];

        if (v8)
        {
          goto LABEL_11;
        }
      }

      v2 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)cnui_stringByTransliteratingToKanaAsName:()CNUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NSString_CNUI__cnui_stringByTransliteratingToKanaAsName___block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  if (cnui_stringByTransliteratingToKanaAsName____onceToken != -1)
  {
    dispatch_once(&cnui_stringByTransliteratingToKanaAsName____onceToken, block);
  }

  string = [MEMORY[0x1E696AD60] string];
  v6 = cnui_stringByTransliteratingToKanaAsName____japaneseTokenizer;
  v14.length = [(__CFString *)self length];
  v14.location = 0;
  CFStringTokenizerSetString(v6, self, v14);
  if (a3)
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0x400000;
  }

  while (CFStringTokenizerAdvanceToNextToken(cnui_stringByTransliteratingToKanaAsName____japaneseTokenizer))
  {
    v8 = CFStringTokenizerCopyCurrentTokenAttribute(cnui_stringByTransliteratingToKanaAsName____japaneseTokenizer, v7);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetLength(v8) >= 1)
      {
        CFStringAppend(string, v9);
      }

      CFRelease(v9);
    }
  }

  v10 = [(__CFString *)string stringByApplyingTransform:@"Hiragana-Katakana" reverse:0];

  return v10;
}

- (uint64_t)cnui_firstUTF32Character
{
  result = [self length];
  if (result)
  {
    if (result != 1 && (v3 = [self characterAtIndex:0], v4 = objc_msgSend(self, "characterAtIndex:", 1), (v3 & 0xFC00) == 0xD800) && (v4 & 0xFC00) == 0xDC00)
    {
      return (v4 + (v3 << 10) - 56613888);
    }

    else
    {
      return [self characterAtIndex:0];
    }
  }

  return result;
}

@end