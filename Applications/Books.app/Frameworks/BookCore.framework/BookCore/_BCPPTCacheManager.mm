@interface _BCPPTCacheManager
- (_BCPPTCacheManager)initWithClassDefinitions:(id)a3 highPriorityGeneralQueue:(id)a4 lowPriorityGeneralQueue:(id)a5 highPriorityTargetQueue:(id)a6 backgroundTargetQueue:(id)a7 delegate:(id)a8;
- (id)describedImagesFromProductProfile:(id)a3;
- (id)fetchLayerForAssetID:(id)a3 size:(CGSize)a4 options:(unsigned __int16)a5;
- (void)fetchCGImageFor:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)fetchCGImageFor:(id)a3 forRequest:(id)a4 timeOut:(double)a5 waitForNonGeneric:(BOOL)a6 completion:(id)a7;
- (void)fetchDescribedImageFileURLForImage:(id)a3 completion:(id)a4;
- (void)fetchMetadataForIdentifier:(id)a3 completion:(id)a4;
- (void)imageColorForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation _BCPPTCacheManager

- (id)describedImagesFromProductProfile:(id)a3
{
  v3 = +[_BCPPTFlawlessImageEntry entry];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)fetchDescribedImageFileURLForImage:(id)a3 completion:(id)a4
{
  v10 = a4;
  v4 = +[_BCPPTFlawlessImageEntry entry];
  v5 = sub_18110(v4);

  v6 = [v5 filePath];
  if (v6)
  {
    v7 = [NSURL fileURLWithPath:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_retainBlock(v10);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v7);
  }
}

- (id)fetchLayerForAssetID:(id)a3 size:(CGSize)a4 options:(unsigned __int16)a5
{
  height = a4.height;
  width = a4.width;
  v7 = objc_alloc_init(CALayer);
  v8 = [_BCPPTImageSet imageColor]_0();
  [v7 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

  [v7 setFrame:{CGPointZero.x, CGPointZero.y, width, height}];

  return v7;
}

- (_BCPPTCacheManager)initWithClassDefinitions:(id)a3 highPriorityGeneralQueue:(id)a4 lowPriorityGeneralQueue:(id)a5 highPriorityTargetQueue:(id)a6 backgroundTargetQueue:(id)a7 delegate:(id)a8
{
  v9 = objc_alloc_init(objc_opt_class());

  return v9;
}

- (void)fetchCGImageFor:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v8 = v5;
    v6 = +[_BCPPTFlawlessImageEntry entry];
    v7 = sub_18110(v6);
    v8[2](v8, v7);

    v5 = v8;
  }
}

- (void)fetchCGImageFor:(id)a3 forRequest:(id)a4 timeOut:(double)a5 waitForNonGeneric:(BOOL)a6 completion:(id)a7
{
  v7 = objc_retainBlock(a7);
  if (v7)
  {
    v10 = v7;
    v8 = +[_BCPPTFlawlessImageEntry entry];
    v9 = sub_18110(v8);
    v10[2](v10, v9);

    v7 = v10;
  }
}

- (void)fetchMetadataForIdentifier:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (void)imageColorForIdentifier:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v6 = v4;
    v5 = [_BCPPTImageSet imageColor]_0();
    v6[2](v6, v5);

    v4 = v6;
  }
}

@end