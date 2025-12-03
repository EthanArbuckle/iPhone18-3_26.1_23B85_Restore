@interface BCCacheManager
- (void)_addTUIPurgeableImage:(id)image withIdentifier:(id)identifier;
- (void)addImageResource:(id)resource withIdentifier:(id)identifier completion:(id)completion;
- (void)imageResourceDidChangeImage:(id)image;
@end

@implementation BCCacheManager

- (void)addImageResource:(id)resource withIdentifier:(id)identifier completion:(id)completion
{
  resourceCopy = resource;
  identifierCopy = identifier;
  completionCopy = completion;
  if (resourceCopy && [identifierCopy length])
  {
    loadImage = [resourceCopy loadImage];
    v12 = loadImage;
    if (loadImage)
    {
      image = [loadImage image];
      [(BCCacheManager *)self _addTUIPurgeableImage:image withIdentifier:identifierCopy];

      v14 = objc_retainBlock(completionCopy);
      v15 = v14;
      if (v14)
      {
        (*(v14 + 2))(v14);
      }
    }

    else
    {
      v16 = BCImageCacheLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1007883A4(identifierCopy, v16);
      }

      objc_setAssociatedObject(resourceCopy, @"BCCoverCacheAssetIDKey", identifierCopy, 3);
      v17 = objc_retainBlock(completionCopy);
      objc_setAssociatedObject(resourceCopy, @"BCCoverCacheCompletionKey", v17, 1);

      [resourceCopy addObserver:self];
    }
  }
}

- (void)_addTUIPurgeableImage:(id)image withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cGImage = [image CGImage];
  if (cGImage)
  {
    v7 = cGImage;
    Width = CGImageGetWidth(cGImage);
    v9 = [BICDescribedImage describedImageWithIdentifier:identifierCopy size:0 processingOptions:Width, CGImageGetHeight(v7)];
    v10 = [BICImage imageWithCGImage:v7];
    [v9 setImage:v10];

    [v9 setQuality:203];
    [v9 setPriority:6];
    [v9 setRequestOptions:1024];
    v11 = +[BCCacheManager defaultCacheManager];
    v14 = v9;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [v11 addDescribedImages:v12];

    v13 = BCImageCacheLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10078841C(identifierCopy, v13);
    }
  }
}

- (void)imageResourceDidChangeImage:(id)image
{
  object = image;
  loadImage = [object loadImage];
  v5 = objc_getAssociatedObject(object, @"BCCoverCacheAssetIDKey");
  image = [loadImage image];
  [(BCCacheManager *)self _addTUIPurgeableImage:image withIdentifier:v5];

  v7 = objc_getAssociatedObject(object, @"BCCoverCacheCompletionKey");
  v8 = objc_retainBlock(v7);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }

  [object removeObserver:self];
  objc_setAssociatedObject(object, @"BCCoverCacheCompletionKey", 0, 1);
}

@end