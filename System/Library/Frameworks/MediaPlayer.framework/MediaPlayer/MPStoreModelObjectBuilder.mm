@interface MPStoreModelObjectBuilder
- (MPStoreModelObjectBuilder)initWithRequestedPropertySet:(id)set;
- (id)modelObjectWithStoreItemMetadata:(id)metadata;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object;
- (id)modelObjectWithStorePlatformDictionary:(id)dictionary;
- (id)modelObjectWithStorePlatformDictionary:(id)dictionary userIdentity:(id)identity;
@end

@implementation MPStoreModelObjectBuilder

- (id)modelObjectWithStorePlatformDictionary:(id)dictionary userIdentity:(id)identity
{
  identityCopy = identity;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v8 = [[MPStoreItemMetadata alloc] initWithStorePlatformDictionary:dictionaryCopy];

    if (v8)
    {
      v9 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:v8 userIdentity:identityCopy];
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

- (id)modelObjectWithStorePlatformDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E69E4680];
  dictionaryCopy = dictionary;
  activeAccount = [v4 activeAccount];
  v7 = [(MPStoreModelObjectBuilder *)self modelObjectWithStorePlatformDictionary:dictionaryCopy userIdentity:activeAccount];

  return v7;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object
{
  v6 = MEMORY[0x1E69E4680];
  objectCopy = object;
  metadataCopy = metadata;
  activeAccount = [v6 activeAccount];
  v10 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:metadataCopy sourceModelObject:objectCopy userIdentity:activeAccount];

  return v10;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69E4680];
  metadataCopy = metadata;
  activeAccount = [v4 activeAccount];
  v7 = [(MPStoreModelObjectBuilder *)self modelObjectWithStoreItemMetadata:metadataCopy userIdentity:activeAccount];

  return v7;
}

- (MPStoreModelObjectBuilder)initWithRequestedPropertySet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = MPStoreModelObjectBuilder;
  v5 = [(MPStoreModelObjectBuilder *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
    requestedPropertySet = v5->_requestedPropertySet;
    v5->_requestedPropertySet = v6;
  }

  return v5;
}

@end