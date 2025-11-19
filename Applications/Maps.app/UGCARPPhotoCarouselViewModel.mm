@interface UGCARPPhotoCarouselViewModel
- (CGSize)imageSizeForCell;
- (NSString)_maps_diffableDataSourceIdentifier;
- (UGCARPPhotoCarouselViewModel)initWithImageManager:(id)a3;
- (int)_loadPhotoFromAsset:(id)a3 shouldDegrade:(BOOL)a4 scale:(double)a5 progressHandler:(id)a6 completion:(id)a7;
- (void)_prepareImageThumbnailWithOriginalImage:(id)a3 targetSize:(CGSize)a4 scale:(double)a5 completion:(id)a6;
- (void)loadOriginalImageWithDisplayScale:(double)a3 progressHandler:(id)a4 completion:(id)a5;
- (void)loadThumbnailImageWithDisplayScale:(double)a3 completion:(id)a4;
@end

@implementation UGCARPPhotoCarouselViewModel

- (void)_prepareImageThumbnailWithOriginalImage:(id)a3 targetSize:(CGSize)a4 scale:(double)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005765F0;
  v12[3] = &unk_101627390;
  v13 = a3;
  v14 = a6;
  v10 = v13;
  v11 = v14;
  [MapsUIUtilities resizeImageIfNeeded:v10 toFrameSize:v12 displayScale:width completion:height, a5];
}

- (int)_loadPhotoFromAsset:(id)a3 shouldDegrade:(BOOL)a4 scale:(double)a5 progressHandler:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = objc_opt_new();
  [v15 setNetworkAccessAllowed:1];
  if (v10)
  {
    [v15 setDeliveryMode:0];
    v16 = a5 * 220.0;
    v17 = v16;
  }

  else
  {
    [v15 setDeliveryMode:1];
    v16 = [v12 pixelHeight];
    v17 = [v12 pixelWidth];
  }

  [v15 setProgressHandler:v13];
  objc_initWeak(&location, self);
  imageManager = self->_imageManager;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005767C8;
  v22[3] = &unk_101622198;
  objc_copyWeak(&v25, &location);
  v19 = v12;
  v23 = v19;
  v20 = v14;
  v24 = v20;
  LODWORD(imageManager) = [(PHCachingImageManager *)imageManager requestImageForAsset:v19 targetSize:1 contentMode:v15 options:v22 resultHandler:v16, v17];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return imageManager;
}

- (void)loadThumbnailImageWithDisplayScale:(double)a3 completion:(id)a4
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100576B8C;
  v15[3] = &unk_10165FEF8;
  v6 = a4;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  photoWithMetadata = self->_photoWithMetadata;
  if (photoWithMetadata)
  {
    v9 = [(UGCPhotoWithMetadata *)photoWithMetadata image];
    [(UGCARPPhotoCarouselViewModel *)self _prepareImageThumbnailWithOriginalImage:v9 targetSize:v7 scale:220.0 completion:220.0, a3];
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
      v14 = a3;
      v12 = v7;
      [(UGCARPPhotoCarouselViewModel *)self _loadPhotoFromAsset:asset shouldDegrade:1 scale:0 progressHandler:v11 completion:a3];
    }

    else
    {
      (v7[2])(v7, 0);
    }
  }
}

- (void)loadOriginalImageWithDisplayScale:(double)a3 progressHandler:(id)a4 completion:(id)a5
{
  v8 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100576E6C;
  v18[3] = &unk_1016220D0;
  v9 = a5;
  v19 = v9;
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
      v17 = v8;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100577008;
      v14[3] = &unk_101622148;
      v15 = v11;
      [(UGCARPPhotoCarouselViewModel *)self _loadPhotoFromAsset:asset shouldDegrade:0 scale:v16 progressHandler:v14 completion:a3];

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
    v4 = [(UGCPhotoWithMetadata *)photoWithMetadata image];
    [v4 size];
    v6 = v5;
    v7 = [(UGCPhotoWithMetadata *)self->_photoWithMetadata image];
    [v7 size];
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
  v3 = [(UGCARPPhotoCarouselViewModel *)self identifier];
  v4 = [v3 stringByAppendingFormat:@"%d", self->_enabled];

  return v4;
}

- (UGCARPPhotoCarouselViewModel)initWithImageManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UGCARPPhotoCarouselViewModel;
  v6 = [(UGCARPPhotoCarouselViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageManager, a3);
    v7->_enabled = 1;
  }

  return v7;
}

@end