@interface PKTextInputLanguageSpec
- (double)singleCharacterCommitDelay;
- (double)standardCommitDelay;
- (double)strokeFadeOutDuration;
- (id)debugLocaleDescriptions;
- (uint64_t)uncommittedTokenColumnCount;
- (void)initWithLocales:(void *)a1;
@end

@implementation PKTextInputLanguageSpec

- (void)initWithLocales:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = PKTextInputLanguageSpec;
    a1 = objc_msgSendSuper2(&v11, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;

      if (qword_1ED6A4F90 != -1)
      {
        dispatch_once(&qword_1ED6A4F90, &__block_literal_global_6);
      }

      v6 = [v3 firstObject];
      v7 = [v6 languageCode];
      v8 = [v7 lowercaseString];

      if ([qword_1ED6A4F78 containsObject:v8])
      {
        v9 = 2;
      }

      else if ([_MergedGlobals_120 containsObject:v8])
      {
        v9 = 1;
      }

      else
      {
        if (![qword_1ED6A4F80 containsObject:v8])
        {
          a1[1] = 0;
          goto LABEL_12;
        }

        v9 = 3;
      }

      a1[1] = v9;
LABEL_12:
      a1[2] = [qword_1ED6A4F88 containsObject:v8];
    }
  }

  return a1;
}

void __43__PKTextInputLanguageSpec_initWithLocales___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"zh", @"yue", @"ja", @"th", 0}];
  v1 = _MergedGlobals_120;
  _MergedGlobals_120 = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"en", @"pt", @"fr", @"it", @"de", @"es", 0}];
  v3 = qword_1ED6A4F78;
  qword_1ED6A4F78 = v2;

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ko", 0}];
  v5 = qword_1ED6A4F80;
  qword_1ED6A4F80 = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ar", @"ars", @"vi", 0}];
  v7 = qword_1ED6A4F88;
  qword_1ED6A4F88 = v6;
}

- (uint64_t)uncommittedTokenColumnCount
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 > 1)
    {
      if (v1 != 2)
      {
        v2 = v1 == 3;
        v3 = 2;
LABEL_7:
        if (v2)
        {
          v4 = v3;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_11;
      }
    }

    else if (v1)
    {
      v2 = v1 == 1;
      v3 = 3;
      goto LABEL_7;
    }

    v5 = +[PKTextInputSettings sharedSettings];
    v4 = [v5 incrementalCommitWordsBack];

LABEL_11:
    if (v4 <= 1)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (double)strokeFadeOutDuration
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = +[PKTextInputSettings sharedSettings];
  [v1 textInputStrokeFadeOutDuration];
  v3 = v2;

  return v3;
}

- (double)standardCommitDelay
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = +[PKTextInputSettings sharedSettings];
  [v2 textInputStandardCommitDelay];
  v4 = v3;

  result = v4 + 0.3;
  if (*(a1 + 16) != 1)
  {
    return v4;
  }

  return result;
}

- (double)singleCharacterCommitDelay
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = +[PKTextInputSettings sharedSettings];
  [v2 singleCharacterCommitDelay];
  v4 = v3;

  result = v4 + 0.3;
  if (*(a1 + 16) != 1)
  {
    return v4;
  }

  return result;
}

- (id)debugLocaleDescriptions
{
  v1 = a1;
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[3], "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1[3];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) localeIdentifier];
          if (v8)
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v1 = [v2 copy];
  }

  return v1;
}

@end