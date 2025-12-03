@interface ASUSQLiteCompoundPredicate
+ (id)predicateMatchingAllPredicates:(id)predicates;
+ (id)predicateMatchingAnyPredicates:(id)predicates;
+ (id)predicateWithProperty:(id)property values:(id)values comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation ASUSQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = @" AND ";

  v6 = [predicatesCopy copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

+ (id)predicateMatchingAnyPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = @" OR ";

  v6 = [predicatesCopy copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

+ (id)predicateWithProperty:(id)property values:(id)values comparisonType:(int64_t)type
{
  propertyCopy = property;
  valuesCopy = values;
  v10 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = valuesCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [ASUSQLiteComparisonPredicate predicateWithProperty:propertyCopy value:*(*(&v19 + 1) + 8 * i) comparisonType:type, v19];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [self predicateMatchingAnyPredicates:v10];

  return v17;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  bindingCopy = binding;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_predicates;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) applyBinding:bindingCopy atIndex:{index, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = ASUSQLiteCompoundPredicate;
  v3 = [(ASUSQLitePredicate *)&v8 hash];
  v4 = [(NSString *)self->_combinationOperation hash];
  predicates = [(ASUSQLiteCompoundPredicate *)self predicates];
  v6 = [predicates hash] + v3;

  return &v6[v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = ASUSQLiteCompoundPredicate;
  if ([(ASUSQLitePredicate *)&v12 isEqual:equalCopy]&& ((combinationOperation = self->_combinationOperation, combinationOperation == equalCopy[1]) || [(NSString *)combinationOperation isEqual:?]))
  {
    predicates = self->_predicates;
    predicates = [equalCopy predicates];
    if (predicates == predicates)
    {
      v10 = 1;
    }

    else
    {
      v8 = self->_predicates;
      predicates2 = [equalCopy predicates];
      v10 = [(NSArray *)v8 isEqual:predicates2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)SQLForEntityClass:(Class)class
{
  if ([(NSArray *)self->_predicates count])
  {
    v5 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_predicates;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) SQLForEntityClass:{class, v13}];
          if (v11)
          {
            if ([v5 length] >= 2)
            {
              [v5 appendString:self->_combinationOperation];
            }

            [v5 appendString:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v5 appendString:@""]);
  }

  else
  {
    v5 = [NSMutableString stringWithString:@"1"];
  }

  return v5;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) SQLJoinClausesForEntityClass:{class, v12}];
        if (v10)
        {
          if (!v7)
          {
            v7 = +[NSMutableSet set];
          }

          [v7 unionSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end