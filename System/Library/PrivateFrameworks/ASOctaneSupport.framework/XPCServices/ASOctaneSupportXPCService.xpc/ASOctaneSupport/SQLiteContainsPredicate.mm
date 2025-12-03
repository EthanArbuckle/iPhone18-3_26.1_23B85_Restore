@interface SQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty;
+ (id)containsPredicateWithProperty:(id)property values:(id)values;
+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation SQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 24) = 0;
  v10 = [valuesCopy copy];

  v11 = v7[6];
  v7[6] = v10;

  return v7;
}

+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty
{
  queryCopy = query;
  queryPropertyCopy = queryProperty;
  propertyCopy = property;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [propertyCopy copy];

  v12 = v10[1];
  v10[1] = v11;

  *(v10 + 24) = 0;
  v13 = v10[4];
  v10[4] = queryCopy;
  v14 = queryCopy;

  v15 = [queryPropertyCopy copy];
  v16 = v10[5];
  v10[5] = v15;

  return v10;
}

+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 24) = 1;
  v10 = [valuesCopy copy];

  v11 = v7[6];
  v7[6] = v10;

  return v7;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  bindingCopy = binding;
  v17.receiver = self;
  v17.super_class = SQLiteContainsPredicate;
  [(SQLitePropertyPredicate *)&v17 applyBinding:bindingCopy atIndex:index];
  query = self->_query;
  if (query)
  {
    [(SQLiteQuery *)query applyBinding:bindingCopy atIndex:index];
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

          sub_100007A68(bindingCopy, *index, *(*(&v13 + 1) + 8 * i));
          ++*index;
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = SQLiteContainsPredicate;
  if ([(SQLitePropertyPredicate *)&v17 isEqual:equalCopy])
  {
    isNegative = [(SQLiteContainsPredicate *)self isNegative];
    if (isNegative == [equalCopy isNegative])
    {
      values = [(SQLiteContainsPredicate *)self values];
      values2 = [equalCopy values];
      if (values == values2 || (-[SQLiteContainsPredicate values](self, "values"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy values], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        query = [(SQLiteContainsPredicate *)self query];
        query2 = [equalCopy query];
        v13 = query2;
        if (query == query2)
        {

          v8 = 1;
        }

        else
        {
          query3 = [(SQLiteContainsPredicate *)self query];
          query4 = [equalCopy query];
          v8 = [query3 isEqual:query4];
        }

        if (values == values2)
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

- (id)SQLForEntityClass:(Class)class
{
  v4 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:class];
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