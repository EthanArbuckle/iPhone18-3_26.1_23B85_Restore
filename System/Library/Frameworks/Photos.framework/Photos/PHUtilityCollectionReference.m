@interface PHUtilityCollectionReference
+ (id)referenceForUtilityCollection:(id)a3;
- (PHUtilityCollectionReference)initWithDictionary:(id)a3 referenceType:(id)a4;
- (PHUtilityCollectionReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 type:(unsigned __int16)a5;
- (id)_transientCollectionInLibrary:(id)a3;
- (id)dictionaryForReferenceType:(id)a3;
@end

@implementation PHUtilityCollectionReference

- (id)_transientCollectionInLibrary:(id)a3
{
  v4 = [a3 librarySpecificFetchOptions];
  v5 = [PHAssetCollection fetchUtilityCollectionsWithType:[(PHUtilityCollectionReference *)self utilityCollectionType] options:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (id)dictionaryForReferenceType:(id)a3
{
  v7.receiver = self;
  v7.super_class = PHUtilityCollectionReference;
  v4 = [(PHAssetCollectionReference *)&v7 dictionaryForReferenceType:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[PHUtilityCollectionReference utilityCollectionType](self, "utilityCollectionType")}];
  [v4 setObject:v5 forKeyedSubscript:@"utilityCollectionType"];

  return v4;
}

- (PHUtilityCollectionReference)initWithDictionary:(id)a3 referenceType:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PHUtilityCollectionReference;
  v7 = [(PHAssetCollectionReference *)&v10 initWithDictionary:v6 referenceType:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"utilityCollectionType"];
    v7->_utilityCollectionType = [v8 integerValue];
  }

  return v7;
}

- (PHUtilityCollectionReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 type:(unsigned __int16)a5
{
  v7.receiver = self;
  v7.super_class = PHUtilityCollectionReference;
  result = [(PHAssetCollectionReference *)&v7 initWithLocalIdentifier:a3 libraryURL:a4 type:2 subtype:0];
  if (result)
  {
    result->_utilityCollectionType = a5;
  }

  return result;
}

+ (id)referenceForUtilityCollection:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 localIdentifier];
  v7 = [v4 photoLibrary];
  v8 = [v7 photoLibraryURL];
  v9 = [v4 type];

  v10 = [v5 initWithLocalIdentifier:v6 libraryURL:v8 type:v9];

  return v10;
}

@end