@interface BKAssetCoverImageHelper
- (BKAssetCoverImageHelper)initWithThumbnailGenerator:(id)generator pluginRegistry:(id)registry;
- (void)_helper:(id)_helper coverImageWithCompletion:(id)completion;
- (void)_imageIOCoverImageFromURL:(id)l completion:(id)completion;
- (void)_pluginRegistryCoverImageFromURL:(id)l completion:(id)completion;
- (void)_thumbnailGeneratorCoverImageFromURL:(id)l completion:(id)completion;
- (void)coverImageFromURL:(id)l completion:(id)completion;
@end

@implementation BKAssetCoverImageHelper

- (BKAssetCoverImageHelper)initWithThumbnailGenerator:(id)generator pluginRegistry:(id)registry
{
  generatorCopy = generator;
  registryCopy = registry;
  v12.receiver = self;
  v12.super_class = BKAssetCoverImageHelper;
  v9 = [(BKAssetCoverImageHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginRegistry, registry);
    objc_storeStrong(&v10->_thumbnailGenerator, generator);
  }

  return v10;
}

- (void)coverImageFromURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (lCopy)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A1380;
    v11[3] = &unk_100A05BE0;
    v13 = completionCopy;
    v12 = lCopy;
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

    v9 = objc_retainBlock(completionCopy);
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"BKAssetCoverImageDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v10);
    }
  }
}

- (void)_thumbnailGeneratorCoverImageFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;

  pathExtension = [lCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  if ([lowercaseString isEqualToString:@"epub"])
  {
    v13 = 2048.0;
  }

  else
  {
    v13 = 1024.0;
  }

  v14 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:lCopy size:6 scale:v13 representationTypes:{v13, v10}];
  thumbnailGenerator = [(BKAssetCoverImageHelper *)self thumbnailGenerator];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A1924;
  v17[3] = &unk_100A05C08;
  v18 = completionCopy;
  v16 = completionCopy;
  [thumbnailGenerator generateBestRepresentationForRequest:v14 completionHandler:v17];
}

- (void)_pluginRegistryCoverImageFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  pluginRegistry = [(BKAssetCoverImageHelper *)self pluginRegistry];
  v9 = [pluginRegistry pluginForURL:lCopy];

  v10 = [v9 helperForURL:lCopy withOptions:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A1AC0;
  v12[3] = &unk_100A05C30;
  v13 = completionCopy;
  v11 = completionCopy;
  [(BKAssetCoverImageHelper *)self _helper:v10 coverImageWithCompletion:v12];
}

- (void)_helper:(id)_helper coverImageWithCompletion:(id)completion
{
  _helperCopy = _helper;
  completionCopy = completion;
  if (_helperCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [_helperCopy helperCoverImageWithCompletion:completionCopy];
      goto LABEL_10;
    }

    helperCoverImage = [_helperCopy helperCoverImage];
    v8 = objc_retainBlock(completionCopy);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, helperCoverImage);
    }
  }

  else
  {
    v6 = objc_retainBlock(completionCopy);
    helperCoverImage = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

LABEL_10:
}

- (void)_imageIOCoverImageFromURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v19 = 0;
  path = [lCopy path];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:path isDirectory:&v19];
  v10 = v9 & (v19 ^ 1);
  if (v10 == 1)
  {
    v11 = [v8 attributesOfItemAtPath:path error:0];
    fileSize = [v11 fileSize];

    if (fileSize >= BCImageMaxFileSize)
    {
      v17 = BKLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10078C518(lCopy, fileSize, v17);
      }
    }

    else
    {
      v13 = [UIImage imageWithContentsOfFile:path];
      if (v13)
      {
        v14 = v13;
        v15 = objc_retainBlock(completionCopy);
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

  v14 = objc_retainBlock(completionCopy);
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