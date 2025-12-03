@interface PDCRemoteAssetOriginalPreviewController
- (id)imageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode;
@end

@implementation PDCRemoteAssetOriginalPreviewController

- (id)imageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100001D30;
  v35 = sub_100001D40;
  v36 = 0;
  mediaType = [assetCopy mediaType];
  if (mediaType == 1)
  {
    v15 = objc_alloc_init(PHImageRequestOptions);
    [v15 setVersion:1];
    [v15 setDeliveryMode:1];
    [v15 setSynchronous:1];
    v16 = +[PHImageManager defaultManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100001D48;
    v24[3] = &unk_100004218;
    v27 = &v31;
    v10 = v15;
    v25 = v10;
    v26 = assetCopy;
    v28 = width;
    v29 = height;
    modeCopy = mode;
    [v16 requestImageForAsset:v26 targetSize:mode contentMode:v10 options:v24 resultHandler:{width, height}];

    v13 = v25;
  }

  else
  {
    if (mediaType != 2)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc_init(PHVideoRequestOptions);
    [v10 setVersion:1];
    v11 = dispatch_semaphore_create(0);
    v12 = +[PHImageManager defaultManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001E28;
    v19[3] = &unk_100004240;
    v21 = &v31;
    v22 = width;
    v23 = height;
    v13 = v11;
    v20 = v13;
    [v12 requestAVAssetForVideo:assetCopy options:v10 resultHandler:v19];

    v14 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v13, v14);
  }

LABEL_6:
  v17 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v17;
}

@end