@interface ASUSQLiteQueryDescriptor
- (ASUSQLiteQueryDescriptor)initWithEntityClass:(Class)a3 memoryEntityClass:(Class)a4;
- (id)_newSelectSQLWithProperties:(id)a3 columns:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASUSQLiteQueryDescriptor

- (ASUSQLiteQueryDescriptor)initWithEntityClass:(Class)a3 memoryEntityClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = ASUSQLiteQueryDescriptor;
  result = [(ASUSQLiteQueryDescriptor *)&v7 init];
  if (result)
  {
    result->_entityClass = a3;
    result->_memoryEntityClass = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_entityClass;
  *(v5 + 16) = self->_limitCount;
  *(v5 + 24) = self->_memoryEntityClass;
  v6 = [(NSString *)self->_orderingClause copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSArray *)self->_orderingDirections copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSArray *)self->_orderingProperties copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(ASUSQLitePredicate *)self->_predicate copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  *(v5 + 64) = self->_returnsDistinctEntities;
  return v5;
}

- (id)_newSelectSQLWithProperties:(id)a3 columns:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
  v9 = v8;
  if (self->_returnsDistinctEntities)
  {
    [v8 appendString:@"DISTINCT "];
  }

  v38 = v7;
  v10 = [v7 componentsJoinedByString:{@", "}];
  [v9 appendString:v10];

  v11 = [(objc_class *)self->_entityClass databaseTable];
  [v9 appendFormat:@" FROM %@", v11];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = [(ASUSQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if (v13)
  {
    [v12 unionSet:v13];
  }

  v37 = v13;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(objc_class *)self->_entityClass joinClauseForProperty:*(*(&v43 + 1) + 8 * i)];
        if (v19)
        {
          [v12 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v39 + 1) + 8 * j);
        [v9 appendString:@" "];
        [v9 appendString:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v22);
  }

  v26 = [(ASUSQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
  if (v26)
  {
    [v9 appendString:@" WHERE "];
    [v9 appendString:v26];
  }

  v27 = [(NSArray *)self->_orderingProperties count];
  if (self->_orderingClause)
  {
    [v9 appendString:@" ORDER BY "];
    [v9 appendString:self->_orderingClause];
  }

  else
  {
    v28 = v27;
    if (v27 >= 1)
    {
      v29 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v30 = 0;
      do
      {
        entityClass = self->_entityClass;
        v32 = [(NSArray *)self->_orderingProperties objectAtIndex:v30];
        v33 = [(objc_class *)entityClass disambiguatedSQLForProperty:v32];

        if ([v29 length])
        {
          [v29 appendString:{@", "}];
        }

        [v29 appendString:v33];
        [v29 appendString:@" "];
        if (v30 >= [(NSArray *)self->_orderingDirections count])
        {
          [v29 appendString:@"ASC"];
        }

        else
        {
          v34 = [(NSArray *)self->_orderingDirections objectAtIndex:v30];
          [v29 appendString:v34];
        }

        ++v30;
      }

      while (v28 != v30);
      [v9 appendString:@" ORDER BY "];
      [v9 appendString:v29];
    }
  }

  if (self->_limitCount)
  {
    [v9 appendString:@" LIMIT ?"];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v9;
}

@end