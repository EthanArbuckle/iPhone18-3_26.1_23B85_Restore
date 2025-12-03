@interface NSOrderedSet(BaseBoard)
- (BOOL)bs_containsObjectPassingTest:()BaseBoard;
- (id)bs_array;
- (id)bs_compactMap:()BaseBoard;
- (id)bs_dictionaryByPartitioning:()BaseBoard;
- (id)bs_filter:()BaseBoard;
- (id)bs_firstObjectPassingTest:()BaseBoard;
- (id)bs_map:()BaseBoard;
- (id)bs_orderedSet;
- (id)bs_reduce:()BaseBoard block:;
- (id)bs_set;
@end

@implementation NSOrderedSet(BaseBoard)

- (id)bs_set
{
  v1 = [self set];
  v2 = [v1 copy];

  return v2;
}

- (id)bs_array
{
  array = [self array];
  v2 = [array copy];

  return v2;
}

- (id)bs_orderedSet
{
  v1 = [self copy];

  return v1;
}

- (id)bs_filter:()BaseBoard
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = BSCollectionFilter(v5, self, v4);

  return v6;
}

- (id)bs_map:()BaseBoard
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = BSCollectionMap(v5, self, v4);

  return v6;
}

- (id)bs_compactMap:()BaseBoard
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = BSCollectionCompactMap(v5, self, v4);

  return v6;
}

- (id)bs_reduce:()BaseBoard block:
{
  v4 = BSCollectionReduce(self, a3, a4);

  return v4;
}

- (id)bs_firstObjectPassingTest:()BaseBoard
{
  v3 = BSCollectionFind(self, a3);

  return v3;
}

- (BOOL)bs_containsObjectPassingTest:()BaseBoard
{
  v3 = BSCollectionFind(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)bs_dictionaryByPartitioning:()BaseBoard
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = BSCollectionPartition(v5, self, v4);

  return v6;
}

@end