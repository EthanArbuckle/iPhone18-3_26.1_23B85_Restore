@interface PHAssetReference
+ (id)referenceForAsset:(id)asset;
- (PHAssetReference)initWithDictionary:(id)dictionary referenceType:(id)type;
- (PHAssetReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l mediaType:(int64_t)type subtypes:(unint64_t)subtypes sourceType:(unint64_t)sourceType needsSensitivityProtection:(BOOL)protection isHidden:(BOOL)hidden isTrashed:(BOOL)self0 isRecovered:(BOOL)self1;
- (id)dictionaryForReferenceType:(id)type;
@end

@implementation PHAssetReference

- (PHAssetReference)initWithDictionary:(id)dictionary referenceType:(id)type
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PHAssetReference;
  v7 = [(PHObjectReference *)&v16 initWithDictionary:dictionaryCopy referenceType:type];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"mediaSubtypes"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"sourceType"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"needsSensitivityProtection"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"isHidden"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"isTrashed"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"isRecovered"];
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

- (id)dictionaryForReferenceType:(id)type
{
  v13.receiver = self;
  v13.super_class = PHAssetReference;
  v4 = [(PHObjectReference *)&v13 dictionaryForReferenceType:type];
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

- (PHAssetReference)initWithLocalIdentifier:(id)identifier libraryURL:(id)l mediaType:(int64_t)type subtypes:(unint64_t)subtypes sourceType:(unint64_t)sourceType needsSensitivityProtection:(BOOL)protection isHidden:(BOOL)hidden isTrashed:(BOOL)self0 isRecovered:(BOOL)self1
{
  v16.receiver = self;
  v16.super_class = PHAssetReference;
  result = [(PHObjectReference *)&v16 initWithLocalIdentifier:identifier libraryURL:l];
  if (result)
  {
    result->_mediaType = type;
    result->_mediaSubtypes = subtypes;
    result->_sourceType = sourceType;
    result->_needsSensitivityProtection = protection;
    result->_hidden = hidden;
    result->_trashed = trashed;
    result->_recovered = recovered;
  }

  return result;
}

+ (id)referenceForAsset:(id)asset
{
  assetCopy = asset;
  v18 = [self alloc];
  localIdentifier = [assetCopy localIdentifier];
  photoLibrary = [assetCopy photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  mediaType = [assetCopy mediaType];
  mediaSubtypes = [assetCopy mediaSubtypes];
  sourceType = [assetCopy sourceType];
  needsSensitivityProtection = [assetCopy needsSensitivityProtection];
  isHidden = [assetCopy isHidden];
  isTrashed = [assetCopy isTrashed];
  isRecoveredAsset = [assetCopy isRecoveredAsset];

  BYTE2(v16) = isRecoveredAsset;
  BYTE1(v16) = isTrashed;
  LOBYTE(v16) = isHidden;
  v14 = [v18 initWithLocalIdentifier:localIdentifier libraryURL:photoLibraryURL mediaType:mediaType subtypes:mediaSubtypes sourceType:sourceType needsSensitivityProtection:needsSensitivityProtection isHidden:v16 isTrashed:? isRecovered:?];

  return v14;
}

@end