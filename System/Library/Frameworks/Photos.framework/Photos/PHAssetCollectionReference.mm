@interface PHAssetCollectionReference
+ (id)referenceForAssetCollection:(id)collection;
- (BOOL)transient;
- (PHAssetCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHAssetCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l type:(int64_t)type subtype:(int64_t)subtype assetReferences:(id)references transientIdentifier:(id)transientIdentifier transientTitle:(id)title;
- (id)_transientCollectionInLibrary:(id)library;
- (id)dictionaryForReferenceType:(id)type;
@end

@implementation PHAssetCollectionReference

- (id)_transientCollectionInLibrary:(id)library
{
  libraryCopy = library;
  transientAssetReferences = [(PHAssetCollectionReference *)self transientAssetReferences];
  v6 = [PHAsset fetchAssetsForReferences:transientAssetReferences photoLibrary:libraryCopy];

  transientTitle = [(PHCollectionReference *)self transientTitle];
  transientIdentifier = [(PHCollectionReference *)self transientIdentifier];
  if (v6)
  {
    [PHAssetCollection transientAssetCollectionWithAssetFetchResult:v6 title:transientTitle identifier:transientIdentifier];
  }

  else
  {
    [PHAssetCollection transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:transientTitle identifier:transientIdentifier photoLibrary:libraryCopy];
  }
  v9 = ;

  return v9;
}

- (BOOL)transient
{
  transientAssetReferences = [(PHAssetCollectionReference *)self transientAssetReferences];
  v3 = transientAssetReferences != 0;

  return v3;
}

- (id)dictionaryForReferenceType:(id)type
{
  v10.receiver = self;
  v10.super_class = PHAssetCollectionReference;
  v4 = [(PHCollectionReference *)&v10 dictionaryForReferenceType:type];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHAssetCollectionReference assetCollectionType](self, "assetCollectionType")}];
  [v4 setObject:v5 forKeyedSubscript:@"assetCollectionType"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHAssetCollectionReference assetCollectionSubtype](self, "assetCollectionSubtype")}];
  [v4 setObject:v6 forKeyedSubscript:@"assetCollectionSubtype"];

  if ([(PHAssetCollectionReference *)self transient])
  {
    transientAssetReferences = [(PHAssetCollectionReference *)self transientAssetReferences];
    v8 = PHObjectReferenceDictionariesForReferences(transientAssetReferences);
    [v4 setObject:v8 forKeyedSubscript:@"transientAssetReferences"];
  }

  return v4;
}

- (PHAssetCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  v18[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PHAssetCollectionReference;
  v7 = [(PHCollectionReference *)&v16 initWithDictionary:dictionaryCopy referenceType:type];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetCollectionType"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"assetCollectionSubtype"];
    v7->_assetCollectionType = [v8 integerValue];
    v7->_assetCollectionSubtype = [v9 integerValue];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"transientAssetReferences"];
    v17 = @"com.apple.photos.object-reference.asset";
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = PHObjectReferencesForDictionaries(v10, v11);

    v13 = [v12 copy];
    transientAssetReferences = v7->_transientAssetReferences;
    v7->_transientAssetReferences = v13;
  }

  return v7;
}

- (PHAssetCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l type:(int64_t)type subtype:(int64_t)subtype assetReferences:(id)references transientIdentifier:(id)transientIdentifier transientTitle:(id)title
{
  referencesCopy = references;
  v21.receiver = self;
  v21.super_class = PHAssetCollectionReference;
  v16 = [(PHCollectionReference *)&v21 initWithLocalIdentifier:identifier libraryURL:l transientIdentifier:transientIdentifier transientTitle:title];
  v17 = v16;
  if (v16)
  {
    v16->_assetCollectionType = type;
    v16->_assetCollectionSubtype = subtype;
    v18 = [referencesCopy copy];
    transientAssetReferences = v17->_transientAssetReferences;
    v17->_transientAssetReferences = v18;
  }

  return v17;
}

+ (id)referenceForAssetCollection:(id)collection
{
  v26 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([collectionCopy isTransient])
  {
    transientIdentifier = [collectionCopy transientIdentifier];
    localizedTitle = [collectionCopy localizedTitle];
    v7 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:0];
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
  localIdentifier = [collectionCopy localIdentifier];
  photoLibrary = [collectionCopy photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  v19 = [v15 initWithLocalIdentifier:localIdentifier libraryURL:photoLibraryURL type:objc_msgSend(collectionCopy subtype:"assetCollectionType") assetReferences:objc_msgSend(collectionCopy transientIdentifier:"assetCollectionSubtype") transientTitle:{v8, transientIdentifier, localizedTitle}];

  return v19;
}

@end