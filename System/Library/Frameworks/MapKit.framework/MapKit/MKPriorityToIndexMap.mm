@interface MKPriorityToIndexMap
- (BOOL)addPriorities:(id)priorities;
- (BOOL)contains:(id)contains;
- (BOOL)containsPriority:(double)priority;
- (MKPriorityToIndexMap)initWithPriorities:(id)priorities;
- (double)priorityOfIndex:(unint64_t)index;
- (id)nextPriorityFromPriorities:(id)priorities prioritiesToReAdd:(id)add;
- (int64_t)indexOfPriority:(double)priority;
- (void)appendRemainingPriorities:(id)priorities prioritiesToReAdd:(id)add;
- (void)insertPriorities:(id)priorities prioritiesToReAdd:(id)add;
@end

@implementation MKPriorityToIndexMap

- (BOOL)contains:(id)contains
{
  v3 = [(NSMutableDictionary *)self->_prioritiesToIndexes objectForKeyedSubscript:contains];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsPriority:(double)priority
{
  prioritiesToIndexes = self->_prioritiesToIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:priority];
  v5 = [(NSMutableDictionary *)prioritiesToIndexes objectForKeyedSubscript:v4];
  LOBYTE(prioritiesToIndexes) = v5 != 0;

  return prioritiesToIndexes;
}

- (double)priorityOfIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_priorities count]<= index)
  {
    return 2.22507386e-308;
  }

  v5 = [(NSMutableArray *)self->_priorities objectAtIndexedSubscript:index];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (int64_t)indexOfPriority:(double)priority
{
  prioritiesToIndexes = self->_prioritiesToIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:priority];
  v5 = [(NSMutableDictionary *)prioritiesToIndexes objectForKeyedSubscript:v4];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (id)nextPriorityFromPriorities:(id)priorities prioritiesToReAdd:(id)add
{
  addCopy = add;
  prioritiesCopy = priorities;
  v7 = [addCopy count];
  firstObject = [prioritiesCopy firstObject];

  if (v7)
  {
    firstObject2 = [addCopy firstObject];
    if (!firstObject || (v10 = [firstObject compare:firstObject2], v11 = firstObject, v10 != -1))
    {
      v11 = firstObject2;
    }

    v12 = v11;

    firstObject = v12;
  }

  return firstObject;
}

- (void)appendRemainingPriorities:(id)priorities prioritiesToReAdd:(id)add
{
  prioritiesCopy = priorities;
  addCopy = add;
  while ([prioritiesCopy count] || objc_msgSend(addCopy, "count"))
  {
    v7 = [(MKPriorityToIndexMap *)self nextPriorityFromPriorities:prioritiesCopy prioritiesToReAdd:addCopy];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_priorities, "count")}];
    [(NSMutableDictionary *)self->_prioritiesToIndexes setObject:v8 forKeyedSubscript:v7];

    [(NSMutableArray *)self->_priorities addObject:v7];
    firstObject = [prioritiesCopy firstObject];

    v10 = prioritiesCopy;
    if (v7 != firstObject)
    {
      v10 = addCopy;
    }

    [v10 removeObjectAtIndex:0];
  }
}

- (void)insertPriorities:(id)priorities prioritiesToReAdd:(id)add
{
  prioritiesCopy = priorities;
  addCopy = add;
  if ([(NSMutableArray *)self->_priorities count]&& [(NSMutableArray *)self->_priorities count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v8)
      {
        v8 = [(MKPriorityToIndexMap *)self nextPriorityFromPriorities:prioritiesCopy prioritiesToReAdd:addCopy];
      }

      v9 = [(NSMutableArray *)self->_priorities objectAtIndexedSubscript:v7];
      if ([v8 compare:v9] == -1)
      {
        [addCopy addObject:v9];
        [(NSMutableArray *)self->_priorities setObject:v8 atIndexedSubscript:v7];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        [(NSMutableDictionary *)self->_prioritiesToIndexes setObject:v10 forKeyedSubscript:v8];

        firstObject = [prioritiesCopy firstObject];

        v12 = prioritiesCopy;
        if (v8 != firstObject)
        {
          v12 = addCopy;
        }

        [v12 removeObjectAtIndex:0];

        v8 = 0;
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_priorities count]);
  }
}

- (BOOL)addPriorities:(id)priorities
{
  v22 = *MEMORY[0x1E69E9840];
  prioritiesCopy = priorities;
  if ([prioritiesCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(prioritiesCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = prioritiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_prioritiesToIndexes objectForKeyedSubscript:v11, v17];

          if (!v12)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [v5 count];
    v14 = v13 != 0;
    if (v13)
    {
      [v5 sortWithOptions:1 usingComparator:&__block_literal_global_2605];
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(MKPriorityToIndexMap *)self insertPriorities:v5 prioritiesToReAdd:v15];
      [(MKPriorityToIndexMap *)self appendRemainingPriorities:v5 prioritiesToReAdd:v15];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MKPriorityToIndexMap)initWithPriorities:(id)priorities
{
  prioritiesCopy = priorities;
  v11.receiver = self;
  v11.super_class = MKPriorityToIndexMap;
  v5 = [(MKPriorityToIndexMap *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prioritiesToIndexes = v5->_prioritiesToIndexes;
    v5->_prioritiesToIndexes = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    priorities = v5->_priorities;
    v5->_priorities = v8;

    [(MKPriorityToIndexMap *)v5 addPriorities:prioritiesCopy];
  }

  return v5;
}

@end