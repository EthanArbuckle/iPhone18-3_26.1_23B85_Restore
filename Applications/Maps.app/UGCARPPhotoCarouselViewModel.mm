@interface UGCARPPhotoCarouselViewModel
- (CGSize)imageSizeForCell;
- (NSString)_maps_diffableDataSourceIdentifier;
- (UGCARPPhotoCarouselViewModel)initWithImageManager:(id)manager;
- (int)_loadPhotoFromAsset:(id)asset shouldDegrade:(BOOL)degrade scale:(double)scale progressHandler:(id)handler completion:(id)completion;
- (void)_prepareImageThumbnailWithOriginalImage:(id)image targetSize:(CGSize)size scale:(double)scale completion:(id)completion;
- (void)loadOriginalImageWithDisplayScale:(double)scale progressHandler:(id)handler completion:(id)completion;
- (void)loadThumbnailImageWithDisplayScale:(double)scale completion:(id)completion;
@end

@implementation UGCARPPhotoCarouselViewModel

- (void)_prepareImageThumbnailWithOriginalImage:(id)image targetSize:(CGSize)size scale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005765F0;
  v12[3] = &unk_101627390;
  imageCopy = image;
  completionCopy = completion;
  v10 = imageCopy;
  v11 = completionCopy;
  [MapsUIUtilities resizeImageIfNeeded:v10 toFrameSize:v12 displayScale:width completion:height, scale];
}

- (int)_loadPhotoFromAsset:(id)asset shouldDegrade:(BOOL)degrade scale:(double)scale progressHandler:(id)handler completion:(id)completion
{
  degradeCopy = degrade;
  assetCopy = asset;
  handlerCopy = handler;
  completionCopy = completion;
  v15 = objc_opt_new();
  [v15 setNetworkAccessAllowed:1];
  if (degradeCopy)
  {
    [v15 setDeliveryMode:0];
    pixelHeight = scale * 220.0;
    pixelWidth = pixelHeight;
  }

  else
  {
    [v15 setDeliveryMode:1];
    pixelHeight = [assetCopy pixelHeight];
    pixelWidth = [assetCopy pixelWidth];
  }

  [v15 setProgressHandler:handlerCopy];
  objc_initWeak(&location, self);
  imageManager = self->_imageManager;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005767C8;
  v22[3] = &unk_101622198;
  objc_copyWeak(&v25, &location);
  v19 = assetCopy;
  v23 = v19;
  v20 = completionCopy;
  v24 = v20;
  LODWORD(imageManager) = [(PHCachingImageManager *)imageManager requestImageForAsset:v19 targetSize:1 contentMode:v15 options:v22 resultHandler:pixelHeight, pixelWidth];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return imageManager;
}

- (void)loadThumbnailImageWithDisplayScale:(double)scale completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100576B8C;
  v15[3] = &unk_10165FEF8;
  completionCopy = completion;
  v16 = completionCopy;
  v7 = objc_retainBlock(v15);
  photoWithMetadata = self->_photoWithMetadata;
  if (photoWithMetadata)
  {
    image = [(UGCPhotoWithMetadata *)photoWithMetadata image];
    [(UGCARPPhotoCarouselViewModel *)self _prepareImageThumbnailWithOriginalImage:image targetSize:v7 scale:220.0 completion:220.0, scale];
  }

  else
  {
    asset = self->_asset;
    if (asset)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100576C38;
      v11[3] = &unk_101622170;
      v11[4] = self;
      v13 = vdupq_n_s64(0x406B800000000000uLL);
      scaleCopy = scale;
      v12 = v7;
      [(UGCARPPhotoCarouselViewModel *)self _loadPhotoFromAsset:asset shouldDegrade:1 scale:0 progressHandler:v11 completion:scale];
    }

    else
    {
      (v7[2])(v7, 0);
    }
  }
}

- (void)loadOriginalImageWithDisplayScale:(double)scale progressHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100576E6C;
  v18[3] = &unk_1016220D0;
  completionCopy = completion;
  v19 = completionCopy;
  v10 = objc_retainBlock(v18);
  v11 = v10;
  if (self->_photoWithMetadata)
  {
    v12 = v10[2];
  }

  else
  {
    asset = self->_asset;
    if (asset)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100576F18;
      v16[3] = &unk_101622120;
      v17 = handlerCopy;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100577008;
      v14[3] = &unk_101622148;
      v15 = v11;
      [(UGCARPPhotoCarouselViewModel *)self _loadPhotoFromAsset:asset shouldDegrade:0 scale:v16 progressHandler:v14 completion:scale];

      goto LABEL_6;
    }

    v12 = v10[2];
  }

  v12();
LABEL_6:
}

- (CGSize)imageSizeForCell
{
  photoWithMetadata = self->_photoWithMetadata;
  if (photoWithMetadata)
  {
    image = [(UGCPhotoWithMetadata *)photoWithMetadata image];
    [image size];
    v6 = v5;
    image2 = [(UGCPhotoWithMetadata *)self->_photoWithMetadata image];
    [image2 size];
    v9 = v6 / v8;

    v10 = v9 * 220.0;
    if (v9 * 220.0 == 0.0)
    {
      v11 = sub_10057696C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134217984;
        v17 = v9;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Image width of 0 where aspect ratio is %f", &v16, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    asset = self->_asset;
    if (!asset)
    {
      v10 = 220.0;
      goto LABEL_12;
    }

    [(PHAsset *)asset aspectRatio];
    v14 = v13;
    v10 = v13 * 220.0;
    if (v10 == 0.0)
    {
      v11 = sub_10057696C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134217984;
        v17 = v14;
        goto LABEL_9;
      }

LABEL_10:

      v10 = 220.0;
    }
  }

LABEL_12:
  v15 = 220.0;
  result.height = v15;
  result.width = v10;
  return result;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  identifier = [(UGCARPPhotoCarouselViewModel *)self identifier];
  v4 = [identifier stringByAppendingFormat:@"%d", self->_enabled];

  return v4;
}

- (UGCARPPhotoCarouselViewModel)initWithImageManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = UGCARPPhotoCarouselViewModel;
  v6 = [(UGCARPPhotoCarouselViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageManager, manager);
    v7->_enabled = 1;
  }

  return v7;
}

@end