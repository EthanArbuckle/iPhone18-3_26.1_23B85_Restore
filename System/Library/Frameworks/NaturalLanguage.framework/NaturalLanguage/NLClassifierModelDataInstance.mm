@interface NLClassifierModelDataInstance
+ (id)readInstancesFromString:(id)string tokenizer:(__CFStringTokenizer *)tokenizer;
- (NLClassifierModelDataInstance)initWithLine:(id)line tokenizer:(__CFStringTokenizer *)tokenizer;
- (NLClassifierModelDataInstance)initWithString:(id)string label:(id)label tokenizer:(__CFStringTokenizer *)tokenizer;
- (__CFDictionary)instanceDictionary;
- (id)formattedLineWithLabelMap:(id)map vocabularyMap:(id)vocabularyMap;
- (id)labels;
- (id)locatorsWithIndex:(unint64_t)index parameters:(_NLConstraintParameters *)parameters tagger:(id)tagger tokenizer:(__CFStringTokenizer *)tokenizer;
- (id)subInstanceWithLocator:(id)locator tokenizer:(__CFStringTokenizer *)tokenizer;
@end

@implementation NLClassifierModelDataInstance

- (NLClassifierModelDataInstance)initWithString:(id)string label:(id)label tokenizer:(__CFStringTokenizer *)tokenizer
{
  stringCopy = string;
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = NLClassifierModelDataInstance;
  v10 = [(NLClassifierModelDataInstance *)&v18 init];
  if (v10)
  {
    v11 = [stringCopy copy];
    string = v10->_string;
    v10->_string = v11;

    v13 = [labelCopy copy];
    label = v10->_label;
    v10->_label = v13;

    v15 = inputSequenceFromSentence(stringCopy, tokenizer);
    tokens = v10->_tokens;
    v10->_tokens = v15;
  }

  return v10;
}

- (NLClassifierModelDataInstance)initWithLine:(id)line tokenizer:(__CFStringTokenizer *)tokenizer
{
  v6 = [line componentsSeparatedByString:@"\t"];
  if ([v6 count] == 2)
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v6 objectAtIndex:1];
    self = [(NLClassifierModelDataInstance *)self initWithString:v7 label:v8 tokenizer:tokenizer];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)labels
{
  tokens = [(NLClassifierModelDataInstance *)self tokens];
  label = [(NLClassifierModelDataInstance *)self label];
  v5 = [tokens count];
  for (i = [MEMORY[0x1E695DF70] array];
  {
    [i addObject:label];
  }

  return i;
}

- (id)formattedLineWithLabelMap:(id)map vocabularyMap:(id)vocabularyMap
{
  v6 = MEMORY[0x1E696AD60];
  vocabularyMapCopy = vocabularyMap;
  mapCopy = map;
  string = [v6 string];
  v10 = formattedOutputFromSentence(self->_string, 0, vocabularyMapCopy);

  v11 = [mapCopy objectForKey:self->_label];

  [string appendString:v10];
  [string appendString:@"\t"];
  v12 = labelFromFormattedOutput(v10, v11);
  [string appendString:v12];

  return string;
}

- (__CFDictionary)instanceDictionary
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  string = [(NLClassifierModelDataInstance *)self string];
  label = [(NLClassifierModelDataInstance *)self label];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  generateTokenSequence(string, 0, array, array3, array4);
  v10 = [array count];
  if (v10)
  {
    v11 = v10;
    do
    {
      [array2 addObject:label];
      --v11;
    }

    while (v11);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998188], string);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998180], array3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998178], array4);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6998160], array2);

  return Mutable;
}

+ (id)readInstancesFromString:(id)string tokenizer:(__CFStringTokenizer *)tokenizer
{
  v5 = MEMORY[0x1E695DF70];
  stringCopy = string;
  array = [v5 array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__NLClassifierModelDataInstance_readInstancesFromString_tokenizer___block_invoke;
  v10[3] = &unk_1E762A048;
  tokenizerCopy = tokenizer;
  v8 = array;
  v11 = v8;
  [stringCopy enumerateLinesUsingBlock:v10];

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

- (id)locatorsWithIndex:(unint64_t)index parameters:(_NLConstraintParameters *)parameters tagger:(id)tagger tokenizer:(__CFStringTokenizer *)tokenizer
{
  taggerCopy = tagger;
  array = [MEMORY[0x1E695DF70] array];
  string = [(NLClassifierModelDataInstance *)self string];
  v12 = [string length];
  tokens = [(NLClassifierModelDataInstance *)self tokens];
  v14 = [tokens count];

  if (v14 >= parameters->minSplitTokens)
  {
    [taggerCopy setString:string];
    if (v12)
    {
      v47 = taggerCopy;
      v48 = v12;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      parametersCopy = parameters;
      v50 = string;
      while (v18 < parameters->maxTokens)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        array3 = [MEMORY[0x1E695DF70] array];
        array4 = [MEMORY[0x1E695DF70] array];
        v20 = 0;
        v21 = v12;
        if (parameters->splitSentences)
        {
          v20 = [v47 sentenceRangeForRange:{v16, 0}];
        }

        v22 = v20;
        v53 = v21;
        v23 = [string substringWithRange:{v20, v21}];

        v52 = v23;
        v24 = array3;
        generateTokenSequence(v23, tokenizer, array2, array3, array4);
        v25 = [array2 count];
        maxSplitTokens = parameters->maxSplitTokens;
        maxTokens = parameters->maxTokens;
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
        v57 = array4;
        if (v28 <= maxSplitTokens)
        {
          if (v28)
          {
            v44 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:index rangeOfCharacters:v22 rangeOfTokens:v53, v18, v28];
            [array addObject:v44];
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
            unsignedIntegerValue = [v32 unsignedIntegerValue];

            [v24 objectAtIndex:v31 + v29 - 1];
            indexCopy = index;
            v36 = v35 = array;
            unsignedIntegerValue2 = [v36 unsignedIntegerValue];

            v38 = [v57 objectAtIndex:v31 + v29 - 1];
            unsignedIntegerValue3 = [v38 unsignedIntegerValue];

            v40 = unsignedIntegerValue2 - unsignedIntegerValue;
            v24 = array3;
            v41 = [NLDataInstanceLocator alloc];
            v42 = v40 + unsignedIntegerValue3;
            array = v35;
            index = indexCopy;
            v43 = [(NLDataInstanceLocator *)v41 initWithInstanceIndex:indexCopy rangeOfCharacters:unsignedIntegerValue + v59 rangeOfTokens:v42, v29 + v60, v31];
            [array addObject:v43];

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
        parameters = parametersCopy;
        string = v50;
        if (v59 + v53 >= v48)
        {
          goto LABEL_23;
        }
      }

      v45 = v17;
LABEL_23:

      taggerCopy = v47;
    }

    [taggerCopy setString:0];
  }

  else
  {
    v15 = [[NLDataInstanceLocator alloc] initWithInstanceIndex:index rangeOfCharacters:0 rangeOfTokens:v12, 0, v14];
    [array addObject:v15];
  }

  return array;
}

- (id)subInstanceWithLocator:(id)locator tokenizer:(__CFStringTokenizer *)tokenizer
{
  locatorCopy = locator;
  v7 = [NLClassifierModelDataInstance alloc];
  string = [(NLClassifierModelDataInstance *)self string];
  rangeOfCharacters = [locatorCopy rangeOfCharacters];
  v11 = v10;

  v12 = [string substringWithRange:{rangeOfCharacters, v11}];
  label = [(NLClassifierModelDataInstance *)self label];
  v14 = [(NLClassifierModelDataInstance *)v7 initWithString:v12 label:label tokenizer:tokenizer];

  return v14;
}

@end