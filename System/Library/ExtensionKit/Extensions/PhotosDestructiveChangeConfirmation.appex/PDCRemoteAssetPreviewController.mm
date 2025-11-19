@interface PDCRemoteAssetPreviewController
- (id)imageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5;
- (id)imagesWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 maximumCount:(unint64_t)a5;
@end

@implementation PDCRemoteAssetPreviewController

- (id)imageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000012AC;
  v26 = sub_1000012BC;
  v27 = 0;
  v9 = objc_alloc_init(PHImageRequestOptions);
  [v9 setDeliveryMode:1];
  [v9 setSynchronous:1];
  v10 = +[PHImageManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000012C4;
  v15[3] = &unk_100004218;
  v18 = &v22;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v19 = width;
  v20 = height;
  v21 = a5;
  [v10 requestImageForAsset:v12 targetSize:a5 contentMode:v11 options:v15 resultHandler:{width, height}];

  v13 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v13;
}

- (id)imagesWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 maximumCount:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(PDCRemoteAssetPreviewController *)self assetLocalIdentifiers];
  v11 = objc_alloc_init(PHPhotoLibraryManager);
  v12 = [(PDCRemoteAssetPreviewController *)self photoLibraryURL];
  v31 = 0;
  v13 = [v11 openPhotoLibraryWithURL:v12 options:0 error:&v31];
  v14 = v31;

  v15 = [NSMutableArray arrayWithCapacity:a5];
  if (v13)
  {
    v24 = v14;
    v25 = v11;
    v16 = [PHFetchOptions fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v13];
    [v16 setFetchLimit:a5];
    v26 = v10;
    v17 = [PHAsset fetchAssetsWithLocalIdentifiers:v10 options:v16];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(PDCRemoteAssetPreviewController *)self imageForAsset:*(*(&v27 + 1) + 8 * i) targetSize:a4 contentMode:width, height];
          if (v22)
          {
            [v15 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v19);
    }

    v11 = v25;
    v10 = v26;
    v14 = v24;
  }

  else
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to open library %@", buf, 0xCu);
    }
  }

  return v15;
}

@end