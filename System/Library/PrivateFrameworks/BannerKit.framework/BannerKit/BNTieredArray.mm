@interface BNTieredArray
- (NSArray)allObjects;
- (NSArray)topObjectFromEachTier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForObject:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)tierAtIndex:(unint64_t)a3;
- (id)topObjectInTier:(int64_t)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_invalidateAllObjectsCache;
- (void)addObject:(id)a3 incrementingTier:(BOOL)a4 addTierToTop:(BOOL)a5;
- (void)addObject:(id)a3 toTierOfObject:(id)a4 addObjectToTop:(BOOL)a5;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndexPath:(id)a3;
@end

@implementation BNTieredArray

- (NSArray)allObjects
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  allObjects = v2->_allObjects;
  if (!allObjects)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v2->_collections;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(NSArray *)v4 addObjectsFromArray:*(*(&v12 + 1) + 8 * i), v12];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = v2->_allObjects;
    v2->_allObjects = v4;

    allObjects = v2->_allObjects;
  }

  v10 = allObjects;
  objc_sync_exit(v2);

  return v10;
}

- (void)_invalidateAllObjectsCache
{
  obj = self;
  objc_sync_enter(obj);
  allObjects = obj->_allObjects;
  obj->_allObjects = 0;

  objc_sync_exit(obj);
}

- (unint64_t)count
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_collections;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(BNTieredArray *)self allObjects];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (NSArray)topObjectFromEachTier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(BNTieredArray *)self tierCount])
  {
    v4 = 0;
    do
    {
      v5 = [(BNTieredArray *)self topObjectInTier:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(BNTieredArray *)self tierCount]);
  }

  return v3;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 tier];
  v6 = [v4 item];

  if (v5 >= -[NSMutableArray count](self->_collections, "count") || (-[NSMutableArray objectAtIndexedSubscript:](self->_collections, "objectAtIndexedSubscript:", v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6 >= v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_collections objectAtIndexedSubscript:v5];
    v10 = [v9 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)indexPathForObject:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  collections = self->_collections;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__BNTieredArray_indexPathForObject___block_invoke;
  v9[3] = &unk_1E81E4E90;
  v11 = &v17;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  [(NSMutableArray *)collections enumerateObjectsUsingBlock:v9];
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:v18[3] inTier:v14[3]];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

uint64_t __36__BNTieredArray_indexPathForObject___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 indexOfObject:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  if (*(*(a1[5] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)addObject:(id)a3 toTierOfObject:(id)a4 addObjectToTop:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8)
  {
    v12 = v8;
    v9 = [(BNTieredArray *)self indexPathForObject:a4];
    if ([v9 item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_collections, "objectAtIndexedSubscript:", [v9 tier]);
      v11 = v10;
      if (v5)
      {
        [v10 addObject:v12];
      }

      else
      {
        [v10 insertObject:v12 atIndex:{objc_msgSend(v9, "item")}];
      }

      [(BNTieredArray *)self _invalidateAllObjectsCache];
    }

    v8 = v12;
  }
}

- (void)addObject:(id)a3 incrementingTier:(BOOL)a4 addTierToTop:(BOOL)a5
{
  v7 = a3;
  if (v7)
  {
    v14 = v7;
    collections = self->_collections;
    if (!collections)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = self->_collections;
      self->_collections = v9;

      collections = self->_collections;
    }

    v11 = [(NSMutableArray *)collections firstObject];
    v12 = v11;
    if (a4 || !v11)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableArray *)self->_collections insertObject:v13 atIndex:0];

      v12 = v13;
    }

    [v12 addObject:v14];
    [(BNTieredArray *)self _invalidateAllObjectsCache];

    v7 = v14;
  }
}

- (void)removeObjectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 tier];
  v6 = [v4 item];

  if (v5 < [(NSMutableArray *)self->_collections count])
  {
    v10 = [(NSMutableArray *)self->_collections objectAtIndexedSubscript:v5];
    v7 = v6 >= [v10 count];
    v8 = v10;
    if (!v7)
    {
      [v10 removeObjectAtIndex:v6];
      if (![v10 count])
      {
        [(NSMutableArray *)self->_collections removeObjectAtIndex:v5];
      }

      if (![(NSMutableArray *)self->_collections count])
      {
        collections = self->_collections;
        self->_collections = 0;
      }

      [(BNTieredArray *)self _invalidateAllObjectsCache];
      v8 = v10;
    }
  }
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    collections = self->_collections;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__BNTieredArray_removeObject___block_invoke;
    v8[3] = &unk_1E81E4E90;
    v10 = &v12;
    v9 = v4;
    v11 = &v16;
    [(NSMutableArray *)collections enumerateObjectsUsingBlock:v8];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v13[3] inTier:v17[3]];
    [(BNTieredArray *)self removeObjectAtIndexPath:v7];

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __30__BNTieredArray_removeObject___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 indexOfObject:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  if (*(*(a1[5] + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)tierAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_collections count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_collections objectAtIndex:a3];
  }

  return v5;
}

- (id)topObjectInTier:(int64_t)a3
{
  v3 = [(BNTieredArray *)self tierAtIndex:a3];
  v4 = [v3 lastObject];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BNTieredArray);
  v5 = [(NSMutableArray *)self->_collections copy];
  collections = v4->_collections;
  v4->_collections = v5;

  return v4;
}

@end