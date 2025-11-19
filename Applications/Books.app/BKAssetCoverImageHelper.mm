@interface BKAssetCoverImageHelper
- (BKAssetCoverImageHelper)initWithThumbnailGenerator:(id)a3 pluginRegistry:(id)a4;
- (void)_helper:(id)a3 coverImageWithCompletion:(id)a4;
- (void)_imageIOCoverImageFromURL:(id)a3 completion:(id)a4;
- (void)_pluginRegistryCoverImageFromURL:(id)a3 completion:(id)a4;
- (void)_thumbnailGeneratorCoverImageFromURL:(id)a3 completion:(id)a4;
- (void)coverImageFromURL:(id)a3 completion:(id)a4;
@end

@implementation BKAssetCoverImageHelper

- (BKAssetCoverImageHelper)initWithThumbnailGenerator:(id)a3 pluginRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BKAssetCoverImageHelper;
  v9 = [(BKAssetCoverImageHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginRegistry, a4);
    objc_storeStrong(&v10->_thumbnailGenerator, a3);
  }

  return v10;
}

- (void)coverImageFromURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A1380;
    v11[3] = &unk_100A05BE0;
    v13 = v7;
    v12 = v6;
    objc_copyWeak(&v14, &location);
    [(BKAssetCoverImageHelper *)self _thumbnailGeneratorCoverImageFromURL:v12 completion:v11];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078C448(v8);
    }

    v9 = objc_retainBlock(v7);
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"BKAssetCoverImageDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v10);
    }
  }
}

- (void)_thumbnailGeneratorCoverImageFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 pathExtension];
  v12 = [v11 lowercaseString];
  if ([v12 isEqualToString:@"epub"])
  {
    v13 = 2048.0;
  }

  else
  {
    v13 = 1024.0;
  }

  v14 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:v7 size:6 scale:v13 representationTypes:{v13, v10}];
  v15 = [(BKAssetCoverImageHelper *)self thumbnailGenerator];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A1924;
  v17[3] = &unk_100A05C08;
  v18 = v6;
  v16 = v6;
  [v15 generateBestRepresentationForRequest:v14 completionHandler:v17];
}

- (void)_pluginRegistryCoverImageFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAssetCoverImageHelper *)self pluginRegistry];
  v9 = [v8 pluginForURL:v7];

  v10 = [v9 helperForURL:v7 withOptions:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A1AC0;
  v12[3] = &unk_100A05C30;
  v13 = v6;
  v11 = v6;
  [(BKAssetCoverImageHelper *)self _helper:v10 coverImageWithCompletion:v12];
}

- (void)_helper:(id)a3 coverImageWithCompletion:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 helperCoverImageWithCompletion:v5];
      goto LABEL_10;
    }

    v7 = [v10 helperCoverImage];
    v8 = objc_retainBlock(v5);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v7);
    }
  }

  else
  {
    v6 = objc_retainBlock(v5);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

LABEL_10:
}

- (void)_imageIOCoverImageFromURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v7 = [v5 path];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:&v19];
  v10 = v9 & (v19 ^ 1);
  if (v10 == 1)
  {
    v11 = [v8 attributesOfItemAtPath:v7 error:0];
    v12 = [v11 fileSize];

    if (v12 >= BCImageMaxFileSize)
    {
      v17 = BKLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10078C518(v5, v12, v17);
      }
    }

    else
    {
      v13 = [UIImage imageWithContentsOfFile:v7];
      if (v13)
      {
        v14 = v13;
        v15 = objc_retainBlock(v6);
        v16 = v15;
        if (v15)
        {
          (*(v15 + 2))(v15, v14, 0);
        }

LABEL_14:

        goto LABEL_15;
      }
    }
  }

  v14 = objc_retainBlock(v6);
  if (v14)
  {
    if (v10)
    {
      v18 = 1002;
    }

    else
    {
      v18 = 1003;
    }

    v16 = [NSError errorWithDomain:@"BKAssetCoverImageDomain" code:v18 userInfo:0];
    v14[2](v14, 0, v16);
    goto LABEL_14;
  }

LABEL_15:
}

@end