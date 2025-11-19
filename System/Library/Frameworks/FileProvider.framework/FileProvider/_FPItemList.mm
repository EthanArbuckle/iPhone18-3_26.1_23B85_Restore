@interface _FPItemList
- (BOOL)isObsoleteID:(id)a3;
- (_FPItemList)init;
- (id)description;
- (id)itemIDsDifferenceWithList:(id)a3;
- (id)mutableCopy;
- (unint64_t)indexOfItemID:(id)a3;
- (unint64_t)indexOfObject:(id)a3;
- (void)addObject:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectWithID:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
@end

@implementation _FPItemList

- (_FPItemList)init
{
  v10.receiver = self;
  v10.super_class = _FPItemList;
  v2 = [(_FPItemList *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    orderedSet = v2->_orderedSet;
    v2->_orderedSet = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    itemsByIDs = v2->_itemsByIDs;
    v2->_itemsByIDs = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    formerIDs = v2->_formerIDs;
    v2->_formerIDs = v7;
  }

  return v2;
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(_FPItemList);
  v4 = [(NSMutableOrderedSet *)self->_orderedSet mutableCopy];
  orderedSet = v3->_orderedSet;
  v3->_orderedSet = v4;

  v6 = [(NSMutableDictionary *)self->_itemsByIDs mutableCopy];
  itemsByIDs = v3->_itemsByIDs;
  v3->_itemsByIDs = v6;

  v8 = [(NSMutableDictionary *)self->_formerIDs mutableCopy];
  formerIDs = v3->_formerIDs;
  v3->_formerIDs = v8;

  return v3;
}

- (id)description
{
  if ([(NSMutableOrderedSet *)self->_orderedSet count]> 5)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(_FPItemList *)self subarrayWithRange:0, 5];
    v6 = [v5 description];
    v3 = [v4 stringWithFormat:@"{%@ and %lu others}", v6, -[NSMutableOrderedSet count](self->_orderedSet, "count") - 5];
  }

  else
  {
    v3 = [(NSMutableOrderedSet *)self->_orderedSet description];
  }

  return v3;
}

- (id)itemIDsDifferenceWithList:(id)a3
{
  orderedSet = self->_orderedSet;
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)orderedSet mutableCopy];
  v6 = v4[1];

  [v5 minusOrderedSet:v6];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41___FPItemList_itemIDsDifferenceWithList___block_invoke;
  v10[3] = &unk_1E793AC50;
  v8 = v7;
  v11 = v8;
  [v5 enumerateObjectsUsingBlock:v10];

  return v8;
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v5 = [v4 itemID];
  v6 = [(_FPItemList *)self indexOfItemID:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 formerItemID];
    if (v7)
    {
      v6 = [(_FPItemList *)self indexOfItemID:v7];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (unint64_t)indexOfItemID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_itemsByIDs objectForKeyedSubscript:a3];
  if (v4)
  {
    v5 = [(NSMutableOrderedSet *)self->_orderedSet indexOfObject:v4];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v12 = a3;
  itemsByIDs = self->_itemsByIDs;
  v7 = [v12 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:v12 forKeyedSubscript:v7];

  [(NSMutableOrderedSet *)self->_orderedSet insertObject:v12 atIndex:a4];
  v8 = [v12 formerItemID];

  if (v8)
  {
    formerIDs = self->_formerIDs;
    v10 = [v12 itemID];
    v11 = [v12 formerItemID];
    [(NSMutableDictionary *)formerIDs setObject:v10 forKey:v11];
  }
}

- (void)removeObjectWithID:(id)a3
{
  v9 = a3;
  v4 = [(NSMutableDictionary *)self->_itemsByIDs objectForKeyedSubscript:?];
  [(NSMutableOrderedSet *)self->_orderedSet removeObject:v4];
  v5 = [v4 formerItemID];

  if (v5)
  {
    formerIDs = self->_formerIDs;
    v7 = [v4 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:v7];
  }

  if (!v4)
  {
    v8 = [(NSMutableDictionary *)self->_formerIDs objectForKey:v9];
    if (v8)
    {
      [(_FPItemList *)self removeObjectWithID:v8];
    }
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v10 = [(NSMutableOrderedSet *)self->_orderedSet objectAtIndex:?];
  itemsByIDs = self->_itemsByIDs;
  v6 = [v10 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:0 forKeyedSubscript:v6];

  [(NSMutableOrderedSet *)self->_orderedSet removeObjectAtIndex:a3];
  v7 = [v10 formerItemID];

  if (v7)
  {
    formerIDs = self->_formerIDs;
    v9 = [v10 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:v9];
  }
}

- (void)addObject:(id)a3
{
  v9 = a3;
  itemsByIDs = self->_itemsByIDs;
  v5 = [v9 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:v9 forKeyedSubscript:v5];

  [(NSMutableOrderedSet *)self->_orderedSet addObject:v9];
  v6 = [v9 formerItemID];

  if (v6)
  {
    formerIDs = self->_formerIDs;
    v8 = [v9 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:v8];
  }
}

- (void)removeLastObject
{
  if ([(NSMutableOrderedSet *)self->_orderedSet count])
  {
    v3 = [(NSMutableOrderedSet *)self->_orderedSet count]- 1;

    [(_FPItemList *)self removeObjectAtIndex:v3];
  }
}

- (BOOL)isObsoleteID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_formerIDs objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v17 = a4;
  v6 = [(NSMutableOrderedSet *)self->_orderedSet objectAtIndex:a3];
  itemsByIDs = self->_itemsByIDs;
  v8 = [v6 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:0 forKeyedSubscript:v8];

  v9 = self->_itemsByIDs;
  v10 = [v17 itemID];
  [(NSMutableDictionary *)v9 setObject:v17 forKeyedSubscript:v10];

  [(NSMutableOrderedSet *)self->_orderedSet replaceObjectAtIndex:a3 withObject:v17];
  v11 = [v6 formerItemID];

  if (v11)
  {
    formerIDs = self->_formerIDs;
    v13 = [v17 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:v13];
  }

  v14 = [v17 formerItemID];

  if (v14)
  {
    v15 = self->_formerIDs;
    v16 = [v17 formerItemID];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];
  }
}

@end