@interface PHImageDecoderOptions
- (BOOL)shouldCrop;
- (CGRect)normalizedCropRect;
- (CGSize)targetSize;
- (PHImageDecoderOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)maximumLongSideLength;
@end

@implementation PHImageDecoderOptions

- (PHImageDecoderOptions)init
{
  v3.receiver = self;
  v3.super_class = PHImageDecoderOptions;
  result = [(PHImageDecoderOptions *)&v3 init];
  if (result)
  {
    result->_allowFallbackDecoder = 1;
    result->_targetHDRHeadroom = 1.0;
  }

  return result;
}

- (int64_t)maximumLongSideLength
{
  if (!self->_resizeMode)
  {
    return 0;
  }

  width = self->_targetSize.width;
  if (width <= self->_targetSize.height)
  {
    return self->_targetSize.height;
  }

  return width;
}

- (BOOL)shouldCrop
{
  if (!CGRectEqualToRect(self->_normalizedCropRect, *MEMORY[0x1E695F058]))
  {
    v4.origin.x = 0.0;
    v4.origin.y = 0.0;
    v4.size.width = 1.0;
    v4.size.height = 1.0;
    if (!CGRectEqualToRect(self->_normalizedCropRect, v4))
    {
      return 1;
    }
  }

  if (self->_resizeMode == 2)
  {
    return self->_contentMode == 1;
  }

  return 0;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_shouldLoadGainMap;
  *(result + 4) = self->_resizeMode;
  *(result + 9) = self->_optimizeForDrawing;
  *(result + 10) = self->_highPriority;
  *(result + 11) = self->_waitUntilComplete;
  size = self->_normalizedCropRect.size;
  *(result + 56) = self->_normalizedCropRect.origin;
  *(result + 72) = size;
  *(result + 3) = self->_contentMode;
  *(result + 40) = self->_targetSize;
  *(result + 12) = self->_allowFallbackDecoder;
  *(result + 13) = self->_preferSWDecode;
  *(result + 14) = self->_useLowMemoryMode;
  *(result + 15) = self->_decodeAsHDR;
  *(result + 4) = LODWORD(self->_targetHDRHeadroom);
  return result;
}

@end