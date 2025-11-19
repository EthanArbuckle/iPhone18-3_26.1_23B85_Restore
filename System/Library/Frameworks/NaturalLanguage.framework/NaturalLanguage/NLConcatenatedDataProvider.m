@interface NLConcatenatedDataProvider
- (NLConcatenatedDataProvider)initWithDataProviders:(id)a3;
- (__CFStringTokenizer)tokenizer;
- (id)configuration;
- (id)documentFrequencyMap;
- (id)instanceAtIndex:(unint64_t)a3;
- (id)inverseLabelMap;
- (id)labelMap;
- (id)vocabularyMap;
- (unint64_t)numberOfInstances;
- (unint64_t)numberOfLabels;
- (unint64_t)numberOfVocabularyEntries;
@end

@implementation NLConcatenatedDataProvider

- (NLConcatenatedDataProvider)initWithDataProviders:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v8.receiver = self;
    v8.super_class = NLConcatenatedDataProvider;
    self = [(NLConcatenatedDataProvider *)&v8 init];
    if (self)
    {
      v5 = [v4 copy];
      dataProviders = self->_dataProviders;
      self->_dataProviders = v5;
    }
  }

  return self;
}

- (id)configuration
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 configuration];

  return v3;
}

- (unint64_t)numberOfInstances
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_dataProviders;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) numberOfInstances];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)instanceAtIndex:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataProviders;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * v8);
        v11 = [v10 numberOfInstances];
        a3 = v9 - v11;
        if (v9 < v11)
        {
          v12 = [v10 instanceAtIndex:v9];
          goto LABEL_11;
        }

        ++v8;
        v9 -= v11;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (__CFStringTokenizer)tokenizer
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 tokenizer];

  return v3;
}

- (id)labelMap
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 labelMap];

  return v3;
}

- (id)inverseLabelMap
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 inverseLabelMap];

  return v3;
}

- (id)vocabularyMap
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 vocabularyMap];

  return v3;
}

- (id)documentFrequencyMap
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 documentFrequencyMap];

  return v3;
}

- (unint64_t)numberOfLabels
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 numberOfLabels];

  return v3;
}

- (unint64_t)numberOfVocabularyEntries
{
  v2 = [(NSArray *)self->_dataProviders firstObject];
  v3 = [v2 numberOfVocabularyEntries];

  return v3;
}

@end