@interface NSSet(BaseBoard)
- (BOOL)bs_containsObjectPassingTest:()BaseBoard;
- (id)bs_compactMap:()BaseBoard;
- (id)bs_dictionaryByPartitioning:()BaseBoard;
- (id)bs_filter:()BaseBoard;
- (id)bs_map:()BaseBoard;
- (id)bs_set;
- (void)bs_each:()BaseBoard;
@end

@implementation NSSet(BaseBoard)

- (id)bs_set
{
  v1 = [self copy];

  return v1;
}

- (BOOL)bs_containsObjectPassingTest:()BaseBoard
{
  v3 = BSCollectionFind(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)bs_filter:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionFilter(v5, self, a3);
}

- (id)bs_map:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionCompactMap(v5, self, a3);
}

- (id)bs_compactMap:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionCompactMap(v5, self, a3);
}

- (id)bs_dictionaryByPartitioning:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionPartition(v5, self, a3);
}

- (void)bs_each:()BaseBoard
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    selfCopy = self;
    v5 = [selfCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          (*(a3 + 16))(a3, *(*(&v8 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [selfCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

@end