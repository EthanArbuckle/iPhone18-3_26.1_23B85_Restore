@interface PHImageResult
- (BOOL)containsValidData;
- (id)allowedInfoKeys;
- (id)sanitizedInfoDictionary;
- (int64_t)uiOrientation;
- (void)dealloc;
- (void)setExifOrientation:(id)a3;
- (void)setHighDynamicRangeGainMap:(__CVBuffer *)a3 orientation:(unsigned int)a4 averagePixelLuminance:(id)a5;
- (void)setImageRef:(CGImage *)a3;
@end

@implementation PHImageResult

- (BOOL)containsValidData
{
  if (self->_imageRef)
  {
    return 1;
  }

  v4 = [(PHImageResult *)self imageURL];
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    v5 = [(PHImageResult *)self imageData];
    v2 = v5 != 0;
  }

  return v2;
}

void __32__PHImageResult_allowedInfoKeys__block_invoke(uint64_t a1)
{
  v8[9] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7.receiver = *(a1 + 32);
  v7.super_class = PHImageResult;
  v3 = objc_msgSendSuper2(&v7, sel_allowedInfoKeys);
  v4 = [v2 initWithSet:v3];

  v8[0] = @"PHImageResultIsDegradedKey";
  v8[1] = @"PHImageResultIsPlaceholderKey";
  v8[2] = @"PHImageFileURLKey";
  v8[3] = @"PHImageFileDataKey";
  v8[4] = @"PHImageFileOrientationKey";
  v8[5] = @"PHImageFileUTIKey";
  v8[6] = @"PHImageFileHighDynamicRangeGainMapKey";
  v8[7] = @"PHImageFileHighDynamicRangeGainMapOrientationKey";
  v8[8] = @"PHImageFileHighDynamicRangeGainMapValueKey";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];
  [v4 addObjectsFromArray:v5];

  v6 = allowedInfoKeys_allowedKeys_18832;
  allowedInfoKeys_allowedKeys_18832 = v4;
}

- (void)dealloc
{
  CGImageRelease(self->_imageRef);
  v3.receiver = self;
  v3.super_class = PHImageResult;
  [(PHImageResult *)&v3 dealloc];
}

- (id)sanitizedInfoDictionary
{
  v7.receiver = self;
  v7.super_class = PHImageResult;
  v3 = [(PHCompositeMediaResult *)&v7 sanitizedInfoDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHImageResult isDegraded](self, "isDegraded")}];
  [v3 setObject:v4 forKeyedSubscript:@"PHImageResultIsDegradedKey"];

  if ([(PHImageResult *)self isPlaceholder])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsPlaceholderKey"];
  }

  if ([(PHImageResult *)self isDerivedFromDeferredPreview])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsDerivedFromDeferredPreviewKey"];
  }

  v5 = [(PHImageResult *)self uniformTypeIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"PHImageFileUTIKey"];

  return v3;
}

- (id)allowedInfoKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PHImageResult_allowedInfoKeys__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  if (allowedInfoKeys_onceToken_18831 != -1)
  {
    dispatch_once(&allowedInfoKeys_onceToken_18831, block);
  }

  return allowedInfoKeys_allowedKeys_18832;
}

- (int64_t)uiOrientation
{
  v2 = [(NSMutableDictionary *)self->super._mutableInfo objectForKeyedSubscript:@"PHImageFileOrientationKey"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setExifOrientation:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_exifOrientation, a3);
  if (v6)
  {
    [(NSNumber *)self->_exifOrientation intValue];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromExifOrientation()];
    [(NSMutableDictionary *)self->super._mutableInfo setObject:v5 forKeyedSubscript:@"PHImageFileOrientationKey"];
  }

  else
  {
    [(NSMutableDictionary *)self->super._mutableInfo removeObjectForKey:@"PHImageFileOrientationKey"];
  }
}

- (void)setHighDynamicRangeGainMap:(__CVBuffer *)a3 orientation:(unsigned int)a4 averagePixelLuminance:(id)a5
{
  v5 = *&a4;
  v8 = MEMORY[0x1E696AD98];
  v11 = a5;
  v9 = [v8 numberWithUnsignedInt:v5];
  [(NSMutableDictionary *)self->super._mutableInfo setObject:v9 forKeyedSubscript:@"PHImageFileHighDynamicRangeGainMapOrientationKey"];

  v10 = [MEMORY[0x1E69C0708] createImageRefFromAuxiliaryImagePixelBuffer:a3 applyingOrientation:v5 scaleFactor:1.0];
  [(NSMutableDictionary *)self->super._mutableInfo setObject:v10 forKeyedSubscript:@"PHImageFileHighDynamicRangeGainMapKey"];

  [(NSMutableDictionary *)self->super._mutableInfo setObject:v11 forKeyedSubscript:@"PHImageFileHighDynamicRangeGainMapValueKey"];
}

- (void)setImageRef:(CGImage *)a3
{
  CGImageRetain(a3);
  CGImageRelease(self->_imageRef);
  self->_imageRef = a3;
}

@end