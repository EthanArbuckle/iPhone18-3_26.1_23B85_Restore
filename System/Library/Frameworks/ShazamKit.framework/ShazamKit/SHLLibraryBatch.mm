@interface SHLLibraryBatch
- (SHLLibraryBatch)initWithCoder:(id)coder;
- (SHLLibraryBatch)initWithInsertions:(id)insertions deletions:(id)deletions;
- (id)differenceOfBatch:(id)batch;
- (id)subdivideIntoBatchesOfSize:(int64_t)size;
- (int64_t)numberOfItems;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHLLibraryBatch

- (SHLLibraryBatch)initWithInsertions:(id)insertions deletions:(id)deletions
{
  insertionsCopy = insertions;
  deletionsCopy = deletions;
  v12.receiver = self;
  v12.super_class = SHLLibraryBatch;
  v9 = [(SHLLibraryBatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_insertions, insertions);
    objc_storeStrong(&v10->_deletions, deletions);
  }

  return v10;
}

- (SHLLibraryBatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"libraryBatchInsertions"];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"libraryBatchDeletions"];

  v12 = [(SHLLibraryBatch *)self initWithInsertions:v8 deletions:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  insertions = self->_insertions;
  coderCopy = coder;
  [coderCopy encodeObject:insertions forKey:@"libraryBatchInsertions"];
  [coderCopy encodeObject:self->_deletions forKey:@"libraryBatchDeletions"];
}

- (id)differenceOfBatch:(id)batch
{
  batchCopy = batch;
  insertions = [(SHLLibraryBatch *)self insertions];
  v6 = [insertions mutableCopy];

  deletions = [(SHLLibraryBatch *)self deletions];
  v8 = [deletions mutableCopy];

  insertions2 = [batchCopy insertions];
  [v6 minusSet:insertions2];

  deletions2 = [batchCopy deletions];

  [v8 minusSet:deletions2];
  v11 = [SHLLibraryBatch alloc];
  v12 = [v6 copy];
  v13 = [v8 copy];
  v14 = [(SHLLibraryBatch *)v11 initWithInsertions:v12 deletions:v13];

  return v14;
}

- (id)subdivideIntoBatchesOfSize:(int64_t)size
{
  v5 = +[NSMutableArray array];
  insertions = [(SHLLibraryBatch *)self insertions];
  allObjects = [insertions allObjects];
  v8 = [allObjects mutableCopy];

  deletions = [(SHLLibraryBatch *)self deletions];
  allObjects2 = [deletions allObjects];
  v11 = [allObjects2 mutableCopy];
  while (1)
  {

    if (![v8 count] && !objc_msgSend(v11, "count"))
    {
      break;
    }

    deletions = [NSMutableArray arrayWithCapacity:size];
    allObjects2 = [NSMutableArray arrayWithCapacity:size];
    do
    {
      v12 = [deletions count];
      v13 = [allObjects2 count];
      if ([v8 count] && &v12[v13] < size)
      {
        firstObject = [v8 firstObject];
        [v8 removeObjectAtIndex:0];
        [deletions addObject:firstObject];
      }

      v15 = [deletions count];
      v16 = [allObjects2 count];
      if ([v11 count] && &v15[v16] < size)
      {
        firstObject2 = [v11 firstObject];
        [v11 removeObjectAtIndex:0];
        [allObjects2 addObject:firstObject2];
      }

      v18 = [deletions count];
      v19 = [allObjects2 count];
      if ([v8 count])
      {
        v20 = 0;
      }

      else
      {
        v20 = [v11 count] == 0;
      }
    }

    while (&v18[v19] < size && !v20);
    v21 = [deletions copy];
    v22 = [NSSet setWithArray:v21];

    v23 = [allObjects2 copy];
    v24 = [NSSet setWithArray:v23];

    v25 = [[SHLLibraryBatch alloc] initWithInsertions:v22 deletions:v24];
    [v5 addObject:v25];
  }

  v26 = [v5 copy];

  return v26;
}

- (int64_t)numberOfItems
{
  insertions = [(SHLLibraryBatch *)self insertions];
  v4 = [insertions count];
  deletions = [(SHLLibraryBatch *)self deletions];
  v6 = [deletions count];

  return v4 + v6;
}

@end