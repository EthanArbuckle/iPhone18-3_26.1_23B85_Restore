@interface THModelSearchIndexTerm
- (BOOL)containsOccurrenceOfWord:(id)a3;
- (BOOL)p_inflection:(id)a3 matchesWord:(id)a4;
- (THModelSearchIndexTerm)initWithStem:(id)a3;
- (id)addInflection:(id)a3;
- (void)dealloc;
- (void)enumerateOccurrencesOfWord:(id)a3 withBlock:(id)a4;
- (void)enumerateOccurrencesWithBlock:(id)a3;
@end

@implementation THModelSearchIndexTerm

- (THModelSearchIndexTerm)initWithStem:(id)a3
{
  v6.receiver = self;
  v6.super_class = THModelSearchIndexTerm;
  v4 = [(THModelSearchIndexTerm *)&v6 init];
  if (v4)
  {
    v4->mInflections = objc_alloc_init(NSMutableArray);
    v4->mStem = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THModelSearchIndexTerm;
  [(THModelSearchIndexTerm *)&v3 dealloc];
}

- (id)addInflection:(id)a3
{
  v4 = [[THModelSearchIndexInflection alloc] initWithInflection:a3];
  [(NSMutableArray *)self->mInflections addObject:v4];
  v5 = v4;
  return v4;
}

- (void)enumerateOccurrencesWithBlock:(id)a3
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
        v10 = [v9 occurrenceCount];
        v11 = [v9 occurrences];
        if (v10)
        {
          v12 = v11;
          do
          {
            (*(a3 + 2))(a3, v9, v12);
            v12 += 24;
            --v10;
          }

          while (v10);
        }
      }

      v6 = [(NSMutableArray *)mInflections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)p_inflection:(id)a3 matchesWord:(id)a4
{
  if ([a3 isEqualToString:a4])
  {
    return 1;
  }

  v7 = [NSString stringWithFormat:@"%@ ", a4];

  return [a3 hasPrefix:v7];
}

- (void)enumerateOccurrencesOfWord:(id)a3 withBlock:(id)a4
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
        if (-[THModelSearchIndexTerm p_inflection:matchesWord:](self, "p_inflection:matchesWord:", [v12 inflection], a3))
        {
          v13 = [v12 occurrenceCount];
          v14 = [v12 occurrences];
          if (v13)
          {
            v15 = v14;
            do
            {
              (*(a4 + 2))(a4, v15);
              v15 += 24;
              --v13;
            }

            while (v13);
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

- (BOOL)containsOccurrenceOfWord:(id)a3
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
        if (-[THModelSearchIndexTerm p_inflection:matchesWord:](self, "p_inflection:matchesWord:", [v10 inflection], a3) && objc_msgSend(v10, "occurrenceCount"))
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