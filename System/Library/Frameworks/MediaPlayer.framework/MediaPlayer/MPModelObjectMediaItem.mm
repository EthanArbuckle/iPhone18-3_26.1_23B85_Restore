@interface MPModelObjectMediaItem
- (BOOL)isEqual:(id)equal;
- (MPModelObjectMediaItem)initWithCoder:(id)coder;
- (MPModelObjectMediaItem)initWithModelObject:(id)object;
- (MPModelObjectMediaItem)initWithPersistentID:(unint64_t)d;
- (id)valueForProperty:(id)property;
- (unint64_t)persistentID;
@end

@implementation MPModelObjectMediaItem

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"artwork"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__15630;
    v23 = __Block_byref_object_dispose__15631;
    v24 = 0;
    if (objc_opt_respondsToSelector())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__MPModelObjectMediaItem_valueForProperty___block_invoke;
      v18[3] = &unk_1E76819F0;
      v18[4] = self;
      v18[5] = &v19;
      [MPModelObject performWithoutEnforcement:v18];
      token = [v20[5] token];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v7 = isKindOfClass ^ 1;
    }

    else
    {
      v7 = 1;
    }

    if (v20[5] || (fallbackArtworkCatalogBlock = self->_fallbackArtworkCatalogBlock) != 0 && (fallbackArtworkCatalogBlock[2](), v14 = objc_claimAutoreleasedReturnValue(), v15 = v20[5], v20[5] = v14, v15, v20[5]))
    {
      v11 = [MPConcreteMediaItemArtwork alloc];
      v12 = [(MPConcreteMediaItemArtwork *)v11 initWithArtworkCatalog:v20[5] allowsNetworking:v7 & 1];
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v8 = [(NSDictionary *)self->_propertyValues valueForKey:propertyCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v17.receiver = self;
      v17.super_class = MPModelObjectMediaItem;
      v10 = [(MPNondurableMediaItem *)&v17 valueForProperty:propertyCopy];
    }

    v12 = v10;
  }

  return v12;
}

void __43__MPModelObjectMediaItem_valueForProperty___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) artworkCatalog];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MPModelObject *)self->_modelObject isEqual:equalCopy[5]];

  return v5;
}

- (MPModelObjectMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mo"];

  if (v5)
  {
    self = [(MPModelObjectMediaItem *)self initWithModelObject:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)persistentID
{
  identifiers = [(MPModelObject *)self->_modelObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  return persistentID;
}

- (MPModelObjectMediaItem)initWithPersistentID:(unint64_t)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelObjectMediaItem.m" lineNumber:286 description:@"MPModelObjectMediaItem initWithPersistentID: is not supported. Use initWithModelObject: instead."];

  v7.receiver = self;
  v7.super_class = MPModelObjectMediaItem;
  return [(MPModelObjectMediaItem *)&v7 init];
}

- (MPModelObjectMediaItem)initWithModelObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MPModelObjectMediaItem;
  v6 = [(MPModelObjectMediaItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelObject, object);
    mediaItemPropertyValues = [objectCopy mediaItemPropertyValues];
    propertyValues = v7->_propertyValues;
    v7->_propertyValues = mediaItemPropertyValues;
  }

  return v7;
}

@end