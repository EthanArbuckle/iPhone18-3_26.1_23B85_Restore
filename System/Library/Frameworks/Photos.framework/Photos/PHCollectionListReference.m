@interface PHCollectionListReference
+ (id)referenceForCollectionList:(id)a3;
- (BOOL)transient;
- (PHCollectionListReference)initWithDictionary:(id)a3 referenceType:(id)a4;
- (PHCollectionListReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 collectionListType:(int64_t)a5 collectionListSubtype:(int64_t)a6 collectionReferences:(id)a7 transientIdentifier:(id)a8 transientTitle:(id)a9;
- (id)_transientCollectionInLibrary:(id)a3;
- (id)dictionaryForReferenceType:(id)a3;
@end

@implementation PHCollectionListReference

- (id)_transientCollectionInLibrary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHCollectionListReference *)self transientCollectionReferences];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
          v13 = [PHAssetCollection fetchAssetCollectionsForReferences:v12 photoLibrary:v4];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v25 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
          v13 = [PHCollectionList fetchCollectionListsForReferences:v12 photoLibrary:v4];
        }

        v14 = v13;
        v15 = [v13 firstObject];

        if (v15)
        {
          [v20 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  v16 = [(PHCollectionReference *)self transientTitle];
  v17 = [(PHCollectionReference *)self transientIdentifier];
  v18 = [PHCollectionList transientCollectionListWithCollections:v20 title:v16 identifier:v17 photoLibrary:v4];

  return v18;
}

- (BOOL)transient
{
  v2 = [(PHCollectionListReference *)self transientCollectionReferences];
  v3 = v2 != 0;

  return v3;
}

- (id)dictionaryForReferenceType:(id)a3
{
  v10.receiver = self;
  v10.super_class = PHCollectionListReference;
  v4 = [(PHCollectionReference *)&v10 dictionaryForReferenceType:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHCollectionListReference collectionListType](self, "collectionListType")}];
  [v4 setObject:v5 forKeyedSubscript:@"collectionListType"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHCollectionListReference collectionListSubtype](self, "collectionListSubtype")}];
  [v4 setObject:v6 forKeyedSubscript:@"collectionListSubtype"];

  if ([(PHCollectionListReference *)self transient])
  {
    v7 = [(PHCollectionListReference *)self transientCollectionReferences];
    v8 = PHObjectReferenceDictionariesForReferences(v7);
    [v4 setObject:v8 forKeyedSubscript:@"transientCollectionReferences"];
  }

  return v4;
}

- (PHCollectionListReference)initWithDictionary:(id)a3 referenceType:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = PHCollectionListReference;
  v7 = [(PHCollectionReference *)&v17 initWithDictionary:v6 referenceType:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"collectionListType"];
    v9 = [v6 objectForKeyedSubscript:@"collectionListSubtype"];
    v7->_collectionListType = [v8 integerValue];
    v7->_collectionListSubtype = [v9 integerValue];
    v10 = [v6 objectForKeyedSubscript:@"transientCollectionReferences"];
    v18[0] = @"com.apple.photos.object-reference.assetcollection";
    v11 = objc_opt_class();
    v18[1] = @"com.apple.photos.object-reference.collectionlist";
    v19[0] = v11;
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v13 = PHObjectReferencesForDictionaries(v10, v12);
    v14 = [v13 copy];
    transientCollectionReferences = v7->_transientCollectionReferences;
    v7->_transientCollectionReferences = v14;
  }

  return v7;
}

- (PHCollectionListReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 collectionListType:(int64_t)a5 collectionListSubtype:(int64_t)a6 collectionReferences:(id)a7 transientIdentifier:(id)a8 transientTitle:(id)a9
{
  v15 = a7;
  v21.receiver = self;
  v21.super_class = PHCollectionListReference;
  v16 = [(PHCollectionReference *)&v21 initWithLocalIdentifier:a3 libraryURL:a4 transientIdentifier:a8 transientTitle:a9];
  v17 = v16;
  if (v16)
  {
    v16->_collectionListType = a5;
    v16->_collectionListSubtype = a6;
    v18 = [v15 copy];
    transientCollectionReferences = v17->_transientCollectionReferences;
    v17->_transientCollectionReferences = v18;
  }

  return v17;
}

+ (id)referenceForCollectionList:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isTransient])
  {
    v5 = [v4 transientIdentifier];
    v6 = [v4 localizedTitle];
    v7 = [PHCollectionList fetchCollectionsInCollectionList:v4 options:0];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) objectReference];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
  }

  v15 = [a1 alloc];
  v16 = [v4 localIdentifier];
  v17 = [v4 photoLibrary];
  v18 = [v17 photoLibraryURL];
  v19 = [v15 initWithLocalIdentifier:v16 libraryURL:v18 collectionListType:objc_msgSend(v4 collectionListSubtype:"collectionListType") collectionReferences:objc_msgSend(v4 transientIdentifier:"collectionListSubtype") transientTitle:{v8, v5, v6}];

  return v19;
}

@end