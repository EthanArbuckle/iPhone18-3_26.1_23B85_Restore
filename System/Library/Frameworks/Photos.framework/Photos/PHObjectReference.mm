@interface PHObjectReference
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)filteredObjectReferences:(id)references inPhotoLibrary:(id)library;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)referenceForObject:(id)object;
- (NSString)description;
- (PHObjectReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHObjectReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l;
- (id)dictionaryForReferenceType:(id)type;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation PHObjectReference

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PHObjectReference *)self dictionaryForReferenceType:identifier];
  v10 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:&v10];
  handlerCopy[2](handlerCopy, v8, v10);

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  representedType = [(PHObjectReference *)self representedType];
  localIdentifier = [(PHObjectReference *)self localIdentifier];
  libraryURL = [(PHObjectReference *)self libraryURL];
  v8 = [v3 stringWithFormat:@"<%@ %p: pasteboardType: %@ localIdentifier: %@; libraryURL: %@>", v4, self, representedType, localIdentifier, libraryURL];;

  return v8;
}

- (id)dictionaryForReferenceType:(id)type
{
  v4 = MEMORY[0x1E695DF90];
  localIdentifier = [(PHObjectReference *)self localIdentifier];
  libraryURL = [(PHObjectReference *)self libraryURL];
  absoluteString = [libraryURL absoluteString];
  v8 = [v4 dictionaryWithObjectsAndKeys:{localIdentifier, @"localIdentifier", absoluteString, @"libraryURL", 0}];

  return v8;
}

- (PHObjectReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"localIdentifier"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"libraryURL"];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v11 = v10;
    selfCopy = 0;
    if (v8 && v10)
    {
      v13 = [(PHObjectReference *)self initWithLocalIdentifier:v8 libraryURL:v10];
      if (v13)
      {
        v14 = [typeCopy copy];
        representedType = v13->_representedType;
        v13->_representedType = v14;
      }

      self = v13;
      selfCopy = self;
    }
  }

  else
  {
    v11 = 0;
    selfCopy = 0;
  }

  return selfCopy;
}

- (PHObjectReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v8 = lCopy;
  selfCopy = 0;
  if (identifierCopy && lCopy)
  {
    v18.receiver = self;
    v18.super_class = PHObjectReference;
    v10 = [(PHObjectReference *)&v18 init];
    if (v10)
    {
      v11 = [identifierCopy copy];
      localIdentifier = v10->_localIdentifier;
      v10->_localIdentifier = v11;

      v13 = [v8 copy];
      libraryURL = v10->_libraryURL;
      v10->_libraryURL = v13;

      representedType = [objc_opt_class() representedType];
      representedType = v10->_representedType;
      v10->_representedType = representedType;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:error];
  if (v9)
  {
    v10 = [[self alloc] initWithDictionary:v9 referenceType:identifierCopy];
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
  representedType = [self representedType];
  v5[0] = representedType;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  representedType = [self representedType];
  v5[0] = representedType;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)filteredObjectReferences:(id)references inPhotoLibrary:(id)library
{
  v33 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  libraryCopy = library;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v7 = referencesCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        libraryURL = [v13 libraryURL];
        array = [dictionary objectForKeyedSubscript:libraryURL];
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          [dictionary setObject:array forKeyedSubscript:libraryURL];
        }

        [array addObject:v13];
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
  v16 = photoLibraryURL;
  v21 = v16;
  v22 = &v27;
  [dictionary enumerateKeysAndObjectsUsingBlock:v20];
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

+ (id)referenceForObject:(id)object
{
  objectCopy = object;
  v5 = [self alloc];
  localIdentifier = [objectCopy localIdentifier];
  photoLibrary = [objectCopy photoLibrary];

  photoLibraryURL = [photoLibrary photoLibraryURL];
  v9 = [v5 initWithLocalIdentifier:localIdentifier libraryURL:photoLibraryURL];

  return v9;
}

@end