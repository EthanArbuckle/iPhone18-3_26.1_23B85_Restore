@interface PHUtilityCollectionReference
+ (id)referenceForUtilityCollection:(id)collection;
- (PHUtilityCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHUtilityCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l type:(unsigned __int16)type;
- (id)_transientCollectionInLibrary:(id)library;
- (id)dictionaryForReferenceType:(id)type;
@end

@implementation PHUtilityCollectionReference

- (id)_transientCollectionInLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v5 = [PHAssetCollection fetchUtilityCollectionsWithType:[(PHUtilityCollectionReference *)self utilityCollectionType] options:librarySpecificFetchOptions];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)dictionaryForReferenceType:(id)type
{
  v7.receiver = self;
  v7.super_class = PHUtilityCollectionReference;
  v4 = [(PHAssetCollectionReference *)&v7 dictionaryForReferenceType:type];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[PHUtilityCollectionReference utilityCollectionType](self, "utilityCollectionType")}];
  [v4 setObject:v5 forKeyedSubscript:@"utilityCollectionType"];

  return v4;
}

- (PHUtilityCollectionReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PHUtilityCollectionReference;
  v7 = [(PHAssetCollectionReference *)&v10 initWithDictionary:dictionaryCopy referenceType:type];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"utilityCollectionType"];
    v7->_utilityCollectionType = [v8 integerValue];
  }

  return v7;
}

- (PHUtilityCollectionReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l type:(unsigned __int16)type
{
  v7.receiver = self;
  v7.super_class = PHUtilityCollectionReference;
  result = [(PHAssetCollectionReference *)&v7 initWithLocalIdentifier:identifier libraryURL:l type:2 subtype:0];
  if (result)
  {
    result->_utilityCollectionType = type;
  }

  return result;
}

+ (id)referenceForUtilityCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [self alloc];
  localIdentifier = [collectionCopy localIdentifier];
  photoLibrary = [collectionCopy photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  type = [collectionCopy type];

  v10 = [v5 initWithLocalIdentifier:localIdentifier libraryURL:photoLibraryURL type:type];

  return v10;
}

@end