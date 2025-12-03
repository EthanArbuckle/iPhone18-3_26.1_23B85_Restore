@interface BKLibraryBookOpenAnimatingSourceProxy
- (BKLibraryBookOpenAnimatingSourceProxy)initWithLibraryAsset:(id)asset coverHost:(id)host;
- (BOOL)coverAnimationSourceUseLargeCover;
- (CGRect)coverAnimationSourceFrame;
- (id)coverAnimationSourceImage;
- (id)coverAnimationSourceReferenceView;
- (id)coverAnimationSourceView;
- (int64_t)coverAnimationSourceAlignment;
- (void)coverAnimationSourceFinalize;
- (void)coverAnimationSourcePrepare;
@end

@implementation BKLibraryBookOpenAnimatingSourceProxy

- (BKLibraryBookOpenAnimatingSourceProxy)initWithLibraryAsset:(id)asset coverHost:(id)host
{
  assetCopy = asset;
  hostCopy = host;
  v12.receiver = self;
  v12.super_class = BKLibraryBookOpenAnimatingSourceProxy;
  v9 = [(BKLibraryBookOpenAnimatingSourceProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryAsset, asset);
    objc_storeStrong(&v10->_coverHost, host);
  }

  return v10;
}

- (BOOL)coverAnimationSourceUseLargeCover
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [coverHost coverAnimationSourceUseLargeCoverForLibraryAsset:libraryAsset];

  return v5;
}

- (id)coverAnimationSourceImage
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [coverHost coverImageForLibraryAsset:libraryAsset];

  return v5;
}

- (id)coverAnimationSourceView
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [coverHost coverAnimationSourceViewForLibraryAsset:libraryAsset];

  return v5;
}

- (int64_t)coverAnimationSourceAlignment
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  coverAnimationSourceAlignment = [coverHost coverAnimationSourceAlignment];

  return coverAnimationSourceAlignment;
}

- (CGRect)coverAnimationSourceFrame
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [coverHost coverRectForLibraryAsset:libraryAsset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)coverAnimationSourceReferenceView
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [coverHost coverAnimationSourceReferenceViewForLibraryAsset:libraryAsset];

  return v5;
}

- (void)coverAnimationSourcePrepare
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [coverHost coverAnimationSourcePrepareForLibraryAsset:libraryAsset];
}

- (void)coverAnimationSourceFinalize
{
  coverHost = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  libraryAsset = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [coverHost coverAnimationSourceFinalizeForLibraryAsset:libraryAsset];
}

@end