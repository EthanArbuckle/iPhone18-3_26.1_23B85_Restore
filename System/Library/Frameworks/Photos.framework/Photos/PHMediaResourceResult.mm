@interface PHMediaResourceResult
- (BOOL)containsValidData;
- (PHMediaResourceResult)initWithRequestID:(int)d assetResource:(id)resource;
- (id)adjustmentData;
- (id)allowedInfoKeys;
- (id)exifOrientation;
- (id)mediaMetadata;
- (id)sanitizedInfoDictionary;
@end

@implementation PHMediaResourceResult

- (id)mediaMetadata
{
  if ([(PHAssetResource *)self->_assetResource type]== 104 || [(PHAssetResource *)self->_assetResource type]== 105)
  {
    v3 = self->_assetResourceData;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)adjustmentData
{
  if (([(PHAssetResource *)self->_assetResource type]== PHAssetResourceTypeAdjustmentData || [(PHAssetResource *)self->_assetResource type]== 16) && (assetResourceData = self->_assetResourceData) != 0)
  {
    v13 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:assetResourceData options:0 format:0 error:&v13];
    if (v4)
    {
      v5 = [PHAdjustmentData alloc];
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
      v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
      v10 = [(PHAdjustmentData *)v5 initWithFormatIdentifier:v6 formatVersion:v7 adjustmentRenderType:v8 data:v9];

      v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF378]];
      [(PHAdjustmentData *)v10 setEditorBundleID:v11];
    }

    else
    {
      [(PHCompositeMediaResult *)self setErrorIfNone:v13];
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)exifOrientation
{
  v2 = MEMORY[0x1E696AD98];
  orientation = [(PHAssetResource *)self->_assetResource orientation];

  return [v2 numberWithUnsignedInt:orientation];
}

- (id)sanitizedInfoDictionary
{
  if ([(PHAssetResource *)self->_assetResource type]== PHAssetResourceTypeAdjustmentData || [(PHAssetResource *)self->_assetResource type]== 16)
  {
    adjustmentData = [(PHMediaResourceResult *)self adjustmentData];
    [(NSMutableDictionary *)self->super._mutableInfo setObject:adjustmentData forKeyedSubscript:@"PHAdjustmentDataKey"];
  }

  v6.receiver = self;
  v6.super_class = PHMediaResourceResult;
  sanitizedInfoDictionary = [(PHCompositeMediaResult *)&v6 sanitizedInfoDictionary];

  return sanitizedInfoDictionary;
}

- (id)allowedInfoKeys
{
  v6.receiver = self;
  v6.super_class = PHMediaResourceResult;
  allowedInfoKeys = [(PHCompositeMediaResult *)&v6 allowedInfoKeys];
  v4 = [allowedInfoKeys mutableCopy];

  if ([(PHAssetResource *)self->_assetResource type]== PHAssetResourceTypeAdjustmentData || [(PHAssetResource *)self->_assetResource type]== 16)
  {
    [v4 addObject:@"PHAdjustmentDataKey"];
  }

  return v4;
}

- (BOOL)containsValidData
{
  if (!self->_assetResourceFileURL && !self->_assetResourceData)
  {
    return 0;
  }

  error = [(PHCompositeMediaResult *)self error];
  v3 = error == 0;

  return v3;
}

- (PHMediaResourceResult)initWithRequestID:(int)d assetResource:(id)resource
{
  v5 = *&d;
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = PHMediaResourceResult;
  v8 = [(PHCompositeMediaResult *)&v11 initWithRequestID:v5];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetResource, resource);
  }

  return v9;
}

@end