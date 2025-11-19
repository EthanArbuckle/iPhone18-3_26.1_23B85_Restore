@interface NLSequenceModelDataInstance
+ (id)readInstancesFromString:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
- (NLSequenceModelDataInstance)initWithLine:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
- (NLSequenceModelDataInstance)initWithTokens:(id)a3 labels:(id)a4;
- (__CFDictionary)instanceDictionary;
- (id)label;
- (id)locatorsWithIndex:(unint64_t)a3 parameters:(_NLConstraintParameters *)a4 tagger:(id)a5 tokenizer:(__CFStringTokenizer *)a6;
- (id)string;
- (id)subInstanceWithLocator:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
@end

@implementation NLSequenceModelDataInstance

- (NLSequenceModelDataInstance)initWithTokens:(id)a3 labels:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NLSequenceModelDataInstance;
  v8 = [(NLSequenceModelDataInstance *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    tokens = v8->_tokens;
    v8->_tokens = v9;

    v11 = [v7 copy];
    labels = v8->_labels;
    v8->_labels = v11;
  }

  return v8;
}

- (NLSequenceModelDataInstance)initWithLine:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [MEMORY[0x1E695DF70] array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__NLSequenceModelDataInstance_initWithLine_tokenizer___block_invoke;
  v16 = &unk_1E7629FF8;
  v17 = v8;
  v18 = v7;
  v9 = v7;
  v10 = v8;
  [v6 enumerateLinesUsingBlock:&v13];

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
  v2 = [(NLSequenceModelDataInstance *)self tokens];
  v3 = [v2 componentsJoinedByString:@" "];

  return v3;
}

- (id)label
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(NLSequenceModelDataInstance *)self labels];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
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
        v11 = [v3 objectForKey:v10];
        v12 = [v11 unsignedIntegerValue];

        v13 = v12 + 1;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 + 1];
        [v3 setObject:v14 forKey:v10];

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
  v15 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AD60] string];
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
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
          [value addObject:v10];

          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
          [v15 addObject:v11];

          [v14 addObject:v9];
        }
      }

      [v5 appendString:v7];
      if (++v6 < v3)
      {
        [v5 appendString:@" "];
      }
    }

    while (v3 != v6);
  }

  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998188], v5);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998180], value);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998178], v15);
  CFDictionaryAddValue(theDict, *MEMORY[0x1E6998160], v14);

  return theDict;
}

+ (id)readInstancesFromString:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [MEMORY[0x1E696AD60] string];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NLSequenceModelDataInstance_readInstancesFromString_tokenizer___block_invoke;
  v14[3] = &unk_1E762A020;
  v15 = v8;
  v17 = a4;
  v9 = v7;
  v16 = v9;
  v10 = v8;
  [v6 enumerateLinesUsingBlock:v14];

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

- (id)locatorsWithIndex:(unint64_t)a3 parameters:(_NLConstraintParameters *)a4 tagger:(id)a5 tokenizer:(__CFStringTokenizer *)a6
{
  v60 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(NLSequenceModelDataInstance *)self tokens];
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v55 = a4;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [v9 objectAtIndex:v12];
      v15 = [v14 length];

      v16 = [MEMORY[0x1E696B098] valueWithRange:{v13, v15}];
      [v8 addObject:v16];

      v13 += v15 + 1;
      ++v12;
    }

    while (v11 != v12);
    v17 = v55;
    if (v11 >= v55->minSplitTokens)
    {
      v28 = 0;
      v29 = 0;
      p_vtable = &OBJC_METACLASS___NLNLPLanguageModelNode.vtable;
      v53 = v11;
      v54 = v9;
      do
      {
        if (v28 >= v17->maxTokens)
        {
          break;
        }

        v31 = v28;
        v32 = [v9 objectAtIndex:v28];
        v33 = v32;
        if (++v28 == v11 || v28 == v17->maxTokens || v17->splitSentences && tokenIsSentenceTerminator(v32))
        {
          v56 = v33;
          v34 = v28;
          v35 = v28 - v29;
          maxSplitTokens = v17->maxSplitTokens;
          if (v28 - v29 <= maxSplitTokens)
          {
            v46 = [v8 objectAtIndex:v29];
            v47 = [v46 rangeValue];

            v48 = [v8 objectAtIndex:v31];
            v49 = [v48 rangeValue];
            v51 = v50;

            v52 = [objc_alloc((p_vtable + 257)) initWithInstanceIndex:a3 rangeOfCharacters:v47 rangeOfTokens:{v51 - v47 + v49, v29, v35}];
            [v60 addObject:v52];

            v29 = v28;
            v11 = v53;
            v9 = v54;
            v17 = v55;
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

              v39 = [v8 objectAtIndex:{v29, v53, v54}];
              v40 = [v39 rangeValue];

              v41 = [v8 objectAtIndex:v38 + v29 - 1];
              v42 = [v41 rangeValue];
              v44 = v43;

              v45 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:a3 rangeOfCharacters:v40 rangeOfTokens:v44 - v40 + v42, v29, v38];
              [v60 addObject:v45];

              ++v37;
              v29 += v38;
            }

            while (v37 < v58);
            v29 = v34;
            v11 = v53;
            v9 = v54;
            v17 = v55;
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
      [v8 objectAtIndex:0];
      v19 = v18 = v11;
      v20 = [v19 rangeValue];

      v21 = [v8 objectAtIndex:v18 - 1];
      v22 = [v21 rangeValue];
      v24 = v23;

      v25 = v8;
      v26 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:a3 rangeOfCharacters:v20 rangeOfTokens:v24 - v20 + v22, 0, v18];
      [v60 addObject:v26];

      v8 = v25;
    }
  }

  return v60;
}

- (id)subInstanceWithLocator:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v5 = a3;
  v6 = [NLSequenceModelDataInstance alloc];
  v7 = [(NLSequenceModelDataInstance *)self tokens];
  v8 = [v5 rangeOfTokens];
  v10 = [v7 subarrayWithRange:{v8, v9}];
  v11 = [(NLSequenceModelDataInstance *)self labels];
  v12 = [v5 rangeOfTokens];
  v14 = v13;

  v15 = [v11 subarrayWithRange:{v12, v14}];
  v16 = [(NLSequenceModelDataInstance *)v6 initWithTokens:v10 labels:v15];

  return v16;
}

@end