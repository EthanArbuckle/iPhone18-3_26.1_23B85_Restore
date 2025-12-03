@interface NSSQLitePrefetchRequestCache
- (NSSQLitePrefetchRequestCache)initWithSQLCore:(id)core;
- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (void)dealloc;
@end

@implementation NSSQLitePrefetchRequestCache

- (void)dealloc
{
  length = self->_length;
  if (length)
  {
    for (i = 1; i <= length; ++i)
    {
      v5 = self->_prefetchRequestsByEntity[i];
      if (v5)
      {
      }
    }
  }

  PF_FREE_OBJECT_ARRAY(self->_prefetchRequestsByEntity);
  self->_prefetchRequestsByEntity = 0;
  objc_storeWeak(&self->_sqlCore, 0);
  v6.receiver = self;
  v6.super_class = NSSQLitePrefetchRequestCache;
  [(NSSQLitePrefetchRequestCache *)&v6 dealloc];
}

- (NSSQLitePrefetchRequestCache)initWithSQLCore:(id)core
{
  v9.receiver = self;
  v9.super_class = NSSQLitePrefetchRequestCache;
  v4 = [(NSSQLitePrefetchRequestCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_sqlCore, core);
    model = [core model];
    if (model)
    {
      model = model[4];
    }

    v7 = [model count];
    v5->_length = v7;
    v5->_prefetchRequestsByEntity = PF_CALLOC_OBJECT_ARRAY(v7 + 1);
  }

  return v5;
}

- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  Weak = objc_loadWeak(&self->_sqlCore);
  if (!Weak)
  {
    return 0;
  }

  v8 = Weak;
  v9 = [(NSEntityDescription *)entity _relationshipNamed:named];
  v10 = _sqlCoreLookupSQLEntityForEntityDescription(v8, entity);
  model = [v10 model];
  if (model != [v8 model])
  {
    return 0;
  }

  if (v10)
  {
    v14 = [*(v10 + 40) objectForKey:named];
  }

  else
  {
    v14 = 0;
  }

  isToMany = [v14 isToMany];
  isOrdered = [v9 isOrdered];
  if (!v14)
  {
    v17 = 0;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = v14[7];
  if (v10)
  {
LABEL_9:
    v10 = *(v10 + 184);
  }

LABEL_10:
  v18 = self->_prefetchRequestsByEntity[v10];
  if (!v18)
  {
    v18 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSEntityDescription *)entity knownKeysMappingStrategy]];
    self->_prefetchRequestsByEntity[v10] = v18;
  }

  v12 = [(NSKnownKeysDictionary *)v18 objectForKey:named];
  if (!v12)
  {
    v12 = objc_alloc_init(NSCachingFetchRequest);
    [(NSCachingFetchRequest *)v12 _disableSQLStatementCaching];
    -[NSFetchRequest setEntity:](v12, "setEntity:", [objc_msgSend(v14 "destinationEntity")]);
    v19 = [MEMORY[0x1E696ABC8] expressionForVariable:@"destinations"];
    v20 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:{objc_msgSend(v17, "name")}];
    v21 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v20];

    v22 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v21 rightExpression:v19 modifier:0 type:10 options:0];
    [(NSFetchRequest *)v12 setPredicate:v22];

    if (isToMany)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:objc_msgSend(objc_msgSend(v17 ascending:{"foreignKey"), "name"), 1}];
      if (isOrdered)
      {
        v24 = objc_alloc(MEMORY[0x1E696AEB0]);
        if (v17)
        {
          v25 = v17[10];
        }

        else
        {
          v25 = 0;
        }

        v26 = [v24 initWithKey:objc_msgSend(v25 ascending:{"name"), 1}];
      }

      else
      {
        v26 = 0;
      }

      v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v23, v26, 0}];

      [(NSFetchRequest *)v12 setSortDescriptors:v27];
    }

    v28 = v12;
  }

  return v12;
}

- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  Weak = objc_loadWeak(&self->_sqlCore);
  if (!Weak)
  {
    return 0;
  }

  v8 = Weak;
  v9 = _sqlCoreLookupSQLEntityForEntityDescription(Weak, entity);
  model = [v9 model];
  if (model != [v8 model])
  {
    return 0;
  }

  if (v9)
  {
    v13 = [*(v9 + 40) objectForKey:named];
    v9 = *(v9 + 184);
  }

  else
  {
    v13 = 0;
  }

  v14 = self->_prefetchRequestsByEntity[v9];
  if (!v14)
  {
    v14 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSEntityDescription *)entity knownKeysMappingStrategy]];
    self->_prefetchRequestsByEntity[v9] = v14;
  }

  v11 = [(NSKnownKeysDictionary *)v14 objectForKey:named];
  if (!v11)
  {
    v11 = objc_alloc_init(NSCachingFetchRequest);
    [(NSCachingFetchRequest *)v11 _disableSQLStatementCaching];
    -[NSFetchRequest setEntity:](v11, "setEntity:", [objc_msgSend(v13 "destinationEntity")]);
    v15 = _SELF_Expression;
    v16 = [MEMORY[0x1E696ABC8] expressionForVariable:@"objects"];
    v17 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v15 rightExpression:v16 modifier:0 type:10 options:0];
    [(NSFetchRequest *)v11 setPredicate:v17];

    v18 = v11;
  }

  return v11;
}

- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity
{
  Weak = objc_loadWeak(&self->_sqlCore);
  if (!Weak)
  {
    return 0;
  }

  v8 = _sqlCoreLookupSQLEntityForEntityDescription(Weak, entity);
  v9 = v8;
  if (v8)
  {
    v10 = [*(v8 + 40) objectForKey:named];
    v9 = *(v9 + 184);
  }

  else
  {
    v10 = 0;
  }

  v11 = self->_prefetchRequestsByEntity[v9];
  if (!v11)
  {
    v11 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSEntityDescription *)entity knownKeysMappingStrategy]];
    self->_prefetchRequestsByEntity[v9] = v11;
  }

  v12 = [(NSKnownKeysDictionary *)v11 objectForKey:named];
  if (!v12)
  {
    v12 = objc_alloc_init(NSCachingFetchRequest);
    [(NSCachingFetchRequest *)v12 _disableSQLStatementCaching];
    -[NSFetchRequest setEntity:](v12, "setEntity:", [objc_msgSend(v10 "destinationEntity")]);
    v13 = _SELF_Expression;
    v14 = [MEMORY[0x1E696ABC8] expressionForVariable:@"mtmObjects"];
    v15 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v13 rightExpression:v14 modifier:0 type:10 options:0];
    [(NSFetchRequest *)v12 setPredicate:v15];

    v16 = v12;
  }

  return v12;
}

@end