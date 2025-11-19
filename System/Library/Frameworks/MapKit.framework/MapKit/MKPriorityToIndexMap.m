@interface MKPriorityToIndexMap
- (BOOL)addPriorities:(id)a3;
- (BOOL)contains:(id)a3;
- (BOOL)containsPriority:(double)a3;
- (MKPriorityToIndexMap)initWithPriorities:(id)a3;
- (double)priorityOfIndex:(unint64_t)a3;
- (id)nextPriorityFromPriorities:(id)a3 prioritiesToReAdd:(id)a4;
- (int64_t)indexOfPriority:(double)a3;
- (void)appendRemainingPriorities:(id)a3 prioritiesToReAdd:(id)a4;
- (void)insertPriorities:(id)a3 prioritiesToReAdd:(id)a4;
@end

@implementation MKPriorityToIndexMap

- (BOOL)contains:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_prioritiesToIndexes objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsPriority:(double)a3
{
  prioritiesToIndexes = self->_prioritiesToIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(NSMutableDictionary *)prioritiesToIndexes objectForKeyedSubscript:v4];
  LOBYTE(prioritiesToIndexes) = v5 != 0;

  return prioritiesToIndexes;
}

- (double)priorityOfIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_priorities count]<= a3)
  {
    return 2.22507386e-308;
  }

  v5 = [(NSMutableArray *)self->_priorities objectAtIndexedSubscript:a3];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (int64_t)indexOfPriority:(double)a3
{
  prioritiesToIndexes = self->_prioritiesToIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(NSMutableDictionary *)prioritiesToIndexes objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)nextPriorityFromPriorities:(id)a3 prioritiesToReAdd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 count];
  v8 = [v6 firstObject];

  if (v7)
  {
    v9 = [v5 firstObject];
    if (!v8 || (v10 = [v8 compare:v9], v11 = v8, v10 != -1))
    {
      v11 = v9;
    }

    v12 = v11;

    v8 = v12;
  }

  return v8;
}

- (void)appendRemainingPriorities:(id)a3 prioritiesToReAdd:(id)a4
{
  v11 = a3;
  v6 = a4;
  while ([v11 count] || objc_msgSend(v6, "count"))
  {
    v7 = [(MKPriorityToIndexMap *)self nextPriorityFromPriorities:v11 prioritiesToReAdd:v6];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_priorities, "count")}];
    [(NSMutableDictionary *)self->_prioritiesToIndexes setObject:v8 forKeyedSubscript:v7];

    [(NSMutableArray *)self->_priorities addObject:v7];
    v9 = [v11 firstObject];

    v10 = v11;
    if (v7 != v9)
    {
      v10 = v6;
    }

    [v10 removeObjectAtIndex:0];
  }
}

- (void)insertPriorities:(id)a3 prioritiesToReAdd:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([(NSMutableArray *)self->_priorities count]&& [(NSMutableArray *)self->_priorities count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v8)
      {
        v8 = [(MKPriorityToIndexMap *)self nextPriorityFromPriorities:v13 prioritiesToReAdd:v6];
      }

      v9 = [(NSMutableArray *)self->_priorities objectAtIndexedSubscript:v7];
      if ([v8 compare:v9] == -1)
      {
        [v6 addObject:v9];
        [(NSMutableArray *)self->_priorities setObject:v8 atIndexedSubscript:v7];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        [(NSMutableDictionary *)self->_prioritiesToIndexes setObject:v10 forKeyedSubscript:v8];

        v11 = [v13 firstObject];

        v12 = v13;
        if (v8 != v11)
        {
          v12 = v6;
        }

        [v12 removeObjectAtIndex:0];

        v8 = 0;
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_priorities count]);
  }
}

- (BOOL)addPriorities:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
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

- (MKPriorityToIndexMap)initWithPriorities:(id)a3
{
  v4 = a3;
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

    [(MKPriorityToIndexMap *)v5 addPriorities:v4];
  }

  return v5;
}

@end