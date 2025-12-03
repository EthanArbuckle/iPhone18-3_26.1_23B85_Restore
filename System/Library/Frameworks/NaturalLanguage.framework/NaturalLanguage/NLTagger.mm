@interface NLTagger
+ (NSArray)availableTagSchemesForUnit:(NLTokenUnit)unit language:(NLLanguage)language;
+ (id)availableTagSchemesForLanguage:(id)language;
+ (id)dominantScriptForString:(id)string;
+ (void)didReceiveAssetsChangedNotification:(id)notification;
+ (void)registerForAssetNotifications;
+ (void)requestAssetsForLanguage:(id)language assetIdentifier:(id)identifier tagScheme:(id)scheme completionHandler:(id)handler;
+ (void)unregisterForAssetNotifications;
- (NLLanguage)dominantLanguage;
- (NLTag)tagAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme tokenRange:(NSRangePointer)tokenRange;
- (NLTagger)initWithTagSchemes:(NSArray *)tagSchemes;
- (NSArray)gazetteersForTagScheme:(NLTagScheme)tagScheme;
- (NSArray)modelsForTagScheme:(NLTagScheme)tagScheme;
- (NSArray)tagsInRange:(NSRange)range unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme options:(NLTaggerOptions)options tokenRanges:(NSArray *)tokenRanges;
- (NSDictionary)tagHypothesesAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme maximumCount:(NSUInteger)maximumCount tokenRange:(NSRangePointer)tokenRange;
- (NSRange)tokenRangeAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit;
- (NSRange)tokenRangeForRange:(NSRange)range unit:(NLTokenUnit)unit;
- (NSString)description;
- (_NSRange)sentenceRangeForRange:(_NSRange)range;
- (id)_customGazetteerAtIndex:(unint64_t)index unit:(int64_t)unit gazetteerDictionary:(id)dictionary;
- (id)_customHypothesesAtIndex:(unint64_t)index fromHypothesisDictionary:(id)dictionary;
- (id)_customHypothesesAtIndex:(unint64_t)index unit:(int64_t)unit scheme:(id)scheme maximumCount:(unint64_t)count options:(unint64_t)options modelDictionary:(id)dictionary gazetteerDictionary:(id)gazetteerDictionary;
- (id)_customHypothesisDictionaryForSentence:(id)sentence options:(unint64_t)options model:(id)model gazetteer:(id)gazetteer maximumCount:(unint64_t)count;
- (id)_customModelAtIndex:(unint64_t)index unit:(int64_t)unit modelDictionary:(id)dictionary;
- (id)_customTagAtIndex:(unint64_t)index fromTagDictionary:(id)dictionary;
- (id)_customTagAtIndex:(unint64_t)index unit:(int64_t)unit scheme:(id)scheme options:(unint64_t)options modelDictionary:(id)dictionary gazetteerDictionary:(id)gazetteerDictionary;
- (id)_customTagDictionaryForSentence:(id)sentence options:(unint64_t)options model:(id)model gazetteer:(id)gazetteer;
- (id)_tagSchemeForScheme:(id)scheme;
- (id)dominantScript;
- (void)dealloc;
- (void)enumerateTagsInRange:(NSRange)range unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme options:(NLTaggerOptions)options usingBlock:(void *)block;
- (void)setGazetteers:(NSArray *)gazetteers forTagScheme:(NLTagScheme)tagScheme;
- (void)setLanguage:(NLLanguage)language range:(NSRange)range;
- (void)setModels:(NSArray *)models forTagScheme:(NLTagScheme)tagScheme;
- (void)setOrthography:(NSOrthography *)orthography range:(NSRange)range;
- (void)setString:(NSString *)string;
- (void)stringEditedInRange:(_NSRange)range changeInLength:(int64_t)length;
@end

@implementation NLTagger

+ (void)registerForAssetNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NLTagger_registerForAssetNotifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerForAssetNotifications_onceToken != -1)
  {
    dispatch_once(&registerForAssetNotifications_onceToken, block);
  }
}

- (void)dealloc
{
  tagger = self->_tagger;
  if (tagger)
  {
    CFRelease(tagger);
  }

  v4.receiver = self;
  v4.super_class = NLTagger;
  [(NLTagger *)&v4 dealloc];
}

+ (NSArray)availableTagSchemesForUnit:(NLTokenUnit)unit language:(NLLanguage)language
{
  v4 = CFLocaleCreate(0, language);
  v5 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
    v7 = NLTaggerCopyAvailableTagSchemes();
    CFRelease(v6);
    if (v7)
    {
      v5 = v7;
    }
  }

  return v5;
}

+ (id)availableTagSchemesForLanguage:(id)language
{
  v4 = MEMORY[0x1E695DFA8];
  languageCopy = language;
  v6 = [v4 set];
  v7 = [self availableTagSchemesForUnit:0 language:languageCopy];
  [v6 addObjectsFromArray:v7];

  v8 = [self availableTagSchemesForUnit:1 language:languageCopy];
  [v6 addObjectsFromArray:v8];

  v9 = [self availableTagSchemesForUnit:2 language:languageCopy];
  [v6 addObjectsFromArray:v9];

  v10 = [self availableTagSchemesForUnit:3 language:languageCopy];

  [v6 addObjectsFromArray:v10];
  allObjects = [v6 allObjects];

  return allObjects;
}

void __41__NLTagger_registerForAssetNotifications__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_didReceiveAssetsChangedNotification_ name:@"com.apple.DataDeliveryServices.AssetUpdatedAndCacheCleared-com.apple.MobileAsset.LinguisticData" object:0];
}

+ (void)unregisterForAssetNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.DataDeliveryServices.AssetUpdatedAndCacheCleared-com.apple.MobileAsset.LinguisticData" object:0];
}

+ (void)didReceiveAssetsChangedNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  v6 = NLGetLogCategory(self);
  internal = [v6 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NLGetLogIdentifier(self);
    v9 = MEMORY[0x1E696AEC0];
    name = [notificationCopy name];
    v11 = [v9 stringWithFormat:@"Observed notification: %@", name];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  +[NLTaggerAssetRequest checkAssetRequests];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"NLAssetsHaveChanged" object:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (NLTagger)initWithTagSchemes:(NSArray *)tagSchemes
{
  v4 = tagSchemes;
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (([v5 containsObject:@"Language"] & 1) == 0)
  {
    [v5 addObject:@"Language"];
  }

  if (([v5 containsObject:@"Script"] & 1) == 0)
  {
    [v5 addObject:@"Script"];
  }

  v7 = NLTaggerCreate();
  +[NLTagger registerForAssetNotifications];
  if (v7)
  {
    v11.receiver = self;
    v11.super_class = NLTagger;
    self = [(NLTagger *)&v11 init];
    if (self)
    {
      v8 = [(NSArray *)v4 copy];
      schemes = self->_schemes;
      self->_schemes = v8;

      self->_tagger = v7;
    }
  }

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = NLTagger;
  v4 = [(NLTagger *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"    tag schemes %@\n", self->_schemes];
  [v5 appendFormat:@"    string %p has %lu characters\n", self->_string, -[NSString length](self->_string, "length")];

  return v5;
}

- (id)_tagSchemeForScheme:(id)scheme
{
  schemeCopy = scheme;
  if ([(NSArray *)self->_schemes containsObject:schemeCopy])
  {
    v5 = @"TokenType";
    if (([@"TokenType" isEqualToString:schemeCopy] & 1) == 0)
    {
      v5 = @"LexicalClass";
      if (([@"LexicalClass" isEqualToString:schemeCopy] & 1) == 0)
      {
        v5 = @"NameType";
        if (([@"NameType" isEqualToString:schemeCopy] & 1) == 0)
        {
          v5 = @"NameTypeOrLexicalClass";
          if (([@"NameTypeOrLexicalClass" isEqualToString:schemeCopy] & 1) == 0)
          {
            v5 = @"Lemma";
            if (([@"Lemma" isEqualToString:schemeCopy] & 1) == 0)
            {
              v5 = @"Language";
              if (([@"Language" isEqualToString:schemeCopy] & 1) == 0)
              {
                v5 = @"Script";
                if (([@"Script" isEqualToString:schemeCopy] & 1) == 0)
                {
                  v5 = @"Sentiment";
                  if (([@"Sentiment" isEqualToString:schemeCopy] & 1) == 0)
                  {
                    v5 = @"PossibleClasses";
                    if (([@"PossibleClasses" isEqualToString:schemeCopy] & 1) == 0)
                    {
                      v5 = @"InternalClass";
                      if (![@"InternalClass" isEqualToString:schemeCopy])
                      {
                        v5 = schemeCopy;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setString:(NSString *)string
{
  objc_storeStrong(&self->_string, string);
  v6 = string;
  tagger = self->_tagger;
  NLTaggerSetString();
}

- (_NSRange)sentenceRangeForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  string = [(NLTagger *)self string];
  v7 = [string length];

  if (location + length <= v7)
  {
    if (v7)
    {
      tagger = self->_tagger;
      NLTaggerGetTokenAtIndex();
      if (length)
      {
        v9 = self->_tagger;
        NLTaggerGetTokenAtIndex();
      }
    }
  }

  v10 = 0;
  v11 = 0;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_customModelAtIndex:(unint64_t)index unit:(int64_t)unit modelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  tagger = self->_tagger;
  v8 = NLTaggerCopyTagAtIndex();
  if (!v8)
  {
    v8 = @"und";
  }

  v9 = [dictionaryCopy objectForKey:v8];
  if (!v9)
  {
    v9 = [dictionaryCopy objectForKey:@"und"];
  }

  return v9;
}

- (id)_customGazetteerAtIndex:(unint64_t)index unit:(int64_t)unit gazetteerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (unit)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    tagger = self->_tagger;
    v9 = NLTaggerCopyTagAtIndex();
    if (!v9)
    {
      v9 = @"und";
    }

    v11 = [dictionaryCopy objectForKey:v9];
    if (!v11)
    {
      v11 = [dictionaryCopy objectForKey:@"und"];
    }

    v8 = v11;
  }

  return v8;
}

- (id)_customTagDictionaryForSentence:(id)sentence options:(unint64_t)options model:(id)model gazetteer:(id)gazetteer
{
  optionsCopy = options;
  v56[2] = *MEMORY[0x1E69E9840];
  sentenceCopy = sentence;
  modelCopy = model;
  gazetteerCopy = gazetteer;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v49 = v53 = sentenceCopy;
  generateTokenSequence(sentenceCopy, 0, array, array2, v49);
  v12 = [array count];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x1E695DF70];
    v15 = [modelCopy predictedLabelsForTokens:array];
    v16 = [v14 arrayWithArray:v15];

    array3 = [MEMORY[0x1E695DF70] array];
    if ([v16 count] < v13)
    {
      v18 = [v16 count];
      v19 = v13 - v18;
      if (v13 > v18)
      {
        do
        {
          [v16 addObject:&stru_1F10C6540];
          --v19;
        }

        while (v19);
      }
    }

    v51 = v16;
    v47 = array;
    v48 = modelCopy;
    for (i = 0; i != v13; ++i)
    {
      v21 = MEMORY[0x1E696B098];
      v22 = [array2 objectAtIndex:i];
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      v24 = [v49 objectAtIndex:i];
      v25 = [v21 valueWithRange:{unsignedIntegerValue, objc_msgSend(v24, "unsignedIntegerValue")}];
      [array3 addObject:v25];
    }

    v52 = array3;
    v45 = array2;
    v26 = v51;
    if (!gazetteerCopy)
    {
      goto LABEL_21;
    }

    v27 = 0;
    while (1)
    {
      v28 = 4;
      v29 = 3;
      while (v27 + v29 >= v13)
      {
LABEL_13:
        --v29;
        --v28;
        if (v29 == -1)
        {
          v26 = v51;
          goto LABEL_20;
        }
      }

      v30 = [v52 objectAtIndex:v27];
      rangeValue = [v30 rangeValue];
      v33 = v32;
      v34 = [v52 objectAtIndex:v27 + v29];
      v59.location = [v34 rangeValue];
      v59.length = v35;
      v58.location = rangeValue;
      v58.length = v33;
      v36 = NSUnionRange(v58, v59);

      v37 = [v53 substringWithRange:{v36.location, v36.length}];
      v38 = [gazetteerCopy labelForString:v37];
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = v27;
      v26 = v51;
      if ((optionsCopy & 0x10) != 0)
      {
        [v52 removeObjectsInRange:{v27, v29 + 1}];
        [v51 removeObjectsInRange:{v27, v29 + 1}];
        v41 = [MEMORY[0x1E696B098] valueWithRange:{v36.location, v36.length}];
        [v52 insertObject:v41 atIndex:v27];

        [v51 insertObject:v39 atIndex:v27];
        v13 -= v29;
      }

      else
      {
        do
        {
          [v51 replaceObjectAtIndex:v40++ withObject:{v39, v45}];
          --v28;
        }

        while (v28);
      }

LABEL_20:
      if (++v27 >= v13)
      {
LABEL_21:
        v55[0] = @"labels";
        v55[1] = @"ranges";
        v56[0] = v26;
        v56[1] = v52;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{2, v45}];

        array = v47;
        modelCopy = v48;
        array2 = v46;
        goto LABEL_23;
      }
    }

    goto LABEL_13;
  }

  v42 = MEMORY[0x1E695E0F8];
LABEL_23:

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)_customTagAtIndex:(unint64_t)index fromTagDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"labels"];
  v7 = [dictionaryCopy objectForKey:@"ranges"];
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [v7 objectAtIndex:v10];
      rangeValue = [v11 rangeValue];
      v14 = v13;

      if (index >= rangeValue && index - rangeValue < v14)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }

    v15 = [v6 objectAtIndex:v10];
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15;
}

- (id)_customTagAtIndex:(unint64_t)index unit:(int64_t)unit scheme:(id)scheme options:(unint64_t)options modelDictionary:(id)dictionary gazetteerDictionary:(id)gazetteerDictionary
{
  gazetteerDictionaryCopy = gazetteerDictionary;
  v14 = [(NLTagger *)self _customModelAtIndex:index unit:unit modelDictionary:dictionary];
  if (!v14)
  {
    v22 = 0;
    goto LABEL_34;
  }

  v34 = gazetteerDictionaryCopy;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
  string = [(NLTagger *)self string];
  v17 = string;
  v18 = 0;
  if (unit > 1)
  {
    if (unit == 2)
    {
      v20 = [string paragraphRangeForRange:{index, 0}];
      goto LABEL_22;
    }

    v19 = 0;
    if (unit == 3)
    {
      v18 = [string length];
      v23 = v17;
LABEL_23:
      v19 = v23;
    }
  }

  else
  {
    if (!unit)
    {
      v24 = [(NLTagger *)self sentenceRangeForRange:index, 0];
      v26 = v25;
      v33 = v24;
      v19 = [v17 substringWithRange:?];
      dictionary = [(NSMutableDictionary *)self->_sequenceCaches objectForKey:v15];
      v28 = [dictionary objectForKey:v19];
      if (!v28 && v26)
      {
        v29 = [(NLTagger *)self _customGazetteerAtIndex:index unit:0 gazetteerDictionary:v34];
        optionsCopy = options;
        v31 = v29;
        v28 = [(NLTagger *)self _customTagDictionaryForSentence:v19 options:optionsCopy model:v14 gazetteer:v29];
        if (v28 && v26 <= 0x400)
        {
          if ([dictionary count] >= 0x40)
          {
            [dictionary removeAllObjects];
          }

          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            [(NSMutableDictionary *)self->_sequenceCaches setObject:dictionary forKey:v15];
          }

          [dictionary setObject:v28 forKey:v19];
        }
      }

      v22 = [(NLTagger *)self _customTagAtIndex:index - v33 fromTagDictionary:v28];

      goto LABEL_33;
    }

    v19 = 0;
    if (unit == 1)
    {
      v20 = [(NLTagger *)self sentenceRangeForRange:index, 0];
LABEL_22:
      v18 = v21;
      v23 = [v17 substringWithRange:{v20, v21}];
      goto LABEL_23;
    }
  }

  dictionary = [(NSMutableDictionary *)self->_classifierCaches objectForKey:v15];
  v22 = [dictionary objectForKey:v19];
  if (!v22)
  {
    if (v18)
    {
      v22 = [v14 predictedLabelForString:v19];
      if (v22)
      {
        if (v18 <= 0x400)
        {
          if ([dictionary count] >= 0x40)
          {
            [dictionary removeAllObjects];
          }

          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            [(NSMutableDictionary *)self->_classifierCaches setObject:dictionary forKey:v15];
          }

          [dictionary setObject:v22 forKey:v19];
        }
      }
    }
  }

LABEL_33:

  gazetteerDictionaryCopy = v34;
LABEL_34:

  return v22;
}

- (id)_customHypothesisDictionaryForSentence:(id)sentence options:(unint64_t)options model:(id)model gazetteer:(id)gazetteer maximumCount:(unint64_t)count
{
  optionsCopy = options;
  v66[1] = *MEMORY[0x1E69E9840];
  sentenceCopy = sentence;
  modelCopy = model;
  gazetteerCopy = gazetteer;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v57 = v60 = sentenceCopy;
  generateTokenSequence(sentenceCopy, 0, array, array2, v57);
  v14 = [array count];
  if (v14)
  {
    v15 = v14;
    v16 = array;
    v17 = MEMORY[0x1E695DF70];
    v53 = v16;
    v18 = [modelCopy predictedLabelHypothesesForTokens:? maximumCount:?];
    v19 = [v17 arrayWithArray:v18];

    array3 = [MEMORY[0x1E695DF70] array];
    if ([v19 count] < v15)
    {
      v20 = [v19 count];
      v21 = v15 - v20;
      if (v15 > v20)
      {
        v22 = MEMORY[0x1E695E0F8];
        do
        {
          [v19 addObject:v22];
          --v21;
        }

        while (v21);
      }
    }

    v59 = v19;
    v23 = 0;
    v24 = 0x1E696B000uLL;
    v25 = v57;
    do
    {
      v26 = *(v24 + 152);
      v27 = [array2 objectAtIndex:v23];
      unsignedIntegerValue = [v27 unsignedIntegerValue];
      v29 = [v57 objectAtIndex:v23];
      v30 = [v26 valueWithRange:{unsignedIntegerValue, objc_msgSend(v29, "unsignedIntegerValue")}];
      [array3 addObject:v30];

      v24 = 0x1E696B000;
      ++v23;
    }

    while (v15 != v23);
    v31 = v59;
    v32 = array3;
    if (!gazetteerCopy || !count)
    {
      goto LABEL_23;
    }

    v33 = 0;
    v55 = array2;
    v56 = modelCopy;
    while (1)
    {
      v34 = 4;
      v35 = 3;
      while (v33 + v35 >= v15)
      {
LABEL_15:
        --v35;
        --v34;
        if (v35 == -1)
        {
          array2 = v55;
          modelCopy = v56;
          v25 = v57;
          goto LABEL_22;
        }
      }

      v36 = [v32 objectAtIndex:v33];
      rangeValue = [v36 rangeValue];
      v39 = v38;
      v40 = [v32 objectAtIndex:v33 + v35];
      v69.location = [v40 rangeValue];
      v69.length = v41;
      v68.location = rangeValue;
      v68.length = v39;
      v42 = NSUnionRange(v68, v69);

      v43 = [v60 substringWithRange:{v42.location, v42.length}];
      v44 = [gazetteerCopy labelForString:v43];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v65 = v44;
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
      v66[0] = v46;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];

      v47 = v33;
      v31 = v59;
      if ((optionsCopy & 0x10) != 0)
      {
        [array3 removeObjectsInRange:{v33, v35 + 1}];
        [v59 removeObjectsInRange:{v33, v35 + 1}];
        v49 = [MEMORY[0x1E696B098] valueWithRange:{v42.location, v42.length}];
        [array3 insertObject:v49 atIndex:v33];

        v48 = v58;
        [v59 insertObject:v58 atIndex:v33];
        v15 -= v35;
        v25 = v57;
      }

      else
      {
        do
        {
          [v59 replaceObjectAtIndex:v47++ withObject:v58];
          --v34;
        }

        while (v34);
        v25 = v57;
        v48 = v58;
      }

      array2 = v55;
      modelCopy = v56;
      v32 = array3;
LABEL_22:
      if (++v33 >= v15)
      {
LABEL_23:
        v63[0] = @"hypotheses";
        v63[1] = @"ranges";
        v64[0] = v31;
        v64[1] = v32;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];

        array = v53;
        goto LABEL_25;
      }
    }

    v31 = v59;
    v32 = array3;
    goto LABEL_15;
  }

  v50 = MEMORY[0x1E695E0F8];
  v25 = v57;
LABEL_25:

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (id)_customHypothesesAtIndex:(unint64_t)index fromHypothesisDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"hypotheses"];
  v7 = [dictionaryCopy objectForKey:@"ranges"];
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = MEMORY[0x1E695E0F8];
    while (1)
    {
      v12 = [v7 objectAtIndex:v10];
      rangeValue = [v12 rangeValue];
      v15 = v14;

      if (index >= rangeValue && index - rangeValue < v15)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    v11 = [v6 objectAtIndex:v10];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

LABEL_9:

  return v11;
}

- (id)_customHypothesesAtIndex:(unint64_t)index unit:(int64_t)unit scheme:(id)scheme maximumCount:(unint64_t)count options:(unint64_t)options modelDictionary:(id)dictionary gazetteerDictionary:(id)gazetteerDictionary
{
  gazetteerDictionaryCopy = gazetteerDictionary;
  v16 = [(NLTagger *)self _customModelAtIndex:index unit:unit modelDictionary:dictionary];
  if (!v16)
  {
    v22 = 0;
    goto LABEL_16;
  }

  string = [(NLTagger *)self string];
  v18 = string;
  v19 = 0;
  if (unit > 1)
  {
    if (unit == 2)
    {
      v20 = [string paragraphRangeForRange:{index, 0}];
      goto LABEL_12;
    }

    if (unit == 3)
    {
      [string length];
      v23 = v18;
LABEL_13:
      v19 = v23;
    }

LABEL_14:
    v22 = [v16 predictedLabelHypothesesForString:v19 maximumCount:count];
    goto LABEL_15;
  }

  if (unit)
  {
    if (unit == 1)
    {
      v20 = [(NLTagger *)self sentenceRangeForRange:index, 0];
LABEL_12:
      v23 = [v18 substringWithRange:{v20, v21}];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v24 = [(NLTagger *)self sentenceRangeForRange:index, 0];
  v19 = [v18 substringWithRange:{v24, v25}];
  v26 = [(NLTagger *)self _customGazetteerAtIndex:index unit:0 gazetteerDictionary:gazetteerDictionaryCopy];
  v27 = [(NLTagger *)self _customHypothesisDictionaryForSentence:v19 options:options model:v16 gazetteer:v26 maximumCount:count];
  v22 = [(NLTagger *)self _customHypothesesAtIndex:index - v24 fromHypothesisDictionary:v27];

LABEL_15:
LABEL_16:

  return v22;
}

- (void)enumerateTagsInRange:(NSRange)range unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme options:(NLTaggerOptions)options usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v12 = scheme;
  v13 = block;
  v14 = [(NSString *)self->_string length];
  if (location + length <= v14)
  {
    v16 = v14;
    v15 = [(NLTagger *)self _tagSchemeForScheme:v12];

    if (v15)
    {
      v17 = [(NSMutableDictionary *)self->_customModelDictionaries objectForKey:v15];
      v18 = [(NSMutableDictionary *)self->_customGazetteerDictionaries objectForKey:v15];
      if (unit == NLTokenUnitDocument)
      {
        v19 = [(NLTagger *)self tagAtIndex:0 unit:3 scheme:v15 tokenRange:0];
        v25 = 0;
        v13[2](v13, v19, 0, v16, &v25);
      }

      else
      {
        tagger = self->_tagger;
        v23 = v15;
        v24 = v13;
        v21 = v18;
        v22 = v17;
        NLTaggerEnumerateTokens();

        v19 = v17;
      }
    }
  }

  else
  {
    v15 = v12;
  }
}

void __64__NLTagger_enumerateTagsInRange_unit_scheme_options_usingBlock___block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 32);
  if (!v7 || ([*(a1 + 40) _customTagAtIndex:v5 unit:*(a1 + 72) scheme:*(a1 + 48) options:*(a1 + 80) modelDictionary:v7 gazetteerDictionary:*(a1 + 56)], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 40) + 24);
    v11 = NLTaggerCopyTagForCurrentToken();
    v8 = tagForNLTag(v11);
  }

  if (*(a1 + 48) == @"Sentiment")
  {
    v12 = v8;
    [(__CFString *)v12 doubleValue];
    if (v13 <= 1.0)
    {
      if (v13 >= -1.0)
      {
        v8 = v12;
        if (v13 != 0.0)
        {
LABEL_12:

          goto LABEL_13;
        }

        v14 = _NLTagZero;
      }

      else
      {
        v14 = _NLTagNegativeOne;
      }
    }

    else
    {
      v14 = _NLTagPositiveOne;
    }

    v8 = *v14;

    goto LABEL_12;
  }

LABEL_13:
  (*(*(a1 + 64) + 16))();

  objc_autoreleasePoolPop(v4);
}

- (NLTag)tagAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme tokenRange:(NSRangePointer)tokenRange
{
  v10 = scheme;
  v11 = [(NSString *)self->_string length];
  if (v11 <= characterIndex)
  {
    v19 = 0;
    v13 = v10;
  }

  else
  {
    v12 = v11;
    v13 = [(NLTagger *)self _tagSchemeForScheme:v10];

    if (v13)
    {
      v14 = [(NSMutableDictionary *)self->_customModelDictionaries objectForKey:v13];
      v15 = [(NSMutableDictionary *)self->_customGazetteerDictionaries objectForKey:v13];
      if (!v14 || ([(NLTagger *)self _customTagAtIndex:characterIndex unit:unit scheme:v13 options:0 modelDictionary:v14 gazetteerDictionary:v15], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        tagger = self->_tagger;
        v18 = NLTaggerCopyTagAtIndex();
        v16 = tagForNLTag(v18);
      }

      if (tokenRange)
      {
        if (unit == NLTokenUnitDocument)
        {
          tokenRange->location = 0;
          tokenRange->length = v12;
        }

        else
        {
          v20 = self->_tagger;
          NLTaggerGetTokenAtIndex();
          *tokenRange = 0uLL;
        }
      }

      v19 = v16;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (NSArray)tagsInRange:(NSRange)range unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme options:(NLTaggerOptions)options tokenRanges:(NSArray *)tokenRanges
{
  length = range.length;
  location = range.location;
  v13 = scheme;
  array = [MEMORY[0x1E695DF70] array];
  if (tokenRanges)
  {
    array2 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array2 = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__NLTagger_tagsInRange_unit_scheme_options_tokenRanges___block_invoke;
  v22[3] = &unk_1E76293F0;
  v16 = array;
  v23 = v16;
  v17 = array2;
  v24 = v17;
  [(NLTagger *)self enumerateTagsInRange:location unit:length scheme:unit options:v13 usingBlock:options, v22];
  if (tokenRanges)
  {
    v18 = v17;
    *tokenRanges = v17;
  }

  v19 = v24;
  v20 = v16;

  return v16;
}

void __56__NLTagger_tagsInRange_unit_scheme_options_tokenRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F10C6540;
  }

  v11 = v8;
  [*(a1 + 32) addObject:?];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v9 addObject:v10];
  }
}

- (NSDictionary)tagHypothesesAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit scheme:(NLTagScheme)scheme maximumCount:(NSUInteger)maximumCount tokenRange:(NSRangePointer)tokenRange
{
  v50 = *MEMORY[0x1E69E9840];
  string = self->_string;
  v13 = scheme;
  v14 = [(NSString *)string length];
  if (v14 <= characterIndex)
  {
    v34 = MEMORY[0x1E695E0F8];
    v16 = v13;
  }

  else
  {
    v15 = v14;
    v16 = [(NLTagger *)self _tagSchemeForScheme:v13];

    if (!v16)
    {
      v34 = MEMORY[0x1E695E0F8];
      goto LABEL_30;
    }

    v17 = [(NSMutableDictionary *)self->_customModelDictionaries objectForKey:v16];
    v18 = [(NSMutableDictionary *)self->_customGazetteerDictionaries objectForKey:v16];
    v19 = v18;
    if (!v17 || ([(NLTagger *)self _customHypothesesAtIndex:characterIndex unit:unit scheme:v16 maximumCount:maximumCount options:0 modelDictionary:v17 gazetteerDictionary:v18], (dictionary = objc_claimAutoreleasedReturnValue()) == 0))
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      tagger = self->_tagger;
      v43 = v19;
      v44 = NLTaggerCopyHypothesesAtIndex();
      if (v44)
      {
        v38 = maximumCount;
        v39 = v15;
        v40 = v17;
        v41 = unit;
        v42 = tokenRange;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v22 = v44;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v46;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v45 + 1) + 8 * i);
              v28 = [v22 objectForKey:v27];
              [v28 doubleValue];
              if (v29 > 0.0)
              {
                v30 = tagForNLTag(v27);
                [dictionary setObject:v28 forKey:v30];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v24);
        }

        unit = v41;
        tokenRange = v42;
        v15 = v39;
        v17 = v40;
        v19 = v43;
        maximumCount = v38;
      }

      v31 = [dictionary count];
      if (maximumCount && !v31)
      {
        v32 = [(NLTagger *)self tagAtIndex:characterIndex unit:unit scheme:v16 tokenRange:tokenRange];
        if (v32)
        {
          v33 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
          [dictionary setObject:v33 forKey:v32];

          v19 = v43;
        }
      }
    }

    if (tokenRange)
    {
      if (unit == NLTokenUnitDocument)
      {
        tokenRange->location = 0;
        tokenRange->length = v15;
      }

      else
      {
        v35 = self->_tagger;
        NLTaggerGetTokenAtIndex();
        *tokenRange = 0uLL;
      }
    }

    v34 = dictionary;
  }

LABEL_30:
  v36 = *MEMORY[0x1E69E9840];

  return v34;
}

- (NSRange)tokenRangeAtIndex:(NSUInteger)characterIndex unit:(NLTokenUnit)unit
{
  if ([(NSString *)self->_string length]<= characterIndex)
  {
    v7 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    tagger = self->_tagger;
    NLTaggerGetTokenAtIndex();
    v6 = 0;
    v7 = 0;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (NSRange)tokenRangeForRange:(NSRange)range unit:(NLTokenUnit)unit
{
  length = range.length;
  location = range.location;
  v7 = [(NSString *)self->_string length];
  if (v7 <= location)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (location + length <= v7)
    {
      v8 = length;
    }

    else
    {
      v8 = v7 - location;
    }

    tagger = self->_tagger;
    NLTaggerGetTokenAtIndex();
    v10 = 0;
    if (v8)
    {
      v11 = self->_tagger;
      NLTaggerGetTokenAtIndex();
    }
  }

  v12 = v10;
  v13 = 0;
  result.length = v13;
  result.location = v12;
  return result;
}

- (NLLanguage)dominantLanguage
{
  if ([(NSString *)self->_string length])
  {
    tagger = self->_tagger;
    v4 = NLTaggerCopyTagAtIndex();
    v5 = tagForNLTag(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dominantScript
{
  v3 = @"Zyyy";
  if ([(NSString *)self->_string length])
  {
    tagger = self->_tagger;
    v5 = NLTaggerCopyTagAtIndex();
    v6 = tagForNLTag(v5);

    v3 = v6;
  }

  return v3;
}

+ (id)dominantScriptForString:(id)string
{
  v10[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [NLTagger alloc];
  v10[0] = @"Script";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [(NLTagger *)v4 initWithTagSchemes:v5];

  [(NLTagger *)v6 setString:stringCopy];
  dominantScript = [(NLTagger *)v6 dominantScript];
  [(NLTagger *)v6 setString:0];

  v8 = *MEMORY[0x1E69E9840];

  return dominantScript;
}

- (void)setLanguage:(NLLanguage)language range:(NSRange)range
{
  v5 = language;
  v9 = v5;
  if (v5)
  {
    v6 = CFLocaleCreate(0, v5);
    tagger = self->_tagger;
    NLTaggerSetLocaleForRange();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v8 = self->_tagger;
    NLTaggerSetLocaleForRange();
  }
}

- (void)setOrthography:(NSOrthography *)orthography range:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = orthography;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = "";
  v32 = xmmword_19D4E9310;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__NLTagger_setOrthography_range___block_invoke;
  v16[3] = &unk_1E7629418;
  v19 = &v33;
  v20 = &v28;
  v21 = &v22;
  v8 = v7;
  v17 = v8;
  selfCopy = self;
  [(NLTagger *)self enumerateTagsInRange:location unit:length scheme:0 options:@"Script" usingBlock:14, v16];
  v9 = v34;
  v10 = v34[5];
  if (v10)
  {
    v11 = v29[5];
    if (v11)
    {
      v12 = v29[4];
      if (location + length > v12 + v11)
      {
        v29[5] = location + length - v12;
        v10 = v9[5];
      }

      v13 = [(NSOrthography *)v8 dominantLanguageForScript:v10];
      v14 = v23[5];
      v23[5] = v13;

      v15 = v23[5];
      if (v15)
      {
        [(NLTagger *)self setLanguage:v15 range:v29[4], v29[5]];
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v33, 8);
}

void __33__NLTagger_setOrthography_range___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    v19 = v8;
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (([v8 isEqual:?] & 1) == 0)
      {
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        if (v10)
        {
          v11 = *(v9 + 32);
          if (a3 > v11 + v10)
          {
            *(v9 + 40) = a3 - v11;
          }

          v12 = [*(a1 + 32) dominantLanguageForScript:*(*(*(a1 + 48) + 8) + 40)];
          v13 = *(*(a1 + 64) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v15 = *(*(*(a1 + 64) + 8) + 40);
          if (v15)
          {
            [*(a1 + 40) setLanguage:v15 range:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
          }

          *(*(*(a1 + 56) + 8) + 32) = xmmword_19D4E9310;
        }
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    if (v17)
    {
      v18 = *(v16 + 32);
      v8 = v19;
      if (a3 + a4 <= v18 + v17)
      {
        goto LABEL_15;
      }

      a4 = a3 + a4 - v18;
    }

    else
    {
      *(v16 + 32) = a3;
      v8 = v19;
    }

    *(v16 + 40) = a4;
  }

LABEL_15:
}

- (void)stringEditedInRange:(_NSRange)range changeInLength:(int64_t)length
{
  v5 = [(NLTagger *)self string:range.location];
  [(NLTagger *)self setString:v5];
}

- (void)setModels:(NSArray *)models forTagScheme:(NLTagScheme)tagScheme
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = models;
  v25 = tagScheme;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (!self->_customModels)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customModels = self->_customModels;
    self->_customModels = v8;
  }

  if (!self->_customModelDictionaries)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customModelDictionaries = self->_customModelDictionaries;
    self->_customModelDictionaries = v10;
  }

  if (!self->_classifierCaches)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    classifierCaches = self->_classifierCaches;
    self->_classifierCaches = v12;
  }

  if (!self->_sequenceCaches)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sequenceCaches = self->_sequenceCaches;
    self->_sequenceCaches = v14;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        configuration = [v21 configuration];
        language = [configuration language];

        if (!language)
        {
          language = @"und";
        }

        [dictionary setObject:v21 forKey:language];
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [(NSMutableDictionary *)self->_customModels setObject:v16 forKey:v25];
  [(NSMutableDictionary *)self->_customModelDictionaries setObject:dictionary forKey:v25];
  [(NSMutableDictionary *)self->_classifierCaches removeAllObjects];
  [(NSMutableDictionary *)self->_sequenceCaches removeAllObjects];

  v24 = *MEMORY[0x1E69E9840];
}

- (NSArray)modelsForTagScheme:(NLTagScheme)tagScheme
{
  array = [(NSMutableDictionary *)self->_customModels objectForKey:tagScheme];
  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (void)setGazetteers:(NSArray *)gazetteers forTagScheme:(NLTagScheme)tagScheme
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = gazetteers;
  v22 = tagScheme;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        language = [v14 language];
        if (!language)
        {
          language = @"und";
        }

        [dictionary setObject:v14 forKey:language];
        [v14 _addImplementationToArray:Mutable];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if (!self->_customGazetteers)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customGazetteers = self->_customGazetteers;
    self->_customGazetteers = v16;
  }

  if (!self->_customGazetteerDictionaries)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customGazetteerDictionaries = self->_customGazetteerDictionaries;
    self->_customGazetteerDictionaries = v18;
  }

  [(NSMutableDictionary *)self->_customGazetteers setObject:v9 forKey:v22];
  [(NSMutableDictionary *)self->_customGazetteerDictionaries setObject:dictionary forKey:v22];
  tagger = self->_tagger;
  NLTaggerSetGazetteers();
  CFRelease(Mutable);

  v21 = *MEMORY[0x1E69E9840];
}

- (NSArray)gazetteersForTagScheme:(NLTagScheme)tagScheme
{
  array = [(NSMutableDictionary *)self->_customGazetteers objectForKey:tagScheme];
  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

+ (void)requestAssetsForLanguage:(id)language assetIdentifier:(id)identifier tagScheme:(id)scheme completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  identifierCopy = identifier;
  schemeCopy = scheme;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  v15 = NLGetLogCategory(self);
  internal = [v15 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NLGetLogIdentifier(self);
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested assets for '%@', language: '%@', identifier: '%@'", schemeCopy, languageCopy, identifierCopy];
    *buf = 138543618;
    v44 = v17;
    v45 = 2114;
    v46 = identifierCopy;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [[NLTaggerAssetRequest alloc] initWithLanguage:languageCopy assetIdentifier:identifierCopy tagScheme:schemeCopy completionHandler:handlerCopy];
  +[NLTagger registerForAssetNotifications];
  if (v19)
  {
    isFulfilled = [(NLTaggerAssetRequest *)v19 isFulfilled];
    v21 = objc_autoreleasePoolPush();
    v22 = NLGetLogCategory(self);
    internal2 = [v22 internal];

    v24 = os_log_type_enabled(internal2, OS_LOG_TYPE_DEFAULT);
    if (isFulfilled)
    {
      if (v24)
      {
        v25 = NLGetLogIdentifier(self);
        identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' are available", schemeCopy, languageCopy, identifierCopy];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = identifierCopy2;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      [(NLTaggerAssetRequest *)v19 completeWithResult:0 error:0];
    }

    else
    {
      if (v24)
      {
        v35 = NLGetLogIdentifier(self);
        identifierCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Placing request with asset download service for '%@', language: '%@', identifier: '%@'", schemeCopy, languageCopy, identifierCopy];
        *buf = 138543618;
        v44 = v35;
        v45 = 2114;
        v46 = identifierCopy3;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (_loadTextInput_onceToken != -1)
      {
        +[NLTagger requestAssetsForLanguage:assetIdentifier:tagScheme:completionHandler:];
      }

      v37 = objc_alloc_init(_TILinguisticAssetDownloadClient);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __81__NLTagger_requestAssetsForLanguage_assetIdentifier_tagScheme_completionHandler___block_invoke;
      v39[3] = &unk_1E7629440;
      v40 = v19;
      [v37 requestLinguisticAssetsForLanguage:languageCopy completion:v39];
    }
  }

  else
  {
    v27 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42 = @"Failed to create asset request";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v29 = [v27 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v28];

    v30 = objc_autoreleasePoolPush();
    v31 = NLGetLogCategory(self);
    internal3 = [v31 internal];

    if (os_log_type_enabled(internal3, OS_LOG_TYPE_ERROR))
    {
      v33 = NLGetLogIdentifier(self);
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error requesting assets: %@", v29];
      *buf = 138543618;
      v44 = v33;
      v45 = 2114;
      v46 = v34;
      _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    handlerCopy[2](handlerCopy, 2, v29);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __81__NLTagger_requestAssetsForLanguage_assetIdentifier_tagScheme_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([*(a1 + 32) isFulfilled])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NLGetLogCategory(0);
    v8 = [v7 internal];

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      objc_autoreleasePoolPop(v6);
      v15 = *(a1 + 32);
      v16 = 0;
LABEL_6:
      v17 = 0;
LABEL_7:
      [v15 completeWithResult:v16 error:v17];
      goto LABEL_8;
    }

    v9 = NLGetLogIdentifier(0);
    v10 = MEMORY[0x1E696AEC0];
    v11 = [*(a1 + 32) tagScheme];
    v12 = [*(a1 + 32) language];
    v13 = [*(a1 + 32) assetIdentifier];
    v14 = [v10 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' are available", v11, v12, v13];
    *buf = 138543618;
    v69 = v9;
    v70 = 2114;
    v71 = v14;
LABEL_4:
    _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);

    goto LABEL_5;
  }

  if (v5)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = NLGetLogCategory(0);
    v21 = [v20 internal];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NLGetLogIdentifier(0);
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Download request error: %@", v5];
      *buf = 138543618;
      v69 = v22;
      v70 = 2114;
      v71 = v23;
      _os_log_impl(&dword_19D48F000, v21, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  if (a2 < 0)
  {
    if (a2 != -2)
    {
      if (a2 != -1)
      {
        goto LABEL_8;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = NLGetLogCategory(0);
      v28 = [v27 internal];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = NLGetLogIdentifier(0);
        v30 = MEMORY[0x1E696AEC0];
        v31 = [*(a1 + 32) tagScheme];
        v32 = [*(a1 + 32) language];
        v33 = [*(a1 + 32) assetIdentifier];
        v34 = [v30 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' failed to download: %@", v31, v32, v33, v5];
        *buf = 138543618;
        v69 = v29;
        v70 = 2114;
        v71 = v34;
        _os_log_impl(&dword_19D48F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v15 = *(a1 + 32);
      v16 = 2;
      v17 = v5;
      goto LABEL_7;
    }

    v53 = objc_autoreleasePoolPush();
    v54 = NLGetLogCategory(0);
    v55 = [v54 internal];

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = NLGetLogIdentifier(0);
      v57 = MEMORY[0x1E696AEC0];
      v58 = [*(a1 + 32) tagScheme];
      v59 = [*(a1 + 32) language];
      v60 = [*(a1 + 32) assetIdentifier];
      v61 = [v57 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' failed to download: asset download service is unavailble", v58, v59, v60];
      *buf = 138543618;
      v69 = v56;
      v70 = 2114;
      v71 = v61;
      _os_log_impl(&dword_19D48F000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    v62 = *(a1 + 32);
    v63 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E696A578];
    v67 = @"Asset download service is unavailable";
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v65 = [v63 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v64];
    [v62 completeWithResult:2 error:v65];
  }

  else
  {
    if (!a2)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = NLGetLogCategory(0);
      v37 = [v36 internal];

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = NLGetLogIdentifier(0);
        v39 = MEMORY[0x1E696AEC0];
        v40 = [*(a1 + 32) tagScheme];
        v41 = [*(a1 + 32) language];
        v42 = [*(a1 + 32) assetIdentifier];
        v43 = [v39 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' are not available", v40, v41, v42];
        *buf = 138543618;
        v69 = v38;
        v70 = 2114;
        v71 = v43;
        _os_log_impl(&dword_19D48F000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v15 = *(a1 + 32);
      v16 = 1;
      goto LABEL_6;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_8;
      }

      v6 = objc_autoreleasePoolPush();
      v24 = NLGetLogCategory(0);
      v8 = [v24 internal];

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v9 = NLGetLogIdentifier(0);
      v25 = MEMORY[0x1E696AEC0];
      v11 = [*(a1 + 32) tagScheme];
      v12 = [*(a1 + 32) language];
      v13 = [*(a1 + 32) assetIdentifier];
      v14 = [v25 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' are available", v11, v12, v13];
      *buf = 138543618;
      v69 = v9;
      v70 = 2114;
      v71 = v14;
      goto LABEL_4;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = NLGetLogCategory(0);
    v46 = [v45 internal];

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = NLGetLogIdentifier(0);
      v48 = MEMORY[0x1E696AEC0];
      v49 = [*(a1 + 32) tagScheme];
      v50 = [*(a1 + 32) language];
      v51 = [*(a1 + 32) assetIdentifier];
      v52 = [v48 stringWithFormat:@"Assets for '%@', language: '%@', identifier: '%@' are downloading", v49, v50, v51];
      *buf = 138543618;
      v69 = v47;
      v70 = 2114;
      v71 = v52;
      _os_log_impl(&dword_19D48F000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    [*(a1 + 32) waitForFulfillment];
    +[NLTaggerAssetRequest startTimer];
  }

LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
}

@end