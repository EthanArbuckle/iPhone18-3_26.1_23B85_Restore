@interface SQLiteQueryDescriptor
- (SQLiteQueryDescriptor)initWithEntityClass:(Class)class;
- (id)_newSelectSQLWithProperties:(id)properties columns:(id)columns;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SQLiteQueryDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_entityClass;
  v5[2] = self->_limitCount;
  v5[3] = self->_offset;
  v5[4] = self->_memoryEntityClass;
  v6 = [(NSString *)self->_orderingClause copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSArray *)self->_orderingDirections copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSArray *)self->_orderingProperties copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(SQLitePredicate *)self->_predicate copyWithZone:zone];
  v13 = v5[8];
  v5[8] = v12;

  *(v5 + 72) = self->_returnsDistinctEntities;
  return v5;
}

- (id)_newSelectSQLWithProperties:(id)properties columns:(id)columns
{
  propertiesCopy = properties;
  columnsCopy = columns;
  v8 = [[NSMutableString alloc] initWithString:@"SELECT "];
  v9 = v8;
  if (self->_returnsDistinctEntities)
  {
    [v8 appendString:@"DISTINCT "];
  }

  v37 = columnsCopy;
  v10 = [columnsCopy componentsJoinedByString:{@", "}];
  [v9 appendString:v10];

  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  [v9 appendFormat:@" FROM %@", databaseTable];

  v12 = objc_alloc_init(NSMutableSet);
  v13 = [(SQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if (v13)
  {
    [v12 unionSet:v13];
  }

  v36 = v13;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = propertiesCopy;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(objc_class *)self->_entityClass joinClauseForProperty:*(*(&v42 + 1) + 8 * i)];
        if (v19)
        {
          [v12 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v16);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        [v9 appendString:@" "];
        [v9 appendString:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v22);
  }

  v26 = [(SQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
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
      v29 = objc_alloc_init(NSMutableString);
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
    if (self->_offset)
    {
      [v9 appendString:@" OFFSET ?"];
    }
  }

  return v9;
}

- (SQLiteQueryDescriptor)initWithEntityClass:(Class)class
{
  if (self)
  {
    v4.receiver = self;
    v4.super_class = SQLiteQueryDescriptor;
    self = [(SQLiteQueryDescriptor *)&v4 init];
    if (self)
    {
      self->_entityClass = class;
      self->_memoryEntityClass = 0;
    }
  }

  return self;
}

@end