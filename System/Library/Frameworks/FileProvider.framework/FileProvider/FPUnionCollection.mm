@interface FPUnionCollection
- (FPUnionCollection)initWithCollections:(id)collections;
- (NSArray)collections;
- (id)createDataSourceWithSortDescriptors:(id)descriptors;
- (id)description;
- (void)setCollections:(id)collections;
@end

@implementation FPUnionCollection

- (NSArray)collections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_collections;
  objc_sync_exit(selfCopy);

  return v3;
}

- (FPUnionCollection)initWithCollections:(id)collections
{
  collectionsCopy = collections;
  v9.receiver = self;
  v9.super_class = FPUnionCollection;
  v5 = [(FPItemCollection *)&v9 init];
  if (v5)
  {
    v6 = [collectionsCopy copy];
    collections = v5->_collections;
    v5->_collections = v6;
  }

  return v5;
}

- (void)setCollections:(id)collections
{
  collectionsCopy = collections;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [collectionsCopy copy];
  collections = selfCopy->_collections;
  selfCopy->_collections = v5;

  objc_sync_exit(selfCopy);
  if ([(FPItemCollection *)selfCopy observing])
  {
    dataSource = [(FPItemCollection *)selfCopy dataSource];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1002 userInfo:0];
    [(FPItemCollection *)selfCopy dataSource:dataSource wasInvalidatedWithError:v8];
  }
}

- (id)createDataSourceWithSortDescriptors:(id)descriptors
{
  v4 = [_FPUnionDataSource alloc];
  collections = [(FPUnionCollection *)self collections];
  v6 = [(_FPUnionDataSource *)v4 initWithCollections:collections];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  collections = [(FPUnionCollection *)self collections];
  v6 = [collections fp_map:&__block_literal_global_25];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v7];

  return v8;
}

@end