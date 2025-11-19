@interface AMUICountingSentinel
- (void)_addToCounter:(int64_t)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)decrement;
- (void)increment;
- (void)performWhenCountAtZero:(uint64_t)a1;
@end

@implementation AMUICountingSentinel

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__AMUICountingSentinel_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_278C75DD8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __53__AMUICountingSentinel_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 8) withName:@"counter"];
  result = [*(*(a1 + 40) + 16) count];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"deferredBlocks"];
  }

  return result;
}

- (void)_addToCounter:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  counter = self->_counter;
  self->_counter = (counter + a3) & ~((counter + a3) >> 63);
  if (counter)
  {
    v4 = counter + a3 <= 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = [(NSMutableArray *)self->_deferredBlocks copy];
    [(NSMutableArray *)self->_deferredBlocks removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v13 + 1) + 8 * i) + 16))(*(*(&v13 + 1) + 8 * i));
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)increment
{
  if (a1)
  {
    return [a1 _addToCounter:1];
  }

  return a1;
}

- (void)decrement
{
  if (a1)
  {
    return [a1 _addToCounter:-1];
  }

  return a1;
}

- (void)performWhenCountAtZero:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (*(a1 + 8))
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        v5 = [MEMORY[0x277CBEB18] array];
        v6 = *(a1 + 16);
        *(a1 + 16) = v5;

        v4 = *(a1 + 16);
      }

      v7 = [v9 copy];
      v8 = MEMORY[0x245CAD730]();
      [v4 addObject:v8];
    }

    else
    {
      v3[2](v3);
    }

    v3 = v9;
  }
}

@end