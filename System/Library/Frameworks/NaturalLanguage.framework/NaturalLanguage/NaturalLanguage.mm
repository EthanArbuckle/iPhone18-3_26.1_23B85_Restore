id tagForNLTag(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (tagForNLTag_onceToken == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  tagForNLTag_cold_1();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = [tagForNLTag_tagDictionary objectForKey:v2];
  if (!v3)
  {
    v3 = v2;
  }

LABEL_7:

  return v3;
}

__CFString *_getLanguageTag(unsigned int a1)
{
  if (a1 - 2 < 0x39 || a1 >= 0x45)
  {
    v2 = _languageTags[a1 - 1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id mostRecentEmbedding(void *a1)
{
  v1 = [a1 sortedArrayUsingComparator:&__block_literal_global_392];
  if ([v1 count])
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_19D490AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL BOOLDefaultForKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NL%@", a1];
  v2 = [v1 UTF8String];

  return getenv(v2) != 0;
}

id stringDefaultForKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NL%@", a1];
  v2 = [v1 UTF8String];

  v3 = getenv(v2);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  return v3;
}

uint64_t BOOLForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEqualToString:@"YES"])
    {
      a3 = 1;
    }

    else
    {
      if (([v4 isEqualToString:@"NO"] & 1) == 0)
      {
        v5 = [v4 length];
        a3 = 1;
        if (![v4 compare:@"YES" options:1 range:{0, v5}])
        {
          goto LABEL_13;
        }

        if ([v4 compare:@"NO" options:1 range:{0, v5}])
        {
          a3 = 1;
          if (![v4 compare:@"Y" options:1 range:{0, v5}])
          {
            goto LABEL_13;
          }

          if ([v4 compare:@"N" options:1 range:{0, v5}])
          {
            a3 = [v4 integerValue] != 0;
            goto LABEL_13;
          }
        }
      }

      a3 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3 = [v4 BOOLValue];
    }
  }

LABEL_13:

  return a3;
}

uint64_t BOOLForKeyWithDefault(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = BOOLDefaultForKey(v3);
  v6 = BOOLForKey(v4, v3, v5);

  return v6;
}

uint64_t unsignedIntegerForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3 = [v4 unsignedIntegerValue];
    }
  }

  return a3;
}

id stringForKey(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectForKey:a2];
  v7 = v5;
  if (v6)
  {
    objc_opt_class();
    v7 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }
  }

  return v7;
}

id stringForKeyWithDefault(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = stringDefaultForKey(v6);
  v9 = [v7 objectForKey:v6];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;

    v8 = v10;
  }

  else if (!v8)
  {
    v8 = v5;
  }

  return v8;
}

id localizationForOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"Localization"];
  if (!v2)
  {
    v3 = [v1 objectForKey:@"Locale"];
    v4 = v3;
    if (!v3 || ([v3 localeIdentifier], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v2 = [v1 objectForKey:@"Language"];
    }
  }

  return v2;
}

uint64_t granularityForOptions(void *a1)
{
  v1 = [a1 objectForKey:@"Granularity"];
  v2 = v1;
  if (v1)
  {
    if ([v1 integerValue] == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

id splitIndexes(unint64_t a1, double a2, double a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(NLNumberGenerator);
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = 0;
  if (a2 >= 0.0 && a3 >= 0.0 && a2 + a3 <= 1.0)
  {
    v10 = (a1 * a2);
    v11 = (a1 * a3);
    v12 = a1 - (v10 + v11);
    if (a1)
    {
      v13 = 0;
      do
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        [v7 addObject:v14];

        ++v13;
      }

      while (a1 != v13);
      if (a1 != 1)
      {
        do
        {
          v15 = a1--;
          v16 = [(NLNumberGenerator *)v6 numberInRange:0, v15];
          if (a1 != v16)
          {
            [v7 exchangeObjectAtIndex:a1 withObjectAtIndex:v16];
          }
        }

        while (a1 > 1);
      }
    }

    v17 = [v7 subarrayWithRange:{0, v12}];
    v18 = [v17 sortedArrayUsingSelector:sel_compare_];

    v19 = [v7 subarrayWithRange:{v12, v10}];
    v20 = [v19 sortedArrayUsingSelector:sel_compare_];

    v21 = [v7 subarrayWithRange:{v12 + v10, v11}];
    v22 = [v21 sortedArrayUsingSelector:sel_compare_];

    v25[0] = v18;
    v25[1] = v20;
    v25[2] = v22;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t tokenIsSentenceTerminator(void *a1)
{
  v1 = a1;
  if (tokenIsSentenceTerminator_onceToken != -1)
  {
    tokenIsSentenceTerminator_cold_1();
  }

  [v1 rangeOfCharacterFromSet:tokenIsSentenceTerminator_sentenceTerminatorCharacterSet];
  if (!v2 || ([v1 rangeOfCharacterFromSet:tokenIsSentenceTerminator_nonSentenceTerminatorCharacterSet], v3) || (objc_msgSend(v1, "isEqualToString:", @"..") & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 isEqualToString:@"..."] ^ 1;
  }

  return v4;
}

uint64_t __tokenIsSentenceTerminator_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".?!。！．？｡"];
  v1 = tokenIsSentenceTerminator_sentenceTerminatorCharacterSet;
  tokenIsSentenceTerminator_sentenceTerminatorCharacterSet = v0;

  tokenIsSentenceTerminator_nonSentenceTerminatorCharacterSet = [tokenIsSentenceTerminator_sentenceTerminatorCharacterSet invertedSet];

  return MEMORY[0x1EEE66BB8]();
}

id normalizedWord(void *a1)
{
  v1 = a1;
  if (normalizedWord_onceToken != -1)
  {
    normalizedWord_cold_1();
  }

  [v1 rangeOfCharacterFromSet:normalizedWord_nonLatinBasicExtendedABCharacterSet];
  if (v2)
  {
    v3 = [v1 precomposedStringWithCanonicalMapping];
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v4;
}

uint64_t __normalizedWord_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{0, 591}];
  v1 = normalizedWord_latinBasicExtendedABCharacterSet;
  normalizedWord_latinBasicExtendedABCharacterSet = v0;

  normalizedWord_nonLatinBasicExtendedABCharacterSet = [normalizedWord_latinBasicExtendedABCharacterSet invertedSet];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t tokenIDFromTokenAndVocabularyMap(void *a1, void *a2)
{
  v3 = a2;
  v4 = normalizedWord(a1);
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

id wordRangesFromSentence(void *a1, __CFStringTokenizer *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(__CFString *)v3 length];
  if (wordRangesFromSentence_onceToken != -1)
  {
    wordRangesFromSentence_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24.location = 0;
    v24.length = 0;
    v6 = CFStringTokenizerCreate(0, &stru_1F10C6540, v24, 0, 0);
    a2 = v6;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 0;
LABEL_6:
  v25.location = 0;
  v25.length = v5;
  CFStringTokenizerSetString(a2, v3, v25);
  while (CFStringTokenizerAdvanceToNextToken(a2))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(a2);
    if (CurrentTokenRange.length < 1)
    {
      break;
    }

    v8 = [MEMORY[0x1E696B098] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
    [v4 addObject:v8];
  }

  v26.location = 0;
  v26.length = 0;
  CFStringTokenizerSetString(a2, &stru_1F10C6540, v26);
  if (v6)
  {
    CFRelease(v6);
  }

  if ([v4 count])
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = [v4 objectAtIndex:v9];
      v12 = [v11 rangeValue];
      v14 = v13;

      v9 = v10 + 1;
      while (v9 < [v4 count])
      {
        v15 = v14 + v12;
        if (v15 >= v5)
        {
          break;
        }

        [(__CFString *)v3 rangeOfCharacterFromSet:wordRangesFromSentence_wordJoinerCharacterSet options:8 range:v15, 1];
        if (!v16)
        {
          break;
        }

        v17 = [v4 objectAtIndex:v10 + 1];
        v18 = [v17 rangeValue];
        v20 = v19;

        if (v18 != v15 + 1)
        {
          break;
        }

        v14 = v20 - v12 + v18;
        v21 = [MEMORY[0x1E696B098] valueWithRange:{v12, v14}];
        [v4 replaceObjectAtIndex:v10 withObject:v21];

        [v4 removeObjectAtIndex:v10 + 1];
      }
    }

    while (v9 < [v4 count]);
  }

  return v4;
}

uint64_t __wordRangesFromSentence_block_invoke()
{
  wordRangesFromSentence_wordJoinerCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".-'_‐‑’"];

  return MEMORY[0x1EEE66BB8]();
}

id tokenRangesFromSentence(void *a1, __CFStringTokenizer *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = wordRangesFromSentence(v3, a2);
  v6 = [v3 length];
  v7 = [v5 count];
  v8 = v7;
  if (tokenRangesFromSentence_onceToken == -1)
  {
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    tokenRangesFromSentence_cold_1();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v23 = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v24 = v28;
  do
  {
    v12 = v11;
    v13 = v9;
    v14 = [v5 objectAtIndex:{v10, v23, v24}];
    v11 = [v14 rangeValue];
    v9 = v15;

    v16 = v12 + v13;
    v17 = v11 >= v12 + v13;
    v18 = v11 - (v12 + v13);
    if (v18 != 0 && v17)
    {
      [v3 rangeOfCharacterFromSet:tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet options:0 range:{v16, v18}];
      if (v19)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v28[0] = __tokenRangesFromSentence_block_invoke_2;
        v28[1] = &unk_1E7628E80;
        v29 = v4;
        [v3 enumerateSubstringsInRange:v16 options:v18 usingBlock:{2, v27}];
      }
    }

    v20 = [MEMORY[0x1E696B098] valueWithRange:{v11, v9}];
    [v4 addObject:v20];

    ++v10;
  }

  while (v8 != v10);
  v8 = v11 + v9;
  v6 = v23;
LABEL_10:
  if (v6 > v8)
  {
    [v3 rangeOfCharacterFromSet:tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet options:0 range:{v8, v6 - v8}];
    if (v21)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __tokenRangesFromSentence_block_invoke_3;
      v25[3] = &unk_1E7628E80;
      v26 = v4;
      [v3 enumerateSubstringsInRange:v8 options:v6 - v8 usingBlock:{2, v25}];
    }
  }

  return v4;
}

void __tokenRangesFromSentence_block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v0 = [v2 invertedSet];
  v1 = tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet;
  tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet = v0;
}

void __tokenRangesFromSentence_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if (a4 != 1 || (v7 = [v12 characterAtIndex:0] == 32, v8 = v12, !v7))
  {
    [v12 rangeOfCharacterFromSet:tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet];
    v8 = v12;
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
      [v10 addObject:v11];

      v8 = v12;
    }
  }
}

void __tokenRangesFromSentence_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if (a4 != 1 || (v7 = [v12 characterAtIndex:0] == 32, v8 = v12, !v7))
  {
    [v12 rangeOfCharacterFromSet:tokenRangesFromSentence_nonWhitespaceAndNewlineCharacterSet];
    v8 = v12;
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
      [v10 addObject:v11];

      v8 = v12;
    }
  }
}

void generateTokenSequence(void *a1, __CFStringTokenizer *a2, void *a3, void *a4, void *a5)
{
  v25 = a1;
  v24 = a3;
  v23 = a4;
  v9 = a5;
  v10 = tokenRangesFromSentence(v25, a2);
  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v14;
      v16 = [v10 objectAtIndex:v13];
      v17 = [v16 rangeValue];
      v19 = v18;

      v20 = [v25 substringWithRange:{v17, v19}];
      v14 = normalizedWord(v20);

      if (v14)
      {
        [v24 addObject:v14];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
        [v23 addObject:v21];

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
        [v9 addObject:v22];
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

id inputSequenceFromSentence(void *a1, __CFStringTokenizer *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = tokenRangesFromSentence(v3, a2);
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = [v5 objectAtIndex:v8];
      v12 = [v11 rangeValue];
      v14 = v13;

      v15 = [v3 substringWithRange:{v12, v14}];
      v9 = normalizedWord(v15);

      if (v9)
      {
        [v4 addObject:v9];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return v4;
}

id formattedOutputFromSentence(void *a1, __CFStringTokenizer *a2, void *a3)
{
  v5 = a1;
  v24 = a3;
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = tokenRangesFromSentence(v5, a2);
  v8 = [v7 count];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 1];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 2];
  [v6 appendString:v9];
  [v6 appendString:@" "];
  if (!v8)
  {
    [v6 appendString:v10];
    v12 = 0;
    v13 = 1;
LABEL_9:
    v20 = [&stru_1F10C6540 stringByPaddingToLength:62 - 2 * v13 withString:@"0 " startingAtIndex:0];
    [v6 insertString:v20 atIndex:0];

    goto LABEL_10;
  }

  v22 = v10;
  v23 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v12;
    v15 = [v7 objectAtIndex:v11];
    v16 = [v15 rangeValue];
    v18 = v17;

    v19 = [v5 substringWithRange:{v16, v18}];
    v12 = normalizedWord(v19);

    if ((v13 + 2) <= 0x1F)
    {
      [v6 appendFormat:@"%llu ", tokenIDFromTokenAndVocabularyMap(v12, v24)];
      ++v13;
    }

    ++v11;
  }

  while (v8 != v11);
  v10 = v22;
  [v6 appendString:v22];
  v9 = v23;
  if ((v13 + 1) <= 0x1F)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

id labelFromFormattedOutput(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AD60] string];
  if (labelFromFormattedOutput_onceToken != -1)
  {
    labelFromFormattedOutput_cold_1();
  }

  v6 = [v3 stringByTrimmingCharactersInSet:labelFromFormattedOutput_whitespaceAndNewlineCharacterSet];
  v7 = [v6 componentsSeparatedByString:@" "];
  v8 = [v7 count];

  if (!v4)
  {
    v4 = &unk_1F10D12F8;
  }

  if (v8)
  {
    v9 = 1;
    v10 = v8;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v4, "unsignedIntegerValue")];
      [v5 appendString:v11];

      if (v9 < v8)
      {
        [v5 appendString:@" "];
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  return v5;
}

uint64_t __labelFromFormattedOutput_block_invoke()
{
  labelFromFormattedOutput_whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

void reportInstanceCompletionToTrainer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (v7)
  {
    v8 = 3 * a3;
    if ((3 * a3) >= 0x2EE)
    {
      v9 = a2 + a4 * a3 + 1;
      v10 = v8 / 0xA;
      if (v8 >> 2 < 0x753)
      {
        v10 = (3 * a3) / 5u;
      }

      if (v10 < 0x2EE)
      {
        v10 = v8 >> 2;
      }

      if (v10 < 0x2EE)
      {
        v10 = v8 >> 1;
      }

      if (!(v9 % v10))
      {
        v12 = v7;
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u%% complete", vcvtmd_u64_f64(v9 / v8 * 100.0 + 0.5) | 0x4059000000000000];
        [v12 logMessage:v11];

        v7 = v12;
      }
    }
  }
}

id topHypotheses(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 allKeys];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __topHypotheses_block_invoke;
  v12[3] = &unk_1E7628EA8;
  v6 = v3;
  v13 = v6;
  v7 = [v5 sortedArrayUsingComparator:v12];

  if (a2)
  {
    v8 = 0;
    do
    {
      if ([v7 count] <= v8)
      {
        break;
      }

      v9 = [v7 objectAtIndex:v8];
      v10 = [v6 objectForKey:v9];
      [v4 setObject:v10 forKey:v9];

      ++v8;
    }

    while (a2 != v8);
  }

  return v4;
}

uint64_t __topHypotheses_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 doubleValue];
  v12 = v11;

  if (v9 > v12)
  {
    return -1;
  }

  else
  {
    return v9 < v12;
  }
}

double ME_Model::FunctionGradient(ME_Model *this, uint64_t a2, double **a3)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *(this + 24);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = v10;
      --v8;
    }

    while (v8);
  }

  ME_Model::update_model_expectation(this);
  v12 = *(this + 5);
  v14 = *a2;
  v13 = *(a2 + 8);
  if (v12 == 0.0)
  {
    v15 = v13 - v14;
    if (v15)
    {
      v16 = v15 >> 3;
      v17 = *(this + 36);
      v18 = *(this + 39);
      v19 = *a3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      do
      {
        v20 = *v17++;
        v21 = v20;
        v22 = *v18++;
        *v19++ = -(v21 - v22);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v23 = v13 - v14;
    if (v23)
    {
      v24 = v23 >> 3;
      v25 = *(this + 36);
      v26 = *(this + 39);
      v27 = *(this + 24);
      v28 = v12 * -2.0;
      v29 = *a3;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      do
      {
        v30 = *v25++;
        v31 = v30;
        v32 = *v26++;
        v33 = v31 - v32;
        v34 = *v27++;
        *v29++ = -(v33 + v28 * v34);
        --v24;
      }

      while (v24);
    }
  }

  return -v11;
}

void ME_Model::update_model_expectation(ME_Model *this)
{
  std::vector<double>::resize(this + 39, ((*(this + 33) - *(this + 32)) >> 2));
  v2 = *(this + 33) - *(this + 32);
  v3 = v2 >> 2;
  if ((v2 >> 2) >= 1)
  {
    bzero(*(this + 39), (2 * v2) & 0x3FFFFFFF8);
  }

  v4 = *(this + 6);
  if (v4 == *(this + 7))
  {
    v30 = 0.0;
    v7 = *(this + 6);
    v6 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    v7 = *(this + 6);
    do
    {
      std::vector<double>::vector[abi:ne200100](v39, *(this + 70));
      v8 = ME_Model::conditional_probability(this, v7, v39);
      v9 = *v7;
      v10 = v39[0];
      v11 = log(v39[0][v9]);
      if (v8 == v9)
      {
        ++v5;
      }

      v12 = v7[1];
      v13 = v7[2];
      if (v12 != v13)
      {
        v14 = *(this + 42);
        do
        {
          v15 = (v14 + 24 * *v12);
          v16 = *v15;
          v17 = v15[1];
          if (v16 != v17)
          {
            v18 = *(this + 32);
            v19 = *(this + 39);
            do
            {
              v20 = *v16++;
              *(v19 + 8 * v20) = v10[*(v18 + 4 * v20)] + *(v19 + 8 * v20);
            }

            while (v16 != v17);
          }

          ++v12;
        }

        while (v12 != v13);
      }

      v21 = v7[4];
      v22 = v7[5];
      if (v21 != v22)
      {
        v23 = *(this + 42);
        do
        {
          v24 = (v23 + 24 * *v21);
          v25 = *v24;
          v26 = v24[1];
          if (v25 != v26)
          {
            v27 = *(this + 32);
            v28 = *(this + 39);
            do
            {
              v29 = *v25++;
              *(v28 + 8 * v29) = *(v28 + 8 * v29) + v10[*(v27 + 4 * v29)] * v21[1];
            }

            while (v25 != v26);
          }

          v21 += 2;
        }

        while (v21 != v22);
      }

      if (v10)
      {
        v39[1] = v10;
        operator delete(v10);
      }

      v6 = v6 + v11;
      v7 += 10;
    }

    while (v7 != *(this + 7));
    v4 = *(this + 6);
    v3 = (*(this + 33) - *(this + 32)) >> 2;
    v30 = v5;
  }

  v31 = (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 4));
  v32 = v3;
  if (v3 >= 1)
  {
    v33 = *(this + 39);
    v34 = v3;
    do
    {
      *v33 = *v33 / v31;
      ++v33;
      --v34;
    }

    while (v34);
  }

  *(this + 48) = 1.0 - v30 / v31;
  v35 = v6 / v31;
  v36 = *(this + 5);
  if (v36 > 0.0 && v3 >= 1)
  {
    v37 = *(this + 24);
    do
    {
      v38 = *v37++;
      v35 = v35 + -(v38 * v38) * v36;
      --v32;
    }

    while (v32);
  }
}

void sub_19D4942EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Model::perform_GIS(char **this)
{
  v2 = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v3 = (this + 24);
  v4 = 1;
  v5 = -999999.0;
  do
  {
    ME_Model::update_model_expectation(this);
    v7 = v6;
    if (v6 >= v5)
    {
      HIDWORD(v8) = -858993459 * v2 + 429496728;
      LODWORD(v8) = HIDWORD(v8);
      v10 = (v8 >> 1) < 0x19999999 && v4 > 1;
      if (&__p != v3)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&__p, this[24], this[25], (this[25] - this[24]) >> 3);
      }

      v4 -= v10;
      v11 = this[33] - this[32];
      if ((v11 >> 2) >= 1)
      {
        v12 = this[36];
        v13 = this[39];
        v14 = (v11 >> 2) & 0x7FFFFFFF;
        v15 = this[24];
        do
        {
          v16 = *v12++;
          v17 = v16;
          v18 = *v13++;
          *v15 = *v15 + log(v17 / v18) / v4;
          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v2;
      v5 = v7;
    }

    else
    {
      if (&__p != v3)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v3, __p, v21, (v21 - __p) >> 3);
      }

      ++v4;
    }
  }

  while (v2 < 200);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_19D494470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Model::perform_QUASI_NEWTON(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 264) - *(a1 + 256);
  v5 = v4 >> 2;
  std::vector<double>::vector[abi:ne200100](v18, (v4 >> 2));
  v6 = (v4 >> 2) & 0x7FFFFFFF;
  if (v5 >= 1)
  {
    v7 = *(a1 + 192);
    v8 = v18[0];
    v9 = v6;
    do
    {
      v10 = *v7++;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  v11 = *(a1 + 32);
  if (v11 <= 0.0)
  {
    ME_Model::perform_LBFGS(a1, v18, a2, __p);
  }

  else
  {
    ME_Model::perform_OWLQN(a1, v18, __p, v11);
  }

  v12 = __p[0];
  if (v5 < 1)
  {
    if (!__p[0])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *(a1 + 192);
    v14 = __p[0];
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v6;
    }

    while (v6);
  }

  operator delete(v12);
LABEL_13:
  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return 0;
}

void sub_19D494578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Model::conditional_probability(uint64_t a1, void *a2, double **a3)
{
  std::vector<double>::vector[abi:ne200100](&v46, *(a1 + 280));
  v6 = a2[1];
  v7 = a2[2];
  v8 = v46;
  if (v6 != v7)
  {
    v9 = *(a1 + 336);
    do
    {
      v10 = (v9 + 24 * *v6);
      v11 = *v10;
      v12 = v10[1];
      if (v11 != v12)
      {
        v13 = *(a1 + 192);
        v14 = *(a1 + 256);
        do
        {
          v15 = *v11++;
          v8[*(v14 + 4 * v15)] = *(v13 + 8 * v15) + v8[*(v14 + 4 * v15)];
        }

        while (v11 != v12);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v16 = a2[4];
  v17 = a2[5];
  if (v16 != v17)
  {
    v18 = *(a1 + 336);
    do
    {
      v19 = (v18 + 24 * *v16);
      v20 = *v19;
      v21 = v19[1];
      if (v20 != v21)
      {
        v22 = *(a1 + 192);
        v23 = *(a1 + 256);
        do
        {
          v24 = *v20++;
          v8[*(v23 + 4 * v24)] = v8[*(v23 + 4 * v24)] + *(v22 + 8 * v24) * v16[1];
        }

        while (v20 != v21);
      }

      v16 += 2;
    }

    while (v16 != v17);
  }

  v25 = v8 + 1;
  v26 = v8 == v47 || v25 == v47;
  v27 = v8;
  if (!v26)
  {
    v28 = *v8;
    v27 = v8;
    v29 = v8 + 1;
    do
    {
      v30 = *v29++;
      v31 = v30;
      if (v28 < v30)
      {
        v28 = v31;
        v27 = v25;
      }

      v25 = v29;
    }

    while (v29 != v47);
  }

  v32 = *(a1 + 280);
  if (v32 < 1)
  {
    v42 = 0;
    if (!v8)
    {
      return v42;
    }

    goto LABEL_32;
  }

  v33 = 0.0;
  v34 = fmax(*v27 + -700.0, 0.0);
  v35 = *(a1 + 432);
  v36 = a2[7];
  v37 = *a3;
  v38 = v32;
  v39 = v8;
  do
  {
    v40 = exp(*v39 - v34);
    if (v35)
    {
      v40 = v40 * *v36;
    }

    *v37++ = v40;
    v33 = v33 + v40;
    ++v39;
    ++v36;
    --v38;
  }

  while (v38);
  v41 = 0;
  LODWORD(v42) = 0;
  v43 = *a3;
  do
  {
    v44 = v43[v41] / v33;
    v43[v41] = v44;
    if (v44 <= v43[v42])
    {
      v42 = v42;
    }

    else
    {
      v42 = v41;
    }

    ++v41;
  }

  while (v32 != v41);
  if (v8)
  {
LABEL_32:
    v47 = v8;
    operator delete(v8);
  }

  return v42;
}

uint64_t ME_Model::make_feature_bag(ME_Model *this, int a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  if (a2 <= 0)
  {
    i = *(this + 7);
  }

  else
  {
    v5 = *(this + 6);
    for (i = *(this + 7); v5 != i; i = *(this + 7))
    {
      for (j = *(v5 + 8); j != *(v5 + 16); ++j)
      {
        v21 = *v5 + (*j << 8);
        v24 = &v21;
        v7 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, &v21);
        ++*(v7 + 5);
      }

      for (k = *(v5 + 32); k != *(v5 + 40); k += 4)
      {
        v21 = *v5 + (*k << 8);
        v24 = &v21;
        v9 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, &v21);
        ++*(v9 + 5);
      }

      v5 += 80;
    }
  }

  v10 = *(this + 6);
  if (v10 == i)
  {
    v11 = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    do
    {
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 8);
      v15 = (v13 - v14) >> 2;
      if (v11 <= v15)
      {
        v11 = v15;
      }

      else
      {
        v11 = v11;
      }

      if (v13 != v14)
      {
        do
        {
          v16 = *v10 + (*v14 << 8);
          v21 = v16;
          if (a2 < 1 || (v20 = v16, v24 = &v20, *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, &v20) + 5) > a2))
          {
            ME_Model::ME_FeatureBag::Put(this + 27, &v21);
          }

          v14 += 4;
        }

        while (v14 != *(v10 + 16));
      }

      for (m = *(v10 + 32); m != *(v10 + 40); m += 4)
      {
        v18 = *v10 + (*m << 8);
        v21 = v18;
        if (a2 >= 1)
        {
          v20 = v18;
          v24 = &v20;
          if (*(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, &v20) + 5) <= a2)
          {
            continue;
          }
        }

        ME_Model::ME_FeatureBag::Put(this + 27, &v21);
      }

      v10 += 80;
    }

    while (v10 != *(this + 7));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(v22);
  ME_Model::init_feature2mef(this);
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(v22);
  return v11;
}

void sub_19D494A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ME_Model::ME_FeatureBag::Put(void *a1, _DWORD *a2)
{
  LODWORD(v18) = *a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(a1, &v18);
  if (v4)
  {
    return *(v4 + 5);
  }

  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = v7 - v6;
  v5 = (v7 - v6) >> 2;
  if (v7 >= v8)
  {
    v11 = v5 + 1;
    if ((v5 + 1) >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v6;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>((a1 + 5), v14);
    }

    *(4 * v5) = *a2;
    v10 = 4 * v5 + 4;
    memcpy(0, v6, v9);
    v15 = a1[5];
    a1[5] = 0;
    a1[6] = v10;
    a1[7] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = *a2;
    v10 = (v7 + 4);
  }

  a1[6] = v10;
  v17 = *a2;
  v18 = &v17;
  *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, &v17) + 5) = v5;
  return v5;
}

void ME_Model::init_feature2mef(ME_Model *this)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 42);
  if (*(this + 36) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      __p = 0;
      v8 = 0;
      v9 = 0;
      if (*(this + 70) >= 1)
      {
        v4 = 0;
        do
        {
          v10 = v2 + v4;
          v5 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(this + 27, &v10);
          if (v5)
          {
            v6 = *(v5 + 5);
            if ((v6 & 0x80000000) == 0)
            {
              std::vector<int>::push_back[abi:ne200100](&__p, &v6);
            }
          }

          ++v4;
        }

        while (v4 < *(this + 70));
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](this + 336, &__p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      ++v3;
      v2 += 256;
    }

    while (v3 < *(this + 36));
  }
}

void sub_19D494C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double ME_Model::heldout_likelihood(ME_Model *this)
{
  v2 = *(this + 45);
  if (v2 == *(this + 46))
  {
    v9 = 0.0;
    v4 = 0.0;
    v5 = *(this + 45);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    v5 = *(this + 45);
    do
    {
      std::vector<double>::vector[abi:ne200100](v12, *(this + 70));
      v6 = ME_Model::classify(this, v5, v12);
      v7 = *v5;
      v5 += 10;
      v8 = v12[0];
      v4 = v4 + log(*(v12[0] + 8 * v7));
      if (v6 == v7)
      {
        ++v3;
      }

      v12[1] = v8;
      operator delete(v8);
    }

    while (v5 != *(this + 46));
    v2 = *(this + 45);
    v9 = v3;
  }

  v10 = (0xCCCCCCCCCCCCCCCDLL * ((v5 - v2) >> 4));
  *(this + 49) = 1.0 - v9 / v10;
  return v4 / v10;
}

void sub_19D494D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Model::classify(uint64_t a1, void *a2, uint64_t a3)
{
  ME_Model::conditional_probability(a1, a2, a3);
  v4 = *(a3 + 8) - *a3;
  if ((v4 >> 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(result) = 0;
  v7 = (v4 >> 3) & 0x7FFFFFFF;
  v8 = 0.0;
  do
  {
    v9 = *(*a3 + 8 * v5);
    if (v9 <= v8)
    {
      result = result;
    }

    else
    {
      result = v5;
    }

    if (v9 > v8)
    {
      v8 = *(*a3 + 8 * v5);
    }

    ++v5;
  }

  while (v7 != v5);
  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

uint64_t ME_Model::train(ME_Model *a1, std::string **a2, uint64_t a3)
{
  std::vector<ME_Model::Sample>::__base_destruct_at_end[abi:ne200100](a1 + 48, *(a1 + 6));
  for (i = *a2; i != a2[1]; i += 3)
  {
    ME_Model::add_training_sample(a1, i);
  }

  ME_Model::train(a1, a3);
  return 0;
}

void ME_Model::add_training_sample(ME_Model *this, std::string *a2)
{
  v26 = 0;
  __p = 0u;
  v24 = 0u;
  v23 = 0u;
  *__src = 0u;
  v21 = ME_Model::StringBag::Put(this + 9, a2);
  if (v21 >= 256)
  {
    exit(1);
  }

  for (i = a2[1].__r_.__value_.__l.__data_; i != a2[1].__r_.__value_.__l.__size_; i += 3)
  {
    v5 = ME_Model::MiniStringBag::Put(this + 36, i);
    v6 = __src[1];
    if (__src[1] >= v23)
    {
      v8 = __src[0];
      v9 = __src[1] - __src[0];
      v10 = (__src[1] - __src[0]) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v12 = v23 - __src[0];
      if ((v23 - __src[0]) >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(__src, v13);
      }

      *(4 * v10) = v5;
      v7 = (4 * v10 + 4);
      memcpy(0, v8, v9);
      v14 = __src[0];
      __src[0] = 0;
      __src[1] = v7;
      *&v23 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *__src[1] = v5;
      v7 = v6 + 4;
    }

    __src[1] = v7;
  }

  for (j = a2[2].__r_.__value_.__l.__data_; j != a2[2].__r_.__value_.__l.__size_; j += 32)
  {
    LODWORD(v18.__r_.__value_.__l.__data_) = ME_Model::MiniStringBag::Put(this + 36, j);
    v18.__r_.__value_.__l.__size_ = *(j + 3);
    std::vector<std::pair<int,double>>::push_back[abi:ne200100](&v23 + 8, &v18);
  }

  if (*(this + 54))
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = *a2;
    }

    memset(v19, 0, sizeof(v19));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v19, a2[1].__r_.__value_.__l.__data_, a2[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((a2[1].__r_.__value_.__l.__size_ - a2[1].__r_.__value_.__r.__words[0]) >> 3));
    memset(v20, 0, 24);
    std::vector<std::pair<std::string,double>>::__init_with_size[abi:ne200100]<std::pair<std::string,double>*,std::pair<std::string,double>*>(v20, a2[2].__r_.__value_.__l.__data_, a2[2].__r_.__value_.__l.__size_, (a2[2].__r_.__value_.__l.__size_ - a2[2].__r_.__value_.__r.__words[0]) >> 5);
    ME_Model::classify(*(this + 54), &v18, &v16);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    __p = v16;
    v26 = v17;
    *&v16 = v20;
    std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&v16);
    *&v16 = v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  std::vector<ME_Model::Sample>::push_back[abi:ne200100](this + 48, &v21);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v23 + 1))
  {
    *&v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

uint64_t ME_Model::train(ME_Model *this, uint64_t a2)
{
  if (*(this + 4) <= 0.0 || *(this + 5) <= 0.0)
  {
    v5 = *(this + 6);
    v4 = *(this + 7);
    if (v4 != v5 && *(this + 100) < (-858993459 * ((v4 - v5) >> 4)))
    {
      v6 = 0;
      v7 = *(this + 6);
      do
      {
        v9 = *v7;
        v7 += 80;
        v8 = v9;
        if (v6 <= v9)
        {
          v6 = v8;
        }
      }

      while (v7 != v4);
      *(this + 70) = v6 + 1;
      v10 = *(this + 54);
      if (v10)
      {
        if (*(v10 + 280) >= 1)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            v13 = (*(v10 + 120) + v11);
            if (*(v13 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v13, *(v13 + 1));
            }

            else
            {
              v14 = *v13;
              __p.__r_.__value_.__r.__words[2] = *(v13 + 2);
              *&__p.__r_.__value_.__l.__data_ = v14;
            }

            ME_Model::StringBag::Put(this + 9, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v12;
            v10 = *(this + 54);
            v11 += 24;
          }

          while (v12 < *(v10 + 280));
          v5 = *(this + 6);
          v4 = *(this + 7);
        }

        *(this + 70) = -1431655765 * ((*(this + 16) - *(this + 15)) >> 3);
        while (v5 != v4)
        {
          ME_Model::set_ref_dist(this, v5);
          v5 = (v5 + 80);
          v4 = *(this + 7);
        }
      }

      if (*(this + 100) >= 1)
      {
        v15 = 0;
        do
        {
          std::vector<ME_Model::Sample>::push_back[abi:ne200100](this + 360, *(this + 7) - 80);
          std::vector<ME_Model::Sample>::__base_destruct_at_end[abi:ne200100](this + 48, (*(this + 7) - 80));
          ++v15;
        }

        while (v15 < *(this + 100));
        v4 = *(this + 7);
      }

      v16 = *(this + 6);
      v17 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v4[-v16] >> 4));
      if (v4 == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,false>(v16, v4, &__p, v18, 1);
      *(this + 2) = vdivq_f64(*(this + 2), vdupq_lane_s64(COERCE__INT64((0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 4))), 0));
      ME_Model::make_feature_bag(this, 0);
      std::vector<double>::resize(this + 36, ((*(this + 33) - *(this + 32)) >> 2));
      v19 = *(this + 32);
      v20 = *(this + 33) - v19;
      if ((v20 >> 2) >= 1)
      {
        bzero(*(this + 36), (2 * v20) & 0x3FFFFFFF8);
      }

      v21 = *(this + 6);
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - v21) >> 4);
      if (v22 >= 1)
      {
        v23 = 0;
        do
        {
          v24 = (v21 + 80 * v23);
          v25 = *(v24 + 1);
          v26 = *(v24 + 2);
          if (v25 != v26)
          {
            v27 = *(this + 42);
            do
            {
              v28 = (v27 + 24 * *v25);
              v29 = *v28;
              v30 = v28[1];
              if (v29 != v30)
              {
                v31 = *v24;
                do
                {
                  v32 = *v29;
                  if (*(v19 + 4 * v32) == v31)
                  {
                    *(*(this + 36) + 8 * v32) = *(*(this + 36) + 8 * v32) + 1.0;
                  }

                  ++v29;
                }

                while (v29 != v30);
              }

              ++v25;
            }

            while (v25 != v26);
          }

          v33 = *(v24 + 4);
          v34 = *(v24 + 5);
          if (v33 != v34)
          {
            v35 = *(this + 42);
            do
            {
              v36 = (v35 + 24 * *v33);
              v37 = *v36;
              v38 = v36[1];
              if (v37 != v38)
              {
                v39 = *v24;
                do
                {
                  v40 = *v37;
                  if (*(v19 + 4 * v40) == v39)
                  {
                    *(*(this + 36) + 8 * v40) = v33[1] + *(*(this + 36) + 8 * v40);
                  }

                  ++v37;
                }

                while (v37 != v38);
              }

              v33 += 2;
            }

            while (v33 != v34);
          }

          ++v23;
        }

        while (v23 != (v22 & 0x7FFFFFFF));
      }

      if ((v20 >> 2) >= 1)
      {
        v41 = v22;
        v42 = *(this + 36);
        v43 = (v20 >> 2) & 0x7FFFFFFF;
        do
        {
          *v42 = *v42 / v41;
          ++v42;
          --v43;
        }

        while (v43);
      }

      std::vector<double>::resize(this + 24, (v20 >> 2));
      v44 = *(this + 33) - *(this + 32);
      if ((v44 >> 2) >= 1)
      {
        bzero(*(this + 24), (2 * v44) & 0x3FFFFFFF8);
      }

      if (*this == 2)
      {
        ME_Model::perform_SGD(this);
      }

      else
      {
        ME_Model::perform_QUASI_NEWTON(this, a2);
      }
    }
  }

  return 0;
}

void sub_19D495584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Model::StringBag::Put(void *a1, uint64_t *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(a1 + 1, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((a1[7] - a1[6]) >> 3);
  std::vector<std::string>::push_back[abi:ne200100]((a1 + 6), a2);
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1, a2) + 10) = v5;
  return v5;
}

uint64_t ME_Model::MiniStringBag::Put(unsigned int *a1, uint64_t *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(a1 + 1, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = *a1;
  *a1 = v5 + 1;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1, a2) + 10) = v5;
  return v5;
}

void std::vector<std::pair<int,double>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void ME_Model::classify(ME_Model *this@<X0>, ME_Sample *a2@<X1>, void *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v17 = 0u;
  *v16 = 0u;
  *v15 = 0u;
  for (i = *(a2 + 3); i != *(a2 + 4); i += 3)
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(this + 19, i);
    if (v7)
    {
      LODWORD(v13.__r_.__value_.__l.__data_) = *(v7 + 10);
      if ((v13.__r_.__value_.__l.__data_ & 0x80000000) == 0)
      {
        std::vector<int>::push_back[abi:ne200100](v15, &v13);
      }
    }
  }

  for (j = *(a2 + 6); j != *(a2 + 7); j += 32)
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(this + 19, j);
    if (v9 && (v9[5] & 0x80000000) == 0)
    {
      LODWORD(v13.__r_.__value_.__l.__data_) = *(v9 + 10);
      v13.__r_.__value_.__l.__size_ = *(j + 24);
      std::vector<std::pair<int,double>>::push_back[abi:ne200100](&v16[1], &v13);
    }
  }

  v10 = *(this + 54);
  if (v10)
  {
    ME_Model::classify(&v13, v10, a2);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v13;
    ME_Model::set_ref_dist(this, &v14);
  }

  std::vector<double>::vector[abi:ne200100](a3, *(this + 70));
  v11 = *(this + 15) + 24 * ME_Model::classify(this, &v14, a3);
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *v11, *(v11 + 8));
  }

  else
  {
    v12 = *v11;
    v13.__r_.__value_.__r.__words[2] = *(v11 + 16);
    *&v13.__r_.__value_.__l.__data_ = v12;
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v13;
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_19D495958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  ME_Model::Sample::~Sample(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ME_Model::Sample>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ME_Model::Sample>::__emplace_back_slow_path<ME_Model::Sample const&>(a1, a2);
  }

  else
  {
    std::vector<ME_Model::Sample>::__construct_one_at_end[abi:ne200100]<ME_Model::Sample const&>(a1, a2);
    result = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

void ME_Model::Sample::~Sample(ME_Model::Sample *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void ME_Model::set_ref_dist(ME_Model *this, ME_Model::Sample *a2)
{
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  v6 = (a2 + 56);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v20, v4, v5, (v5 - v4) >> 3);
  std::vector<double>::vector[abi:ne200100](&v18, *(this + 70));
  v7 = v18;
  v8 = v19;
  if (v19 == v18)
  {
    v15 = (v19 - v18) >> 3;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    do
    {
      *&v7[8 * v9] = 0;
      v11 = *(this + 15) + 24 * (v10 - 1);
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 8));
      }

      else
      {
        v12 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 16);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      v13 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((*(this + 54) + 80), &__p);
      if (v13)
      {
        v14 = *(v13 + 10);
        v7 = v18;
        if (v14 != -1)
        {
          *(v18 + v9) = *(v20 + v14);
        }
      }

      else
      {
        v7 = v18;
      }

      if (*&v7[8 * v9] == 0.0)
      {
        *&v7[8 * v9] = 0x3F50624DD2F1A9FCLL;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v7 = v18;
      }

      v9 = v10;
      v8 = v19;
      v15 = (v19 - v7) >> 3;
    }

    while (v15 > v10++);
  }

  if (v6 != &v18)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v6, v7, v8, v15);
    v7 = v18;
  }

  if (v7)
  {
    v19 = v7;
    operator delete(v7);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_19D495BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void ME_Model::get_features(void *a1, uint64_t *a2)
{
  std::__list_imp<std::pair<std::pair<std::string,std::string>,double>>::clear(a2);
  v3 = a1[21];
  if (v3)
  {
    v4 = a1[15];
    v5 = a1[16];
    do
    {
      if ((-1431655765 * ((v5 - v4) >> 3)) >= 1)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = (v4 + v6);
          if (*(v8 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v21, *v8, *(v8 + 1));
          }

          else
          {
            v9 = *v8;
            v21.__r_.__value_.__r.__words[2] = *(v8 + 2);
            *&v21.__r_.__value_.__l.__data_ = v9;
          }

          if (*(v3 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v20, v3[2], v3[3]);
          }

          else
          {
            v20 = *(v3 + 2);
          }

          LODWORD(v16.__r_.__value_.__l.__data_) = v7 + (*(v3 + 10) << 8);
          v10 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(a1 + 27, &v16);
          if (v10)
          {
            v11 = *(v10 + 5);
            if ((v11 & 0x80000000) == 0)
            {
              std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v13, &v21, &v20);
              v12 = a1[24];
              v16 = v13;
              memset(&v13, 0, sizeof(v13));
              v17 = __p;
              v18 = v15;
              __p = 0uLL;
              v15 = 0;
              v19 = *(v12 + 8 * v11);
              operator new();
            }
          }

          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          ++v7;
          v4 = a1[15];
          v5 = a1[16];
          v6 += 24;
        }

        while (v7 < (-1431655765 * ((v5 - v4) >> 3)));
      }

      v3 = *v3;
    }

    while (v3);
  }
}

void sub_19D495E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  _Unwind_Resume(exception_object);
}

void ME_Model::clear(ME_Model *this)
{
  *(this + 25) = *(this + 24);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 80);
  std::vector<std::string>::clear[abi:ne200100](this + 15);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 152);
  *(this + 36) = 0;
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(this + 27);
  *(this + 33) = *(this + 32);
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 42);
  v3 = *(this + 6);
  v2 = (this + 48);
  v2[31] = v2[30];
  v2[34] = v2[33];
  std::vector<ME_Model::Sample>::__base_destruct_at_end[abi:ne200100](v2, v3);
  v4 = v2[39];

  std::vector<ME_Model::Sample>::__base_destruct_at_end[abi:ne200100]((v2 + 39), v4);
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

BOOL ME_Model::load_from_file(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "r");
  if (v4)
  {
    v5 = (a1 + 192);
    *(a1 + 200) = *(a1 + 192);
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1 + 80);
    std::vector<std::string>::clear[abi:ne200100]((a1 + 120));
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1 + 152);
    *(a1 + 144) = 0;
    std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear((a1 + 216));
    *(a1 + 264) = *(a1 + 256);
    while (fgets(__s, 1024, v4))
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, __s);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v8 = memchr(p_str, 9, size);
        if (v8)
        {
          v9 = v8 - p_str;
        }

        else
        {
          v9 = -1;
        }

        while (size)
        {
          v10 = *(&p_str[-1].__r_.__value_.__r.__words[2] + size-- + 7);
          if (v10 == 9)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v9 = -1;
      }

      size = -1;
LABEL_21:
      std::string::basic_string(&v31, &__str, 0, v9, &v30);
      std::string::basic_string(&v30, &__str, v9 + 1, size - (v9 + 1), &v28);
      v29 = 0.0;
      std::string::basic_string(&v28, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v27);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v28;
      }

      else
      {
        v11 = v28.__r_.__value_.__r.__words[0];
      }

      sscanf(v11, "%f", &v29);
      v12 = ME_Model::StringBag::Put((a1 + 72), &v31);
      v27 = v12 + (ME_Model::MiniStringBag::Put((a1 + 144), &v30) << 8);
      ME_Model::ME_FeatureBag::Put((a1 + 216), &v27);
      v13 = v29;
      v15 = *(a1 + 200);
      v14 = *(a1 + 208);
      if (v15 >= v14)
      {
        v17 = *v5;
        v18 = v15 - *v5;
        v19 = v18 >> 3;
        v20 = (v18 >> 3) + 1;
        if (v20 >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
        v23 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1 + 192, v23);
        }

        *(8 * v19) = v13;
        v16 = 8 * v19 + 8;
        memcpy(0, v17, v18);
        v24 = *(a1 + 192);
        *(a1 + 192) = 0;
        *(a1 + 200) = v16;
        *(a1 + 208) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v15 = v13;
        v16 = (v15 + 1);
      }

      *(a1 + 200) = v16;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    *(a1 + 280) = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 3);
    ME_Model::init_feature2mef(a1);
    fclose(v4);
  }

  result = v4 != 0;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D4962A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ME_Model::load_from_array(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 192);
  *(a1 + 200) = *(a1 + 192);
  v4 = (a1 + 72);
  v5 = (a1 + 144);
  for (i = (a2 + 16); ; i += 3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *(i - 2));
    if ((v25 & 0x80000000) == 0)
    {
      if (v25 == 3 && LOWORD(__p[0]) == 12079 && BYTE2(__p[0]) == 47)
      {
        break;
      }

      goto LABEL_20;
    }

    if (__p[1] != 3)
    {
      operator delete(__p[0]);
      goto LABEL_20;
    }

    v8 = *__p[0] == 12079 && *(__p[0] + 2) == 47;
    v9 = !v8;
    operator delete(__p[0]);
    if (!v9)
    {
      break;
    }

LABEL_20:
    std::string::basic_string[abi:ne200100]<0>(__p, *(i - 2));
    v10 = ME_Model::StringBag::Put(v4, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, *(i - 1));
    v11 = ME_Model::MiniStringBag::Put(v5, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    LODWORD(__p[0]) = v10 + (v11 << 8);
    ME_Model::ME_FeatureBag::Put(v3 + 3, __p);
    v13 = *(a1 + 200);
    v12 = *(a1 + 208);
    if (v13 >= v12)
    {
      v15 = *v3;
      v16 = v13 - *v3;
      v17 = v16 >> 3;
      v18 = (v16 >> 3) + 1;
      if (v18 >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
      v21 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v3, v21);
      }

      *(8 * v17) = *i;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      v22 = *(a1 + 192);
      *(a1 + 192) = 0;
      *(a1 + 200) = v14;
      *(a1 + 208) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = *i;
      v14 = (v13 + 8);
    }

    *(a1 + 200) = v14;
  }

  *(a1 + 280) = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 3);
  ME_Model::init_feature2mef(a1);
  return 1;
}

void sub_19D496714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ME_Model::save_to_file(void *a1, uint64_t a2, double a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = fopen(v5, "w");
  if (v6)
  {
    v7 = a1[21];
    if (v7)
    {
      v8 = a1[15];
      v9 = a1[16];
      do
      {
        if ((-1431655765 * ((v9 - v8) >> 3)) >= 1)
        {
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = (v8 + v10);
            if (*(v12 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v23, *v12, *(v12 + 1));
            }

            else
            {
              v13 = *v12;
              v23.__r_.__value_.__r.__words[2] = *(v12 + 2);
              *&v23.__r_.__value_.__l.__data_ = v13;
            }

            if (*(v7 + 39) < 0)
            {
              std::string::__init_copy_ctor_external(&v22, v7[2], v7[3]);
            }

            else
            {
              v22 = *(v7 + 2);
            }

            v24 = v11 + (*(v7 + 10) << 8);
            v14 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(a1 + 27, &v24);
            if (v14)
            {
              v15 = *(v14 + 5);
              if ((v15 & 0x80000000) == 0)
              {
                v16 = *(a1[24] + 8 * v15);
                v17 = fabs(v16);
                if (v16 != 0.0 && v17 >= a3)
                {
                  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v19 = &v23;
                  }

                  else
                  {
                    v19 = v23.__r_.__value_.__r.__words[0];
                  }

                  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v20 = &v22;
                  }

                  else
                  {
                    v20 = v22.__r_.__value_.__r.__words[0];
                  }

                  fprintf(v6, "%s\t%s\t%f\n", v19, v20, v16);
                }
              }
            }

            if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v22.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v23.__r_.__value_.__l.__data_);
            }

            ++v11;
            v8 = a1[15];
            v9 = a1[16];
            v10 += 24;
          }

          while (v11 < (-1431655765 * ((v9 - v8) >> 3)));
        }

        v7 = *v7;
      }

      while (v7);
    }

    fclose(v6);
  }

  return v6 != 0;
}

void sub_19D496908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7628E48, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D496C38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_19D496D64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<ME_Model::Sample>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ME_Model::Sample>>::destroy[abi:ne200100]<ME_Model::Sample,void,0>(a1, i))
  {
    i -= 10;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ME_Model::Sample>>::destroy[abi:ne200100]<ME_Model::Sample,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;
    operator delete(v4);
  }

  v5 = a2[1];
  if (v5)
  {
    a2[2] = v5;

    operator delete(v5);
  }
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = ME_Model::hashfun_str::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = ME_Model::hashfun_str::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t ME_Model::hashfun_str::operator()(uint64_t a1, uint64_t *a2)
{
  LODWORD(v2) = *(a2 + 23);
  v3 = v2;
  v4 = *a2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v2 < 4)
  {
    result = 0;
  }

  else
  {
    v5 = 0;
    result = 0;
    if (v3 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = v2 / 4;
    do
    {
      result ^= (*(v7 + v5) << (v5 & 4));
      v5 += 4;
      --v8;
    }

    while (v8);
  }

  if ((v2 & 3) != 0)
  {
    v9 = 0;
    v10 = 4 * (v2 / 4);
    v11 = v2 & 3;
    if (v3 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = v12 + v10;
    do
    {
      v14 = *v13++;
      result ^= v14 << v9;
      v9 += 8;
    }

    while (8 * v11 != v9);
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v4 = ME_Model::hashfun_str::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_19D4977A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D497870(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D497BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<std::pair<std::string,double>>::__init_with_size[abi:ne200100]<std::pair<std::string,double>*,std::pair<std::string,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D497EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,double>>,std::pair<std::string,double>*,std::pair<std::string,double>*,std::pair<std::string,double>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,double>>,std::pair<std::string,double>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,double>>,std::pair<std::string,double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,double>>,std::pair<std::string,double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,double>>,std::pair<std::string,double>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,double>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void ME_Sample::~ME_Sample(void **this)
{
  v2 = this + 6;
  std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<ME_Model::Sample>::__construct_one_at_end[abi:ne200100]<ME_Model::Sample const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v4 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_19D498244(_Unwind_Exception *exception_object)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 40) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v4 + 16) = v7;
    operator delete(v7);
  }

  *(v1 + 8) = v4;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ME_Model::Sample>::__emplace_back_slow_path<ME_Model::Sample const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::Sample>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v7 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v7 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *&v17 = v17 + 80;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ME_Model::Sample>,ME_Model::Sample*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ME_Model::Sample>::~__split_buffer(&v15);
  return v14;
}

void sub_19D498400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v8 = *v5;
  if (*v5)
  {
    *(v6 + 40) = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    *(v6 + 16) = v9;
    operator delete(v9);
  }

  std::__split_buffer<ME_Model::Sample>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D4984A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D498554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::Sample>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ME_Model::Sample>,ME_Model::Sample*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v7 += 10;
      a4 += 80;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ME_Model::Sample>>::destroy[abi:ne200100]<ME_Model::Sample,void,0>(a1, v5);
      v5 += 10;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ME_Model::Sample>,ME_Model::Sample*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ME_Model::Sample>,ME_Model::Sample*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ME_Model::Sample>,ME_Model::Sample*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ME_Model::Sample>,ME_Model::Sample*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 10;
      std::allocator_traits<std::allocator<ME_Model::Sample>>::destroy[abi:ne200100]<ME_Model::Sample,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ME_Model::Sample>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ME_Model::Sample>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ME_Model::Sample>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<ME_Model::Sample>>::destroy[abi:ne200100]<ME_Model::Sample,void,0>(v5, (v4 - 80));
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 4);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      if (ME_Model::Sample::operator<((a2 - 80), v9))
      {
        v22 = v9;
        p_end = (a2 - 80);
        goto LABEL_33;
      }

      return;
    }

LABEL_10:
    if (v12 <= 1919)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,ME_Model::Sample *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 80 * (v13 >> 1));
    if (v12 < 0x2801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v15, v9, (a2 - 80));
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v9, v15, (a2 - 80));
      v16 = 5 * v14;
      v17 = (v9 + 80 * v14 - 80);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>((v9 + 80), v17, (a2 - 160));
      v18 = (v9 + 16 * v16 + 80);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>((a1 + 160), v18, (a2 - 240));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v17, v15, v18);
      std::swap[abi:ne200100]<ME_Model::Sample>(a1, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((ME_Model::Sample::operator<(a1 - 80, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ME_Model::Sample *,std::__less<void,void> &>(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ME_Model::Sample *,std::__less<void,void> &>(a1, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(a1, v19);
    v9 = &v19[10];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(&v19[10], a2))
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,false>(a1, v19, a3, -v11, a5 & 1);
      v9 = &v19[10];
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v9, (v9 + 80), (a2 - 80));
    return;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v9, (v9 + 80), (v9 + 160), v9 + 10, (a2 - 80));
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(v9, (v9 + 80), &v9[6].__end_cap_);
  if (ME_Model::Sample::operator<((a2 - 80), &v9[6].__end_cap_))
  {
    std::swap[abi:ne200100]<ME_Model::Sample>((v9 + 160), (a2 - 80));
    if (ME_Model::Sample::operator<(&v9[6].__end_cap_, &v9[3].__end_))
    {
      std::swap[abi:ne200100]<ME_Model::Sample>((v9 + 80), &v9[6].__end_cap_);
      if (ME_Model::Sample::operator<(&v9[3].__end_, v9))
      {
        p_end = &v9[3].__end_;
        v22 = v9;
LABEL_33:

        std::swap[abi:ne200100]<ME_Model::Sample>(v22, p_end);
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(std::vector<int> *a1, std::vector<int> *a2, uint64_t a3)
{
  v6 = ME_Model::Sample::operator<(a2, a1);
  result = ME_Model::Sample::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = a1;
LABEL_9:
      v9 = a3;
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<ME_Model::Sample>(a1, a2);
    if (ME_Model::Sample::operator<(a3, a2))
    {
      v8 = a2;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::swap[abi:ne200100]<ME_Model::Sample>(a2, a3);
    if (ME_Model::Sample::operator<(a2, a1))
    {
      v8 = a1;
      v9 = a2;
LABEL_10:
      std::swap[abi:ne200100]<ME_Model::Sample>(v8, v9);
    }
  }

  return 1;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(std::vector<int> *a1, std::vector<int> *a2, std::vector<int> *a3, std::vector<int> *a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(a1, a2, a3);
  if (ME_Model::Sample::operator<(a4, a3))
  {
    std::swap[abi:ne200100]<ME_Model::Sample>(a3, a4);
    if (ME_Model::Sample::operator<(a3, a2))
    {
      std::swap[abi:ne200100]<ME_Model::Sample>(a2, a3);
      if (ME_Model::Sample::operator<(a2, a1))
      {
        std::swap[abi:ne200100]<ME_Model::Sample>(a1, a2);
      }
    }
  }

  if (ME_Model::Sample::operator<(a5, a4))
  {
    std::swap[abi:ne200100]<ME_Model::Sample>(a4, a5);
    if (ME_Model::Sample::operator<(a4, a3))
    {
      std::swap[abi:ne200100]<ME_Model::Sample>(a3, a4);
      if (ME_Model::Sample::operator<(a3, a2))
      {
        std::swap[abi:ne200100]<ME_Model::Sample>(a2, a3);
        if (ME_Model::Sample::operator<(a2, a1))
        {

          *&result = std::swap[abi:ne200100]<ME_Model::Sample>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(uint64_t a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    __p[14] = v2;
    __p[15] = v3;
    v6 = a1 + 80;
    if ((a1 + 80) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (ME_Model::Sample::operator<(v6, v8))
        {
          v18[0] = *v9;
          *&v18[2] = *(v8 + 88);
          *&v18[6] = *(v8 + 104);
          *(v8 + 88) = 0;
          *(v8 + 96) = 0;
          *__p = *(v8 + 112);
          __p[2] = *(v8 + 128);
          *(v8 + 104) = 0;
          *(v8 + 112) = 0;
          *(v8 + 120) = 0;
          *(v8 + 128) = 0;
          *&__p[3] = *(v8 + 136);
          __p[5] = *(v8 + 152);
          *(v8 + 136) = 0;
          *(v8 + 144) = 0;
          v10 = v7;
          *(v8 + 152) = 0;
          while (1)
          {
            v11 = a1 + v10;
            *(a1 + v10 + 80) = *(a1 + v10);
            std::vector<double>::__move_assign(a1 + v10 + 88, (a1 + v10 + 8));
            std::vector<double>::__move_assign(v11 + 112, (v11 + 32));
            std::vector<double>::__move_assign(v11 + 136, (v11 + 56));
            if (!v10)
            {
              break;
            }

            v10 -= 80;
            if ((ME_Model::Sample::operator<(v18, v10 + a1) & 1) == 0)
            {
              v12 = a1 + v10 + 80;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          *v12 = v18[0];
          v15 = *(v11 + 8);
          v14 = (v11 + 8);
          v13 = v15;
          if (v15)
          {
            *(v12 + 16) = v13;
            operator delete(v13);
            *v14 = 0;
            v14[1] = 0;
            v14[2] = 0;
          }

          *v14 = *&v18[2];
          *(v12 + 16) = *&v18[4];
          memset(&v18[2], 0, 24);
          v16 = v14[3];
          if (v16)
          {
            *(v12 + 40) = v16;
            operator delete(v16);
            v14[3] = 0;
            v14[4] = 0;
            v14[5] = 0;
          }

          v14[3] = __p[0];
          *(v12 + 40) = *&__p[1];
          memset(__p, 0, 24);
          v17 = v14[6];
          if (v17)
          {
            *(v12 + 64) = v17;
            operator delete(v17);
            v14[6] = 0;
            v14[7] = 0;
            v14[8] = 0;
            v17 = __p[0];
          }

          v14[6] = __p[3];
          *(v12 + 64) = *&__p[4];
          memset(&__p[3], 0, 24);
          if (v17)
          {
            __p[1] = v17;
            operator delete(v17);
          }

          if (*&v18[2])
          {
            *&v18[4] = *&v18[2];
            operator delete(*&v18[2]);
          }
        }

        v6 = (v9 + 20);
        v7 += 80;
        v8 = v9;
      }

      while (v9 + 20 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(uint64_t a1, unsigned __int32 *a2)
{
  if (a1 != a2)
  {
    v21 = v2;
    v22 = v3;
    v5 = a1;
    v6 = a1 + 80;
    if ((a1 + 80) != a2)
    {
      v7 = (a1 + 152);
      do
      {
        v8 = v6;
        if (ME_Model::Sample::operator<(v6, v5))
        {
          v14 = *v8;
          *v15 = *(v5 + 88);
          v16 = *(v5 + 104);
          *(v5 + 88) = 0;
          *(v5 + 96) = 0;
          *__p = *(v5 + 112);
          v18 = *(v5 + 128);
          *(v5 + 104) = 0;
          *(v5 + 112) = 0;
          *(v5 + 120) = 0;
          *(v5 + 128) = 0;
          v19 = *(v5 + 136);
          v20 = *(v5 + 152);
          *(v5 + 136) = 0;
          *(v5 + 144) = 0;
          v9 = v7;
          *(v5 + 152) = 0;
          do
          {
            v9[-5].n128_u32[2] = v9[-10].n128_u32[2];
            std::vector<double>::__move_assign(&v9[-4], v9 - 9);
            std::vector<double>::__move_assign(&v9[-3].n128_i64[1], (v9 - 120));
            std::vector<double>::__move_assign(&v9[-1], v9 - 6);
            v10 = ME_Model::Sample::operator<(&v14, &v9[-15].n128_i64[1]);
            v9 -= 5;
          }

          while ((v10 & 1) != 0);
          v11 = v9[-4].n128_u64[0];
          v9[-5].n128_u32[2] = v14;
          if (v11)
          {
            v9[-4].n128_u64[1] = v11;
            operator delete(v11);
            v9[-4].n128_u64[0] = 0;
            v9[-4].n128_u64[1] = 0;
            v9[-3].n128_u64[0] = 0;
          }

          v9[-4] = *v15;
          v9[-3].n128_u64[0] = v16;
          v15[1] = 0;
          v16 = 0;
          v15[0] = 0;
          v12 = v9[-3].n128_u64[1];
          if (v12)
          {
            v9[-2].n128_u64[0] = v12;
            operator delete(v12);
            v9[-3].n128_u64[1] = 0;
            v9[-2].n128_u64[0] = 0;
            v9[-2].n128_u64[1] = 0;
          }

          *(v9 - 40) = *__p;
          v9[-2].n128_u64[1] = v18;
          __p[1] = 0;
          v18 = 0;
          __p[0] = 0;
          v13 = v9[-1].n128_u64[0];
          if (v13)
          {
            v9[-1].n128_u64[1] = v13;
            operator delete(v13);
            v9[-1].n128_u64[0] = 0;
            v9[-1].n128_u64[1] = 0;
            v9->n128_u64[0] = 0;
            v13 = __p[0];
          }

          v9[-1] = v19;
          v9->n128_u64[0] = v20;
          v20 = 0;
          v19 = 0uLL;
          if (v13)
          {
            __p[1] = v13;
            operator delete(v13);
          }

          if (v15[0])
          {
            v15[1] = v15[0];
            operator delete(v15[0]);
          }
        }

        v6 = (v8 + 20);
        v7 += 5;
        v5 = v8;
      }

      while (v8 + 20 != a2);
    }
  }
}

std::vector<int> *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ME_Model::Sample *,std::__less<void,void> &>(std::__compressed_pair<int *> *a1, unint64_t a2)
{
  v2 = a2;
  value = a1->__value_;
  v4 = &a1[1];
  *v15 = *&a1[1].__value_;
  v16 = a1[3].__value_;
  a1[1].__value_ = 0;
  a1[2].__value_ = 0;
  a1[3].__value_ = 0;
  v5 = &a1[4];
  *__p = *&a1[4].__value_;
  v18 = a1[6].__value_;
  a1[4].__value_ = 0;
  a1[5].__value_ = 0;
  a1[6].__value_ = 0;
  v6 = &a1[7];
  v19 = *&a1[7].__value_;
  v20 = a1[9].__value_;
  a1[8].__value_ = 0;
  a1[9].__value_ = 0;
  a1[7].__value_ = 0;
  if (ME_Model::Sample::operator<(&value, a2 - 80))
  {
    v7 = a1;
    do
    {
      v7 = (v7 + 80);
    }

    while ((ME_Model::Sample::operator<(&value, v7) & 1) == 0);
  }

  else
  {
    p_end = &a1[10];
    do
    {
      v7 = p_end;
      if (p_end >= v2)
      {
        break;
      }

      v9 = ME_Model::Sample::operator<(&value, p_end);
      p_end = &v7[3].__end_;
    }

    while (!v9);
  }

  if (v7 < v2)
  {
    do
    {
      v2 -= 80;
    }

    while ((ME_Model::Sample::operator<(&value, v2) & 1) != 0);
  }

  while (v7 < v2)
  {
    std::swap[abi:ne200100]<ME_Model::Sample>(v7, v2);
    do
    {
      v7 = (v7 + 80);
    }

    while (!ME_Model::Sample::operator<(&value, v7));
    do
    {
      v2 -= 80;
    }

    while ((ME_Model::Sample::operator<(&value, v2) & 1) != 0);
  }

  if (&v7[-4].__end_cap_ != a1)
  {
    LODWORD(a1->__value_) = v7[-4].__end_cap_.__value_;
    std::vector<double>::__move_assign(v4, &v7[-3]);
    std::vector<double>::__move_assign(v5, &v7[-2]);
    std::vector<double>::__move_assign(v6, &v7[-1]);
  }

  begin = v7[-3].__begin_;
  LODWORD(v7[-4].__end_cap_.__value_) = value;
  if (begin)
  {
    v7[-3].__end_ = begin;
    operator delete(begin);
    v7[-3].__begin_ = 0;
    v7[-3].__end_ = 0;
    v7[-3].__end_cap_.__value_ = 0;
  }

  *&v7[-3].__begin_ = *v15;
  v7[-3].__end_cap_.__value_ = v16;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v11 = v7[-2].__begin_;
  if (v11)
  {
    v7[-2].__end_ = v11;
    operator delete(v11);
    v7[-2].__begin_ = 0;
    v7[-2].__end_ = 0;
    v7[-2].__end_cap_.__value_ = 0;
  }

  *&v7[-2].__begin_ = *__p;
  v7[-2].__end_cap_.__value_ = v18;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v12 = v7[-1].__begin_;
  if (v12)
  {
    v7[-1].__end_ = v12;
    operator delete(v12);
    v7[-1].__begin_ = 0;
    v7[-1].__end_ = 0;
    v7[-1].__end_cap_.__value_ = 0;
    v12 = __p[0];
  }

  *&v7[-1].__begin_ = v19;
  v7[-1].__end_cap_.__value_ = v20;
  v19 = 0uLL;
  v20 = 0;
  if (v12)
  {
    __p[1] = v12;
    operator delete(v12);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  return v7;
}

std::__compressed_pair<int *> *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ME_Model::Sample *,std::__less<void,void> &>(std::__compressed_pair<int *> *a1, unint64_t a2)
{
  v4 = 0;
  value = a1->__value_;
  v5 = &a1[1];
  *v16 = *&a1[1].__value_;
  v17 = a1[3].__value_;
  a1[1].__value_ = 0;
  a1[2].__value_ = 0;
  a1[3].__value_ = 0;
  v6 = &a1[4];
  *__p = *&a1[4].__value_;
  v19 = a1[6].__value_;
  a1[4].__value_ = 0;
  a1[5].__value_ = 0;
  a1[6].__value_ = 0;
  v21 = a1[9].__value_;
  v7 = &a1[7];
  v20 = *&a1[7].__value_;
  a1[8].__value_ = 0;
  a1[9].__value_ = 0;
  a1[7].__value_ = 0;
  do
  {
    v4 += 10;
  }

  while ((ME_Model::Sample::operator<(&a1[v4], &value) & 1) != 0);
  v8 = &a1[v4];
  if (v4 == 10)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 80;
    }

    while ((ME_Model::Sample::operator<(a2, &value) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 80;
    }

    while (!ME_Model::Sample::operator<(a2, &value));
  }

  v9 = &a1[v4];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      std::swap[abi:ne200100]<ME_Model::Sample>(v9, v10);
      do
      {
        v9 = (v9 + 80);
      }

      while ((ME_Model::Sample::operator<(v9, &value) & 1) != 0);
      do
      {
        v10 -= 80;
      }

      while (!ME_Model::Sample::operator<(v10, &value));
    }

    while (v9 < v10);
  }

  if (&v9[-4].__end_cap_ != a1)
  {
    LODWORD(a1->__value_) = v9[-4].__end_cap_.__value_;
    std::vector<double>::__move_assign(v5, &v9[-3]);
    std::vector<double>::__move_assign(v6, &v9[-2]);
    std::vector<double>::__move_assign(v7, &v9[-1]);
  }

  begin = v9[-3].__begin_;
  LODWORD(v9[-4].__end_cap_.__value_) = value;
  if (begin)
  {
    v9[-3].__end_ = begin;
    operator delete(begin);
    v9[-3].__begin_ = 0;
    v9[-3].__end_ = 0;
    v9[-3].__end_cap_.__value_ = 0;
  }

  *&v9[-3].__begin_ = *v16;
  v9[-3].__end_cap_.__value_ = v17;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v12 = v9[-2].__begin_;
  if (v12)
  {
    v9[-2].__end_ = v12;
    operator delete(v12);
    v9[-2].__begin_ = 0;
    v9[-2].__end_ = 0;
    v9[-2].__end_cap_.__value_ = 0;
  }

  *&v9[-2].__begin_ = *__p;
  v9[-2].__end_cap_.__value_ = v19;
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v13 = v9[-1].__begin_;
  if (v13)
  {
    v9[-1].__end_ = v13;
    operator delete(v13);
    v9[-1].__begin_ = 0;
    v9[-1].__end_ = 0;
    v9[-1].__end_cap_.__value_ = 0;
    v13 = __p[0];
  }

  *&v9[-1].__begin_ = v20;
  v9[-1].__end_cap_.__value_ = v21;
  v20 = 0uLL;
  v21 = 0;
  if (v13)
  {
    __p[1] = v13;
    operator delete(v13);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return &v9[-4].__end_cap_;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(a1, (a1 + 80), a2 - 80);
        return 1;
      case 4:
        v20 = a2 - 80;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(a1, (a1 + 80), a1 + 160);
        if (!ME_Model::Sample::operator<(v20, a1 + 160))
        {
          return 1;
        }

        std::swap[abi:ne200100]<ME_Model::Sample>((a1 + 160), v20);
        if (!ME_Model::Sample::operator<(a1 + 160, a1 + 80))
        {
          return 1;
        }

        std::swap[abi:ne200100]<ME_Model::Sample>((a1 + 80), a1 + 160);
        if (!ME_Model::Sample::operator<(a1 + 80, a1))
        {
          return 1;
        }

        v7 = a1 + 80;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(a1, (a1 + 80), (a1 + 160), (a1 + 240), a2 - 80);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 80;
      if (ME_Model::Sample::operator<(a2 - 80, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::swap[abi:ne200100]<ME_Model::Sample>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 160;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,0>(a1, (a1 + 80), a1 + 160);
  v9 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (ME_Model::Sample::operator<(v9, v8))
    {
      v22[0] = *v9;
      *&v22[2] = *(v9 + 8);
      *&v22[6] = *(v9 + 24);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *__p = *(v9 + 32);
      __p[2] = *(v9 + 48);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *&__p[3] = *(v9 + 56);
      __p[5] = *(v9 + 72);
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      v12 = v10;
      *(v9 + 56) = 0;
      while (1)
      {
        v13 = a1 + v12;
        *(a1 + v12 + 240) = *(a1 + v12 + 160);
        std::vector<double>::__move_assign(a1 + v12 + 248, (a1 + v12 + 168));
        std::vector<double>::__move_assign(v13 + 272, (v13 + 192));
        std::vector<double>::__move_assign(v13 + 296, (v13 + 216));
        if (v12 == -160)
        {
          break;
        }

        v12 -= 80;
        if ((ME_Model::Sample::operator<(v22, v13 + 80) & 1) == 0)
        {
          v14 = a1 + v12 + 240;
          goto LABEL_20;
        }
      }

      v14 = a1;
LABEL_20:
      *v14 = v22[0];
      v17 = *(v13 + 168);
      v16 = (v13 + 168);
      v15 = v17;
      if (v17)
      {
        *(v14 + 16) = v15;
        operator delete(v15);
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
      }

      *v16 = *&v22[2];
      *(v14 + 16) = *&v22[4];
      memset(&v22[2], 0, 24);
      v18 = v16[3];
      if (v18)
      {
        *(v14 + 40) = v18;
        operator delete(v18);
        v16[3] = 0;
        v16[4] = 0;
        v16[5] = 0;
      }

      v16[3] = __p[0];
      *(v14 + 40) = *&__p[1];
      memset(__p, 0, 24);
      v19 = v16[6];
      if (v19)
      {
        *(v14 + 64) = v19;
        operator delete(v19);
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = 0;
        v19 = __p[0];
      }

      v16[6] = __p[3];
      *(v14 + 64) = *&__p[4];
      memset(&__p[3], 0, 24);
      if (v19)
      {
        __p[1] = v19;
        operator delete(v19);
      }

      if (*&v22[2])
      {
        *&v22[4] = *&v22[2];
        operator delete(*&v22[2]);
      }

      if (++v11 == 8)
      {
        return v9 + 80 == a2;
      }
    }

    v8 = v9;
    v10 += 80;
    v9 += 80;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t ME_Model::Sample::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 2;
    v6 = *(a2 + 8);
    v7 = 1;
    while ((*(a2 + 16) - v6) >> 2 > v4)
    {
      v8 = *(v2 + 4 * v4);
      v9 = *(v6 + 4 * v4);
      if (v8 < v9)
      {
        return 1;
      }

      v4 = v7++;
      if (v8 > v9 || v5 <= v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

__n128 std::swap[abi:ne200100]<ME_Model::Sample>(std::vector<int> *this, uint64_t a2)
{
  begin = this->__begin_;
  v4 = *&this->__end_;
  v5 = this[1].__begin_;
  this->__end_ = 0;
  p_end = &this[1].__end_;
  v14 = v4;
  v15 = *&this[1].__end_;
  this[1].__end_ = 0;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  v7 = this[2].__begin_;
  this[1].__end_cap_.__value_ = 0;
  this[2].__begin_ = 0;
  v8 = &this[2].__end_;
  v16 = *&this[2].__end_;
  v9 = this[3].__begin_;
  this[2].__end_ = 0;
  this[2].__end_cap_.__value_ = 0;
  this[3].__begin_ = 0;
  LODWORD(this->__begin_) = *a2;
  std::vector<double>::__move_assign(&this->__end_, (a2 + 8));
  std::vector<double>::__move_assign(p_end, (a2 + 32));
  std::vector<double>::__move_assign(v8, (a2 + 56));
  *a2 = begin;
  v10 = *(a2 + 8);
  if (v10)
  {
    *(a2 + 16) = v10;
    operator delete(v10);
  }

  *(a2 + 8) = v14;
  *(a2 + 24) = v5;
  v11 = *(a2 + 32);
  if (v11)
  {
    *(a2 + 40) = v11;
    operator delete(v11);
  }

  *(a2 + 32) = v15;
  *(a2 + 48) = v7;
  v12 = *(a2 + 56);
  if (v12)
  {
    *(a2 + 64) = v12;
    operator delete(v12);
  }

  result = v16;
  *(a2 + 56) = v16;
  *(a2 + 72) = v9;
  return result;
}

std::vector<int> *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *,ME_Model::Sample *>(uint64_t a1, uint64_t a2, std::vector<int> *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 81)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 80 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(a1, a4, v9, v12);
        v12 -= 80;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (ME_Model::Sample::operator<(v13, a1))
        {
          std::swap[abi:ne200100]<ME_Model::Sample>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 80);
      }

      while (v13 != a3);
    }

    if (v8 >= 81)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ME_Model::Sample *>(a1, v6, a4, v14);
        v6 -= 80;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v28 = v4;
    v29 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 4)))
    {
      v11 = (0x999999999999999ALL * ((a4 - a1) >> 4)) | 1;
      v12 = a1 + 80 * v11;
      v13 = 0x999999999999999ALL * ((a4 - a1) >> 4) + 2;
      if (v13 < a3 && ME_Model::Sample::operator<(a1 + 80 * v11, v12 + 80))
      {
        v12 += 80;
        v11 = v13;
      }

      if ((ME_Model::Sample::operator<(v12, v7) & 1) == 0)
      {
        v21 = *v7;
        *v22 = *(v7 + 8);
        v23 = *(v7 + 24);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *__p = *(v7 + 32);
        v25 = *(v7 + 48);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        v26 = *(v7 + 56);
        v27 = *(v7 + 72);
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 56) = 0;
        do
        {
          v14 = v12;
          v15 = (v12 + 56);
          *v7 = *v12;
          std::vector<double>::__move_assign(v7 + 8, (v12 + 8));
          std::vector<double>::__move_assign(v7 + 32, (v12 + 32));
          std::vector<double>::__move_assign(v7 + 56, (v12 + 56));
          if (v9 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = a1 + 80 * v16;
          v17 = 2 * v11 + 2;
          if (v17 < a3 && ME_Model::Sample::operator<(a1 + 80 * v16, v12 + 80))
          {
            v12 += 80;
            v16 = v17;
          }

          v7 = v14;
          v11 = v16;
        }

        while (!ME_Model::Sample::operator<(v12, &v21));
        *v14 = v21;
        v18 = *(v14 + 8);
        if (v18)
        {
          *(v14 + 16) = v18;
          operator delete(v18);
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          *(v14 + 24) = 0;
        }

        *(v14 + 8) = *v22;
        *(v14 + 24) = v23;
        v22[0] = 0;
        v22[1] = 0;
        v23 = 0;
        v19 = *(v14 + 32);
        if (v19)
        {
          *(v14 + 40) = v19;
          operator delete(v19);
          *(v14 + 32) = 0;
          *(v14 + 40) = 0;
          *(v14 + 48) = 0;
        }

        *(v14 + 32) = *__p;
        *(v14 + 48) = v25;
        __p[0] = 0;
        __p[1] = 0;
        v25 = 0;
        v20 = *(v14 + 56);
        if (v20)
        {
          *(v14 + 64) = v20;
          operator delete(v20);
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          v20 = __p[0];
        }

        *(v14 + 56) = v26;
        *(v14 + 72) = v27;
        v26 = 0uLL;
        v27 = 0;
        if (v20)
        {
          __p[1] = v20;
          operator delete(v20);
        }

        if (v22[0])
        {
          v22[1] = v22[0];
          operator delete(v22[0]);
        }
      }
    }
  }
}

__n128 std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ME_Model::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v25 = v8;
    v11 = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v26 = v11;
    v27 = *(a1 + 56);
    v12 = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v13 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(a1, a3, a4);
    v14 = v13;
    if (v13 == (a2 - 80))
    {
      *v13 = v7;
      v21 = v13 + 2;
      v20 = *(v13 + 1);
      if (v20)
      {
        *(v14 + 2) = v20;
        operator delete(v20);
        *v21 = 0;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
      }

      v22 = *(v14 + 4);
      *(v14 + 2) = v25;
      *(v14 + 3) = v10;
      if (v22)
      {
        *(v14 + 5) = v22;
        operator delete(v22);
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        *(v14 + 6) = 0;
      }

      v23 = *(v14 + 7);
      *(v14 + 4) = v9;
      *(v14 + 10) = v26;
      if (v23)
      {
        *(v14 + 8) = v23;
        operator delete(v23);
        *(v14 + 7) = 0;
        *(v14 + 8) = 0;
        *(v14 + 9) = 0;
      }

      result = v27;
      *(v14 + 14) = v27;
      *(v14 + 9) = v12;
    }

    else
    {
      v24 = v12;
      *v13 = *(a2 - 80);
      v15 = v13 + 20;
      std::vector<double>::__move_assign((v13 + 2), (a2 - 72));
      std::vector<double>::__move_assign((v14 + 8), (a2 - 48));
      std::vector<double>::__move_assign((v14 + 14), (a2 - 24));
      *(a2 - 80) = v7;
      v16 = *(a2 - 72);
      if (v16)
      {
        *(a2 - 64) = v16;
        operator delete(v16);
        *(a2 - 72) = 0;
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
      }

      *(a2 - 72) = v25;
      *(a2 - 56) = v10;
      v17 = *(a2 - 48);
      if (v17)
      {
        *(a2 - 40) = v17;
        operator delete(v17);
        *(a2 - 48) = 0;
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
      }

      *(a2 - 48) = v9;
      *(a2 - 40) = v26;
      v18 = *(a2 - 24);
      if (v18)
      {
        *(a2 - 16) = v18;
        operator delete(v18);
        *(a2 - 24) = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = v27;
      *(a2 - 8) = v24;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(a1, (v14 + 20), a3, 0xCCCCCCCCCCCCCCCDLL * ((v15 - a1) >> 4));
    }
  }

  return result;
}

void sub_19D49A0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ME_Model::Sample::~Sample(va);
  _Unwind_Resume(a1);
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[20 * v5];
    v8 = v7 + 20;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 40;
      if (ME_Model::Sample::operator<((v7 + 20), (v7 + 40)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    std::vector<double>::__move_assign((a1 + 2), (v8 + 2));
    std::vector<double>::__move_assign((a1 + 8), v8 + 2);
    std::vector<double>::__move_assign((a1 + 14), (v8 + 14));
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Model::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 80 * v8;
    v10 = (a2 - 80);
    if (ME_Model::Sample::operator<(v9, a2 - 80))
    {
      v16 = *(a2 - 80);
      *v17 = *(a2 - 72);
      v18 = *(a2 - 56);
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      *__p = *(a2 - 48);
      v20 = *(a2 - 32);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      *(a2 - 32) = 0;
      v21 = *(a2 - 24);
      v22 = *(a2 - 8);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      *(a2 - 24) = 0;
      do
      {
        v11 = v9;
        v12 = (v9 + 56);
        *v10 = *v9;
        std::vector<double>::__move_assign((v10 + 2), (v9 + 8));
        std::vector<double>::__move_assign((v10 + 8), (v9 + 32));
        std::vector<double>::__move_assign((v10 + 14), (v9 + 56));
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 80 * v8;
        v10 = v11;
      }

      while ((ME_Model::Sample::operator<(v9, &v16) & 1) != 0);
      *v11 = v16;
      v13 = *(v11 + 8);
      if (v13)
      {
        *(v11 + 16) = v13;
        operator delete(v13);
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
      }

      *(v11 + 8) = *v17;
      *(v11 + 24) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      v14 = *(v11 + 32);
      if (v14)
      {
        *(v11 + 40) = v14;
        operator delete(v14);
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
      }

      *(v11 + 32) = *__p;
      *(v11 + 48) = v20;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      v15 = *(v11 + 56);
      if (v15)
      {
        *(v11 + 64) = v15;
        operator delete(v15);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v15 = __p[0];
      }

      *(v11 + 56) = v21;
      *(v11 + 72) = v22;
      v22 = 0;
      v21 = 0uLL;
      if (v15)
      {
        __p[1] = v15;
        operator delete(v15);
      }

      if (v17[0])
      {
        v17[1] = v17[0];
        operator delete(v17[0]);
      }
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_19D49A4E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<std::string,std::string>,double>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D49A75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D49A8C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__list_imp<std::pair<std::pair<std::string,std::string>,double>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string>,double>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string>,double>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t modelMethodTypeForImplClass(void *a1)
{
  if ([a1 isEqual:objc_opt_class()] & 1) != 0 || (objc_msgSend(a1, "isEqual:", objc_opt_class()))
  {
    return 4;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 2;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 1;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 9;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 0;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 6;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 7;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 8;
  }

  return 4;
}

id stringArrayRepresentationFromData(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];
  if (v3 < 9 || strncmp(v2, "bplist00", 8uLL) || ([MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E695DF70] array];
    if (v3 >= 1)
    {
      v5 = &v2[v3];
      do
      {
        v6 = strnlen(v2, v5 - v2);
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v2 length:v6 encoding:4];
        if (v7)
        {
          [v4 addObject:v7];
        }

        v2 += v6 + 1;
      }

      while (v2 < v5);
    }
  }

  return v4;
}

id stringArrayRepresentationFromInverseMap(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) unsignedIntegerValue];
        if (v9 > v6)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
  do
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v12 = [v1 objectForKey:v11];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &stru_1F10C6540;
    }

    [v2 addObject:v13];

    ++v10;
  }

  while (v10 <= v6);

  v14 = *MEMORY[0x1E69E9840];

  return v2;
}

id dataFromStringArrayRepresentation(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v27;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v26 + 1) + 8 * i) UTF8String];
        if (v7)
        {
          v4 += strlen(v7) + 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = [MEMORY[0x1E695DF88] dataWithLength:v4];
  v9 = [v8 mutableBytes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v1;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * j);
        v16 = [v15 UTF8String];
        if (v16)
        {
          v17 = v16;
          v18 = strlen(v16);
          strncpy(v9, v17, v18);
          v19 = &v9[v18];
          *v19 = 0;
          v9 = v19 + 1;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_19D49D5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19D49D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isAcceptableTokenArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_16;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_16:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_19D49DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D49DD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D49DF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MurmurHash3_x86_32(uint64_t result, int a2, int a3, unsigned int *a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 3;
  }

  v5 = (result + (v4 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v6 = -(v4 >> 2);
    do
    {
      HIDWORD(v7) = (461845907 * ((380141568 * *&v5[4 * v6]) | ((-862048943 * *&v5[4 * v6]) >> 17))) ^ a3;
      LODWORD(v7) = HIDWORD(v7);
      a3 = 5 * (v7 >> 19) - 430675100;
    }

    while (!__CFADD__(v6++, 1));
  }

  v9 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v9 = v5[2] << 16;
    }

    v9 |= v5[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_15;
  }

  a3 ^= 461845907 * ((380141568 * (v9 ^ *v5)) | ((-862048943 * (v9 ^ *v5)) >> 17));
LABEL_15:
  v10 = -2048144789 * (a3 ^ a2 ^ ((a3 ^ a2) >> 16));
  *a4 = (-1028477387 * (v10 ^ (v10 >> 13))) ^ ((-1028477387 * (v10 ^ (v10 >> 13))) >> 16);
  return result;
}

int32x2_t MurmurHash3_x86_128(char *a1, signed int a2, unsigned int a3, char *a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 15;
  }

  v5 = v4 & 0xFFFFFFF0;
  v6 = vdup_n_s32(a3);
  if ((a2 + 15) >= 0x1F)
  {
    v8 = v4 >> 4;
    v9 = &a1[v5 - 16 * v8];
    v7 = a3;
    do
    {
      HIDWORD(v10) = (-1425107063 * ((-888307712 * *v9) | ((597399067 * *v9) >> 17))) ^ a3;
      LODWORD(v10) = HIDWORD(v10);
      v11 = veor_s8(vmul_s32(vorr_s8(vshl_u32(vmul_s32(*(v9 + 4), 0x38B34AE5AB0E9789), 0xFFFFFFF1FFFFFFF0), vmul_s32(*(v9 + 4), 0x95CA000097890000)), 0xA1E38B9338B34AE5), v6);
      v12.i32[0] = vdup_lane_s32(v6, 1).u32[0];
      a3 = 5 * ((v10 >> 13) + v6.i32[0]) + 1444728091;
      v12.i32[1] = v7;
      HIDWORD(v10) = (597399067 * ((776732672 * *(v9 + 3)) | ((-1578923117 * *(v9 + 3)) >> 14))) ^ v7;
      LODWORD(v10) = HIDWORD(v10);
      v6 = vmla_s32(0x96CD1C350BCAA747, vadd_s32(vorr_s8(vshl_u32(v11, 0xF00000011), vshl_u32(v11, 0xFFFFFFEFFFFFFFF1)), v12), 0x500000005);
      v7 = 5 * ((v10 >> 19) + a3) + 850148119;
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = a3;
  }

  v13 = v6.u32[1];
  v14 = &a1[v5];
  v15 = 0;
  switch(a2 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      v15 = v14[14] << 16;
LABEL_10:
      v15 |= v14[13] << 8;
LABEL_11:
      v7 ^= 597399067 * ((776732672 * (v15 ^ v14[12])) | ((-1578923117 * (v15 ^ v14[12])) >> 14));
LABEL_12:
      v15 = v14[11] << 24;
LABEL_13:
      v15 |= v14[10] << 16;
LABEL_14:
      v15 ^= v14[9] << 8;
LABEL_15:
      v13 = (-1578923117 * ((-1781923840 * (v15 ^ v14[8])) | ((951274213 * (v15 ^ v14[8])) >> 15))) ^ v6.i32[1];
LABEL_16:
      v15 = v14[7] << 24;
LABEL_17:
      v15 |= v14[6] << 16;
LABEL_18:
      v15 ^= v14[5] << 8;
LABEL_19:
      v6.i32[0] ^= 951274213 * ((-1752629248 * (v15 ^ v14[4])) | ((-1425107063 * (v15 ^ v14[4])) >> 16));
      v6.i32[1] = v13;
LABEL_20:
      v15 = v14[3] << 24;
LABEL_21:
      v15 |= v14[2] << 16;
LABEL_22:
      v15 ^= v14[1] << 8;
LABEL_23:
      a3 ^= -1425107063 * ((-888307712 * (v15 ^ *v14)) | ((597399067 * (v15 ^ *v14)) >> 17));
      break;
    default:
      break;
  }

  v16 = veor_s8(v6, vdup_n_s32(a2));
  v17 = v16.i32[1] + (v7 ^ a2) + v16.i32[0] + (a3 ^ a2);
  v18 = -1028477387 * ((-2048144789 * (v17 ^ HIWORD(v17))) ^ ((-2048144789 * (v17 ^ HIWORD(v17))) >> 13));
  v19 = vadd_s32(vdup_n_s32(v17), v16);
  v20 = -1028477387 * ((-2048144789 * ((v17 + (v7 ^ a2)) ^ ((v17 + (v7 ^ a2)) >> 16))) ^ ((-2048144789 * ((v17 + (v7 ^ a2)) ^ ((v17 + (v7 ^ a2)) >> 16))) >> 13));
  v21 = vmul_s32(veor_s8(vshr_n_u32(v19, 0x10uLL), v19), vdup_n_s32(0x85EBCA6B));
  v22 = v20 ^ HIWORD(v20);
  v23 = vmul_s32(veor_s8(vshr_n_u32(v21, 0xDuLL), v21), vdup_n_s32(0xC2B2AE35));
  v24 = veor_s8(vshr_n_u32(v23, 0x10uLL), v23);
  v25 = v24.i32[0] + (v18 ^ HIWORD(v18)) + v22 + v24.i32[1];
  result = vadd_s32(vdup_n_s32(v25), v24);
  *a4 = v25;
  *(a4 + 4) = result;
  *(a4 + 3) = v25 + v22;
  return result;
}

uint64_t MurmurHash3_x64_128(uint64_t result, int a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  if (a2 < 16)
  {
    v7 = a3;
  }

  else
  {
    v5 = (result + 8);
    v6 = (a2 / 16);
    v7 = v4;
    do
    {
      v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v5 - 1)) | ((0x87C37B91114253D5 * *(v5 - 1)) >> 33))) ^ v4, 37) + v7) + 1390208809;
      v7 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v5) | ((0x4CF5AD432745937FLL * *v5) >> 31))) ^ v7, 33)) + 944331445;
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = (result + 16 * (a2 / 16));
  v9 = 0;
  switch(a2 & 0xF)
  {
    case 1:
      goto LABEL_21;
    case 2:
      goto LABEL_20;
    case 3:
      goto LABEL_19;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_17;
    case 6:
      goto LABEL_16;
    case 7:
      goto LABEL_15;
    case 8:
      goto LABEL_14;
    case 9:
      goto LABEL_13;
    case 0xA:
      goto LABEL_12;
    case 0xB:
      goto LABEL_11;
    case 0xC:
      goto LABEL_10;
    case 0xD:
      goto LABEL_9;
    case 0xE:
      goto LABEL_8;
    case 0xF:
      v9 = v8[14] << 48;
LABEL_8:
      v9 |= v8[13] << 40;
LABEL_9:
      v9 ^= v8[12] << 32;
LABEL_10:
      v9 ^= v8[11] << 24;
LABEL_11:
      v9 ^= v8[10] << 16;
LABEL_12:
      v9 ^= v8[9] << 8;
LABEL_13:
      v7 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_14:
      v9 = v8[7] << 56;
LABEL_15:
      v9 |= v8[6] << 48;
LABEL_16:
      v9 ^= v8[5] << 40;
LABEL_17:
      v9 ^= v8[4] << 32;
LABEL_18:
      v9 ^= v8[3] << 24;
LABEL_19:
      v9 ^= v8[2] << 16;
LABEL_20:
      v9 ^= v8[1] << 8;
LABEL_21:
      v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
      break;
    default:
      break;
  }

  v10 = v7 ^ a2;
  v11 = (v4 ^ a2) + v10;
  v12 = v11 + v10;
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
  v15 = v14 ^ (v14 >> 33);
  v16 = v15 + (v13 ^ (v13 >> 33));
  *a4 = v16;
  a4[1] = v16 + v15;
  return result;
}

uint64_t ME_Model::perform_SGD(ME_Model *this)
{
  if (*(this + 5) > 0.0)
  {
    v57 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "error: L2 regularization is currently not supported in SGD mode.");
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v57);
    exit(1);
  }

  v2 = *(this + 4);
  v3 = *(this + 33) - *(this + 32);
  std::vector<int>::vector[abi:ne200100](&v69, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 4));
  if (v70 != v69)
  {
    v4 = 0;
    v5 = (v70 - v69) >> 2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = vdupq_n_s64(v5 - 1);
    v7 = xmmword_19D4E90F0;
    v8 = xmmword_19D4E9070;
    v9 = vdupq_n_s64(4uLL);
    v10 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = v69 + 2;
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v12, *v6.i8).u8[0])
      {
        *(v11 - 2) = v4;
      }

      if (vuzp1_s16(v12, *&v6).i8[2])
      {
        *(v11 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v11 = v4 + 2;
        v11[1] = v4 + 3;
      }

      v4 += 4;
      v7 = vaddq_s64(v7, v9);
      v8 = vaddq_s64(v8, v9);
      v11 += 4;
    }

    while (v10 != v4);
  }

  v13 = (v3 >> 2);
  std::vector<double>::vector[abi:ne200100](v68, v13);
  v14 = *(this + 1);
  std::vector<double>::vector[abi:ne200100](v67, v13);
  std::vector<int>::vector[abi:ne200100](v66, v13);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v61[0] = 0;
  std::vector<double>::push_back[abi:ne200100](&v63, v61);
  if (*(this + 1) >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    while (1)
    {
      std::random_device::random_device[abi:ne200100](&v62);
      v18 = MEMORY[0x19EAFC090](&v62);
      LODWORD(v61[0]) = v18;
      for (i = 1; i != 624; ++i)
      {
        v18 = i + 1812433253 * (v18 ^ (v18 >> 30));
        *(v61 + i) = v18;
      }

      v61[312] = 0;
      std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(v69, v70, v61);
      v58 = v16;
      v20 = *(this + 6);
      if (*(this + 7) != v20)
      {
        break;
      }

LABEL_50:
      if (*(this + 100) > 0)
      {
        ME_Model::heldout_likelihood(this);
      }

      std::random_device::~random_device(&v62);
      v16 = v58 + 1;
      if (v58 + 1 >= *(this + 1))
      {
        goto LABEL_53;
      }
    }

    v21 = 0;
    while (1)
    {
      v22 = v69[v21];
      std::vector<double>::vector[abi:ne200100](__p, *(this + 70));
      v23 = (v20 + 80 * v22);
      ME_Model::conditional_probability(this, v23, __p);
      v24 = v14 * pow(*(this + 2), v15 / (0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 4)));
      v59 = *(v64 - 1) + v24 * v2;
      std::vector<double>::push_back[abi:ne200100](&v63, &v59);
      v17 = v17 + v24 * v2;
      v25 = *v23;
      v26 = __p[0];
      v27 = v23[1];
      v28 = v23[2];
      v29 = -v24;
      if (v27 != v28)
      {
        break;
      }

LABEL_33:
      v42 = v23[4];
      v43 = v23[5];
      if (v42 != v43)
      {
        v44 = *(this + 42);
        v45 = v67[0];
        while (1)
        {
          v46 = (v44 + 24 * *v42);
          v47 = *v46;
          v48 = v46[1];
          if (v47 != v48)
          {
            break;
          }

LABEL_46:
          v42 += 2;
          if (v42 == v43)
          {
            goto LABEL_47;
          }
        }

        v49 = *(this + 32);
        v50 = *(this + 24);
        while (2)
        {
          v51 = *v47;
          v52 = *(v49 + 4 * v51);
          if (v52 == v25)
          {
            v53 = 1.0;
          }

          else
          {
            v53 = 0.0;
          }

          v54 = *(v50 + 8 * v51) + v29 * (v42[1] * (v26[v52] - v53));
          *(v50 + 8 * v51) = v54;
          if (v54 > 0.0)
          {
            v55 = fmax(v54 - (v17 + v45[v51]), 0.0);
            goto LABEL_44;
          }

          v55 = v54;
          if (v54 < 0.0)
          {
            v55 = fmin(v54 + v17 - v45[v51], 0.0);
LABEL_44:
            *(v50 + 8 * v51) = v55;
          }

          v45[v51] = v45[v51] + v55 - v54;
          if (++v47 == v48)
          {
            goto LABEL_46;
          }

          continue;
        }
      }

LABEL_47:
      if (v26)
      {
        __p[1] = v26;
        operator delete(v26);
      }

      ++v21;
      ++v15;
      v20 = *(this + 6);
      if (v21 >= 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - v20) >> 4))
      {
        goto LABEL_50;
      }
    }

    v30 = *(this + 42);
    v31 = v67[0];
    while (1)
    {
      v32 = (v30 + 24 * *v27);
      v33 = *v32;
      v34 = v32[1];
      if (v33 != v34)
      {
        break;
      }

LABEL_32:
      if (++v27 == v28)
      {
        goto LABEL_33;
      }
    }

    v35 = *(this + 32);
    v36 = *(this + 24);
    while (1)
    {
      v37 = *v33;
      v38 = *(v35 + 4 * v37);
      v39 = v38 == v25 ? 1.0 : 0.0;
      v40 = *(v36 + 8 * v37) + v29 * (v26[v38] - v39);
      *(v36 + 8 * v37) = v40;
      if (v40 > 0.0)
      {
        break;
      }

      v41 = v40;
      if (v40 < 0.0)
      {
        v41 = fmin(v40 + v17 - v31[v37], 0.0);
        goto LABEL_30;
      }

LABEL_31:
      v31[v37] = v31[v37] + v41 - v40;
      if (++v33 == v34)
      {
        goto LABEL_32;
      }
    }

    v41 = fmax(v40 - (v17 + v31[v37]), 0.0);
LABEL_30:
    *(v36 + 8 * v37) = v41;
    goto LABEL_31;
  }

LABEL_53:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  if (v68[0])
  {
    v68[1] = v68[0];
    operator delete(v68[0]);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  return 0;
}

void sub_19D4A11D4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 256);
  if (v3)
  {
    *(v1 - 248) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 232);
  if (v4)
  {
    *(v1 - 224) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 208);
  if (v5)
  {
    *(v1 - 200) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 184);
  if (v6)
  {
    *(v1 - 176) = v6;
    operator delete(v6);
  }

  v7 = *(v1 - 160);
  if (v7)
  {
    *(v1 - 152) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D4A14CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D4A1544(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D4A1658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAFC050](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAFC060](v13);
  return a1;
}

void sub_19D4A17B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAFC060](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19D4A1794);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19D4A19E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_19D4E9100;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_19D4A2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19D4A2FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19D4A37B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NLE5Embedding;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19D4A3D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t buf, int a20, __int16 a21, uint64_t a22, char a23, char a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void compileModel(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  MEMORY[0x19EAFBE50](v10);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/private/var/db/com.apple.naturallanguaged");
  E5RT::E5CompilerConfigOptions::SetBundleCacheLocation();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  E5RT::E5Compiler::MakeCompiler();
  createE5CompilerOptions(a2, v4, &v7);
  E5RT::E5Compiler::Compile();
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x19EAFBE60](v10);
}

void sub_19D4A4370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a9)
  {
    compileModel(a9);
  }

  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  MEMORY[0x19EAFBE60](&a16);

  _Unwind_Resume(a1);
}

void createE5CompilerOptions(int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = a2;
  E5RT::E5CompilerOptions::Create(v36);
  v50.__first_ = 1;
  v47 = 0;
  v48 = 0;
  __src = 0;
  std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(&__src, &v50, &v50.__begin_, 1uLL);
  if (a1)
  {
    v4 = v47;
    if (v47 >= v48)
    {
      v6 = __src;
      v7 = v47 - __src;
      v8 = (v47 - __src) >> 3;
      v9 = v8 + 1;
      if ((v8 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v10 = v48 - __src;
      if ((v48 - __src) >> 2 > v9)
      {
        v9 = v10 >> 2;
      }

      v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v9;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v12);
      }

      v13 = (8 * v8);
      v14 = &v13[-((v47 - __src) >> 3)];
      *v13 = 4;
      v5 = (v13 + 1);
      memcpy(v14, v6, v7);
      v15 = __src;
      __src = v14;
      v47 = v5;
      v48 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v47 = 4;
      v5 = v4 + 8;
    }

    v47 = v5;
  }

  if ([(E5RT::E5CompilerOptions *)v36 count])
  {
    std::string::basic_string[abi:ne200100]<0>(&v50, "main");
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v43, &v50, &v50.__end_cap_, 1uLL);
    if (SHIBYTE(v50.__end_) < 0)
    {
      operator delete(v50.__first_);
    }

    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v36;
    v17 = [(E5RT::E5CompilerOptions *)v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v17)
    {
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v16);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v39 + 1) + 8 * i) UTF8String]);
          v20 = v44;
          if (v44 >= v45)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3);
            v23 = v22 + 1;
            if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v45 - v43) >> 3) > v23)
            {
              v23 = 0x5555555555555556 * ((v45 - v43) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v45 - v43) >> 3) >= 0x555555555555555)
            {
              v24 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v24 = v23;
            }

            v50.__end_cap_.__value_ = &v43;
            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v43, v24);
            }

            v25 = 8 * ((v44 - v43) >> 3);
            v26 = *__p;
            *(v25 + 16) = v38;
            *v25 = v26;
            __p[1] = 0;
            v38 = 0;
            __p[0] = 0;
            v27 = 24 * v22 + 24;
            v28 = (24 * v22 - (v44 - v43));
            memcpy((v25 - (v44 - v43)), v43, v44 - v43);
            v29 = v43;
            v30 = v45;
            v43 = v28;
            v44 = v27;
            v45 = 0;
            v50.__end_ = v29;
            v50.__end_cap_.__value_ = v30;
            v50.__first_ = v29;
            v50.__begin_ = v29;
            std::__split_buffer<std::string>::~__split_buffer(&v50);
            v44 = v27;
            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v21 = *__p;
            *(v44 + 2) = v38;
            *v20 = v21;
            v44 = v20 + 24;
          }
        }

        v17 = [(E5RT::E5CompilerOptions *)v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v17);
    }

    v31 = *a3;
    E5RT::E5CompilerOptions::SetMilEntryPoints();
    v50.__first_ = &v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
  }

  v32 = *a3;
  E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  v33 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&v50, "bnns");
  E5RT::E5CompilerOptions::SetPreferredCpuBackend();
  if (SHIBYTE(v50.__end_) < 0)
  {
    operator delete(v50.__first_);
  }

  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_19D4A50B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *a10;
  *a10 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_19D4A6C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D4A7394(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::from_ns(applesauce::CF::ArrayRef *this@<X0>, applesauce::CF::ArrayRef **a2@<X8>)
{
  v4 = this;
  if (v4)
  {
    cf = v4;
    CFRetain(v4);
    *a2 = cf;
    v5 = CFGetTypeID(cf);
    v6 = v5 == CFArrayGetTypeID();
    v4 = cf;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x19EAFBFD0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_19D4A7D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_19D4A8494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a10);

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

uint64_t ___ZL30getSentencePieceModelLoadQueuev_block_invoke()
{
  getSentencePieceModelLoadQueue(void)::queue = dispatch_queue_create("com.apple.NaturalLanguage.SentencePieceModelLoadQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D4A8F5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D4A8FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7628E50, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::ProgramFunction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_19D4A97A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

std::string *std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::ProgramFunction>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAFC130);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<E5RT::BufferObject>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__construct_node_hash<std::string const&,std::unique_ptr<E5RT::BufferObject>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_19D4AA498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<E5RT::BufferObject>>::pair[abi:ne200100]<std::string const&,std::unique_ptr<E5RT::BufferObject>,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::shared_ptr<E5RT::BufferObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(&this[1], a3);
  return this;
}

void sub_19D4AA598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<E5RT::BufferObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAFC130);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_19D4AA940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}