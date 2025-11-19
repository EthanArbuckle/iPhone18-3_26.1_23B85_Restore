@interface PHMomentSharePreview
- (CGRect)cropRect;
- (PHMomentSharePreview)initWithThumbnailImageData:(id)a3 previewData:(id)a4;
- (id)description;
@end

@implementation PHMomentSharePreview

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSData *)self->_thumbnailImageData length];
  v5 = [(NSArray *)self->_previewImageData firstObject];
  v6 = [v5 length];
  v7 = [(PHMomentSharePreview *)self keyAssetIdentifier];
  v8 = NSStringFromRect(self->_cropRect);
  v9 = [v3 stringWithFormat:@"Thumbnail:%lu bytes Preview:%lu bytes Key Asset:%@ Crop rect:%@", v4, v6, v7, v8];

  return v9;
}

- (PHMomentSharePreview)initWithThumbnailImageData:(id)a3 previewData:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = PHMomentSharePreview;
  v9 = [(PHMomentSharePreview *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_thumbnailImageData, a3);
    v11 = [objc_alloc(MEMORY[0x1E6994B28]) initWithData:v8];
    previewData = v10->_previewData;
    v10->_previewData = v11;

    v13 = [(CPLMomentSharePreviewData *)v10->_previewData previewImageDatas];
    previewImageData = v10->_previewImageData;
    v10->_previewImageData = v13;

    v15 = [(CPLMomentSharePreviewData *)v10->_previewData keyAssetIdentifier];
    if (v15)
    {
      v16 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
      v17 = [v16 librarySpecificFetchOptions];

      v29[0] = v15;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v19 = [PHAsset fetchAssetsWithCloudIdentifiers:v18 options:v17];
      v20 = [v19 firstObject];
      keyAsset = v10->_keyAsset;
      v10->_keyAsset = v20;
    }

    v22 = [(CPLMomentSharePreviewData *)v10->_previewData cropRectString];
    v23 = v22;
    if (v22)
    {
      v10->_cropRect = NSRectFromString(v22);
    }

    v24 = [(CPLMomentSharePreviewData *)v10->_previewData curatedAssetIdentifiers];
    if ([v24 count])
    {
      v25 = [v24 copy];
      curatedAssetIdentifiers = v10->_curatedAssetIdentifiers;
      v10->_curatedAssetIdentifiers = v25;
    }
  }

  return v10;
}

@end