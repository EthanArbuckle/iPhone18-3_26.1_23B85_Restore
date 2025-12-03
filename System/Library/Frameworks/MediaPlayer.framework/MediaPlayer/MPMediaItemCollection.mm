@interface MPMediaItemCollection
+ (MPMediaItemCollection)collectionWithItems:(NSArray *)items;
+ (id)artworkCatalogCachePropertiesForGroupingType:(int64_t)type;
+ (id)representativePersistentIDPropertyForGroupingType:(int64_t)type;
+ (id)sortTitlePropertyForGroupingType:(int64_t)type;
+ (id)titlePropertyForGroupingType:(int64_t)type;
- (BOOL)MPSD_hasDownloadingItem;
- (BOOL)isEqual:(id)equal;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (MPMediaItemCollection)init;
- (MPMediaItemCollection)initWithCoder:(id)coder;
- (MPMediaItemCollection)initWithItems:(NSArray *)items;
- (MPMediaItemCollection)initWithItemsQuery:(id)query;
- (MPMediaItemCollection)initWithMultiverseIdentifier:(id)identifier library:(id)library;
- (MPMediaType)mediaTypes;
- (id)_artworkCatalogRepresentativeItem;
- (id)albumArtistArtworkCatalog;
- (id)artistArtworkCatalog;
- (id)artworkCatalog;
- (id)multiverseIdentifier;
- (unint64_t)hash;
- (void)_enumerateItemPersistentIDsUsingBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block;
- (void)setValuesForProperties:(id)properties trackList:(id)list withCompletionBlock:(id)block;
@end

@implementation MPMediaItemCollection

- (BOOL)MPSD_hasDownloadingItem
{
  v17 = *MEMORY[0x1E69E9840];
  itemsQuery = [(MPMediaItemCollection *)self itemsQuery];
  v4 = itemsQuery;
  if (itemsQuery)
  {
    mPSD_hasDownloadingEntities = [itemsQuery MPSD_hasDownloadingEntities];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    items = [(MPMediaItemCollection *)self items];
    v7 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(items);
          }

          if ([*(*(&v12 + 1) + 8 * i) MPSD_isDownloadInProgress])
          {

            mPSD_hasDownloadingEntities = 1;
            goto LABEL_13;
          }
        }

        v8 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    mPSD_hasDownloadingEntities = 0;
  }

LABEL_13:

  return mPSD_hasDownloadingEntities;
}

- (id)_artworkCatalogRepresentativeItem
{
  v3 = [MPMediaItemCollection representativePersistentIDPropertyForGroupingType:[(MPMediaItemCollection *)self groupingType]];
  if (v3)
  {
    v4 = [(MPMediaEntity *)self valueForProperty:v3];
  }

  else
  {
    v4 = 0;
  }

  longLongValue = [v4 longLongValue];
  if (!longLongValue || (v6 = longLongValue, -[MPMediaEntity mediaLibrary](self, "mediaLibrary"), v7 = objc_claimAutoreleasedReturnValue(), [v7 itemWithPersistentID:v6 verifyExistence:0], representativeItem = objc_claimAutoreleasedReturnValue(), v7, !representativeItem))
  {
    representativeItem = [(MPMediaItemCollection *)self representativeItem];
  }

  return representativeItem;
}

- (id)artistArtworkCatalog
{
  if ([(MPMediaItemCollection *)self groupingType]== 2)
  {
    _artworkCatalogRepresentativeItem = [(MPMediaItemCollection *)self _artworkCatalogRepresentativeItem];
    v4 = [MPMediaLibraryArtworkRequest alloc];
    mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
    v6 = -[MPMediaLibraryArtworkRequest initWithLibrary:identifier:entityType:artworkType:](v4, "initWithLibrary:identifier:entityType:artworkType:", mediaLibrary, [_artworkCatalogRepresentativeItem artistPersistentID], 2, 4);

    v7 = [MPArtworkCatalog alloc];
    mediaLibrary2 = [(MPMediaEntity *)self mediaLibrary];
    artworkDataSource = [mediaLibrary2 artworkDataSource];
    v10 = [(MPArtworkCatalog *)v7 initWithToken:v6 dataSource:artworkDataSource];

    mediaLibrary3 = [(MPMediaEntity *)self mediaLibrary];
    artworkDataSource2 = [mediaLibrary3 artworkDataSource];
    LODWORD(artworkDataSource) = [artworkDataSource2 areRepresentationsAvailableForCatalog:v10];

    if (artworkDataSource)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)albumArtistArtworkCatalog
{
  if ([(MPMediaItemCollection *)self groupingType]== 3)
  {
    _artworkCatalogRepresentativeItem = [(MPMediaItemCollection *)self _artworkCatalogRepresentativeItem];
    v4 = [MPMediaLibraryArtworkRequest alloc];
    mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
    v6 = -[MPMediaLibraryArtworkRequest initWithLibrary:identifier:entityType:artworkType:](v4, "initWithLibrary:identifier:entityType:artworkType:", mediaLibrary, [_artworkCatalogRepresentativeItem albumArtistPersistentID], 7, 4);

    v7 = [MPArtworkCatalog alloc];
    mediaLibrary2 = [(MPMediaEntity *)self mediaLibrary];
    artworkDataSource = [mediaLibrary2 artworkDataSource];
    v10 = [(MPArtworkCatalog *)v7 initWithToken:v6 dataSource:artworkDataSource];

    mediaLibrary3 = [(MPMediaEntity *)self mediaLibrary];
    artworkDataSource2 = [mediaLibrary3 artworkDataSource];
    LODWORD(artworkDataSource) = [artworkDataSource2 areRepresentationsAvailableForCatalog:v10];

    if (artworkDataSource)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)artworkCatalog
{
  groupingType = [(MPMediaItemCollection *)self groupingType];
  if (groupingType == 2)
  {
    artistArtworkCatalog = [(MPMediaItemCollection *)self artistArtworkCatalog];
LABEL_5:
    artworkCatalog = artistArtworkCatalog;
    if (artistArtworkCatalog)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (groupingType == 3)
  {
    artistArtworkCatalog = [(MPMediaItemCollection *)self albumArtistArtworkCatalog];
    goto LABEL_5;
  }

LABEL_6:
  _artworkCatalogRepresentativeItem = [(MPMediaItemCollection *)self _artworkCatalogRepresentativeItem];
  artworkCatalogCacheProperties = [objc_opt_class() artworkCatalogCacheProperties];
  v8 = [_artworkCatalogRepresentativeItem valuesForProperties:artworkCatalogCacheProperties];

  artworkCatalog = [_artworkCatalogRepresentativeItem artworkCatalog];

LABEL_7:

  return artworkCatalog;
}

+ (id)artworkCatalogCachePropertiesForGroupingType:(int64_t)type
{
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [MPMediaItemCollection representativePersistentIDPropertyForGroupingType:type];
  if (v5)
  {
    [v4 addObject:v5];
  }

  return v4;
}

- (void)_enumerateItemPersistentIDsUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      persistentID = [*(*(&v11 + 1) + 8 * v9) persistentID];
      if (persistentID)
      {
        blockCopy[2](blockCopy, persistentID, &v15);
      }

      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)setValuesForProperties:(id)properties trackList:(id)list withCompletionBlock:(id)block
{
  blockCopy = block;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:408 description:@"subclass must implement"];

  v8 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
    v8 = blockCopy;
  }
}

- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block
{
  blockCopy = block;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:403 description:@"subclass must implement"];

  v8 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
    v8 = blockCopy;
  }
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:398 description:@"subclass must implement"];

  return 0;
}

- (id)multiverseIdentifier
{
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  v4 = [mediaLibrary multiverseIdentifierForCollectionWithPersistentID:-[MPMediaEntity persistentID](self groupingType:{"persistentID"), -[MPMediaItemCollection groupingType](self, "groupingType")}];

  return v4;
}

- (MPMediaType)mediaTypes
{
  v18 = *MEMORY[0x1E69E9840];
  items = [(MPMediaItemCollection *)self items];
  v4 = items;
  if (!self->_initializedContainedMediaTypes && [items count])
  {
    self->_containedMediaTypes = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) valueForProperty:{@"mediaType", v13}];
          self->_containedMediaTypes |= [v10 unsignedIntegerValue];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    self->_initializedContainedMediaTypes = 1;
  }

  containedMediaTypes = self->_containedMediaTypes;

  return containedMediaTypes;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:195 description:@"only keyed coding is supported"];
  }

  [coderCopy encodeInteger:self->_itemsCount forKey:@"MPItemsCount"];
  [coderCopy encodeObject:self->_representativeItem forKey:@"MPRepresentativeItem"];
  [coderCopy encodeInteger:self->_containedMediaTypes forKey:@"MPContainedMediaTypes"];
  [coderCopy encodeBool:self->_initializedContainedMediaTypes forKey:@"MPInitializedContainedMediaTypes"];
  [coderCopy encodeObject:self->_items forKey:@"MPItems"];
  [coderCopy encodeObject:self->_itemsQuery forKey:@"MPMediaItemsQuery"];
}

- (MPMediaItemCollection)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:164 description:@"only keyed coding is supported"];
  }

  v6 = MSVPropertyListDataClasses();
  v7 = [v6 setByAddingObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"MPItems"];

  v9 = [(MPMediaItemCollection *)self initWithItems:v8];
  if (v9)
  {
    v9->_itemsCount = [coderCopy decodeIntegerForKey:@"MPItemsCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPRepresentativeItem"];
    representativeItem = v9->_representativeItem;
    v9->_representativeItem = v10;

    v9->_containedMediaTypes = [coderCopy decodeIntegerForKey:@"MPContainedMediaTypes"];
    v9->_initializedContainedMediaTypes = [coderCopy decodeBoolForKey:@"MPInitializedContainedMediaTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v9->_items;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_15;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_15:
      items = v9->_items;
      v9->_items = 0;
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPMediaItemsQuery"];
    itemsQuery = v9->_itemsQuery;
    v9->_itemsQuery = v18;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (-[NSArray count](self->_items, "count") || [v5[5] count])
      {
        v6 = [(NSArray *)self->_items isEqual:v5[5]];
      }

      else
      {
        v9.receiver = self;
        v9.super_class = MPMediaItemCollection;
        v6 = [(MPMediaEntity *)&v9 isEqual:v5];
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPMediaItemCollection;
  v3 = [(MPMediaEntity *)&v5 hash];
  return [(NSArray *)self->_items hash]^ v3;
}

- (MPMediaItemCollection)init
{
  [MEMORY[0x1E695DF30] raise:@"MPMediaItemCollectionInitException" format:{@"-init is not supported, use -initWithItems:"}];

  return [(MPMediaItemCollection *)self initWithItemsQuery:0];
}

- (MPMediaItemCollection)initWithMultiverseIdentifier:(id)identifier library:(id)library
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItemCollection.m" lineNumber:138 description:@"subclass must implement"];

  return [(MPMediaItemCollection *)self initWithItemsQuery:0];
}

- (MPMediaItemCollection)initWithItemsQuery:(id)query
{
  queryCopy = query;
  items = [queryCopy items];
  v6 = [(MPMediaItemCollection *)self initWithItems:items];
  if (v6)
  {
    v7 = [queryCopy copy];
    itemsQuery = v6->_itemsQuery;
    v6->_itemsQuery = v7;
  }

  return v6;
}

- (MPMediaItemCollection)initWithItems:(NSArray *)items
{
  v4 = items;
  v11.receiver = self;
  v11.super_class = MPMediaItemCollection;
  v5 = [(MPMediaItemCollection *)&v11 init];
  if (v5)
  {
    v5->_itemsCount = [(NSArray *)v4 count];
    v6 = [(NSArray *)v4 copy];
    v7 = v5->_items;
    v5->_items = v6;

    firstObject = [(NSArray *)v5->_items firstObject];
    representativeItem = v5->_representativeItem;
    v5->_representativeItem = firstObject;
  }

  return v5;
}

+ (id)representativePersistentIDPropertyForGroupingType:(int64_t)type
{
  if (representativePersistentIDPropertyForGroupingType__once != -1)
  {
    dispatch_once(&representativePersistentIDPropertyForGroupingType__once, &__block_literal_global_216);
  }

  v4 = representativePersistentIDPropertyForGroupingType__groupingTypeToRepresentativePersistentIDProperty;

  return CFDictionaryGetValue(v4, type);
}

CFDictionaryRef __75__MPMediaItemCollection_representativePersistentIDPropertyForGroupingType___block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = xmmword_1A273EE28;
  v11 = unk_1A273EE38;
  v12 = xmmword_1A273EE48;
  v6 = xmmword_1A273EDE8;
  v7 = unk_1A273EDF8;
  v8 = xmmword_1A273EE08;
  v9 = unk_1A273EE18;
  *keys = xmmword_1A273EDA8;
  v3 = unk_1A273EDB8;
  v4 = xmmword_1A273EDC8;
  v5 = unk_1A273EDD8;
  v1[0] = @"persistentID";
  v1[1] = @"persistentID";
  v1[2] = @"albumRepresentativeItemPersistentID";
  v1[3] = @"albumRepresentativeItemPersistentID";
  v1[4] = @"albumRepresentativeItemPersistentID";
  v1[5] = @"albumRepresentativeItemPersistentID";
  v1[6] = @"artistRepresentativeItemPersistentID";
  v1[7] = @"albumArtistRepresentativeItemPersistentID";
  v1[8] = @"albumArtistRepresentativeItemPersistentID";
  v1[9] = @"albumArtistRepresentativeItemPersistentID";
  v1[10] = @"composerRepresentativeItemPersistentID";
  v1[11] = @"composerRepresentativeItemPersistentID";
  v1[12] = @"composerRepresentativeItemPersistentID";
  v1[13] = @"genreRepresentativeItemPersistentID";
  v1[14] = @"genreRepresentativeItemPersistentID";
  v1[15] = @"genreRepresentativeItemPersistentID";
  v1[16] = @"albumRepresentativeItemPersistentID";
  v1[17] = @"artistRepresentativeItemPersistentID";
  v1[18] = @"albumRepresentativeItemPersistentID";
  v1[19] = @"albumRepresentativeItemPersistentID";
  v1[20] = @"albumRepresentativeItemPersistentID";
  v1[21] = @"albumRepresentativeItemPersistentID";
  result = CFDictionaryCreate(0, keys, v1, 22, 0, 0);
  representativePersistentIDPropertyForGroupingType__groupingTypeToRepresentativePersistentIDProperty = result;
  return result;
}

+ (id)sortTitlePropertyForGroupingType:(int64_t)type
{
  if (sortTitlePropertyForGroupingType__once != -1)
  {
    dispatch_once(&sortTitlePropertyForGroupingType__once, &__block_literal_global_213);
  }

  v4 = sortTitlePropertyForGroupingType__groupingTypeToSortTitleProperty;

  return CFDictionaryGetValue(v4, type);
}

CFDictionaryRef __58__MPMediaItemCollection_sortTitlePropertyForGroupingType___block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1A273ED68;
  v5 = unk_1A273ED78;
  v6 = xmmword_1A273ED88;
  v7 = unk_1A273ED98;
  *keys = xmmword_1A273ED48;
  v3 = unk_1A273ED58;
  v1[2] = xmmword_1E7679180;
  v1[3] = *&off_1E7679190;
  v1[4] = xmmword_1E76791A0;
  v1[5] = *off_1E76791B0;
  v1[0] = xmmword_1E7679160;
  v1[1] = *&off_1E7679170;
  result = CFDictionaryCreate(0, keys, v1, 12, 0, 0);
  sortTitlePropertyForGroupingType__groupingTypeToSortTitleProperty = result;
  return result;
}

+ (id)titlePropertyForGroupingType:(int64_t)type
{
  if (titlePropertyForGroupingType__once != -1)
  {
    dispatch_once(&titlePropertyForGroupingType__once, &__block_literal_global_18114);
  }

  v4 = titlePropertyForGroupingType__groupingTypeToTitleProperty;

  return CFDictionaryGetValue(v4, type);
}

CFDictionaryRef __54__MPMediaItemCollection_titlePropertyForGroupingType___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  keys[4] = xmmword_1A273ED00;
  keys[5] = unk_1A273ED10;
  keys[6] = xmmword_1A273ED20;
  keys[7] = unk_1A273ED30;
  keys[0] = xmmword_1A273ECC0;
  keys[1] = unk_1A273ECD0;
  keys[2] = xmmword_1A273ECE0;
  keys[3] = unk_1A273ECF0;
  v3 = 10;
  values[0] = @"albumName";
  values[1] = @"albumArtistName";
  values[2] = @"albumArtistName";
  values[3] = @"albumArtistName";
  values[4] = @"albumName";
  values[5] = @"albumName";
  values[6] = @"albumName";
  values[7] = @"artistName";
  values[8] = @"composerName";
  values[9] = @"composerName";
  values[10] = @"composerName";
  values[11] = @"genreName";
  values[12] = @"genreName";
  values[13] = @"genreName";
  values[14] = @"name";
  values[15] = @"albumName";
  values[16] = @"albumName";
  result = CFDictionaryCreate(0, keys, values, 17, 0, 0);
  titlePropertyForGroupingType__groupingTypeToTitleProperty = result;
  return result;
}

+ (MPMediaItemCollection)collectionWithItems:(NSArray *)items
{
  v3 = items;
  v4 = [[MPMediaItemCollection alloc] initWithItems:v3];

  return v4;
}

@end