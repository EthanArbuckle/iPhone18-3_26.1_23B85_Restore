@interface FPUnionCollection
- (FPUnionCollection)initWithCollections:(id)a3;
- (NSArray)collections;
- (id)createDataSourceWithSortDescriptors:(id)a3;
- (id)description;
- (void)setCollections:(id)a3;
@end

@implementation FPUnionCollection

- (NSArray)collections
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_collections;
  objc_sync_exit(v2);

  return v3;
}

- (FPUnionCollection)initWithCollections:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPUnionCollection;
  v5 = [(FPItemCollection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    collections = v5->_collections;
    v5->_collections = v6;
  }

  return v5;
}

- (void)setCollections:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v9 copy];
  collections = v4->_collections;
  v4->_collections = v5;

  objc_sync_exit(v4);
  if ([(FPItemCollection *)v4 observing])
  {
    v7 = [(FPItemCollection *)v4 dataSource];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1002 userInfo:0];
    [(FPItemCollection *)v4 dataSource:v7 wasInvalidatedWithError:v8];
  }
}

- (id)createDataSourceWithSortDescriptors:(id)a3
{
  v4 = [_FPUnionDataSource alloc];
  v5 = [(FPUnionCollection *)self collections];
  v6 = [(_FPUnionDataSource *)v4 initWithCollections:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPUnionCollection *)self collections];
  v6 = [v5 fp_map:&__block_literal_global_25];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v7];

  return v8;
}

@end