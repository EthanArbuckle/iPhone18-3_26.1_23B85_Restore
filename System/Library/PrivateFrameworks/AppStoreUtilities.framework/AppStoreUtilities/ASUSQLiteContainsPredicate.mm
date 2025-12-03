@interface ASUSQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty;
+ (id)containsPredicateWithProperty:(id)property values:(id)values;
+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation ASUSQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = 0;
  v10 = [valuesCopy copy];

  v11 = v7[5];
  v7[5] = v10;

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

  *(v10 + 16) = 0;
  v13 = v10[3];
  v10[3] = queryCopy;
  v14 = queryCopy;

  v15 = [queryPropertyCopy copy];
  v16 = v10[4];
  v10[4] = v15;

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

  *(v7 + 16) = 1;
  v10 = [valuesCopy copy];

  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  v19 = *MEMORY[0x277D85DE8];
  bindingCopy = binding;
  query = self->_query;
  if (query)
  {
    [(ASUSQLiteQuery *)query applyBinding:bindingCopy atIndex:index];
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

          ASUSQLiteBindFoundationValue(bindingCopy, *index, *(*(&v14 + 1) + 8 * i));
          ++*index;
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = ASUSQLiteContainsPredicate;
  if ([(ASUSQLitePropertyPredicate *)&v17 isEqual:equalCopy])
  {
    isNegative = [(ASUSQLiteContainsPredicate *)self isNegative];
    if (isNegative == [equalCopy isNegative])
    {
      values = [(ASUSQLiteContainsPredicate *)self values];
      values2 = [equalCopy values];
      if (values == values2 || (-[ASUSQLiteContainsPredicate values](self, "values"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy values], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        query = [(ASUSQLiteContainsPredicate *)self query];
        query2 = [equalCopy query];
        v13 = query2;
        if (query == query2)
        {

          v8 = 1;
        }

        else
        {
          query3 = [(ASUSQLiteContainsPredicate *)self query];
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
  v18[1] = *MEMORY[0x277D85DE8];
  property = [(ASUSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

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