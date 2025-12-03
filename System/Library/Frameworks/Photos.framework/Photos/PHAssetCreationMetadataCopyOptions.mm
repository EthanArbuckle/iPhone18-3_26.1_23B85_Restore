@interface PHAssetCreationMetadataCopyOptions
+ (id)metadataCopyOptionsForPublishingOriginals;
- (PHAssetCreationMetadataCopyOptions)init;
- (PHAssetCreationMetadataCopyOptions)initWithCoder:(id)coder;
- (PHAssetCreationMetadataCopyOptions)initWithXPCDict:(id)dict;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)plRepresentation;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHAssetCreationMetadataCopyOptions

- (PHAssetCreationMetadataCopyOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PHAssetCreationMetadataCopyOptions;
  v5 = [(PHAssetCreationMetadataCopyOptions *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"titleDescriptionAndKeywords"];
    v5->_shouldCopyTitleDescriptionAndKeywords = [coderCopy decodeBoolForKey:v6];

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"spatialOverCaptureResources"];
    v5->_shouldCopySpatialOverCaptureResources = [coderCopy decodeBoolForKey:v7];

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldCopyLocationData"];
    v5->_shouldCopyLocationData = [coderCopy decodeBoolForKey:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shouldCopyTitleDescriptionAndKeywords = self->_shouldCopyTitleDescriptionAndKeywords;
  v5 = MEMORY[0x1E696AEC0];
  coderCopy = coder;
  v7 = [v5 stringWithUTF8String:"titleDescriptionAndKeywords"];
  [coderCopy encodeBool:shouldCopyTitleDescriptionAndKeywords forKey:v7];

  shouldCopySpatialOverCaptureResources = self->_shouldCopySpatialOverCaptureResources;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"spatialOverCaptureResources"];
  [coderCopy encodeBool:shouldCopySpatialOverCaptureResources forKey:v9];

  shouldCopyLocationData = self->_shouldCopyLocationData;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldCopyLocationData"];
  [coderCopy encodeBool:shouldCopyLocationData forKey:v11];
}

- (id)plRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE550]);
  copyPropertiesFromObjectAToObjectB(self, v3);

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHAssetCreationMetadataCopyOptions;
  v3 = [(PHAssetCreationMetadataCopyOptions *)&v8 description];
  v4 = [v3 stringByAppendingFormat:@" shouldCopyTitleDescriptionAndKeywords=%d", self->_shouldCopyTitleDescriptionAndKeywords];

  v5 = [v4 stringByAppendingFormat:@" shouldCopySpatialOverCaptureResources=%d", self->_shouldCopySpatialOverCaptureResources];

  v6 = [v5 stringByAppendingFormat:@" shouldCopyLocationData=%d", self->_shouldCopyLocationData];

  return v6;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(dictCopy, "metadataCopyOptions", xdict);

  xpc_dictionary_set_BOOL(xdict, "titleDescriptionAndKeywords", self->_shouldCopyTitleDescriptionAndKeywords);
  xpc_dictionary_set_BOOL(xdict, "spatialOverCaptureResources", self->_shouldCopySpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(xdict, "shouldCopyLocationData", self->_shouldCopyLocationData);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
  [(PHAssetCreationMetadataCopyOptions *)v4 setShouldCopyTitleDescriptionAndKeywords:self->_shouldCopyTitleDescriptionAndKeywords];
  [(PHAssetCreationMetadataCopyOptions *)v4 setShouldCopySpatialOverCaptureResources:self->_shouldCopySpatialOverCaptureResources];
  [(PHAssetCreationMetadataCopyOptions *)v4 setShouldCopyLocationData:self->_shouldCopyLocationData];
  return v4;
}

- (PHAssetCreationMetadataCopyOptions)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = [(PHAssetCreationMetadataCopyOptions *)self init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictCopy, "metadataCopyOptions");
    v7 = v6;
    if (v6)
    {
      v5->_shouldCopyTitleDescriptionAndKeywords = xpc_dictionary_get_BOOL(v6, "titleDescriptionAndKeywords");
      v5->_shouldCopySpatialOverCaptureResources = xpc_dictionary_get_BOOL(v7, "spatialOverCaptureResources");
      v5->_shouldCopyLocationData = xpc_dictionary_get_BOOL(v7, "shouldCopyLocationData");
    }
  }

  return v5;
}

- (PHAssetCreationMetadataCopyOptions)init
{
  v3.receiver = self;
  v3.super_class = PHAssetCreationMetadataCopyOptions;
  result = [(PHAssetCreationMetadataCopyOptions *)&v3 init];
  if (result)
  {
    *&result->_shouldCopyTitleDescriptionAndKeywords = 0;
    result->_shouldCopyLocationData = 1;
  }

  return result;
}

+ (id)metadataCopyOptionsForPublishingOriginals
{
  v2 = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
  [(PHAssetCreationMetadataCopyOptions *)v2 setShouldCopyTitleDescriptionAndKeywords:1];
  [(PHAssetCreationMetadataCopyOptions *)v2 setShouldCopySpatialOverCaptureResources:1];
  [(PHAssetCreationMetadataCopyOptions *)v2 setShouldCopyLocationData:1];

  return v2;
}

@end