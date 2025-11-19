@interface MPStoreModelObjectBuilder
- (MPStoreModelObjectBuilder)initWithRequestedPropertySet:(id)a3;
- (id)modelObjectWithStoreItemMetadata:(id)a3;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4;
- (id)modelObjectWithStorePlatformDictionary:(id)a3;
- (id)modelObjectWithStorePlatformDictionary:(id)a3 userIdentity:(id)a4;
@end

@implementation MPStoreModelObjectBuilder

- (id)modelObjectWithStorePlatformDictionary:(id)a3 userIdentity:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = [[MPStoreItemMetadata alloc] initWithStorePlatformDictionary:v7];

    if (v8)
    {
      v9 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:v8 userIdentity:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)modelObjectWithStorePlatformDictionary:(id)a3
{
  v4 = MEMORY[0x1E69E4680];
  v5 = a3;
  v6 = [v4 activeAccount];
  v7 = [(MPStoreModelObjectBuilder *)self modelObjectWithStorePlatformDictionary:v5 userIdentity:v6];

  return v7;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4
{
  v6 = MEMORY[0x1E69E4680];
  v7 = a4;
  v8 = a3;
  v9 = [v6 activeAccount];
  v10 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:v8 sourceModelObject:v7 userIdentity:v9];

  return v10;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3
{
  v4 = MEMORY[0x1E69E4680];
  v5 = a3;
  v6 = [v4 activeAccount];
  v7 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:v5 userIdentity:v6];

  return v7;
}

- (MPStoreModelObjectBuilder)initWithRequestedPropertySet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreModelObjectBuilder;
  v5 = [(MPStoreModelObjectBuilder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestedPropertySet = v5->_requestedPropertySet;
    v5->_requestedPropertySet = v6;
  }

  return v5;
}

@end