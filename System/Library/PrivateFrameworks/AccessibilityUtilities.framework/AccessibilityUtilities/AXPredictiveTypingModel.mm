@interface AXPredictiveTypingModel
- (AXPredictiveTypingModel)init;
- (id)_completionPredictionsForPrefix:(id)prefix entireText:(id)text desiredNumber:(unint64_t)number;
- (id)_lastPartialWordForText:(id)text orEndOfSentence:(BOOL *)sentence;
- (id)_nextWordPredictionsForText:(id)text desiredNumber:(unint64_t)number;
- (id)predictionsForText:(id)text desiredNumber:(unint64_t)number;
- (unsigned)_newContextForText:(id)text includeLastToken:(BOOL)token length:(int64_t *)length;
- (void)dealloc;
- (void)enumerateTokensForText:(id)text usingBlock:(id)block;
@end

@implementation AXPredictiveTypingModel

- (AXPredictiveTypingModel)init
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AXPredictiveTypingModel;
  v2 = [(AXPredictiveTypingModel *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en"];
    v6 = *MEMORY[0x1E69ABF90];
    v7[0] = v3;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v2->_wordModel = LMLanguageModelCreate();
  }

  return v2;
}

- (void)dealloc
{
  LMLanguageModelRelease();
  v3.receiver = self;
  v3.super_class = AXPredictiveTypingModel;
  [(AXPredictiveTypingModel *)&v3 dealloc];
}

- (void)enumerateTokensForText:(id)text usingBlock:(id)block
{
  textCopy = text;
  blockCopy = block;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en"];
  v13.length = [(__CFString *)textCopy length];
  v13.location = 0;
  v8 = CFStringTokenizerCreate(0, textCopy, v13, 4uLL, v7);
  v12 = 0;
  do
  {
    if (!CFStringTokenizerAdvanceToNextToken(v8))
    {
      break;
    }

    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
    v10 = [(__CFString *)textCopy substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
    blockCopy[2](blockCopy, v10, CurrentTokenRange.location, CurrentTokenRange.length, &v12);
    v11 = v12;
  }

  while (v11 != 1);
  CFRelease(v8);
}

- (unsigned)_newContextForText:(id)text includeLastToken:(BOOL)token length:(int64_t *)length
{
  tokenCopy = token;
  textCopy = text;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __70__AXPredictiveTypingModel__newContextForText_includeLastToken_length___block_invoke;
  v19 = &unk_1E71E9EF0;
  v10 = v9;
  v20 = v10;
  selfCopy = self;
  [(AXPredictiveTypingModel *)self enumerateTokensForText:textCopy usingBlock:&v16];
  v11 = [v10 count] - !tokenCopy;
  v12 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = [v10 objectAtIndexedSubscript:i];
      v12[i] = [v14 unsignedIntegerValue];
    }
  }

  if (length)
  {
    *length = v11;
  }

  return v12;
}

void __70__AXPredictiveTypingModel__newContextForText_includeLastToken_length___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v8 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LMLanguageModelGetTokenIDForString()];
    [v6 addObject:v7];
  }
}

- (id)_completionPredictionsForPrefix:(id)prefix entireText:(id)text desiredNumber:(unint64_t)number
{
  prefixCopy = prefix;
  textCopy = text;
  v22 = 0;
  v10 = [(AXPredictiveTypingModel *)self _newContextForText:textCopy includeLastToken:0 length:&v22];
  if (3 * number <= 0x32)
  {
    v11 = 50;
  }

  else
  {
    v11 = 3 * number;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
  v19 = MEMORY[0x1E69E9820];
  v20 = prefixCopy;
  v21 = textCopy;
  v13 = v12;
  v14 = textCopy;
  v15 = prefixCopy;
  LMLanguageModelEnumerateCompletionsForPrefixWithBlock();
  free(v10);
  [v13 sortUsingComparator:{&__block_literal_global_3, v19, 3221225472, __84__AXPredictiveTypingModel__completionPredictionsForPrefix_entireText_desiredNumber___block_invoke, &unk_1E71E9F18, self}];
  if ([v13 count] <= number)
  {
    v16 = v13;
  }

  else
  {
    v16 = [v13 subarrayWithRange:{0, number}];
  }

  v17 = v16;

  return v17;
}

void __84__AXPredictiveTypingModel__completionPredictionsForPrefix_entireText_desiredNumber___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if ([StringForTokenID length])
  {
    v5 = objc_alloc_init(AXTypingPrediction);
    [(AXTypingPrediction *)v5 setFullWord:StringForTokenID];
    v6 = [StringForTokenID substringFromIndex:{objc_msgSend(*(a1 + 40), "length")}];
    v7 = [v6 stringByAppendingString:@" "];
    [(AXTypingPrediction *)v5 setTextToInsert:v7];

    [(AXTypingPrediction *)v5 setPrefix:*(a1 + 40)];
    -[AXTypingPrediction setRangeToReplace:](v5, "setRangeToReplace:", [*(a1 + 48) length], 0);
    LMLanguageModelConditionalProbability();
    [(AXTypingPrediction *)v5 setProbability:__exp10(v8)];
    [*(a1 + 56) addObject:v5];
  }

  if ([*(a1 + 56) count] == *(a1 + 80))
  {
    *a3 = 1;
  }
}

uint64_t __84__AXPredictiveTypingModel__completionPredictionsForPrefix_entireText_desiredNumber___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 probability];
  v7 = v6;
  [v5 probability];
  if (v7 <= v8 + 2.22044605e-16)
  {
    [v4 probability];
    v11 = v10;
    [v5 probability];
    v9 = v11 < v12 + -2.22044605e-16;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_lastPartialWordForText:(id)text orEndOfSentence:(BOOL *)sentence
{
  textCopy = text;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [textCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AXPredictiveTypingModel__lastPartialWordForText_orEndOfSentence___block_invoke;
  v10[3] = &unk_1E71E9F60;
  v12 = &v18;
  v7 = textCopy;
  v11 = v7;
  v13 = &v14;
  [v7 enumerateSubstringsInRange:0 options:v6 usingBlock:{1283, v10}];
  if (sentence)
  {
    *sentence = *(v15 + 24);
  }

  v8 = v19[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __67__AXPredictiveTypingModel__lastPartialWordForText_orEndOfSentence___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a5 + a6 == a3 + a4)
  {
    v9 = [a2 copy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [*(a1 + 32) substringWithRange:?];
    v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v11 = [v12 stringByTrimmingCharactersInSet:v13];

    if ([v11 length] && (objc_msgSend(v11, "characterAtIndex:", 0) == 63 || objc_msgSend(v11, "characterAtIndex:", 0) == 46 || objc_msgSend(v11, "characterAtIndex:", 0) == 33))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  *a7 = 1;
}

- (id)_nextWordPredictionsForText:(id)text desiredNumber:(unint64_t)number
{
  textCopy = text;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:number];
  v14 = 0;
  v8 = [(AXPredictiveTypingModel *)self _newContextForText:textCopy includeLastToken:1 length:&v14];
  v12 = textCopy;
  v13 = v7;
  v9 = textCopy;
  LMLanguageModelEnumeratePredictionsWithBlock();
  free(v8);
  v10 = v13;

  return v10;
}

uint64_t __69__AXPredictiveTypingModel__nextWordPredictionsForText_desiredNumber___block_invoke(uint64_t a1, _DWORD *a2, double a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (*a2 < 3u)
  {
    goto LABEL_11;
  }

  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if ([StringForTokenID length])
  {
    v10 = objc_alloc_init(AXTypingPrediction);
    [(AXTypingPrediction *)v10 setFullWord:StringForTokenID];
    v11 = [StringForTokenID stringByAppendingString:@" "];
    [(AXTypingPrediction *)v10 setTextToInsert:v11];

    if ([StringForTokenID length] == 1)
    {
      v12 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      if ([v12 characterIsMember:{objc_msgSend(StringForTokenID, "characterAtIndex:", 0)}])
      {
        v13 = [*(a1 + 40) length];

        if (v13)
        {
          v14 = [*(a1 + 40) length] - 1;
          v15 = 1;
LABEL_9:
          [(AXTypingPrediction *)v10 setRangeToReplace:v14, v15];
          [(AXTypingPrediction *)v10 setProbability:__exp10(a3)];
          [*(a1 + 48) addObject:v10];

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v14 = [*(a1 + 40) length];
    v15 = 0;
    goto LABEL_9;
  }

LABEL_10:

LABEL_11:
  result = [*(a1 + 48) count];
  if (result == *(a1 + 56))
  {
    *a6 = 1;
  }

  return result;
}

- (id)predictionsForText:(id)text desiredNumber:(unint64_t)number
{
  lowercaseString = [text lowercaseString];
  v11 = 0;
  v7 = [(AXPredictiveTypingModel *)self _lastPartialWordForText:lowercaseString orEndOfSentence:&v11];
  if ([v7 length])
  {
    v8 = [(AXPredictiveTypingModel *)self _completionPredictionsForPrefix:v7 entireText:lowercaseString desiredNumber:number];
  }

  else
  {
    if (v11)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(AXPredictiveTypingModel *)self _nextWordPredictionsForText:lowercaseString desiredNumber:number];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

@end