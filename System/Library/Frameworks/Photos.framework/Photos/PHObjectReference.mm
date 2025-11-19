@interface PHObjectReference
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)filteredObjectReferences:(id)a3 inPhotoLibrary:(id)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)referenceForObject:(id)a3;
- (NSString)description;
- (PHObjectReference)initWithDictionary:(id)a3 referenceType:(id)a4;
- (PHObjectReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4;
- (id)dictionaryForReferenceType:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation PHObjectReference

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PHObjectReference *)self dictionaryForReferenceType:a3];
  v10 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:&v10];
  v6[2](v6, v8, v10);

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PHObjectReference *)self representedType];
  v6 = [(PHObjectReference *)self localIdentifier];
  v7 = [(PHObjectReference *)self libraryURL];
  v8 = [v3 stringWithFormat:@"<%@ %p: pasteboardType: %@ localIdentifier: %@; libraryURL: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)dictionaryForReferenceType:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = [(PHObjectReference *)self localIdentifier];
  v6 = [(PHObjectReference *)self libraryURL];
  v7 = [v6 absoluteString];
  v8 = [v4 dictionaryWithObjectsAndKeys:{v5, @"localIdentifier", v7, @"libraryURL", 0}];

  return v8;
}

- (PHObjectReference)initWithDictionary:(id)a3 referenceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"localIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"libraryURL"];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v11 = v10;
    v12 = 0;
    if (v8 && v10)
    {
      v13 = [(PHObjectReference *)self initWithLocalIdentifier:v8 libraryURL:v10];
      if (v13)
      {
        v14 = [v6 copy];
        representedType = v13->_representedType;
        v13->_representedType = v14;
      }

      self = v13;
      v12 = self;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12;
}

- (PHObjectReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v18.receiver = self;
    v18.super_class = PHObjectReference;
    v10 = [(PHObjectReference *)&v18 init];
    if (v10)
    {
      v11 = [v6 copy];
      localIdentifier = v10->_localIdentifier;
      v10->_localIdentifier = v11;

      v13 = [v8 copy];
      libraryURL = v10->_libraryURL;
      v10->_libraryURL = v13;

      v15 = [objc_opt_class() representedType];
      representedType = v10->_representedType;
      v10->_representedType = v15;
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:a5];
  if (v9)
  {
    v10 = [[a1 alloc] initWithDictionary:v9 referenceType:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 representedType];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 representedType];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)filteredObjectReferences:(id)a3 inPhotoLibrary:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = [v6 photoLibraryURL];
  v7 = v5;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:&v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 libraryURL];
        v15 = [v8 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [MEMORY[0x1E695DF70] array];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        [v15 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:&v27 count:16];
    }

    while (v10);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__35693;
  v31 = __Block_byref_object_dispose__35694;
  v32 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__PHObjectReference_filteredObjectReferences_inPhotoLibrary___block_invoke;
  v20[3] = &unk_1E75A8B20;
  v16 = v19;
  v21 = v16;
  v22 = &v27;
  [v8 enumerateKeysAndObjectsUsingBlock:v20];
  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

void __61__PHObjectReference_filteredObjectReferences_inPhotoLibrary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([MEMORY[0x1E69BF238] fileURL:*(a1 + 32) isEqualToFileURL:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

+ (id)referenceForObject:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 localIdentifier];
  v7 = [v4 photoLibrary];

  v8 = [v7 photoLibraryURL];
  v9 = [v5 initWithLocalIdentifier:v6 libraryURL:v8];

  return v9;
}

@end