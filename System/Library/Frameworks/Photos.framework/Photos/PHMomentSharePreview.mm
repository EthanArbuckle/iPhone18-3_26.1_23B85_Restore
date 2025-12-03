@interface PHMomentSharePreview
- (CGRect)cropRect;
- (PHMomentSharePreview)initWithThumbnailImageData:(id)data previewData:(id)previewData;
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
  firstObject = [(NSArray *)self->_previewImageData firstObject];
  v6 = [firstObject length];
  keyAssetIdentifier = [(PHMomentSharePreview *)self keyAssetIdentifier];
  v8 = NSStringFromRect(self->_cropRect);
  v9 = [v3 stringWithFormat:@"Thumbnail:%lu bytes Preview:%lu bytes Key Asset:%@ Crop rect:%@", v4, v6, keyAssetIdentifier, v8];

  return v9;
}

- (PHMomentSharePreview)initWithThumbnailImageData:(id)data previewData:(id)previewData
{
  v29[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  previewDataCopy = previewData;
  v28.receiver = self;
  v28.super_class = PHMomentSharePreview;
  v9 = [(PHMomentSharePreview *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_thumbnailImageData, data);
    v11 = [objc_alloc(MEMORY[0x1E6994B28]) initWithData:previewDataCopy];
    previewData = v10->_previewData;
    v10->_previewData = v11;

    previewImageDatas = [(CPLMomentSharePreviewData *)v10->_previewData previewImageDatas];
    previewImageData = v10->_previewImageData;
    v10->_previewImageData = previewImageDatas;

    keyAssetIdentifier = [(CPLMomentSharePreviewData *)v10->_previewData keyAssetIdentifier];
    if (keyAssetIdentifier)
    {
      v16 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
      librarySpecificFetchOptions = [v16 librarySpecificFetchOptions];

      v29[0] = keyAssetIdentifier;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v19 = [PHAsset fetchAssetsWithCloudIdentifiers:v18 options:librarySpecificFetchOptions];
      firstObject = [v19 firstObject];
      keyAsset = v10->_keyAsset;
      v10->_keyAsset = firstObject;
    }

    cropRectString = [(CPLMomentSharePreviewData *)v10->_previewData cropRectString];
    v23 = cropRectString;
    if (cropRectString)
    {
      v10->_cropRect = NSRectFromString(cropRectString);
    }

    curatedAssetIdentifiers = [(CPLMomentSharePreviewData *)v10->_previewData curatedAssetIdentifiers];
    if ([curatedAssetIdentifiers count])
    {
      v25 = [curatedAssetIdentifiers copy];
      curatedAssetIdentifiers = v10->_curatedAssetIdentifiers;
      v10->_curatedAssetIdentifiers = v25;
    }
  }

  return v10;
}

@end