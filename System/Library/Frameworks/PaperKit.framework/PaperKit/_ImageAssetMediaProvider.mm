@interface _ImageAssetMediaProvider
- (_ImageAssetMediaProvider)initWithData:(id)a3;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
@end

@implementation _ImageAssetMediaProvider

- (_ImageAssetMediaProvider)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _ImageAssetMediaProvider;
  v5 = [(_ImageAssetMediaProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v9 = a7;
  v10 = [a3 image];
  (*(a7 + 2))(v9, v10, MEMORY[0x1E695E0F8]);

  return 0;
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 image];
  v12 = [v11 CGImage];
  v13 = [v10 image];

  v14 = [v13 imageOrientation];
  (*(a7 + 2))(v9, v12, v14, MEMORY[0x1E695E0F8]);

  return 0;
}

@end