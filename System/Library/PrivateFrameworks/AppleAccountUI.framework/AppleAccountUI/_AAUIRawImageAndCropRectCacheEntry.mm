@interface _AAUIRawImageAndCropRectCacheEntry
+ (id)entryWithRawImage:(id)image rawCropRect:(CGRect)rect serverCacheTag:(id)tag;
- (BOOL)isValid;
- (CGRect)rawCropRect;
@end

@implementation _AAUIRawImageAndCropRectCacheEntry

+ (id)entryWithRawImage:(id)image rawCropRect:(CGRect)rect serverCacheTag:(id)tag
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  tagCopy = tag;
  v12 = objc_alloc_init(_AAUIRawImageAndCropRectCacheEntry);
  rawImage = v12->_rawImage;
  v12->_rawImage = imageCopy;
  v14 = imageCopy;

  v12->_rawCropRect.origin.x = x;
  v12->_rawCropRect.origin.y = y;
  v12->_rawCropRect.size.width = width;
  v12->_rawCropRect.size.height = height;
  v15 = [tagCopy copy];

  serverCacheTag = v12->_serverCacheTag;
  v12->_serverCacheTag = v15;

  date = [MEMORY[0x1E695DF00] date];
  v18 = [date dateByAddingTimeInterval:60.0];
  expirationDate = v12->_expirationDate;
  v12->_expirationDate = v18;

  return v12;
}

- (BOOL)isValid
{
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [date compare:self->_expirationDate] != 1;

  return self;
}

- (CGRect)rawCropRect
{
  x = self->_rawCropRect.origin.x;
  y = self->_rawCropRect.origin.y;
  width = self->_rawCropRect.size.width;
  height = self->_rawCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end