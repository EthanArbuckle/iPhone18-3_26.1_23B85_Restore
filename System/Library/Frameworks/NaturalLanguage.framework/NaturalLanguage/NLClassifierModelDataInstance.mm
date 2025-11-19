@interface NLClassifierModelDataInstance
+ (id)readInstancesFromString:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
- (NLClassifierModelDataInstance)initWithLine:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
- (NLClassifierModelDataInstance)initWithString:(id)a3 label:(id)a4 tokenizer:(__CFStringTokenizer *)a5;
- (__CFDictionary)instanceDictionary;
- (id)formattedLineWithLabelMap:(id)a3 vocabularyMap:(id)a4;
- (id)labels;
- (id)locatorsWithIndex:(unint64_t)a3 parameters:(_NLConstraintParameters *)a4 tagger:(id)a5 tokenizer:(__CFStringTokenizer *)a6;
- (id)subInstanceWithLocator:(id)a3 tokenizer:(__CFStringTokenizer *)a4;
@end

@implementation NLClassifierModelDataInstance

- (NLClassifierModelDataInstance)initWithString:(id)a3 label:(id)a4 tokenizer:(__CFStringTokenizer *)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = NLClassifierModelDataInstance;
  v10 = [(NLClassifierModelDataInstance *)&v18 init];
  if (v10)
  {
    v11 = [v8 copy];
    string = v10->_string;
    v10->_string = v11;

    v13 = [v9 copy];
    label = v10->_label;
    v10->_label = v13;

    v15 = inputSequenceFromSentence(v8, a5);
    tokens = v10->_tokens;
    v10->_tokens = v15;
  }

  return v10;
}

- (NLClassifierModelDataInstance)initWithLine:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v6 = [a3 componentsSeparatedByString:@"\t"];
  if ([v6 count] == 2)
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v6 objectAtIndex:1];
    self = [(NLClassifierModelDataInstance *)self initWithString:v7 label:v8 tokenizer:a4];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)labels
{
  v3 = [(NLClassifierModelDataInstance *)self tokens];
  v4 = [(NLClassifierModelDataInstance *)self label];
  v5 = [v3 count];
  for (i = [MEMORY[0x1E695DF70] array];
  {
    [i addObject:v4];
  }

  return i;
}

- (id)formattedLineWithLabelMap:(id)a3 vocabularyMap:(id)a4
{
  v6 = MEMORY[0x1E696AD60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 string];
  v10 = formattedOutputFromSentence(self->_string, 0, v7);

  v11 = [v8 objectForKey:self->_label];

  [v9 appendString:v10];
  [v9 appendString:@"\t"];
  v12 = labelFromFormattedOutput(v10, v11);
  [v9 appendString:v12];

  return v9;
}

- (__CFDictionary)instanceDictionary
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v4 = [(NLClassifierModelDataInstance *)self string];
  v5 = [(NLClassifierModelDataInstance *)self label];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  generateTokenSequence(v4, 0, v6, v8, v9);
  v10 = [v6 count];
  if (v10)
  {
    v11 = v10;
    do
    {
      [v7 addObject:v5];
      --v11;
    }

    while (v11);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998188], v4);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998180], v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998178], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998160], v7);

  return Mutable;
}

+ (id)readInstancesFromString:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__NLClassifierModelDataInstance_readInstancesFromString_tokenizer___block_invoke;
  v10[3] = &unk_1E762A048;
  v12 = a4;
  v8 = v7;
  v11 = v8;
  [v6 enumerateLinesUsingBlock:v10];

  return v8;
}

void __67__NLClassifierModelDataInstance_readInstancesFromString_tokenizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[NLClassifierModelDataInstance alloc] initWithLine:v3 tokenizer:*(a1 + 40)];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)locatorsWithIndex:(unint64_t)a3 parameters:(_NLConstraintParameters *)a4 tagger:(id)a5 tokenizer:(__CFStringTokenizer *)a6
{
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(NLClassifierModelDataInstance *)self string];
  v12 = [v11 length];
  v13 = [(NLClassifierModelDataInstance *)self tokens];
  v14 = [v13 count];

  if (v14 >= a4->minSplitTokens)
  {
    [v9 setString:v11];
    if (v12)
    {
      v47 = v9;
      v48 = v12;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v49 = a4;
      v50 = v11;
      while (v18 < a4->maxTokens)
      {
        v54 = [MEMORY[0x1E695DF70] array];
        v58 = [MEMORY[0x1E695DF70] array];
        v19 = [MEMORY[0x1E695DF70] array];
        v20 = 0;
        v21 = v12;
        if (a4->splitSentences)
        {
          v20 = [v47 sentenceRangeForRange:{v16, 0}];
        }

        v22 = v20;
        v53 = v21;
        v23 = [v11 substringWithRange:{v20, v21}];

        v52 = v23;
        v24 = v58;
        generateTokenSequence(v23, a6, v54, v58, v19);
        v25 = [v54 count];
        maxSplitTokens = a4->maxSplitTokens;
        maxTokens = a4->maxTokens;
        if (v25 + v18 <= maxTokens)
        {
          v28 = v25;
        }

        else
        {
          v28 = maxTokens - v18;
        }

        v60 = v18;
        v61 = v28;
        v59 = v22;
        v57 = v19;
        if (v28 <= maxSplitTokens)
        {
          if (v28)
          {
            v44 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:a3 rangeOfCharacters:v22 rangeOfTokens:v53, v18, v28];
            [v10 addObject:v44];
          }
        }

        else
        {
          v29 = 0;
          v56 = (v28 - 1) / maxSplitTokens;
          v55 = (v28 - 1) / (v56 + 1) + 1;
          v30 = -1;
          do
          {
            if (v29 + v55 <= v61)
            {
              v31 = v55;
            }

            else
            {
              v31 = v61 - v29;
            }

            v32 = [v24 objectAtIndex:v29];
            v33 = [v32 unsignedIntegerValue];

            [v24 objectAtIndex:v31 + v29 - 1];
            v34 = a3;
            v36 = v35 = v10;
            v37 = [v36 unsignedIntegerValue];

            v38 = [v57 objectAtIndex:v31 + v29 - 1];
            v39 = [v38 unsignedIntegerValue];

            v40 = v37 - v33;
            v24 = v58;
            v41 = [NLDataInstanceLocator alloc];
            v42 = v40 + v39;
            v10 = v35;
            a3 = v34;
            v43 = [(NLDataInstanceLocator *)v41 initWithInstanceIndex:v34 rangeOfCharacters:v33 + v59 rangeOfTokens:v42, v29 + v60, v31];
            [v10 addObject:v43];

            ++v30;
            v29 += v31;
          }

          while (v30 < v56);
        }

        v18 = v61 + v60;

        v45 = v52;
        v16 = v59 + v53;
        v17 = v52;
        v12 = v48;
        a4 = v49;
        v11 = v50;
        if (v59 + v53 >= v48)
        {
          goto LABEL_23;
        }
      }

      v45 = v17;
LABEL_23:

      v9 = v47;
    }

    [v9 setString:0];
  }

  else
  {
    v15 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:a3 rangeOfCharacters:0 rangeOfTokens:v12, 0, v14];
    [v10 addObject:v15];
  }

  return v10;
}

- (id)subInstanceWithLocator:(id)a3 tokenizer:(__CFStringTokenizer *)a4
{
  v6 = a3;
  v7 = [NLClassifierModelDataInstance alloc];
  v8 = [(NLClassifierModelDataInstance *)self string];
  v9 = [v6 rangeOfCharacters];
  v11 = v10;

  v12 = [v8 substringWithRange:{v9, v11}];
  v13 = [(NLClassifierModelDataInstance *)self label];
  v14 = [(NLClassifierModelDataInstance *)v7 initWithString:v12 label:v13 tokenizer:a4];

  return v14;
}

@end