@interface _BCPPTCacheManager
- (_BCPPTCacheManager)initWithClassDefinitions:(id)definitions highPriorityGeneralQueue:(id)queue lowPriorityGeneralQueue:(id)generalQueue highPriorityTargetQueue:(id)targetQueue backgroundTargetQueue:(id)backgroundTargetQueue delegate:(id)delegate;
- (id)describedImagesFromProductProfile:(id)profile;
- (id)fetchLayerForAssetID:(id)d size:(CGSize)size options:(unsigned __int16)options;
- (void)fetchCGImageFor:(id)for forRequest:(id)request completion:(id)completion;
- (void)fetchCGImageFor:(id)for forRequest:(id)request timeOut:(double)out waitForNonGeneric:(BOOL)generic completion:(id)completion;
- (void)fetchDescribedImageFileURLForImage:(id)image completion:(id)completion;
- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion;
- (void)imageColorForIdentifier:(id)identifier completion:(id)completion;
@end

@implementation _BCPPTCacheManager

- (id)describedImagesFromProductProfile:(id)profile
{
  v3 = +[_BCPPTFlawlessImageEntry entry];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)fetchDescribedImageFileURLForImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  v4 = +[_BCPPTFlawlessImageEntry entry];
  v5 = sub_18110(v4);

  filePath = [v5 filePath];
  if (filePath)
  {
    v7 = [NSURL fileURLWithPath:filePath];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_retainBlock(completionCopy);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v7);
  }
}

- (id)fetchLayerForAssetID:(id)d size:(CGSize)size options:(unsigned __int16)options
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(CALayer);
  v8 = [_BCPPTImageSet imageColor]_0();
  [v7 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

  [v7 setFrame:{CGPointZero.x, CGPointZero.y, width, height}];

  return v7;
}

- (_BCPPTCacheManager)initWithClassDefinitions:(id)definitions highPriorityGeneralQueue:(id)queue lowPriorityGeneralQueue:(id)generalQueue highPriorityTargetQueue:(id)targetQueue backgroundTargetQueue:(id)backgroundTargetQueue delegate:(id)delegate
{
  v9 = objc_alloc_init(objc_opt_class());

  return v9;
}

- (void)fetchCGImageFor:(id)for forRequest:(id)request completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v8 = v5;
    v6 = +[_BCPPTFlawlessImageEntry entry];
    v7 = sub_18110(v6);
    v8[2](v8, v7);

    v5 = v8;
  }
}

- (void)fetchCGImageFor:(id)for forRequest:(id)request timeOut:(double)out waitForNonGeneric:(BOOL)generic completion:(id)completion
{
  v7 = objc_retainBlock(completion);
  if (v7)
  {
    v10 = v7;
    v8 = +[_BCPPTFlawlessImageEntry entry];
    v9 = sub_18110(v8);
    v10[2](v10, v9);

    v7 = v10;
  }
}

- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (void)imageColorForIdentifier:(id)identifier completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v6 = v4;
    v5 = [_BCPPTImageSet imageColor]_0();
    v6[2](v6, v5);

    v4 = v6;
  }
}

@end