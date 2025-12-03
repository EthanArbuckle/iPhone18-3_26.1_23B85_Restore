@interface THModelSearchIndexTerm
- (BOOL)containsOccurrenceOfWord:(id)word;
- (BOOL)p_inflection:(id)p_inflection matchesWord:(id)word;
- (THModelSearchIndexTerm)initWithStem:(id)stem;
- (id)addInflection:(id)inflection;
- (void)dealloc;
- (void)enumerateOccurrencesOfWord:(id)word withBlock:(id)block;
- (void)enumerateOccurrencesWithBlock:(id)block;
@end

@implementation THModelSearchIndexTerm

- (THModelSearchIndexTerm)initWithStem:(id)stem
{
  v6.receiver = self;
  v6.super_class = THModelSearchIndexTerm;
  v4 = [(THModelSearchIndexTerm *)&v6 init];
  if (v4)
  {
    v4->mInflections = objc_alloc_init(NSMutableArray);
    v4->mStem = [stem copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THModelSearchIndexTerm;
  [(THModelSearchIndexTerm *)&v3 dealloc];
}

- (id)addInflection:(id)inflection
{
  v4 = [[THModelSearchIndexInflection alloc] initWithInflection:inflection];
  [(NSMutableArray *)self->mInflections addObject:v4];
  v5 = v4;
  return v4;
}

- (void)enumerateOccurrencesWithBlock:(id)block
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mInflections = self->mInflections;
  v5 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mInflections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        occurrenceCount = [v9 occurrenceCount];
        occurrences = [v9 occurrences];
        if (occurrenceCount)
        {
          v12 = occurrences;
          do
          {
            (*(block + 2))(block, v9, v12);
            v12 += 24;
            --occurrenceCount;
          }

          while (occurrenceCount);
        }
      }

      v6 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)p_inflection:(id)p_inflection matchesWord:(id)word
{
  if ([p_inflection isEqualToString:word])
  {
    return 1;
  }

  word = [NSString stringWithFormat:@"%@ ", word];

  return [p_inflection hasPrefix:word];
}

- (void)enumerateOccurrencesOfWord:(id)word withBlock:(id)block
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mInflections = self->mInflections;
  v8 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(mInflections);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (-[THModelSearchIndexTerm p_inflection:matchesWord:](self, "p_inflection:matchesWord:", [v12 inflection], word))
        {
          occurrenceCount = [v12 occurrenceCount];
          occurrences = [v12 occurrences];
          if (occurrenceCount)
          {
            v15 = occurrences;
            do
            {
              (*(block + 2))(block, v15);
              v15 += 24;
              --occurrenceCount;
            }

            while (occurrenceCount);
          }

          return;
        }
      }

      v9 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }
}

- (BOOL)containsOccurrenceOfWord:(id)word
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mInflections = self->mInflections;
  v6 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mInflections);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (-[THModelSearchIndexTerm p_inflection:matchesWord:](self, "p_inflection:matchesWord:", [v10 inflection], word) && objc_msgSend(v10, "occurrenceCount"))
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

@end