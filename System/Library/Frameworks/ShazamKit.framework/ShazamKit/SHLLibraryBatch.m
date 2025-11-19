@interface SHLLibraryBatch
- (SHLLibraryBatch)initWithCoder:(id)a3;
- (SHLLibraryBatch)initWithInsertions:(id)a3 deletions:(id)a4;
- (id)differenceOfBatch:(id)a3;
- (id)subdivideIntoBatchesOfSize:(int64_t)a3;
- (int64_t)numberOfItems;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHLLibraryBatch

- (SHLLibraryBatch)initWithInsertions:(id)a3 deletions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHLLibraryBatch;
  v9 = [(SHLLibraryBatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_insertions, a3);
    objc_storeStrong(&v10->_deletions, a4);
  }

  return v10;
}

- (SHLLibraryBatch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"libraryBatchInsertions"];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"libraryBatchDeletions"];

  v12 = [(SHLLibraryBatch *)self initWithInsertions:v8 deletions:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  insertions = self->_insertions;
  v5 = a3;
  [v5 encodeObject:insertions forKey:@"libraryBatchInsertions"];
  [v5 encodeObject:self->_deletions forKey:@"libraryBatchDeletions"];
}

- (id)differenceOfBatch:(id)a3
{
  v4 = a3;
  v5 = [(SHLLibraryBatch *)self insertions];
  v6 = [v5 mutableCopy];

  v7 = [(SHLLibraryBatch *)self deletions];
  v8 = [v7 mutableCopy];

  v9 = [v4 insertions];
  [v6 minusSet:v9];

  v10 = [v4 deletions];

  [v8 minusSet:v10];
  v11 = [SHLLibraryBatch alloc];
  v12 = [v6 copy];
  v13 = [v8 copy];
  v14 = [(SHLLibraryBatch *)v11 initWithInsertions:v12 deletions:v13];

  return v14;
}

- (id)subdivideIntoBatchesOfSize:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = [(SHLLibraryBatch *)self insertions];
  v7 = [v6 allObjects];
  v8 = [v7 mutableCopy];

  v9 = [(SHLLibraryBatch *)self deletions];
  v10 = [v9 allObjects];
  v11 = [v10 mutableCopy];
  while (1)
  {

    if (![v8 count] && !objc_msgSend(v11, "count"))
    {
      break;
    }

    v9 = [NSMutableArray arrayWithCapacity:a3];
    v10 = [NSMutableArray arrayWithCapacity:a3];
    do
    {
      v12 = [v9 count];
      v13 = [v10 count];
      if ([v8 count] && &v12[v13] < a3)
      {
        v14 = [v8 firstObject];
        [v8 removeObjectAtIndex:0];
        [v9 addObject:v14];
      }

      v15 = [v9 count];
      v16 = [v10 count];
      if ([v11 count] && &v15[v16] < a3)
      {
        v17 = [v11 firstObject];
        [v11 removeObjectAtIndex:0];
        [v10 addObject:v17];
      }

      v18 = [v9 count];
      v19 = [v10 count];
      if ([v8 count])
      {
        v20 = 0;
      }

      else
      {
        v20 = [v11 count] == 0;
      }
    }

    while (&v18[v19] < a3 && !v20);
    v21 = [v9 copy];
    v22 = [NSSet setWithArray:v21];

    v23 = [v10 copy];
    v24 = [NSSet setWithArray:v23];

    v25 = [[SHLLibraryBatch alloc] initWithInsertions:v22 deletions:v24];
    [v5 addObject:v25];
  }

  v26 = [v5 copy];

  return v26;
}

- (int64_t)numberOfItems
{
  v3 = [(SHLLibraryBatch *)self insertions];
  v4 = [v3 count];
  v5 = [(SHLLibraryBatch *)self deletions];
  v6 = [v5 count];

  return v4 + v6;
}

@end