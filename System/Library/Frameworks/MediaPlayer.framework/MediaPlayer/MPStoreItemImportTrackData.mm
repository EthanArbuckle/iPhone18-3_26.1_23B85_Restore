@interface MPStoreItemImportTrackData
+ (id)_importPropertiesDictFromImportMetadataDict:(id)dict;
- (MPStoreItemImportTrackData)initWithImportElements:(id)elements;
- (id)_associatedElementForPropertyDict:(id)dict;
- (id)parsedStoreItemsImportProperties;
@end

@implementation MPStoreItemImportTrackData

- (id)_associatedElementForPropertyDict:(id)dict
{
  v27 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_importElements;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [dictCopy objectForKeyedSubscript:{&unk_1F15097F0, v22}];
        longLongValue = [v11 longLongValue];
        storeItemID = [v10 storeItemID];

        if (longLongValue != storeItemID)
        {
          v14 = [dictCopy objectForKeyedSubscript:&unk_1F1509808];
          longLongValue2 = [v14 longLongValue];
          storeItemID2 = [v10 storeItemID];

          if (longLongValue2 != storeItemID2)
          {
            v17 = [dictCopy objectForKeyedSubscript:&unk_1F1509820];
            longLongValue3 = [v17 longLongValue];
            storeItemID3 = [v10 storeItemID];

            if (longLongValue3 != storeItemID3)
            {
              continue;
            }
          }
        }

        v20 = v10;
        goto LABEL_14;
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v20 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_14:

  return v20;
}

- (id)parsedStoreItemsImportProperties
{
  v11.receiver = self;
  v11.super_class = MPStoreItemImportTrackData;
  parsedStoreItemsImportProperties = [(ML3StoreItemTrackData *)&v11 parsedStoreItemsImportProperties];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(parsedStoreItemsImportProperties, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MPStoreItemImportTrackData_parsedStoreItemsImportProperties__block_invoke;
  v9[3] = &unk_1E7677B78;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [parsedStoreItemsImportProperties enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __62__MPStoreItemImportTrackData_parsedStoreItemsImportProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = [v3 _associatedElementForPropertyDict:v4];
  v5 = [v4 mutableCopy];

  v6 = [v10 additionalTrackMetadata];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v10 additionalTrackMetadata];
    v9 = [v7 _importPropertiesDictFromImportMetadataDict:v8];

    [v5 addEntriesFromDictionary:v9];
  }

  [*(a1 + 40) addObject:v5];
}

- (MPStoreItemImportTrackData)initWithImportElements:(id)elements
{
  v24 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = elementsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        storeItem = [*(*(&v19 + 1) + 8 * v11) storeItem];
        if (!storeItem)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MPStoreItemImportTrackData.m" lineNumber:25 description:@"we should have a complete set of metadata here."];
        }

        [v6 addObject:storeItem];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v18.receiver = self;
  v18.super_class = MPStoreItemImportTrackData;
  v14 = [(ML3StoreItemTrackData *)&v18 initWithLookupItems:v6];
  if (v14)
  {
    v15 = [v7 copy];
    importElements = v14->_importElements;
    v14->_importElements = v15;
  }

  return v14;
}

+ (id)_importPropertiesDictFromImportMetadataDict:(id)dict
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"MPStoreItemLibraryImportMetadataKeyAlbumLikedState";
  v13[1] = @"MPStoreItemLibraryImportMetadataKeyTrackLikedState";
  v14[0] = &unk_1F15097C0;
  v14[1] = &unk_1F15097D8;
  v3 = MEMORY[0x1E695DF20];
  dictCopy = dict;
  v5 = [v3 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictCopy, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__MPStoreItemImportTrackData__importPropertiesDictFromImportMetadataDict___block_invoke;
  v11[3] = &unk_1E7682160;
  v11[4] = v5;
  v7 = v6;
  v12 = v7;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __74__MPStoreItemImportTrackData__importPropertiesDictFromImportMetadataDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  if (v7)
  {
    [*(a1 + 40) setObject:v6 forKey:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "[MPStoreItemImportTrackData] Unknown import property for metadata key %{public}@", &v9, 0xCu);
    }
  }
}

@end