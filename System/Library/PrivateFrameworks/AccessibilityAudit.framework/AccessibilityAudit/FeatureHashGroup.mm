@interface FeatureHashGroup
- (FeatureHashGroup)initWithHash:(id)a3 andIssues:(id)a4;
- (double)computeMeanHashDistance:(id)a3;
- (void)addHash:(id)a3;
- (void)setScreenGroupID:(id)a3;
@end

@implementation FeatureHashGroup

- (FeatureHashGroup)initWithHash:(id)a3 andIssues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FeatureHashGroup;
  v8 = [(FeatureHashGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(FeatureHashGroup *)v8 setAggregateHash:v6];
    v10 = [v7 mutableCopy];
    [(FeatureHashGroup *)v9 setIssues:v10];

    [(FeatureHashGroup *)v9 setCount:1.0];
    v11 = [(FeatureHashGroup *)v9 issues];
    [(FeatureHashGroup *)v9 setScreenGroupID:v11];
  }

  return v9;
}

- (void)addHash:(id)a3
{
  v18 = a3;
  for (i = 0; i != 768; ++i)
  {
    v5 = [(FeatureHashGroup *)self aggregateHash];
    v6 = [v5 values];
    v7 = [v6 objectAtIndexedSubscript:i];
    [v7 doubleValue];
    v9 = v8;
    v10 = [v18 values];
    v11 = [v10 objectAtIndexedSubscript:i];
    [v11 doubleValue];
    v13 = v9 + v12;

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v15 = [(FeatureHashGroup *)self aggregateHash];
    v16 = [v15 values];
    [v16 setObject:v14 atIndexedSubscript:i];
  }

  [(FeatureHashGroup *)self count];
  [(FeatureHashGroup *)self setCount:v17 + 1.0];
}

- (void)setScreenGroupID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(FeatureHashGroup *)self aggregateHash];
        v11 = [v10 hashID];
        [v9 setScreenGroupId:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)computeMeanHashDistance:(id)a3
{
  v4 = a3;
  [(FeatureHashGroup *)self count];
  v6 = -1.0;
  if (fabs(v5) >= 1.0)
  {
    v7 = [(FeatureHashGroup *)self aggregateHash];
    v8 = [v7 values];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = [(FeatureHashGroup *)self aggregateHash];
        v13 = [v12 values];
        v14 = [v13 objectAtIndexedSubscript:v10];
        [v14 doubleValue];
        v16 = v15;
        [(FeatureHashGroup *)self count];
        v18 = v16 / v17;

        v19 = [v4 values];
        v20 = [v19 objectAtIndexedSubscript:v10];
        [v20 doubleValue];
        v22 = v21;

        v11 = v11 + (v18 - v22) * (v18 - v22);
        ++v10;
        v23 = [(FeatureHashGroup *)self aggregateHash];
        v24 = [v23 values];
        v25 = [v24 count];
      }

      while (v25 > v10);
    }

    else
    {
      v11 = 0.0;
    }

    v6 = sqrt(v11);
  }

  return v6;
}

@end