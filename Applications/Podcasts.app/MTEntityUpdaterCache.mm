@interface MTEntityUpdaterCache
- (MTEntityUpdaterCache)initWithPredicate:(id)a3 entityName:(id)a4 ctx:(id)a5 properties:(id)a6 fetchProperties:(id)a7;
- (id)propertyDictionaryForSearchItem:(id)a3;
- (void)_addDictionary:(id)a3;
- (void)_buildMap;
- (void)addEntityToCache:(id)a3;
- (void)enumerateUnvisitedItemUuids:(id)a3;
@end

@implementation MTEntityUpdaterCache

- (MTEntityUpdaterCache)initWithPredicate:(id)a3 entityName:(id)a4 ctx:(id)a5 properties:(id)a6 fetchProperties:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = MTEntityUpdaterCache;
  v17 = [(MTEntityUpdaterCache *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_properties, a6);
    objc_storeStrong(&v18->_propertiesToFetch, a7);
    objc_storeStrong(&v18->_ctx, a5);
    objc_storeStrong(&v18->_predicate, a3);
    objc_storeStrong(&v18->_entityName, a4);
    v19 = v18;
  }

  return v18;
}

- (id)propertyDictionaryForSearchItem:(id)a3
{
  v4 = a3;
  if (!self->_objectsByProperty)
  {
    [(MTEntityUpdaterCache *)self _buildMap];
  }

  v5 = [(NSArray *)self->_properties count];
  if (v5 < 1)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = [(NSArray *)self->_properties objectAtIndexedSubscript:v7];
    v9 = [v4 objectForKeyedSubscript:v8];
    allowKeyForValue = self->_allowKeyForValue;
    if (allowKeyForValue && !allowKeyForValue[2](allowKeyForValue, v8, v9))
    {
      goto LABEL_10;
    }

    if (v9)
    {
      break;
    }

LABEL_11:

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v11 = [(NSMutableArray *)self->_objectsByProperty objectAtIndexedSubscript:v7];
  v12 = [v11 objectForKeyedSubscript:v9];
  if (!v12)
  {

LABEL_10:
    goto LABEL_11;
  }

  v13 = v12;
  v15 = [v12 objectForKeyedSubscript:@"uuid"];
  if (v15)
  {
    [(NSMutableSet *)self->_unvisited removeObject:v15];
  }

LABEL_13:

  return v13;
}

- (void)_buildMap
{
  v3 = [NSMutableSet setWithArray:self->_properties];
  [v3 addObject:@"uuid"];
  if ([(NSArray *)self->_propertiesToFetch count])
  {
    v4 = [NSSet setWithArray:self->_propertiesToFetch];
    [v3 unionSet:v4];
  }

  entityName = self->_entityName;
  ctx = self->_ctx;
  predicate = self->_predicate;
  v8 = [v3 allObjects];
  v9 = [(NSManagedObjectContext *)ctx objectsInEntity:entityName predicate:predicate propertiesToFetch:v8 limit:0];

  v10 = [v9 valueForKey:@"uuid"];
  v11 = [NSMutableSet setWithArray:v10];
  unvisited = self->_unvisited;
  self->_unvisited = v11;

  v13 = objc_opt_new();
  objectsByProperty = self->_objectsByProperty;
  self->_objectsByProperty = v13;

  if ([(NSArray *)self->_properties count])
  {
    v15 = 0;
    do
    {
      v16 = self->_objectsByProperty;
      v17 = objc_opt_new();
      [(NSMutableArray *)v16 addObject:v17];

      ++v15;
    }

    while (v15 < [(NSArray *)self->_properties count]);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D02BC;
  v18[3] = &unk_1004DB6E8;
  v18[4] = self;
  [v9 enumerateObjectsUsingBlock:v18];
}

- (void)addEntityToCache:(id)a3
{
  v9 = a3;
  v4 = [v9 dictionaryRepresentation];
  v5 = [(MTEntityUpdaterCache *)self indexingBlock];

  if (v5)
  {
    v6 = [(MTEntityUpdaterCache *)self indexingBlock];
    v7 = (v6)[2](v6, v9);
    v8 = [v4 ams_dictionaryByAddingEntriesFromDictionary:v7];

    v4 = v8;
  }

  [(MTEntityUpdaterCache *)self _addDictionary:v4];
}

- (void)_addDictionary:(id)a3
{
  v8 = a3;
  if ([(NSArray *)self->_properties count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_properties objectAtIndexedSubscript:v4];
      v6 = [v8 objectForKeyedSubscript:v5];
      if (v6)
      {
        v7 = [(NSMutableArray *)self->_objectsByProperty objectAtIndexedSubscript:v4];
        [v7 setObject:v8 forKey:v6];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)self->_properties count]);
  }
}

- (void)enumerateUnvisitedItemUuids:(id)a3
{
  v4 = a3;
  unvisited = self->_unvisited;
  if (!unvisited)
  {
    [(MTEntityUpdaterCache *)self _buildMap];
    unvisited = self->_unvisited;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = unvisited;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = 0;
      v4[2](v4, v11, &v12);
      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

@end