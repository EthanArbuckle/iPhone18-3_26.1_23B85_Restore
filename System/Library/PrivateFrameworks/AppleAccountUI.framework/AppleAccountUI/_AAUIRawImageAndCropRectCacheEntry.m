@interface _AAUIRawImageAndCropRectCacheEntry
+ (id)entryWithRawImage:(id)a3 rawCropRect:(CGRect)a4 serverCacheTag:(id)a5;
- (BOOL)isValid;
- (CGRect)rawCropRect;
@end

@implementation _AAUIRawImageAndCropRectCacheEntry

+ (id)entryWithRawImage:(id)a3 rawCropRect:(CGRect)a4 serverCacheTag:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = a5;
  v12 = objc_alloc_init(_AAUIRawImageAndCropRectCacheEntry);
  rawImage = v12->_rawImage;
  v12->_rawImage = v10;
  v14 = v10;

  v12->_rawCropRect.origin.x = x;
  v12->_rawCropRect.origin.y = y;
  v12->_rawCropRect.size.width = width;
  v12->_rawCropRect.size.height = height;
  v15 = [v11 copy];

  serverCacheTag = v12->_serverCacheTag;
  v12->_serverCacheTag = v15;

  v17 = [MEMORY[0x1E695DF00] date];
  v18 = [v17 dateByAddingTimeInterval:60.0];
  expirationDate = v12->_expirationDate;
  v12->_expirationDate = v18;

  return v12;
}

- (BOOL)isValid
{
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [v3 compare:self->_expirationDate] != 1;

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