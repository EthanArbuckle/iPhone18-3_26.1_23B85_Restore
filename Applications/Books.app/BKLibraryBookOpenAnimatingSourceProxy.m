@interface BKLibraryBookOpenAnimatingSourceProxy
- (BKLibraryBookOpenAnimatingSourceProxy)initWithLibraryAsset:(id)a3 coverHost:(id)a4;
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

- (BKLibraryBookOpenAnimatingSourceProxy)initWithLibraryAsset:(id)a3 coverHost:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BKLibraryBookOpenAnimatingSourceProxy;
  v9 = [(BKLibraryBookOpenAnimatingSourceProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryAsset, a3);
    objc_storeStrong(&v10->_coverHost, a4);
  }

  return v10;
}

- (BOOL)coverAnimationSourceUseLargeCover
{
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [v3 coverAnimationSourceUseLargeCoverForLibraryAsset:v4];

  return v5;
}

- (id)coverAnimationSourceImage
{
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [v3 coverImageForLibraryAsset:v4];

  return v5;
}

- (id)coverAnimationSourceView
{
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [v3 coverAnimationSourceViewForLibraryAsset:v4];

  return v5;
}

- (int64_t)coverAnimationSourceAlignment
{
  v2 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v3 = [v2 coverAnimationSourceAlignment];

  return v3;
}

- (CGRect)coverAnimationSourceFrame
{
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [v3 coverRectForLibraryAsset:v4];
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
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  v5 = [v3 coverAnimationSourceReferenceViewForLibraryAsset:v4];

  return v5;
}

- (void)coverAnimationSourcePrepare
{
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [v4 coverAnimationSourcePrepareForLibraryAsset:v3];
}

- (void)coverAnimationSourceFinalize
{
  v4 = [(BKLibraryBookOpenAnimatingSourceProxy *)self coverHost];
  v3 = [(BKLibraryBookOpenAnimatingSourceProxy *)self libraryAsset];
  [v4 coverAnimationSourceFinalizeForLibraryAsset:v3];
}

@end