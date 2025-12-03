@interface NLSequenceModelDataInstance
+ (id)readInstancesFromString:(id)string tokenizer:(__CFStringTokenizer *)tokenizer;
- (NLSequenceModelDataInstance)initWithLine:(id)line tokenizer:(__CFStringTokenizer *)tokenizer;
- (NLSequenceModelDataInstance)initWithTokens:(id)tokens labels:(id)labels;
- (__CFDictionary)instanceDictionary;
- (id)label;
- (id)locatorsWithIndex:(unint64_t)index parameters:(_NLConstraintParameters *)parameters tagger:(id)tagger tokenizer:(__CFStringTokenizer *)tokenizer;
- (id)string;
- (id)subInstanceWithLocator:(id)locator tokenizer:(__CFStringTokenizer *)tokenizer;
@end

@implementation NLSequenceModelDataInstance

- (NLSequenceModelDataInstance)initWithTokens:(id)tokens labels:(id)labels
{
  tokensCopy = tokens;
  labelsCopy = labels;
  v14.receiver = self;
  v14.super_class = NLSequenceModelDataInstance;
  v8 = [(NLSequenceModelDataInstance *)&v14 init];
  if (v8)
  {
    v9 = [tokensCopy copy];
    tokens = v8->_tokens;
    v8->_tokens = v9;

    v11 = [labelsCopy copy];
    labels = v8->_labels;
    v8->_labels = v11;
  }

  return v8;
}

- (NLSequenceModelDataInstance)initWithLine:(id)line tokenizer:(__CFStringTokenizer *)tokenizer
{
  v5 = MEMORY[0x1E695DF70];
  lineCopy = line;
  array = [v5 array];
  array2 = [MEMORY[0x1E695DF70] array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__NLSequenceModelDataInstance_initWithLine_tokenizer___block_invoke;
  v16 = &unk_1E7629FF8;
  v17 = array2;
  v18 = array;
  v9 = array;
  v10 = array2;
  [lineCopy enumerateLinesUsingBlock:&v13];

  v11 = [(NLSequenceModelDataInstance *)self initWithTokens:v9 labels:v10, v13, v14, v15, v16];
  return v11;
}

void __54__NLSequenceModelDataInstance_initWithLine_tokenizer___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = [a2 componentsSeparatedByString:@"\t"];
  if ([v9 count] == 2)
  {
    v5 = *(a1 + 32);
    v6 = [v9 firstObject];
    [v5 addObject:v6];

    v7 = *(a1 + 40);
    v8 = [v9 lastObject];
    [v7 addObject:v8];
  }

  else
  {
    *a3 = 1;
  }
}

- (id)string
{
  tokens = [(NLSequenceModelDataInstance *)self tokens];
  v3 = [tokens componentsJoinedByString:@" "];

  return v3;
}

- (id)label
{
  v24 = *MEMORY[0x1E69E9840];
  labels = [(NLSequenceModelDataInstance *)self labels];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = labels;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [dictionary objectForKey:v10];
        unsignedIntegerValue = [v11 unsignedIntegerValue];

        v13 = unsignedIntegerValue + 1;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
        [dictionary setObject:v14 forKey:v10];

        if (v13 > v6)
        {
          v15 = v10;

          v6 = v13;
          v7 = v15;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (__CFDictionary)instanceDictionary
{
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v3 = [(NSArray *)self->_tokens count];
  v4 = [(NSArray *)self->_labels count];
  value = [MEMORY[0x1E695DF70] array];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  string = [MEMORY[0x1E696AD60] string];
  if (v3)
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_tokens objectAtIndex:v6];
      if (v6 < v4)
      {
        v8 = [(NSArray *)self->_labels objectAtIndex:v6];
        if (v8)
        {
          v9 = v8;
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(string, "length")}];
          [value addObject:v10];

          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
          [array addObject:v11];

          [array2 addObject:v9];
        }
      }

      [string appendString:v7];
      if (++v6 < v3)
      {
        [string appendString:@" "];
      }
    }

    while (v3 != v6);
  }

  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998188], string);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998180], value);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998178], array);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998160], array2);

  return theDict;
}

+ (id)readInstancesFromString:(id)string tokenizer:(__CFStringTokenizer *)tokenizer
{
  v5 = MEMORY[0x1E695DF70];
  stringCopy = string;
  array = [v5 array];
  string = [MEMORY[0x1E696AD60] string];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NLSequenceModelDataInstance_readInstancesFromString_tokenizer___block_invoke;
  v14[3] = &unk_1E762A020;
  v15 = string;
  tokenizerCopy = tokenizer;
  v9 = array;
  v16 = v9;
  v10 = string;
  [stringCopy enumerateLinesUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __65__NLSequenceModelDataInstance_readInstancesFromString_tokenizer___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 componentsSeparatedByString:@"\t"];
  if ([v3 count] == 2)
  {
    [*(a1 + 32) appendString:v5];
    [*(a1 + 32) appendString:@"\n"];
  }

  else
  {
    v4 = [[NLSequenceModelDataInstance alloc] initWithLine:*(a1 + 32) tokenizer:*(a1 + 48)];
    if (v4)
    {
      [*(a1 + 40) addObject:v4];
    }

    [*(a1 + 32) deleteCharactersInRange:{0, objc_msgSend(*(a1 + 32), "length")}];
  }
}

- (id)locatorsWithIndex:(unint64_t)index parameters:(_NLConstraintParameters *)parameters tagger:(id)tagger tokenizer:(__CFStringTokenizer *)tokenizer
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  tokens = [(NLSequenceModelDataInstance *)self tokens];
  v10 = [tokens count];
  if (v10)
  {
    v11 = v10;
    parametersCopy = parameters;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [tokens objectAtIndex:v12];
      v15 = [v14 length];

      v16 = [MEMORY[0x1E696B098] valueWithRange:{v13, v15}];
      [array2 addObject:v16];

      v13 += v15 + 1;
      ++v12;
    }

    while (v11 != v12);
    v17 = parametersCopy;
    if (v11 >= parametersCopy->minSplitTokens)
    {
      v28 = 0;
      v29 = 0;
      p_vtable = &OBJC_METACLASS___NLNLPLanguageModelNode.vtable;
      v53 = v11;
      v54 = tokens;
      do
      {
        if (v28 >= v17->maxTokens)
        {
          break;
        }

        v31 = v28;
        v32 = [tokens objectAtIndex:v28];
        v33 = v32;
        if (++v28 == v11 || v28 == v17->maxTokens || v17->splitSentences && tokenIsSentenceTerminator(v32))
        {
          v56 = v33;
          v34 = v28;
          v35 = v28 - v29;
          maxSplitTokens = v17->maxSplitTokens;
          if (v28 - v29 <= maxSplitTokens)
          {
            v46 = [array2 objectAtIndex:v29];
            rangeValue = [v46 rangeValue];

            v48 = [array2 objectAtIndex:v31];
            rangeValue2 = [v48 rangeValue];
            v51 = v50;

            v52 = [objc_alloc((p_vtable + 257)) initWithInstanceIndex:index rangeOfCharacters:rangeValue rangeOfTokens:{v51 - rangeValue + rangeValue2, v29, v35}];
            [array addObject:v52];

            v29 = v28;
            v11 = v53;
            tokens = v54;
            v17 = parametersCopy;
          }

          else
          {
            v58 = (v35 - 1) / maxSplitTokens;
            v57 = (v35 - 1) / (v58 + 1) + 1;
            v37 = -1;
            do
            {
              if (v29 + v57 <= v34)
              {
                v38 = v57;
              }

              else
              {
                v38 = v34 - v29;
              }

              v39 = [array2 objectAtIndex:{v29, v53, v54}];
              rangeValue3 = [v39 rangeValue];

              v41 = [array2 objectAtIndex:v38 + v29 - 1];
              rangeValue4 = [v41 rangeValue];
              v44 = v43;

              v45 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:index rangeOfCharacters:rangeValue3 rangeOfTokens:v44 - rangeValue3 + rangeValue4, v29, v38];
              [array addObject:v45];

              ++v37;
              v29 += v38;
            }

            while (v37 < v58);
            v29 = v34;
            v11 = v53;
            tokens = v54;
            v17 = parametersCopy;
            p_vtable = (&OBJC_METACLASS___NLNLPLanguageModelNode + 24);
            v28 = v34;
          }

          v33 = v56;
        }
      }

      while (v28 != v11);
    }

    else
    {
      [array2 objectAtIndex:0];
      v19 = v18 = v11;
      rangeValue5 = [v19 rangeValue];

      v21 = [array2 objectAtIndex:v18 - 1];
      rangeValue6 = [v21 rangeValue];
      v24 = v23;

      v25 = array2;
      v26 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:index rangeOfCharacters:rangeValue5 rangeOfTokens:v24 - rangeValue5 + rangeValue6, 0, v18];
      [array addObject:v26];

      array2 = v25;
    }
  }

  return array;
}

- (id)subInstanceWithLocator:(id)locator tokenizer:(__CFStringTokenizer *)tokenizer
{
  locatorCopy = locator;
  v6 = [NLSequenceModelDataInstance alloc];
  tokens = [(NLSequenceModelDataInstance *)self tokens];
  rangeOfTokens = [locatorCopy rangeOfTokens];
  v10 = [tokens subarrayWithRange:{rangeOfTokens, v9}];
  labels = [(NLSequenceModelDataInstance *)self labels];
  rangeOfTokens2 = [locatorCopy rangeOfTokens];
  v14 = v13;

  v15 = [labels subarrayWithRange:{rangeOfTokens2, v14}];
  v16 = [(NLSequenceModelDataInstance *)v6 initWithTokens:v10 labels:v15];

  return v16;
}

@end