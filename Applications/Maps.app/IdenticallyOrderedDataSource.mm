@interface IdenticallyOrderedDataSource
- (IdenticallyOrderedDataSource)initWithObjects:(id)objects;
- (id)objectAtIndexPath:(id)path;
- (int64_t)numberOfRowsInSection:(int64_t)section;
@end

@implementation IdenticallyOrderedDataSource

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  orderedObjects = [(IdenticallyOrderedDataSource *)self orderedObjects];
  v7 = [orderedObjects count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    orderedObjects2 = [(IdenticallyOrderedDataSource *)self orderedObjects];
    v9 = [orderedObjects2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v9;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  orderedObjects = [(IdenticallyOrderedDataSource *)self orderedObjects];
  v4 = [orderedObjects count];

  return v4;
}

- (IdenticallyOrderedDataSource)initWithObjects:(id)objects
{
  objectsCopy = objects;
  v9.receiver = self;
  v9.super_class = IdenticallyOrderedDataSource;
  v5 = [(IdenticallyOrderedDataSource *)&v9 init];
  if (v5)
  {
    v6 = [objectsCopy copy];
    orderedObjects = v5->_orderedObjects;
    v5->_orderedObjects = v6;
  }

  return v5;
}

@end