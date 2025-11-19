@interface MPConcreteMediaItemCollection
+ (id)createUncachedMediaItemCollectionWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (MPConcreteMediaItemCollection)initWithCoder:(id)a3;
- (MPConcreteMediaItemCollection)initWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7;
- (MPConcreteMediaItemCollection)initWithMultiverseIdentifier:(id)a3 library:(id)a4;
- (id)_initWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7 propertiesCache:(id)a8;
- (id)_tokenBinaryIdentifierAsString;
- (id)representativeItem;
- (id)valueForProperty:(id)a3;
- (id)valuesForProperties:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValuesForProperties:(id)a3 usingBlock:(id)a4;
- (void)setValue:(id)a3 forProperty:(id)a4 withCompletionBlock:(id)a5;
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
        v8 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
        v9 = +[MPConcreteMediaItem concreteMediaItemWithPersistentID:library:](MPConcreteMediaItem, "concreteMediaItemWithPersistentID:library:", [v7 unsignedLongLongValue], v8);
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
          v16 = [v15 artwork];

          if (v16)
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
          v19 = [(MPConcreteMediaItemCollection *)self mediaLibrary];
          v20 = [v19 writable];

          if (v20)
          {
            v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MPMediaEntity persistentID](self->_representativeItem, "persistentID")}];
            [(MPConcreteMediaItemCollection *)self setValue:v21 forProperty:v5 withCompletionBlock:0];
          }
        }
      }

      if (!self->_representativeItem)
      {
        v22 = [MEMORY[0x1E695DFB0] null];
        v23 = self->_representativeItem;
        self->_representativeItem = v22;
      }
    }

    representativeItem = self->_representativeItem;
  }

  v24 = [*(v4 + 4016) null];
  if ([(MPMediaItem *)representativeItem isEqual:v24])
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

- (void)setValue:(id)a3 forProperty:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  v12 = [v11 libraryDataProvider];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__MPConcreteMediaItemCollection_setValue_forProperty_withCompletionBlock___block_invoke;
    aBlock[3] = &unk_1E7679888;
    objc_copyWeak(&v18, &location);
    v17 = v10;
    v14 = _Block_copy(aBlock);
    propertiesCache = self->_propertiesCache;
    if (propertiesCache)
    {
      [(MPConcreteMediaEntityPropertiesCache *)propertiesCache cacheValue:v8 forProperty:v9 persistValueInBackgroundBlock:v14];
    }

    else
    {
      v14[2](v14, v8, v9);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
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

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [(MPConcreteMediaItemCollection *)self setValue:v6 forProperty:v7 withCompletionBlock:v11];
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

- (id)valuesForProperties:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v6 = [v5 libraryDataProvider];

  v7 = [v4 mutableCopy];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __53__MPConcreteMediaItemCollection_valuesForProperties___block_invoke;
  v24[3] = &unk_1E7679860;
  v24[4] = self;
  v9 = v7;
  v25 = v9;
  v10 = v8;
  v26 = v10;
  [v4 enumerateObjectsUsingBlock:v24];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__18853;
  v22 = __Block_byref_object_dispose__18854;
  v23 = 0;
  if (v6 && [v9 count])
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
    [v6 loadProperties:v16 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v15];
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

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v6 = [v5 libraryDataProvider];

  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18853;
  v20 = __Block_byref_object_dispose__18854;
  v21 = [(MPConcreteMediaEntityPropertiesCache *)self->_propertiesCache valueForProperty:v4 isCached:&v22];
  if ((v22 & 1) == 0 && v6)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    identifier = self->_identifier;
    grouping = self->_grouping;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MPConcreteMediaItemCollection_valueForProperty___block_invoke;
    v12[3] = &unk_1E76796F8;
    v15 = &v16;
    v13 = v4;
    v14 = self;
    [v6 loadProperties:v7 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v12];
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

- (void)enumerateValuesForProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v9 = [v8 libraryDataProvider];

  v10 = [v6 mutableCopy];
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
  v12 = v7;
  v20 = v12;
  v21 = &v22;
  [v6 enumerateObjectsUsingBlock:v18];
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
    [v9 loadProperties:v16 ofCollectionWithIdentifier:identifier groupingType:grouping completionBlock:v15];
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

  v5 = [(MPConcreteMediaItemCollection *)self persistentID];
  v6 = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  v7 = [v6 ml3Library];
  v8 = [v7 libraryUID];
  v9 = [v3 URLForEntityWithPersistentID:v5 libraryUID:v8];
  v10 = [v9 absoluteString];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
    [v5 encodeObject:v4 forKey:@"MPLibrary"];

    [v5 encodeObject:self->_itemsQuery forKey:@"MPQuery"];
    [v5 encodeInt64:self->_identifier forKey:@"id"];
    [v5 encodeInteger:self->_grouping forKey:@"group"];
  }
}

- (MPConcreteMediaItemCollection)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPLibrary"];
    if (v5)
    {
      v11.receiver = self;
      v11.super_class = MPConcreteMediaItemCollection;
      v6 = [(MPMediaItemCollection *)&v11 initWithItems:0];
      if (v6)
      {
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPQuery"];
        itemsQuery = v6->_itemsQuery;
        v6->_itemsQuery = v7;

        v6->_identifier = [v4 decodeInt64ForKey:@"id"];
        v6->_grouping = [v4 decodeIntegerForKey:@"group"];
      }

      self = v6;
      v9 = self;
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

- (void)dealloc
{
  v3 = [(MPConcreteMediaItemCollection *)self mediaLibrary];
  v4 = [v3 libraryDataProvider];
  v5 = [v4 entityCache];
  [v5 removeEntityWithIdentifier:self->_identifier dataProviderEntityClass:{-[MPConcreteMediaEntityPropertiesCache dataProviderEntityClass](self->_propertiesCache, "dataProviderEntityClass")}];

  v6.receiver = self;
  v6.super_class = MPConcreteMediaItemCollection;
  [(MPConcreteMediaItemCollection *)&v6 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[9] == self->_identifier && v4[11] == self->_grouping;

  return v5;
}

- (MPConcreteMediaItemCollection)initWithMultiverseIdentifier:(id)a3 library:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 mediaObjectType];
  v49 = v9 - 1;
  if ((v9 - 1) > 7)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = qword_1A273EE58[(v9 - 1)];
  }

  v11 = [v7 libraryIdentifiers];
  v51 = self;
  v52 = v7;
  v50 = v8;
  v47 = v9;
  v48 = a2;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = +[MPMediaLibrary defaultMediaLibrary];
  }

  v53 = v12;
  v13 = [v12 uniqueIdentifier];
  v59 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = v11;
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
      v20 = [v19 libraryName];
      if (![v20 length])
      {

        continue;
      }

      v21 = [v19 libraryName];
      v22 = v21;
      if (v21 == v13)
      {
      }

      else
      {
        v23 = [v21 isEqual:v13];

        if ((v23 & 1) == 0)
        {
          continue;
        }
      }

      v54 = [v19 libraryId];
      if ([v53 collectionExistsContainedWithinPersistentIDs:&v54 count:1 groupingType:v10 existentPID:&v59])
      {
        v29 = v14;
        v25 = v51;
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
  v25 = v51;
  if ([v52 hasCloudUniversalLibraryId])
  {
    v26 = [v52 cloudUniversalLibraryId];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [v52 cloudUniversalLibraryId];
      v29 = [MPMediaPropertyPredicate predicateWithValue:v28 forProperty:@"storeCloudAlbumID"];

      v30 = [MPMediaQuery alloc];
      v31 = [MEMORY[0x1E695DFD8] setWithObject:v29];
      v32 = [(MPMediaQuery *)v30 initWithFilterPredicates:v31 library:v53];

      [(MPMediaQuery *)v32 setEntityLimit:1];
      [(MPMediaQuery *)v32 setGroupingType:v10];
      v33 = [(MPMediaQuery *)v32 items];
      v34 = [v33 firstObject];

      v35 = [v34 albumPersistentID];
      if (v34 && v35)
      {
        v59 = v35;

LABEL_27:
LABEL_28:
        if (v49 > 7 || ((0xCFu >> v49) & 1) == 0 || (v36 = *off_1E7679A40[v49]) == 0)
        {
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:v48 object:v25 file:@"MPMediaLibraryDataProvider.m" lineNumber:617 description:{@"No persistent ID property could be found for media object of type %d", v47}];

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
    v44 = [v52 name];
    v45 = [v53 collectionExistsWithName:v44 groupingType:v10 existentPID:&v59];

    if (v45)
    {
      goto LABEL_28;
    }
  }

  v43 = 0;
LABEL_40:

  return v43;
}

- (MPConcreteMediaItemCollection)initWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [v13 mediaLibrary];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[MPMediaLibrary defaultMediaLibrary];
  }

  v17 = v16;

  v18 = [v17 libraryDataProvider];
  v19 = [v18 entityCache];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __121__MPConcreteMediaItemCollection_initWithIdentifier_valuesForProperties_itemsQuery_grouping_representativeItemIdentifier___block_invoke;
  v25[3] = &unk_1E7679810;
  v26 = v12;
  v27 = self;
  v28 = v13;
  v29 = a3;
  v30 = a6;
  v31 = a7;
  v20 = v13;
  v21 = self;
  v22 = v12;
  v23 = [v19 collectionWithIdentifier:a3 grouping:a6 loadEntityBlock:v25];

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

- (id)_initWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7 propertiesCache:(id)a8
{
  v13 = a5;
  v14 = a8;
  v24.receiver = self;
  v24.super_class = MPConcreteMediaItemCollection;
  v15 = [(MPMediaItemCollection *)&v24 initWithItems:0];
  v16 = v15;
  if (v15)
  {
    v15->_identifier = a3;
    v17 = [v13 copy];
    itemsQuery = v16->_itemsQuery;
    v16->_itemsQuery = v17;

    v16->_grouping = a6;
    objc_storeStrong(&v16->_propertiesCache, a8);
    if (a7)
    {
      v19 = [v13 mediaLibrary];
      v20 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:a7 library:v19];
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

+ (id)createUncachedMediaItemCollectionWithIdentifier:(int64_t)a3 valuesForProperties:(id)a4 itemsQuery:(id)a5 grouping:(int64_t)a6 representativeItemIdentifier:(int64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = [[a1 alloc] _initWithIdentifier:a3 valuesForProperties:v13 itemsQuery:v12 grouping:a6 representativeItemIdentifier:a7 propertiesCache:0];

  return v14;
}

@end