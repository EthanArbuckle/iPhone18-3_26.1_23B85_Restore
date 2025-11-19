@interface ASUSQLiteCompoundPredicate
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation ASUSQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = @" AND ";

  v6 = [v3 copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = @" OR ";

  v6 = [v3 copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [ASUSQLiteComparisonPredicate predicateWithProperty:v8 value:*(*(&v20 + 1) + 8 * i) comparisonType:a5, v20];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [a1 predicateMatchingAnyPredicates:v10];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_predicates;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) applyBinding:v6 atIndex:{a4, v13}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = ASUSQLiteCompoundPredicate;
  v3 = [(ASUSQLitePredicate *)&v8 hash];
  v4 = [(NSString *)self->_combinationOperation hash];
  v5 = [(ASUSQLiteCompoundPredicate *)self predicates];
  v6 = &v3[[v5 hash]];

  return &v6[v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASUSQLiteCompoundPredicate;
  if ([(ASUSQLitePredicate *)&v12 isEqual:v4]&& ((combinationOperation = self->_combinationOperation, combinationOperation == v4[1]) || [(NSString *)combinationOperation isEqual:?]))
  {
    predicates = self->_predicates;
    v7 = [v4 predicates];
    if (predicates == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = self->_predicates;
      v9 = [v4 predicates];
      v10 = [(NSArray *)v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)SQLForEntityClass:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_predicates count])
  {
    v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_predicates;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) SQLForEntityClass:{a3, v14}];
          if (v11)
          {
            if ([v5 length] >= 2)
            {
              [v5 appendString:self->_combinationOperation];
            }

            [v5 appendString:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v5 appendString:@""]);
  }

  else
  {
    v5 = [MEMORY[0x277CCAB68] stringWithString:@"1"];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) SQLJoinClausesForEntityClass:{a3, v13}];
        if (v10)
        {
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB58] set];
          }

          [v7 unionSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

@end