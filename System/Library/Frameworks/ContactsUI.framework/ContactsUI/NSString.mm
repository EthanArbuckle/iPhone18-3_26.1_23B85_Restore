@interface NSString
@end

@implementation NSString

void __49__NSString_CNUI__cnui_shouldTransliterateToLatin__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v1 = +[CNUIContactsEnvironment currentEnvironment];
  v2 = [v1 collation];
  v3 = [v2 indexSections];

  v4 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v5 = [v4 invertedSet];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) key];
        if ([v11 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 cnui_firstUTF32Character];
          Script = uscript_getScript();
          [v0 addIndex:Script];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = cnui_shouldTransliterateToLatin___supportedScripts;
  cnui_shouldTransliterateToLatin___supportedScripts = v0;
}

void __59__NSString_CNUI__cnui_stringByTransliteratingToKanaAsName___block_invoke(uint64_t a1)
{
  v2 = CFLocaleCreate(0, @"ja");
  v4.length = CFStringGetLength(*(a1 + 32));
  v4.location = 0;
  cnui_stringByTransliteratingToKanaAsName____japaneseTokenizer = CFStringTokenizerCreate(0, 0, v4, 0, v2);

  CFRelease(v2);
}

@end