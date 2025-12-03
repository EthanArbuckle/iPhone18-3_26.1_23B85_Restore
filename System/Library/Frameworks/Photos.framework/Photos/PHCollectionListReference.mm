@interface PHCollectionListReference
+ (id)referenceForCollectionList:(id)list;
- (BOOL)transient;
- (PHCollectionListReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHCollectionListReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l collectionListType:(int64_t)type collectionListSubtype:(int64_t)subtype collectionReferences:(id)references transientIdentifier:(id)transientIdentifier transientTitle:(id)title;
- (id)_transientCollectionInLibrary:(id)library;
- (id)dictionaryForReferenceType:(id)type;
@end

@implementation PHCollectionListReference

- (id)_transientCollectionInLibrary:(id)library
{
  v28 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  transientCollectionReferences = [(PHCollectionListReference *)self transientCollectionReferences];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(transientCollectionReferences, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = transientCollectionReferences;
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
          v13 = [PHAssetCollection fetchAssetCollectionsForReferences:v12 photoLibrary:libraryCopy];
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
          v13 = [PHCollectionList fetchCollectionListsForReferences:v12 photoLibrary:libraryCopy];
        }

        v14 = v13;
        firstObject = [v13 firstObject];

        if (firstObject)
        {
          [v20 addObject:firstObject];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  transientTitle = [(PHCollectionReference *)self transientTitle];
  transientIdentifier = [(PHCollectionReference *)self transientIdentifier];
  v18 = [PHCollectionList transientCollectionListWithCollections:v20 title:transientTitle identifier:transientIdentifier photoLibrary:libraryCopy];

  return v18;
}

- (BOOL)transient
{
  transientCollectionReferences = [(PHCollectionListReference *)self transientCollectionReferences];
  v3 = transientCollectionReferences != 0;

  return v3;
}

- (id)dictionaryForReferenceType:(id)type
{
  v10.receiver = self;
  v10.super_class = PHCollectionListReference;
  v4 = [(PHCollectionReference *)&v10 dictionaryForReferenceType:type];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHCollectionListReference collectionListType](self, "collectionListType")}];
  [v4 setObject:v5 forKeyedSubscript:@"collectionListType"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHCollectionListReference collectionListSubtype](self, "collectionListSubtype")}];
  [v4 setObject:v6 forKeyedSubscript:@"collectionListSubtype"];

  if ([(PHCollectionListReference *)self transient])
  {
    transientCollectionReferences = [(PHCollectionListReference *)self transientCollectionReferences];
    v8 = PHObjectReferenceDictionariesForReferences(transientCollectionReferences);
    [v4 setObject:v8 forKeyedSubscript:@"transientCollectionReferences"];
  }

  return v4;
}

- (PHCollectionListReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  v19[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PHCollectionListReference;
  v7 = [(PHCollectionReference *)&v17 initWithDictionary:dictionaryCopy referenceType:type];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"collectionListType"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"collectionListSubtype"];
    v7->_collectionListType = [v8 integerValue];
    v7->_collectionListSubtype = [v9 integerValue];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"transientCollectionReferences"];
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

- (PHCollectionListReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l collectionListType:(int64_t)type collectionListSubtype:(int64_t)subtype collectionReferences:(id)references transientIdentifier:(id)transientIdentifier transientTitle:(id)title
{
  referencesCopy = references;
  v21.receiver = self;
  v21.super_class = PHCollectionListReference;
  v16 = [(PHCollectionReference *)&v21 initWithLocalIdentifier:identifier libraryURL:l transientIdentifier:transientIdentifier transientTitle:title];
  v17 = v16;
  if (v16)
  {
    v16->_collectionListType = type;
    v16->_collectionListSubtype = subtype;
    v18 = [referencesCopy copy];
    transientCollectionReferences = v17->_transientCollectionReferences;
    v17->_transientCollectionReferences = v18;
  }

  return v17;
}

+ (id)referenceForCollectionList:(id)list
{
  v26 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ([listCopy isTransient])
  {
    transientIdentifier = [listCopy transientIdentifier];
    localizedTitle = [listCopy localizedTitle];
    v7 = [PHCollectionList fetchCollectionsInCollectionList:listCopy options:0];
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

          objectReference = [*(*(&v21 + 1) + 8 * i) objectReference];
          [v8 addObject:objectReference];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else
  {
    localizedTitle = 0;
    transientIdentifier = 0;
    v8 = 0;
  }

  v15 = [self alloc];
  localIdentifier = [listCopy localIdentifier];
  photoLibrary = [listCopy photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  v19 = [v15 initWithLocalIdentifier:localIdentifier libraryURL:photoLibraryURL collectionListType:objc_msgSend(listCopy collectionListSubtype:"collectionListType") collectionReferences:objc_msgSend(listCopy transientIdentifier:"collectionListSubtype") transientTitle:{v8, transientIdentifier, localizedTitle}];

  return v19;
}

@end