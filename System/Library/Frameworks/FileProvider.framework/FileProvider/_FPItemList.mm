@interface _FPItemList
- (BOOL)isObsoleteID:(id)d;
- (_FPItemList)init;
- (id)description;
- (id)itemIDsDifferenceWithList:(id)list;
- (id)mutableCopy;
- (unint64_t)indexOfItemID:(id)d;
- (unint64_t)indexOfObject:(id)object;
- (void)addObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectWithID:(id)d;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation _FPItemList

- (_FPItemList)init
{
  v10.receiver = self;
  v10.super_class = _FPItemList;
  v2 = [(_FPItemList *)&v10 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    orderedSet = v2->_orderedSet;
    v2->_orderedSet = orderedSet;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemsByIDs = v2->_itemsByIDs;
    v2->_itemsByIDs = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    formerIDs = v2->_formerIDs;
    v2->_formerIDs = dictionary2;
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

- (id)itemIDsDifferenceWithList:(id)list
{
  orderedSet = self->_orderedSet;
  listCopy = list;
  v5 = [(NSMutableOrderedSet *)orderedSet mutableCopy];
  v6 = listCopy[1];

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

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  itemID = [objectCopy itemID];
  v6 = [(_FPItemList *)self indexOfItemID:itemID];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    formerItemID = [objectCopy formerItemID];
    if (formerItemID)
    {
      v6 = [(_FPItemList *)self indexOfItemID:formerItemID];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (unint64_t)indexOfItemID:(id)d
{
  v4 = [(NSMutableDictionary *)self->_itemsByIDs objectForKeyedSubscript:d];
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

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  itemsByIDs = self->_itemsByIDs;
  itemID = [objectCopy itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:objectCopy forKeyedSubscript:itemID];

  [(NSMutableOrderedSet *)self->_orderedSet insertObject:objectCopy atIndex:index];
  formerItemID = [objectCopy formerItemID];

  if (formerItemID)
  {
    formerIDs = self->_formerIDs;
    itemID2 = [objectCopy itemID];
    formerItemID2 = [objectCopy formerItemID];
    [(NSMutableDictionary *)formerIDs setObject:itemID2 forKey:formerItemID2];
  }
}

- (void)removeObjectWithID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_itemsByIDs objectForKeyedSubscript:?];
  [(NSMutableOrderedSet *)self->_orderedSet removeObject:v4];
  formerItemID = [v4 formerItemID];

  if (formerItemID)
  {
    formerIDs = self->_formerIDs;
    formerItemID2 = [v4 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:formerItemID2];
  }

  if (!v4)
  {
    v8 = [(NSMutableDictionary *)self->_formerIDs objectForKey:dCopy];
    if (v8)
    {
      [(_FPItemList *)self removeObjectWithID:v8];
    }
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v10 = [(NSMutableOrderedSet *)self->_orderedSet objectAtIndex:?];
  itemsByIDs = self->_itemsByIDs;
  itemID = [v10 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:0 forKeyedSubscript:itemID];

  [(NSMutableOrderedSet *)self->_orderedSet removeObjectAtIndex:index];
  formerItemID = [v10 formerItemID];

  if (formerItemID)
  {
    formerIDs = self->_formerIDs;
    formerItemID2 = [v10 formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:formerItemID2];
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  itemsByIDs = self->_itemsByIDs;
  itemID = [objectCopy itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:objectCopy forKeyedSubscript:itemID];

  [(NSMutableOrderedSet *)self->_orderedSet addObject:objectCopy];
  formerItemID = [objectCopy formerItemID];

  if (formerItemID)
  {
    formerIDs = self->_formerIDs;
    formerItemID2 = [objectCopy formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:formerItemID2];
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

- (BOOL)isObsoleteID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_formerIDs objectForKey:d];
  v4 = v3 != 0;

  return v4;
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  v6 = [(NSMutableOrderedSet *)self->_orderedSet objectAtIndex:index];
  itemsByIDs = self->_itemsByIDs;
  itemID = [v6 itemID];
  [(NSMutableDictionary *)itemsByIDs setObject:0 forKeyedSubscript:itemID];

  v9 = self->_itemsByIDs;
  itemID2 = [objectCopy itemID];
  [(NSMutableDictionary *)v9 setObject:objectCopy forKeyedSubscript:itemID2];

  [(NSMutableOrderedSet *)self->_orderedSet replaceObjectAtIndex:index withObject:objectCopy];
  formerItemID = [v6 formerItemID];

  if (formerItemID)
  {
    formerIDs = self->_formerIDs;
    formerItemID2 = [objectCopy formerItemID];
    [(NSMutableDictionary *)formerIDs removeObjectForKey:formerItemID2];
  }

  formerItemID3 = [objectCopy formerItemID];

  if (formerItemID3)
  {
    v15 = self->_formerIDs;
    formerItemID4 = [objectCopy formerItemID];
    [(NSMutableDictionary *)v15 removeObjectForKey:formerItemID4];
  }
}

@end