@interface IdenticallyOrderedDataSource
- (IdenticallyOrderedDataSource)initWithObjects:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
@end

@implementation IdenticallyOrderedDataSource

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(IdenticallyOrderedDataSource *)self orderedObjects];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(IdenticallyOrderedDataSource *)self orderedObjects];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v9;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v3 = [(IdenticallyOrderedDataSource *)self orderedObjects];
  v4 = [v3 count];

  return v4;
}

- (IdenticallyOrderedDataSource)initWithObjects:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IdenticallyOrderedDataSource;
  v5 = [(IdenticallyOrderedDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    orderedObjects = v5->_orderedObjects;
    v5->_orderedObjects = v6;
  }

  return v5;
}

@end