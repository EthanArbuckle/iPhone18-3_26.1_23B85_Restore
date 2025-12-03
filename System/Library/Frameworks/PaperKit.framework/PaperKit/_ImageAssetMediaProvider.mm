@interface _ImageAssetMediaProvider
- (_ImageAssetMediaProvider)initWithData:(id)data;
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
@end

@implementation _ImageAssetMediaProvider

- (_ImageAssetMediaProvider)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _ImageAssetMediaProvider;
  v5 = [(_ImageAssetMediaProvider *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  image = [asset image];
  (*(handler + 2))(handlerCopy, image, MEMORY[0x1E695E0F8]);

  return 0;
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  image = [assetCopy image];
  cGImage = [image CGImage];
  image2 = [assetCopy image];

  imageOrientation = [image2 imageOrientation];
  (*(handler + 2))(handlerCopy, cGImage, imageOrientation, MEMORY[0x1E695E0F8]);

  return 0;
}

@end