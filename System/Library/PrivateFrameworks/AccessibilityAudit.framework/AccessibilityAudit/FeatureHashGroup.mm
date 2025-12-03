@interface FeatureHashGroup
- (FeatureHashGroup)initWithHash:(id)hash andIssues:(id)issues;
- (double)computeMeanHashDistance:(id)distance;
- (void)addHash:(id)hash;
- (void)setScreenGroupID:(id)d;
@end

@implementation FeatureHashGroup

- (FeatureHashGroup)initWithHash:(id)hash andIssues:(id)issues
{
  hashCopy = hash;
  issuesCopy = issues;
  v13.receiver = self;
  v13.super_class = FeatureHashGroup;
  v8 = [(FeatureHashGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(FeatureHashGroup *)v8 setAggregateHash:hashCopy];
    v10 = [issuesCopy mutableCopy];
    [(FeatureHashGroup *)v9 setIssues:v10];

    [(FeatureHashGroup *)v9 setCount:1.0];
    issues = [(FeatureHashGroup *)v9 issues];
    [(FeatureHashGroup *)v9 setScreenGroupID:issues];
  }

  return v9;
}

- (void)addHash:(id)hash
{
  hashCopy = hash;
  for (i = 0; i != 768; ++i)
  {
    aggregateHash = [(FeatureHashGroup *)self aggregateHash];
    values = [aggregateHash values];
    v7 = [values objectAtIndexedSubscript:i];
    [v7 doubleValue];
    v9 = v8;
    values2 = [hashCopy values];
    v11 = [values2 objectAtIndexedSubscript:i];
    [v11 doubleValue];
    v13 = v9 + v12;

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    aggregateHash2 = [(FeatureHashGroup *)self aggregateHash];
    values3 = [aggregateHash2 values];
    [values3 setObject:v14 atIndexedSubscript:i];
  }

  [(FeatureHashGroup *)self count];
  [(FeatureHashGroup *)self setCount:v17 + 1.0];
}

- (void)setScreenGroupID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [dCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        aggregateHash = [(FeatureHashGroup *)self aggregateHash];
        hashID = [aggregateHash hashID];
        [v9 setScreenGroupId:hashID];

        ++v8;
      }

      while (v6 != v8);
      v6 = [dCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)computeMeanHashDistance:(id)distance
{
  distanceCopy = distance;
  [(FeatureHashGroup *)self count];
  v6 = -1.0;
  if (fabs(v5) >= 1.0)
  {
    aggregateHash = [(FeatureHashGroup *)self aggregateHash];
    values = [aggregateHash values];
    v9 = [values count];

    if (v9)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        aggregateHash2 = [(FeatureHashGroup *)self aggregateHash];
        values2 = [aggregateHash2 values];
        v14 = [values2 objectAtIndexedSubscript:v10];
        [v14 doubleValue];
        v16 = v15;
        [(FeatureHashGroup *)self count];
        v18 = v16 / v17;

        values3 = [distanceCopy values];
        v20 = [values3 objectAtIndexedSubscript:v10];
        [v20 doubleValue];
        v22 = v21;

        v11 = v11 + (v18 - v22) * (v18 - v22);
        ++v10;
        aggregateHash3 = [(FeatureHashGroup *)self aggregateHash];
        values4 = [aggregateHash3 values];
        v25 = [values4 count];
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