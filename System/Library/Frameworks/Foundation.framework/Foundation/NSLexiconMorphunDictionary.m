@interface NSLexiconMorphunDictionary
@end

@implementation NSLexiconMorphunDictionary

void __64___NSLexiconMorphunDictionary_allPossibleWordAttributesForWord___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  cf = 0;
  v6 = off_1ED43F858(*(*(a1 + 32) + 24), a2, &cf);
  v7 = &setWebPageURL__sOnce;
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v8 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Obtaining the token chain from a word): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  if (!v6)
  {
    v16 = 0;
    v9 = 0;
LABEL_34:
    v18 = 0;
    v19 = 1;
    v17 = 1;
    goto LABEL_35;
  }

  cf = 0;
  v9 = off_1ED43F860(*(*(a1 + 32) + 16), v6, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v10 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Annotating the token chain): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  if (!v9)
  {
    v16 = 0;
    goto LABEL_34;
  }

  cf = 0;
  v11 = off_1ED43F868(v9, 0, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v12 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Obtaining the first token): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  cf = 0;
  v13 = off_1ED43F870(v11, 6, &cf);
  if ((v13 & (cf == 0)) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v15 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v15, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Checking that the token is the correct type): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
    goto LABEL_30;
  }

  if (!v14)
  {
LABEL_30:
    v16 = 0;
LABEL_31:
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_35;
  }

  cf = 0;
  v16 = off_1ED43F878(v14, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v20 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v20, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Casting a token to obtain a morphological word token): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  if (!v16)
  {
    goto LABEL_31;
  }

  cf = 0;
  v16 = off_1ED43F880(v16, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v21 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = cf;
      _os_log_error_impl(&dword_18075C000, v21, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Obtaining the lemma mappings for a morphological word token): %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  if (!v16)
  {
    goto LABEL_31;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  Count = CFArrayGetCount(v16);
  if (Count < 1)
  {
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v23 = Count;
    v31 = a4;
    for (i = 0; i != v23; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
      cf = 0;
      v26 = off_1ED43F888(ValueAtIndex, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v27 = v7[46];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = cf;
          _os_log_error_impl(&dword_18075C000, v27, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Obtaining surface form grammemes): %{public}@", buf, 0xCu);
        }

        CFRelease(cf);
      }

      else
      {
        v28 = off_1ED43F890(*(*(a1 + 32) + 32), v26, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v29 = v7[46];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v34 = cf;
            _os_log_error_impl(&dword_18075C000, v29, OS_LOG_TYPE_ERROR, "Cannot use inflection engine (Obtaining dictionary names for grammemes): %{public}@", buf, 0xCu);
          }

          CFRelease(cf);
        }

        else
        {
          v30 = [[NSMorphology alloc] initWithMorphunAttributeValues:v28];
          if ([(NSMorphology *)v30 partOfSpeech]!= (NSGrammaticalPartOfSpeechAbbreviation|NSGrammaticalPartOfSpeechDeterminer))
          {
            [v18 addObject:v30];
          }
        }

        v7 = &setWebPageURL__sOnce;
      }
    }

    v19 = 0;
    v17 = 0;
    a4 = v31;
  }

LABEL_35:
  if ([v18 count])
  {
    *(*(*(a1 + 40) + 8) + 40) = v18;
    *a4 = 1;
    if (v19)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if ((v19 & 1) == 0)
  {
LABEL_37:
    CFRelease(v16);
  }

LABEL_38:
  if ((v17 & 1) == 0)
  {
    off_1ED43F898(v9);
  }

  if (v6)
  {
    off_1ED43F898(v6);
  }
}

@end