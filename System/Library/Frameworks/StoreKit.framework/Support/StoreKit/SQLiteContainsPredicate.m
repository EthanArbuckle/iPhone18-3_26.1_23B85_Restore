@interface SQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)a3 query:(id)a4 queryProperty:(id)a5;
+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4;
+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation SQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [v6 copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 24) = 0;
  v10 = [v5 copy];

  v11 = v7[6];
  v7[6] = v10;

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

  *(v10 + 24) = 0;
  v13 = v10[4];
  v10[4] = v7;
  v14 = v7;

  v15 = [v8 copy];
  v16 = v10[5];
  v10[5] = v15;

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

  *(v7 + 24) = 1;
  v10 = [v5 copy];

  v11 = v7[6];
  v7[6] = v10;

  return v7;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SQLiteContainsPredicate;
  [(SQLitePropertyPredicate *)&v17 applyBinding:v6 atIndex:a4];
  query = self->_query;
  if (query)
  {
    [(SQLiteQuery *)query applyBinding:v6 atIndex:a4];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_values;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          sub_100007270(v6, *a4, *(*(&v13 + 1) + 8 * i));
          ++*a4;
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SQLiteContainsPredicate;
  if ([(SQLitePropertyPredicate *)&v17 isEqual:v6])
  {
    v7 = [(SQLiteContainsPredicate *)self isNegative];
    if (v7 == [v6 isNegative])
    {
      v9 = [(SQLiteContainsPredicate *)self values];
      v10 = [v6 values];
      if (v9 == v10 || (-[SQLiteContainsPredicate values](self, "values"), v3 = objc_claimAutoreleasedReturnValue(), [v6 values], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        v11 = [(SQLiteContainsPredicate *)self query];
        v12 = [v6 query];
        v13 = v12;
        if (v11 == v12)
        {

          v8 = 1;
        }

        else
        {
          v14 = [(SQLiteContainsPredicate *)self query];
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
  v4 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:a3];
  v5 = [NSMutableString stringWithString:v4];
  v6 = v5;
  if (self->_negative)
  {
    v7 = CFSTR(" NOT IN (");
  }

  else
  {
    v7 = CFSTR(" IN (");
  }

  [v5 appendString:v7];
  query = self->_query;
  if (query)
  {
    queryProperty = self->_queryProperty;
    v9 = [NSArray arrayWithObjects:&queryProperty count:1];
    v10 = [(SQLiteQuery *)query copySelectSQLWithProperties:v9];

    if (v10)
    {
      [v6 appendString:v10];
    }
  }

  else
  {
    v12 = [self->_values count];
    if (v12)
    {
      v13 = v12;
      [v6 appendString:@"?"];
      v14 = v13 - 1;
      if (v13 != 1)
      {
        do
        {
          [v6 appendString:{@", ?"}];
          --v14;
        }

        while (v14);
      }
    }
  }

  [v6 appendString:@""]);

  return v6;
}

@end