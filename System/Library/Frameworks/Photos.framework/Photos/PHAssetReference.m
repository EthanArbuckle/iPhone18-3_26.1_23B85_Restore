@interface PHAssetReference
+ (id)referenceForAsset:(id)a3;
- (PHAssetReference)initWithDictionary:(id)a3 referenceType:(id)a4;
- (PHAssetReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 mediaType:(int64_t)a5 subtypes:(unint64_t)a6 sourceType:(unint64_t)a7 needsSensitivityProtection:(BOOL)a8 isHidden:(BOOL)a9 isTrashed:(BOOL)a10 isRecovered:(BOOL)a11;
- (id)dictionaryForReferenceType:(id)a3;
@end

@implementation PHAssetReference

- (PHAssetReference)initWithDictionary:(id)a3 referenceType:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PHAssetReference;
  v7 = [(PHObjectReference *)&v16 initWithDictionary:v6 referenceType:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"mediaType"];
    v9 = [v6 objectForKeyedSubscript:@"mediaSubtypes"];
    v10 = [v6 objectForKeyedSubscript:@"sourceType"];
    v11 = [v6 objectForKeyedSubscript:@"needsSensitivityProtection"];
    v12 = [v6 objectForKeyedSubscript:@"isHidden"];
    v13 = [v6 objectForKeyedSubscript:@"isTrashed"];
    v14 = [v6 objectForKeyedSubscript:@"isRecovered"];
    v7->_mediaType = [v8 integerValue];
    v7->_mediaSubtypes = [v9 unsignedIntegerValue];
    v7->_sourceType = [v10 unsignedIntegerValue];
    v7->_needsSensitivityProtection = [v11 BOOLValue];
    v7->_hidden = [v12 BOOLValue];
    v7->_trashed = [v13 BOOLValue];
    v7->_recovered = [v14 BOOLValue];
  }

  return v7;
}

- (id)dictionaryForReferenceType:(id)a3
{
  v13.receiver = self;
  v13.super_class = PHAssetReference;
  v4 = [(PHObjectReference *)&v13 dictionaryForReferenceType:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHAssetReference mediaType](self, "mediaType")}];
  [v4 setObject:v5 forKeyedSubscript:@"mediaType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHAssetReference mediaSubtypes](self, "mediaSubtypes")}];
  [v4 setObject:v6 forKeyedSubscript:@"mediaSubtypes"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHAssetReference sourceType](self, "sourceType")}];
  [v4 setObject:v7 forKeyedSubscript:@"sourceType"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHAssetReference needsSensitivityProtection](self, "needsSensitivityProtection")}];
  [v4 setObject:v8 forKeyedSubscript:@"needsSensitivityProtection"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHAssetReference isHidden](self, "isHidden")}];
  [v4 setObject:v9 forKeyedSubscript:@"isHidden"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHAssetReference isTrashed](self, "isTrashed")}];
  [v4 setObject:v10 forKeyedSubscript:@"isTrashed"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHAssetReference isRecovered](self, "isRecovered")}];
  [v4 setObject:v11 forKeyedSubscript:@"isRecovered"];

  return v4;
}

- (PHAssetReference)initWithLocalIdentifier:(id)a3 libraryURL:(id)a4 mediaType:(int64_t)a5 subtypes:(unint64_t)a6 sourceType:(unint64_t)a7 needsSensitivityProtection:(BOOL)a8 isHidden:(BOOL)a9 isTrashed:(BOOL)a10 isRecovered:(BOOL)a11
{
  v16.receiver = self;
  v16.super_class = PHAssetReference;
  result = [(PHObjectReference *)&v16 initWithLocalIdentifier:a3 libraryURL:a4];
  if (result)
  {
    result->_mediaType = a5;
    result->_mediaSubtypes = a6;
    result->_sourceType = a7;
    result->_needsSensitivityProtection = a8;
    result->_hidden = a9;
    result->_trashed = a10;
    result->_recovered = a11;
  }

  return result;
}

+ (id)referenceForAsset:(id)a3
{
  v4 = a3;
  v18 = [a1 alloc];
  v5 = [v4 localIdentifier];
  v6 = [v4 photoLibrary];
  v7 = [v6 photoLibraryURL];
  v17 = [v4 mediaType];
  v8 = [v4 mediaSubtypes];
  v9 = [v4 sourceType];
  v10 = [v4 needsSensitivityProtection];
  v11 = [v4 isHidden];
  v12 = [v4 isTrashed];
  v13 = [v4 isRecoveredAsset];

  BYTE2(v16) = v13;
  BYTE1(v16) = v12;
  LOBYTE(v16) = v11;
  v14 = [v18 initWithLocalIdentifier:v5 libraryURL:v7 mediaType:v17 subtypes:v8 sourceType:v9 needsSensitivityProtection:v10 isHidden:v16 isTrashed:? isRecovered:?];

  return v14;
}

@end