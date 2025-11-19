@interface NLEmbedding
+ (BOOL)_writeEmbeddingForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 toURL:(id)a6 orData:(id)a7 error:(id *)a8;
+ (BOOL)assetsAvailableForEmbeddingType:(id)a3 language:(id)a4;
+ (BOOL)writeEmbeddingMLModelForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 toURL:(id)a6 options:(id)a7 error:(id *)a8;
+ (NLEmbedding)embeddingWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLEmbedding)embeddingWithData:(id)a3 error:(id *)a4;
+ (NLEmbedding)embeddingWithMLModel:(id)a3 error:(id *)a4;
+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language;
+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision;
+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language;
+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision;
+ (NSIndexSet)supportedRevisionsForLanguage:(NLLanguage)language;
+ (NSIndexSet)supportedSentenceEmbeddingRevisionsForLanguage:(NLLanguage)language;
+ (NSUInteger)currentRevisionForLanguage:(NLLanguage)language;
+ (NSUInteger)currentSentenceEmbeddingRevisionForLanguage:(NLLanguage)language;
+ (id)_embeddingWithContentsOfURL:(id)a3 error:(id *)a4;
+ (id)_embeddingWithData:(id)a3 error:(id *)a4;
+ (id)contextualWordEmbeddingForLanguage:(id)a3;
+ (id)contextualWordEmbeddingForLanguage:(id)a3 revision:(unint64_t)a4;
+ (id)embeddingDataForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 error:(id *)a6;
+ (id)modelDescriptionForEmbedding:(id)a3;
+ (id)supportedContextualWordEmbeddingRevisionsForLanguage:(id)a3;
+ (id)supportedRevisionsForType:(id)a3 locale:(id)a4;
+ (id)transformerContextualTokenEmbeddingForLanguage:(id)a3;
+ (unint64_t)currentContextualWordEmbeddingRevisionForLanguage:(id)a3;
+ (unint64_t)currentRevisionForType:(id)a3 locale:(id)a4;
+ (void)requestAssetsForEmbeddingType:(id)a3 language:(id)a4 withCompletionHandler:(id)a5;
- (BOOL)getVector:(float *)vector forString:(NSString *)string;
- (NLDistance)distanceBetweenString:(NSString *)firstString andString:(NSString *)secondString distanceType:(NLDistanceType)distanceType;
- (NLEmbedding)initWithContentsOfURL:(id)a3 error:(id *)p_isa;
- (NLEmbedding)initWithData:(id)a3 error:(id *)a4;
- (NLEmbedding)initWithMLModel:(id)a3 error:(id *)a4;
- (NLEmbedding)initWithNLModel:(id)a3 error:(id *)p_isa;
- (NLEmbedding)initWithType:(id)a3 architecture:(id)a4 locale:(id)a5 version:(id)a6;
- (NLLanguage)language;
- (NSArray)neighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType;
- (NSArray)neighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType;
- (NSArray)vectorForString:(NSString *)string;
- (NSUInteger)revision;
- (id)_initWithContentsOfURL:(id)a3 error:(id *)p_isa;
- (id)_initWithData:(id)a3 error:(id *)p_isa;
- (id)vectorsForTokenizedSentences:(id)a3 maxTokens:(unint64_t)a4;
- (id)vectorsForTokenizedSentences:(id)a3 untokenizedSentences:(id)a4 maxTokens:(unint64_t)a5;
- (id)vectorsForUntokenizedSentences:(id)a3 maxTokens:(unint64_t)a4;
- (void)_createEmbeddingRefWithContentsOfURL:(id)a3;
- (void)_createEmbeddingRefWithData:(id)a3;
- (void)dealloc;
- (void)enumerateNeighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block;
- (void)enumerateNeighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block;
@end

@implementation NLEmbedding

- (void)dealloc
{
  embedding = self->_embedding;
  if (embedding)
  {
    CFRelease(embedding);
  }

  v4.receiver = self;
  v4.super_class = NLEmbedding;
  [(NLEmbedding *)&v4 dealloc];
}

- (NLEmbedding)initWithType:(id)a3 architecture:(id)a4 locale:(id)a5 version:(id)a6
{
  v24[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E695DF90];
  v15 = *MEMORY[0x1E69981F8];
  v23[0] = *MEMORY[0x1E6998208];
  v23[1] = v15;
  v24[0] = v10;
  v24[1] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v17 = [v14 dictionaryWithDictionary:v16];

  if (v11)
  {
    [v17 setObject:v11 forKey:*MEMORY[0x1E69981E0]];
  }

  if (v13)
  {
    [v17 setObject:v13 forKey:*MEMORY[0x1E6998230]];
  }

  v18 = NLStringEmbeddingCreateWithOptions();
  if (v18)
  {
    if (NLStringEmbeddingGetDimension() < 1)
    {
      v18 = 0;
    }

    else
    {
      v22.receiver = self;
      v22.super_class = NLEmbedding;
      v19 = [(NLEmbedding *)&v22 init];
      if (v19)
      {
        v19->_embedding = v18;
        v19->_usesUntokenizedSentences = 0;
      }

      self = v19;
      v18 = self;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_createEmbeddingRefWithContentsOfURL:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 path];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v11] && (v11 & 1) == 0)
  {
    v6 = *MEMORY[0x1E6998210];
    v7 = *MEMORY[0x1E6998200];
    v12[0] = *MEMORY[0x1E6998208];
    v12[1] = v7;
    v13[0] = v6;
    v13[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v5 = NLStringEmbeddingCreateWithOptions();
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_initWithContentsOfURL:(id)a3 error:(id *)p_isa
{
  v5 = self;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [(NLEmbedding *)self _createEmbeddingRefWithContentsOfURL:a3];
  if (v6 && (v7 = v6, NLStringEmbeddingGetDimension() >= 1))
  {
    v13.receiver = v5;
    v13.super_class = NLEmbedding;
    v8 = [(NLEmbedding *)&v13 init];
    if (v8)
    {
      v8->_embedding = v7;
    }

    v5 = v8;
    p_isa = &v5->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"Failed to load embedding file";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *p_isa = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v10];

    p_isa = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NLEmbedding)initWithContentsOfURL:(id)a3 error:(id *)p_isa
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 path];
  v8 = [v7 pathExtension];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = 0;
  if (([v9 fileExistsAtPath:v7 isDirectory:&v25] & 1) == 0)
  {
    if (!p_isa)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"Could not find embedding file";
    v13 = MEMORY[0x1E695DF20];
    v14 = v31;
    v15 = &v30;
    goto LABEL_7;
  }

  if (v25)
  {
    goto LABEL_3;
  }

  if ([v8 isEqualToString:@"mlmodel"])
  {
    if (!p_isa)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Cannot load embedding from uncompiled mlmodel file";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v29;
    v15 = &v28;
LABEL_7:
    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    *p_isa = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v16];

    goto LABEL_8;
  }

  if (v25)
  {
LABEL_3:
    v10 = [NLModel modelWithContentsOfURL:v6 error:p_isa];
    if (v10)
    {
      v11 = v10;
      self = [(NLEmbedding *)self initWithNLModel:v10 error:p_isa];

      p_isa = &self->super.isa;
      goto LABEL_9;
    }

LABEL_8:
    p_isa = 0;
    goto LABEL_9;
  }

  v19 = [(NLEmbedding *)self _createEmbeddingRefWithContentsOfURL:v6];
  if (!v19 || (v20 = v19, NLStringEmbeddingGetDimension() < 1))
  {
    if (p_isa)
    {
      v22 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27 = @"Failed to load embedding file";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *p_isa = [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v23];
    }

    goto LABEL_3;
  }

  v24.receiver = self;
  v24.super_class = NLEmbedding;
  v21 = [(NLEmbedding *)&v24 init];
  if (v21)
  {
    v21->_embedding = v20;
  }

  self = v21;
  p_isa = &self->super.isa;
LABEL_9:

  v17 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (void)_createEmbeddingRefWithData:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69981F0];
  v10[0] = *MEMORY[0x1E6998208];
  v10[1] = v3;
  v11[0] = *MEMORY[0x1E6998210];
  v11[1] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = NLStringEmbeddingCreateWithOptions();
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_initWithData:(id)a3 error:(id *)p_isa
{
  v5 = self;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [(NLEmbedding *)self _createEmbeddingRefWithData:a3];
  if (v6 && (v7 = v6, NLStringEmbeddingGetDimension() >= 1))
  {
    v13.receiver = v5;
    v13.super_class = NLEmbedding;
    v8 = [(NLEmbedding *)&v13 init];
    if (v8)
    {
      v8->_embedding = v7;
    }

    v5 = v8;
    p_isa = &v5->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"Failed to load embedding data";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *p_isa = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v10];

    p_isa = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NLEmbedding)initWithData:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NLEmbedding *)self _createEmbeddingRefWithData:v6];
  if (v7 && (v8 = v7, NLStringEmbeddingGetDimension() >= 1))
  {
    v17.receiver = self;
    v17.super_class = NLEmbedding;
    v9 = [(NLEmbedding *)&v17 init];
    if (v9)
    {
      v9->_embedding = v8;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Failed to load embedding data";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v12];
    }

    v13 = [NLModel modelWithData:v6 error:a4];
    if (v13)
    {
      v14 = v13;
      self = [(NLEmbedding *)self initWithNLModel:v13 error:a4];

      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NLEmbedding)initWithNLModel:(id)a3 error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 embedding];
  v9 = [v8 _embeddingRef];

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = NLEmbedding;
    v10 = [(NLEmbedding *)&v15 init];
    if (v10)
    {
      v10->_embedding = CFRetain(v9);
      objc_storeStrong(&v10->_nlModel, a3);
    }

    self = v10;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Failed to load embedding file";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *p_isa = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:v12];

    p_isa = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NLEmbedding)initWithMLModel:(id)a3 error:(id *)a4
{
  v6 = [NLModel modelWithMLModel:a3 error:?];
  if (v6)
  {
    self = [(NLEmbedding *)self initWithNLModel:v6 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998210] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)contextualWordEmbeddingForLanguage:(id)a3
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998218] architecture:*MEMORY[0x1E69981E8] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998220] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998210];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
    v9 = [(NLEmbedding *)v6 initWithType:v7 locale:v5 version:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)contextualWordEmbeddingForLanguage:(id)a3 revision:(unint64_t)a4
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998218];
    v8 = *MEMORY[0x1E69981E8];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v10 = [(NLEmbedding *)v6 initWithType:v7 architecture:v8 locale:v5 version:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)transformerContextualTokenEmbeddingForLanguage:(id)a3
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = *MEMORY[0x1E6998218];
    v6 = *MEMORY[0x1E69981C8];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
    v8 = [(NLEmbedding *)v4 initWithType:v5 architecture:v6 locale:v3 version:v7];

    if (v8)
    {
      [(NLEmbedding *)v8 setUsesUntokenizedSentences:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998220];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
    v9 = [(NLEmbedding *)v6 initWithType:v7 locale:v5 version:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NLDistance)distanceBetweenString:(NSString *)firstString andString:(NSString *)secondString distanceType:(NLDistanceType)distanceType
{
  embedding = self->_embedding;
  NLStringEmbeddingGetDistance();
  return v6;
}

- (void)enumerateNeighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = block;
  embedding = self->_embedding;
  v10 = NLStringEmbeddingCopyNeighborsWithDistances();
  v11 = [v10 allKeys];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__NLEmbedding_enumerateNeighborsForString_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke;
  v29[3] = &unk_1E7628EA8;
  v12 = v10;
  v30 = v12;
  v13 = [v11 sortedArrayUsingComparator:v29];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v25 + 1) + 8 * v18);
      v20 = [v12 objectForKey:v19];
      [v20 doubleValue];
      v22 = v21;

      v24 = 0;
      v8[2](v8, v19, &v24, v22);
      if (v24)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __96__NLEmbedding_enumerateNeighborsForString_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (NSArray)neighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType
{
  v10 = string;
  v11 = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__NLEmbedding_neighborsForString_maximumCount_maximumDistance_distanceType___block_invoke;
  v16[3] = &unk_1E762A1A0;
  v12 = v11;
  v17 = v12;
  [(NLEmbedding *)self enumerateNeighborsForString:v10 maximumCount:maxCount maximumDistance:distanceType distanceType:v16 usingBlock:maxDistance];
  if ([(NSArray *)v12 count]|| [(NLEmbedding *)self containsString:v10])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)enumerateNeighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = block;
  embedding = self->_embedding;
  v10 = NLStringEmbeddingCopyNeighborsForVectorWithDistances();
  v11 = [v10 allKeys];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__NLEmbedding_enumerateNeighborsForVector_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke;
  v29[3] = &unk_1E7628EA8;
  v12 = v10;
  v30 = v12;
  v13 = [v11 sortedArrayUsingComparator:v29];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v25 + 1) + 8 * v18);
      v20 = [v12 objectForKey:v19];
      [v20 doubleValue];
      v22 = v21;

      v24 = 0;
      v8[2](v8, v19, &v24, v22);
      if (v24)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __96__NLEmbedding_enumerateNeighborsForVector_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (NSArray)neighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType
{
  v10 = MEMORY[0x1E695DF70];
  v11 = vector;
  v12 = [v10 array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__NLEmbedding_neighborsForVector_maximumCount_maximumDistance_distanceType___block_invoke;
  v15[3] = &unk_1E762A1A0;
  v13 = v12;
  v16 = v13;
  [(NLEmbedding *)self enumerateNeighborsForVector:v11 maximumCount:maxCount maximumDistance:distanceType distanceType:v15 usingBlock:maxDistance];

  return v13;
}

- (NSArray)vectorForString:(NSString *)string
{
  embedding = self->_embedding;
  v4 = NLStringEmbeddingCopyVector();

  return v4;
}

- (BOOL)getVector:(float *)vector forString:(NSString *)string
{
  embedding = self->_embedding;
  v7 = NLStringEmbeddingCopyData();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bytes];
    if ([(NLEmbedding *)self dimension])
    {
      v10 = 0;
      do
      {
        vector[v10] = *(v9 + 4 * v10);
        ++v10;
      }

      while (v10 < [(NLEmbedding *)self dimension]);
    }
  }

  return v8 != 0;
}

- (id)vectorsForTokenizedSentences:(id)a3 maxTokens:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 count];
  embedding = self->_embedding;
  Dimension = NLStringEmbeddingGetDimension();
  v10 = [MEMORY[0x1E695DF88] dataWithLength:4 * a4 * v7 * Dimension];
  v11 = [MEMORY[0x1E695DF88] dataWithLength:4 * Dimension];
  [v10 mutableBytes];
  [v11 mutableBytes];
  v12 = self->_embedding;
  LODWORD(a4) = NLStringEmbeddingFillWordVectors();

  if (a4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)vectorsForUntokenizedSentences:(id)a3 maxTokens:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 count];
  embedding = self->_embedding;
  Dimension = NLStringEmbeddingGetDimension();
  v10 = [MEMORY[0x1E695DF88] dataWithLength:4 * a4 * v7 * Dimension];
  v11 = [MEMORY[0x1E695DF88] dataWithLength:4 * Dimension];
  [v10 mutableBytes];
  [v11 mutableBytes];
  v12 = self->_embedding;
  LODWORD(a4) = NLStringEmbeddingFillTokenVectorsWithShape();

  if (a4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)vectorsForTokenizedSentences:(id)a3 untokenizedSentences:(id)a4 maxTokens:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(NLEmbedding *)self usesUntokenizedSentences])
  {
    [(NLEmbedding *)self vectorsForUntokenizedSentences:v9 maxTokens:a5];
  }

  else
  {
    [(NLEmbedding *)self vectorsForTokenizedSentences:v8 maxTokens:a5];
  }
  v10 = ;

  return v10;
}

- (NLLanguage)language
{
  embedding = self->_embedding;
  v3 = NLStringEmbeddingCopyModelLocale();
  v4 = [v3 localeIdentifier];

  return v4;
}

- (NSUInteger)revision
{
  valuePtr = 0;
  embedding = self->_embedding;
  result = NLStringEmbeddingCopyVersion();
  if (result)
  {
    v4 = result;
    CFNumberGetValue(result, kCFNumberNSIntegerType, &valuePtr);
    CFRelease(v4);
    return valuePtr;
  }

  return result;
}

+ (id)supportedRevisionsForType:(id)a3 locale:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = NLStringEmbeddingCopySupportedVersions();
  v5 = [MEMORY[0x1E696AD50] indexSet];
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addIndex:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "unsignedIntegerValue", v13)}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    CFRelease(v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (NSIndexSet)supportedRevisionsForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [a1 supportedRevisionsForType:*MEMORY[0x1E6998210] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)supportedContextualWordEmbeddingRevisionsForLanguage:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v4)
  {
    v5 = [a1 supportedRevisionsForType:*MEMORY[0x1E6998218] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSIndexSet)supportedSentenceEmbeddingRevisionsForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [a1 supportedRevisionsForType:*MEMORY[0x1E6998220] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)currentRevisionForType:(id)a3 locale:(id)a4
{
  result = NLStringEmbeddingCopyCurrentVersion();
  if (result)
  {
    v5 = result;
    v6 = [result unsignedIntegerValue];
    CFRelease(v5);
    return v6;
  }

  return result;
}

+ (NSUInteger)currentRevisionForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [a1 currentRevisionForType:*MEMORY[0x1E6998210] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)currentContextualWordEmbeddingRevisionForLanguage:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v4)
  {
    v5 = [a1 currentRevisionForType:*MEMORY[0x1E6998218] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSUInteger)currentSentenceEmbeddingRevisionForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [a1 currentRevisionForType:*MEMORY[0x1E6998220] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_writeEmbeddingForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 toURL:(id)a6 orData:(id)a7 error:(id *)a8
{
  v67 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v50 = a6;
  memset(v56, 0, sizeof(v56));
  v48 = a8;
  v49 = a7;
  if ([v13 countByEnumeratingWithState:v56 objects:v66 count:16])
  {
    v15 = [v13 objectForKey:**(&v56[0] + 1)];
    v16 = [v15 count];
  }

  else
  {
    v16 = 0;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v53;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v53 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v52 + 1) + 8 * v21);
      v23 = [v17 objectForKey:v22];
      v24 = [v23 count];

      if (v16 != v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v19)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    NSLog(&cfstr_EmbeddingDicti.isa, v22, v24, v16);

    if (v48)
    {
      v28 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v60 = @"Embedding dictionary has mismatched dimensions";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      [v28 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v29];
      *v48 = v30 = 0;
      v26 = v14;
      v31 = v49;
      v32 = v50;
      goto LABEL_40;
    }

    v30 = 0;
    v26 = v14;
    v31 = v49;
    v32 = v50;
  }

  else
  {
LABEL_12:

    if (v16)
    {
      if ([v17 count] >= 0x7A121)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      v26 = v14;
      if (v14)
      {
        v27 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v14];
      }

      else
      {
        v27 = 0;
      }

      v32 = v50;
      v34 = 10;
      v51 = v27;
      do
      {
        if (!(v16 % v34))
        {
          break;
        }

        --v34;
      }

      while (v34);
      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      v36 = MEMORY[0x1E695DF90];
      v63[0] = *MEMORY[0x1E6998230];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v64[0] = v37;
      v63[1] = *MEMORY[0x1E6998240];
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
      v64[1] = v38;
      v63[2] = *MEMORY[0x1E6998238];
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      v64[2] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
      v29 = [v36 dictionaryWithDictionary:v40];

      v41 = v51;
      if (v51)
      {
        [v29 setObject:v51 forKey:*MEMORY[0x1E69981F8]];
      }

      v31 = v49;
      if (v32)
      {
        v42 = [v32 path];
        [v29 setObject:v42 forKey:*MEMORY[0x1E6998200]];
      }

      if (v49)
      {
        [v29 setObject:v49 forKey:*MEMORY[0x1E69981F0]];
      }

      v43 = NLStringEmbeddingSaveCompressedModel();
      v30 = v43;
      if (v48 && (v43 & 1) == 0)
      {
        v44 = MEMORY[0x1E696ABC0];
        v61 = *MEMORY[0x1E696A578];
        v62 = @"Failed to save embedding file";
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v41 = v51;
        *v48 = [v44 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v45];
      }
    }

    else
    {
      v26 = v14;
      v31 = v49;
      if (!v48)
      {
        v30 = 0;
        v32 = v50;
        goto LABEL_41;
      }

      v33 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = @"Embedding dictionary is missing data";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v29];
      *v48 = v30 = 0;
      v32 = v50;
    }

LABEL_40:
  }

LABEL_41:

  v46 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (id)embeddingDataForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 error:(id *)a6
{
  v10 = MEMORY[0x1E695DF88];
  v11 = a4;
  v12 = a3;
  v13 = [v10 data];
  LODWORD(a6) = [a1 _writeEmbeddingForDictionary:v12 language:v11 revision:a5 toURL:0 orData:v13 error:a6];

  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)modelDescriptionForEmbedding:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 revision];
  v6 = [v4 dimension];
  v7 = [v4 vocabularySize];

  return [v3 stringWithFormat:@"This model is an embedding (version %llu) with dimension %llu and vocabulary size %llu", v5, v6, v7];
}

+ (BOOL)writeEmbeddingMLModelForDictionary:(id)a3 language:(id)a4 revision:(unint64_t)a5 toURL:(id)a6 options:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [a1 embeddingDataForDictionary:a3 language:v14 revision:a5 error:a8];
  if (v17)
  {
    v18 = [NLEmbedding embeddingWithData:v17 error:a8];
    if (v18)
    {
      v35 = v16;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v14, @"Language", 0}];
      v20 = [NLModelConfiguration defaultModelConfigurationForType:0 options:v19 error:a8];

      v21 = [[NLModelImplE alloc] initWithModelData:v17 configuration:v20 labelMap:0 vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:0 trainingInfo:0 error:0];
      v34 = v20;
      v22 = [[NLModel alloc] initWithConfiguration:v20 modelImpl:v21];
      if (v22)
      {
        v32 = v21;
        v33 = v15;
        v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v35];
        v24 = *MEMORY[0x1E695FDB8];
        v25 = [v23 objectForKey:*MEMORY[0x1E695FDB8]];

        if (!v25)
        {
          v26 = [a1 modelDescriptionForEmbedding:v18];
          [v23 setObject:v26 forKey:v24];
        }

        v27 = *MEMORY[0x1E695FDD0];
        v28 = [v23 objectForKey:*MEMORY[0x1E695FDD0]];

        if (!v28)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a5];
          [v23 setObject:v29 forKey:v27];
        }

        v15 = v33;
        v30 = [(NLModel *)v22 writeMLModelToURL:v33 options:v23 error:a8];

        v16 = v35;
        v21 = v32;
      }

      else
      {
        v16 = v35;
        if (a8)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
          *a8 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else if (a8)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
    *a8 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (NLEmbedding)embeddingWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v5 = url;
  v6 = [[NLEmbedding alloc] initWithContentsOfURL:v5 error:error];

  return v6;
}

+ (NLEmbedding)embeddingWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NLEmbedding alloc] initWithData:v5 error:a4];

  return v6;
}

+ (NLEmbedding)embeddingWithMLModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NLEmbedding alloc] initWithMLModel:v5 error:a4];

  return v6;
}

+ (id)_embeddingWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NLEmbedding alloc] _initWithContentsOfURL:v5 error:a4];

  return v6;
}

+ (id)_embeddingWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NLEmbedding alloc] _initWithData:v5 error:a4];

  return v6;
}

+ (BOOL)assetsAvailableForEmbeddingType:(id)a3 language:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (![v5 isEqualToString:@"Static"])
  {
    if ([v5 isEqualToString:@"Dynamic"])
    {
      v7 = [NLEmbedding contextualWordEmbeddingForLanguage:v6];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"Contextual"])
    {
      v8 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v6];
      v9 = [v8 hasAvailableAssets];
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [NLEmbedding wordEmbeddingForLanguage:v6];
LABEL_6:
  v8 = v7;
  v9 = v7 != 0;
LABEL_7:

LABEL_11:
  return v9;
}

+ (void)requestAssetsForEmbeddingType:(id)a3 language:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if ([v7 isEqualToString:@"Static"])
    {
      v10 = @"WordEmbedding";
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke;
      v18[3] = &unk_1E7629E18;
      v11 = &v19;
      v19 = v9;
      v12 = v18;
    }

    else
    {
      if (![v7 isEqualToString:@"Dynamic"])
      {
        if (![v7 isEqualToString:@"Contextual"])
        {
          goto LABEL_8;
        }

        v13 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v8];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke_3;
        v14[3] = &unk_1E7629E18;
        v11 = &v15;
        v15 = v9;
        [v13 requestEmbeddingAssetsWithCompletionHandler:v14];

        goto LABEL_7;
      }

      v10 = @"ContextualEmbedding";
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke_2;
      v16[3] = &unk_1E7629E18;
      v11 = &v17;
      v17 = v9;
      v12 = v16;
    }

    [NLTagger requestAssetsForLanguage:v8 tagScheme:v10 completionHandler:v12];
LABEL_7:
  }

LABEL_8:
}

@end