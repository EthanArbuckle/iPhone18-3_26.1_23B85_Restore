@interface ASUSQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)a3 query:(id)a4 queryProperty:(id)a5;
+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4;
+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation ASUSQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [v6 copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = 0;
  v10 = [v5 copy];

  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

+ (id)containsPredicateWithProperty:(id)a3 query:(id)a4 queryProperty:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v9 copy];

  v12 = v10[1];
  v10[1] = v11;

  *(v10 + 16) = 0;
  v13 = v10[3];
  v10[3] = v7;
  v14 = v7;

  v15 = [v8 copy];
  v16 = v10[4];
  v10[4] = v15;

  return v10;
}

+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [v6 copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = 1;
  v10 = [v5 copy];

  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  query = self->_query;
  if (query)
  {
    [(ASUSQLiteQuery *)query applyBinding:v6 atIndex:a4];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_values;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          ASUSQLiteBindFoundationValue(v6, *a4, *(*(&v14 + 1) + 8 * i));
          ++*a4;
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = ASUSQLiteContainsPredicate;
  if ([(ASUSQLitePropertyPredicate *)&v17 isEqual:v6])
  {
    v7 = [(ASUSQLiteContainsPredicate *)self isNegative];
    if (v7 == [v6 isNegative])
    {
      v9 = [(ASUSQLiteContainsPredicate *)self values];
      v10 = [v6 values];
      if (v9 == v10 || (-[ASUSQLiteContainsPredicate values](self, "values"), v3 = objc_claimAutoreleasedReturnValue(), [v6 values], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        v11 = [(ASUSQLiteContainsPredicate *)self query];
        v12 = [v6 query];
        v13 = v12;
        if (v11 == v12)
        {

          v8 = 1;
        }

        else
        {
          v14 = [(ASUSQLiteContainsPredicate *)self query];
          v15 = [v6 query];
          v8 = [v14 isEqual:v15];
        }

        if (v9 == v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = 0;
      }

LABEL_12:
      goto LABEL_13;
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)SQLForEntityClass:(Class)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [(ASUSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = [MEMORY[0x277CCAB68] stringWithString:v6];
  v8 = v7;
  if (self->_negative)
  {
    v9 = CFSTR(" NOT IN (");
  }

  else
  {
    v9 = CFSTR(" IN (");
  }

  [v7 appendString:v9];
  query = self->_query;
  if (query)
  {
    v18[0] = self->_queryProperty;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v12 = [(ASUSQLiteQuery *)query copySelectSQLWithProperties:v11];

    if (v12)
    {
      [v8 appendString:v12];
    }
  }

  else
  {
    v15 = [self->_values count];
    if (v15)
    {
      v16 = v15;
      [v8 appendString:@"?"];
      v17 = v16 - 1;
      if (v16 != 1)
      {
        do
        {
          [v8 appendString:{@", ?"}];
          --v17;
        }

        while (v17);
      }
    }
  }

  [v8 appendString:@""]);

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

@end