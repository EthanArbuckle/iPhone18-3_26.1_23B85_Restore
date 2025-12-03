@interface MPConcreteMediaItemCollection
+ (id)createUncachedMediaItemCollectionWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (MPConcreteMediaItemCollection)initWithCoder:(id)coder;
- (MPConcreteMediaItemCollection)initWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier;
- (MPConcreteMediaItemCollection)initWithMultiverseIdentifier:(id)identifier library:(id)library;
- (id)_initWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier propertiesCache:(id)cache;
- (id)_tokenBinaryIdentifierAsString;
- (id)representativeItem;
- (id)valueForProperty:(id)property;
- (id)valuesForProperties:(id)properties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block;
- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block;
@end

@implementation MPConcreteMediaItemCollection

- (id)representativeItem
{
  v33 = *MEMORY[0x1E69E9840];
  representativeItem = self->_representativeItem;
  v4 = 0x1E695D000;
  if (!representativeItem)
  {
    v5 = [MPMediaItemCollection representativePersistentIDPropertyForGroupingType:self->_grouping];
    if (v5)
    {
      v6 = [(MPConcreteMediaItemCollection *)self valueForProperty:v5];
      v7 = v6;
      if (v6 && [v6 longLongValue])
      {
        mediaLibrary = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
        v9 = +[MPConcreteMediaItem concreteMediaItemWithPersistentID:library:](MPConcreteMediaItem, "concreteMediaItemWithPersistentID:library:", [v7 unsignedLongLongValue], mediaLibrary);
        if ([v9 existsInLibrary])
        {
          objc_storeStrong(&self->_representativeItem, v9);
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (!self->_representativeItem)
    {
      [(MPConcreteMediaItemCollection *)self items];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v31 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
LABEL_12:
        v14 = 0;
        while (1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          artwork = [v15 artwork];

          if (artwork)
          {
            objc_storeStrong(&self->_representativeItem, v15);
          }

          if ([v15 mediaType] != 2048)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v12)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }

      if (!self->_representativeItem)
      {
        v17 = [v10 count];
        if (v17)
        {
          v17 = [v10 objectAtIndex:0];
        }

        v18 = self->_representativeItem;
        self->_representativeItem = v17;
      }

      v4 = 0x1E695D000uLL;
      if (self->_grouping != 9)
      {
        if (self->_representativeItem)
        {
          mediaLibrary2 = [(MPConcreteMediaItemCollection *)self mediaLibrary];
          writable = [mediaLibrary2 writable];

          if (writable)
          {
            v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MPMediaEntity persistentID](self->_representativeItem, "persistentID")}];
            [(MPConcreteMediaItemCollection *)self setValue:v21 forProperty:v5 withCompletionBlock:0];
          }
        }
      }

      if (!self->_representativeItem)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v23 = self->_representativeItem;
        self->_representativeItem = null;
      }
    }

    representativeItem = self->_representativeItem;
  }

  null2 = [*(v4 + 4016) null];
  if ([(MPMediaItem *)representativeItem isEqual:null2])
  {
    v25 = 0;
  }

  else
  {
    v25 = self->_representativeItem;
  }

  v26 = v25;

  return v25;
}

- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block
{
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  mediaLibrary = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__MPConcreteMediaItemCollection_setValue_forProperty_withCompletionBlock___block_invoke;
    aBlock[3] = &unk_1E7679888;
    objc_copyWeak(&v18, &location);
    v17 = blockCopy;
    v14 = _Block_copy(aBlock);
    propertiesCache = self->_propertiesCache;
    if (propertiesCache)
    {
      [(MPConcreteMediaEntityPropertiesCache *)propertiesCache cacheValue:valueCopy forProperty:propertyCopy persistValueInBackgroundBlock:v14];
    }

    else
    {
      v14[2](v14, valueCopy, propertyCopy);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

void __74__MPConcreteMediaItemCollection_setValue_forProperty_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained persistentID];
    v9 = [v7 mediaLibrary];
    v10 = [v9 libraryDataProvider];

    [v10 setValue:v11 forProperty:v5 ofCollectionWithIdentifier:v8 groupingType:v7[11] completionBlock:*(a1 + 32)];
  }
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MPConcreteMediaItemCollection_setValue_forProperty___block_invoke;
  v11[3] = &unk_1E76798B0;
  v9 = v8;
  v12 = v9;
  v13 = &v14;
  [(MPConcreteMediaItemCollection *)self setValue:valueCopy forProperty:propertyCopy withCompletionBlock:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

intptr_t __54__MPConcreteMediaItemCollection_setValue_forProperty___block_invoke(uint64_t a1, char a2)
{
  result = dispatch_semaphore_signal(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = a2;
  return result;
}

- (id)valuesForProperties:(id)properties
{
  propertiesCopy = properties;
  mediaLibrary = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];

  v7 = [propertiesCopy mutableCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __53__MPConcreteMediaItemCollection_valuesForProperties___block_invoke;
  v24[3] = &unk_1E7679860;
  v24[4] = self;
  v9 = v7;
  v25 = v9;
  v10 = dictionary;
  v26 = v10;
  [propertiesCopy enumerateObjectsUsingBlock:v24];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__18853;
  v22 = __Block_byref_object_dispose__18854;
  v23 = 0;
  if (libraryDataProvider && [v9 count])
  {
    identifier = self->_identifier;
    grouping = self->_grouping;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__MPConcreteMediaItemCollection_valuesForProperties___block_invoke_2;
    v15[3] = &unk_1E76796F8;
    v15[4] = self;
    v16 = v9;
    v17 = &v18;
    [libraryDataProvider loadProperties:v16 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v15];
  }

  if (v19[5])
  {
    [v10 addEntriesFromDictionary:?];
  }

  v13 = v10;
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __53__MPConcreteMediaItemCollection_valuesForProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v4 = [*(*(a1 + 32) + 104) valueForProperty:v3 isCached:&v5];
  if (v5 == 1)
  {
    [*(a1 + 40) removeObject:v3];
    if (v4)
    {
      [*(a1 + 48) setObject:v4 forKey:v3];
    }
  }
}

void __53__MPConcreteMediaItemCollection_valuesForProperties___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  [*(a1[4] + 104) cachePropertyValues:v3 forProperties:a1[5] persistValueInBackgroundBlock:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  mediaLibrary = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];

  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18853;
  v20 = __Block_byref_object_dispose__18854;
  v21 = [(MPConcreteMediaEntityPropertiesCache *)self->_propertiesCache valueForProperty:propertyCopy isCached:&v22];
  if ((v22 & 1) == 0 && libraryDataProvider)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:propertyCopy];
    identifier = self->_identifier;
    grouping = self->_grouping;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MPConcreteMediaItemCollection_valueForProperty___block_invoke;
    v12[3] = &unk_1E76796F8;
    v15 = &v16;
    v13 = propertyCopy;
    selfCopy = self;
    [libraryDataProvider loadProperties:v7 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v12];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __50__MPConcreteMediaItemCollection_valueForProperty___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKey:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[4];
  v7 = *(a1[5] + 104);
  v8 = *(*(a1[6] + 8) + 40);

  return [v7 cacheValue:v8 forProperty:v6 persistValueInBackgroundBlock:0];
}

- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  mediaLibrary = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];

  v10 = [propertiesCopy mutableCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__MPConcreteMediaItemCollection_enumerateValuesForProperties_usingBlock___block_invoke;
  v18[3] = &unk_1E7679748;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  v12 = blockCopy;
  v20 = v12;
  v21 = &v22;
  [propertiesCopy enumerateObjectsUsingBlock:v18];
  if ((v23[3] & 1) == 0)
  {
    identifier = self->_identifier;
    grouping = self->_grouping;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__MPConcreteMediaItemCollection_enumerateValuesForProperties_usingBlock___block_invoke_2;
    v15[3] = &unk_1E7679838;
    v15[4] = self;
    v16 = v11;
    v17 = v12;
    [libraryDataProvider loadProperties:v16 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v15];
  }

  _Block_object_dispose(&v22, 8);
}

void __73__MPConcreteMediaItemCollection_enumerateValuesForProperties_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v7 = 0;
  v6 = [*(*(a1 + 32) + 104) valueForProperty:v5 isCached:&v7];
  if (v7 == 1)
  {
    [*(a1 + 40) removeObject:v5];
    (*(*(a1 + 48) + 16))();
    *a3 = *(*(*(a1 + 56) + 8) + 24);
  }
}

void __73__MPConcreteMediaItemCollection_enumerateValuesForProperties_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 104) cachePropertyValues:v3 forProperties:*(a1 + 40) persistValueInBackgroundBlock:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKey:*(*(&v10 + 1) + 8 * v8)];
        (*(*(a1 + 48) + 16))();

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_tokenBinaryIdentifierAsString
{
  if (([(MPConcreteMediaItemCollection *)self groupingType]- 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
    v4 = v3;
  }

  persistentID = [(MPConcreteMediaItemCollection *)self persistentID];
  mediaLibrary = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  ml3Library = [mediaLibrary ml3Library];
  libraryUID = [ml3Library libraryUID];
  v9 = [v3 URLForEntityWithPersistentID:persistentID libraryUID:libraryUID];
  absoluteString = [v9 absoluteString];

  return absoluteString;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    mediaLibrary = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
    [coderCopy encodeObject:mediaLibrary forKey:@"MPLibrary"];

    [coderCopy encodeObject:self->_itemsQuery forKey:@"MPQuery"];
    [coderCopy encodeInt64:self->_identifier forKey:@"id"];
    [coderCopy encodeInteger:self->_grouping forKey:@"group"];
  }
}

- (MPConcreteMediaItemCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPLibrary"];
    if (v5)
    {
      v11.receiver = self;
      v11.super_class = MPConcreteMediaItemCollection;
      v6 = [(MPMediaItemCollection *)&v11 initWithItems:0];
      if (v6)
      {
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPQuery"];
        itemsQuery = v6->_itemsQuery;
        v6->_itemsQuery = v7;

        v6->_identifier = [coderCopy decodeInt64ForKey:@"id"];
        v6->_grouping = [coderCopy decodeIntegerForKey:@"group"];
      }

      self = v6;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  mediaLibrary = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];
  entityCache = [libraryDataProvider entityCache];
  [entityCache removeEntityWithIdentifier:self->_identifier dataProviderEntityClass:{-[MPConcreteMediaEntityPropertiesCache dataProviderEntityClass](self->_propertiesCache, "dataProviderEntityClass")}];

  v6.receiver = self;
  v6.super_class = MPConcreteMediaItemCollection;
  [(MPConcreteMediaItemCollection *)&v6 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[9] == self->_identifier && equalCopy[11] == self->_grouping;

  return v5;
}

- (MPConcreteMediaItemCollection)initWithMultiverseIdentifier:(id)identifier library:(id)library
{
  v61 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  mediaObjectType = [identifierCopy mediaObjectType];
  v49 = mediaObjectType - 1;
  if ((mediaObjectType - 1) > 7)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = qword_1A273EE58[(mediaObjectType - 1)];
  }

  libraryIdentifiers = [identifierCopy libraryIdentifiers];
  selfCopy = self;
  v52 = identifierCopy;
  v50 = libraryCopy;
  v47 = mediaObjectType;
  v48 = a2;
  if (libraryCopy)
  {
    v12 = libraryCopy;
  }

  else
  {
    v12 = +[MPMediaLibrary defaultMediaLibrary];
  }

  v53 = v12;
  uniqueIdentifier = [v12 uniqueIdentifier];
  v59 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = libraryIdentifiers;
  v15 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v17 = *v56;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v56 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v55 + 1) + 8 * i);
      libraryName = [v19 libraryName];
      if (![libraryName length])
      {

        continue;
      }

      libraryName2 = [v19 libraryName];
      v22 = libraryName2;
      if (libraryName2 == uniqueIdentifier)
      {
      }

      else
      {
        v23 = [libraryName2 isEqual:uniqueIdentifier];

        if ((v23 & 1) == 0)
        {
          continue;
        }
      }

      libraryId = [v19 libraryId];
      if ([v53 collectionExistsContainedWithinPersistentIDs:&libraryId count:1 groupingType:v10 existentPID:&v59])
      {
        v29 = v14;
        v25 = selfCopy;
        v24 = v52;
        goto LABEL_27;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v24 = v52;
  v25 = selfCopy;
  if ([v52 hasCloudUniversalLibraryId])
  {
    cloudUniversalLibraryId = [v52 cloudUniversalLibraryId];
    v27 = [cloudUniversalLibraryId length];

    if (v27)
    {
      cloudUniversalLibraryId2 = [v52 cloudUniversalLibraryId];
      v29 = [MPMediaPropertyPredicate predicateWithValue:cloudUniversalLibraryId2 forProperty:@"storeCloudAlbumID"];

      v30 = [MPMediaQuery alloc];
      v31 = [MEMORY[0x1E695DFD8] setWithObject:v29];
      v32 = [(MPMediaQuery *)v30 initWithFilterPredicates:v31 library:v53];

      [(MPMediaQuery *)v32 setEntityLimit:1];
      [(MPMediaQuery *)v32 setGroupingType:v10];
      items = [(MPMediaQuery *)v32 items];
      firstObject = [items firstObject];

      albumPersistentID = [firstObject albumPersistentID];
      if (firstObject && albumPersistentID)
      {
        v59 = albumPersistentID;

LABEL_27:
LABEL_28:
        if (v49 > 7 || ((0xCFu >> v49) & 1) == 0 || (v36 = *off_1E7679A40[v49]) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v48 object:v25 file:@"MPMediaLibraryDataProvider.m" lineNumber:617 description:{@"No persistent ID property could be found for media object of type %d", v47}];

          v36 = 0;
        }

        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v59];
        v39 = [MPMediaPropertyPredicate predicateWithValue:v38 forProperty:v36];

        v40 = [MPMediaQuery alloc];
        v41 = [MEMORY[0x1E695DFD8] setWithObject:v39];
        v42 = [(MPMediaQuery *)v40 initWithFilterPredicates:v41];

        [(MPMediaQuery *)v42 setGroupingType:v10];
        v25 = [(MPConcreteMediaItemCollection *)v25 initWithIdentifier:v59 itemsQuery:v42 grouping:v10];

        v43 = v25;
        goto LABEL_40;
      }
    }
  }

  if ([v52 hasStoreId] && objc_msgSend(v52, "storeId") && (objc_msgSend(v53, "collectionExistsWithStoreID:groupingType:existentPID:", objc_msgSend(v52, "storeId"), v10, &v59) & 1) != 0)
  {
    goto LABEL_28;
  }

  if ([v52 hasName])
  {
    name = [v52 name];
    v45 = [v53 collectionExistsWithName:name groupingType:v10 existentPID:&v59];

    if (v45)
    {
      goto LABEL_28;
    }
  }

  v43 = 0;
LABEL_40:

  return v43;
}

- (MPConcreteMediaItemCollection)initWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier
{
  propertiesCopy = properties;
  queryCopy = query;
  mediaLibrary = [queryCopy mediaLibrary];
  v15 = mediaLibrary;
  if (mediaLibrary)
  {
    v16 = mediaLibrary;
  }

  else
  {
    v16 = +[MPMediaLibrary defaultMediaLibrary];
  }

  v17 = v16;

  libraryDataProvider = [v17 libraryDataProvider];
  entityCache = [libraryDataProvider entityCache];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __121__MPConcreteMediaItemCollection_initWithIdentifier_valuesForProperties_itemsQuery_grouping_representativeItemIdentifier___block_invoke;
  v25[3] = &unk_1E7679810;
  v26 = propertiesCopy;
  selfCopy = self;
  v28 = queryCopy;
  identifierCopy = identifier;
  groupingCopy = grouping;
  itemIdentifierCopy = itemIdentifier;
  v20 = queryCopy;
  selfCopy2 = self;
  v22 = propertiesCopy;
  v23 = [entityCache collectionWithIdentifier:identifier grouping:grouping loadEntityBlock:v25];

  return v23;
}

id __121__MPConcreteMediaItemCollection_initWithIdentifier_valuesForProperties_itemsQuery_grouping_representativeItemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E695DFD8];
  v5 = a2;
  v6 = [v3 allKeys];
  v7 = [v4 setWithArray:v6];
  [v5 cachePropertyValues:v3 forProperties:v7 persistValueInBackgroundBlock:0];

  v8 = [*(a1 + 40) _initWithIdentifier:*(a1 + 56) valuesForProperties:*(a1 + 32) itemsQuery:*(a1 + 48) grouping:*(a1 + 64) representativeItemIdentifier:*(a1 + 72) propertiesCache:v5];

  return v8;
}

- (id)_initWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier propertiesCache:(id)cache
{
  queryCopy = query;
  cacheCopy = cache;
  v24.receiver = self;
  v24.super_class = MPConcreteMediaItemCollection;
  v15 = [(MPMediaItemCollection *)&v24 initWithItems:0];
  v16 = v15;
  if (v15)
  {
    v15->_identifier = identifier;
    v17 = [queryCopy copy];
    itemsQuery = v16->_itemsQuery;
    v16->_itemsQuery = v17;

    v16->_grouping = grouping;
    objc_storeStrong(&v16->_propertiesCache, cache);
    if (itemIdentifier)
    {
      mediaLibrary = [queryCopy mediaLibrary];
      v20 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:itemIdentifier library:mediaLibrary];
      representativeItem = v16->_representativeItem;
      v16->_representativeItem = v20;

      if (![(MPMediaItem *)v16->_representativeItem existsInLibrary])
      {
        v22 = v16->_representativeItem;
        v16->_representativeItem = 0;
      }
    }
  }

  return v16;
}

+ (id)createUncachedMediaItemCollectionWithIdentifier:(int64_t)identifier valuesForProperties:(id)properties itemsQuery:(id)query grouping:(int64_t)grouping representativeItemIdentifier:(int64_t)itemIdentifier
{
  queryCopy = query;
  propertiesCopy = properties;
  v14 = [[self alloc] _initWithIdentifier:identifier valuesForProperties:propertiesCopy itemsQuery:queryCopy grouping:grouping representativeItemIdentifier:itemIdentifier propertiesCache:0];

  return v14;
}

@end