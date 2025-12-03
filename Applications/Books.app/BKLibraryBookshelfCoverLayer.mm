@interface BKLibraryBookshelfCoverLayer
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryBookshelfCoverLayer)init;
- (CGRect)coverBounds;
- (CGRect)coverFrame;
- (CGSize)coverSize;
- (UIBezierPath)boundingPath;
- (id)_cachedCoverIdentifier;
- (void)_layoutImagelayer;
- (void)_reloadCoverImage;
- (void)dealloc;
- (void)preloadCoverImageAtSize:(CGSize)size;
- (void)setLibraryAsset:(id)asset size:(CGSize)size;
@end

@implementation BKLibraryBookshelfCoverLayer

- (BKLibraryBookshelfCoverLayer)init
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCoverLayer;
  result = [(BKLibraryBookshelfCoverLayer *)&v3 init];
  if (result)
  {
    result->_bottomAligned = 1;
  }

  return result;
}

- (void)dealloc
{
  [(BKLibraryBookshelfCoverLayer *)self setLibraryAsset:0];
  [(BKLibraryBookshelfCoverLayer *)self setCoverEffectsEnvironment:0];
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCoverLayer;
  [(BKLibraryBookshelfCoverLayer *)&v3 dealloc];
}

- (void)_layoutImagelayer
{
  [(BKLibraryBookshelfCoverLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  rect_16.size.width = v7;
  rect_16.size.height = v9;
  rect_16.origin.x = v3;
  rect_16.origin.y = v5;
  if ([(BKLibraryBookshelfCoverLayer *)self animateFrameChange])
  {
    imageLayer = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    [imageLayer bounds];
    v13 = v12;
    rect = v12;
    rect_8 = v14;
    v16 = v15;
    v18 = v17;

    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    Width = CGRectGetWidth(v36);
    v37.origin.x = v13;
    v37.origin.y = rect_8;
    v37.size.width = v16;
    v37.size.height = v18;
    v20 = Width / CGRectGetWidth(v37);
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    Height = CGRectGetHeight(v38);
    v39.origin.x = rect;
    v39.origin.y = rect_8;
    v39.size.width = v16;
    v39.size.height = v18;
    v22 = Height / CGRectGetHeight(v39);
    if (v20 < v22)
    {
      v22 = v20;
    }

    CGAffineTransformMakeScale(&v35, v22, v22);
    imageLayer2 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    v34 = v35;
    [imageLayer2 setAffineTransform:&v34];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  bottomAligned = [(BKLibraryBookshelfCoverLayer *)self bottomAligned];
  imageLayer3 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  v26 = imageLayer3;
  if (bottomAligned)
  {
    [imageLayer3 setAnchorPoint:{0.5, 1.0}];

    MidX = CGRectGetMidX(rect_16);
    MaxY = CGRectGetMaxY(rect_16);
  }

  else
  {
    [imageLayer3 setAnchorPoint:{0.5, 0.5}];

    MidX = CGRectGetMidX(rect_16);
    MaxY = CGRectGetMidY(rect_16);
  }

  v29 = MaxY;
  imageLayer4 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [imageLayer4 setPosition:{MidX, v29}];

  if (![(BKLibraryBookshelfCoverLayer *)self animateFrameChange])
  {
    +[CATransaction commit];
  }
}

- (CGRect)coverBounds
{
  imageLayer = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [imageLayer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setLibraryAsset:(id)asset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  libraryAsset = self->_libraryAsset;
  v14 = assetCopy;
  if (libraryAsset == assetCopy)
  {
    [(BKLibraryBookshelfCoverLayer *)self coverSize];
    if (v11 == width && v10 == height)
    {
      goto LABEL_10;
    }

    libraryAsset = self->_libraryAsset;
    assetCopy = v14;
  }

  if (libraryAsset != assetCopy)
  {
    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
  }

  objc_storeStrong(&self->_libraryAsset, asset);
  boundingPath = self->_boundingPath;
  self->_boundingPath = 0;

  [(BKLibraryBookshelfCoverLayer *)self setCoverSize:width, height];
  [(BKLibraryBookshelfCoverLayer *)self _reloadCoverImage];
LABEL_10:
}

- (void)preloadCoverImageAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  libraryAsset = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
  v8 = [permanentOrTemporaryAssetID length];

  if (v8)
  {
    libraryAsset2 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
    coverEffectsEnvironment = [(BKLibraryBookshelfCoverLayer *)self coverEffectsEnvironment];
    v11 = [BKLibraryManager processingOptionsFor:libraryAsset2 coverEffectsEnvironment:coverEffectsEnvironment];

    objc_opt_class();
    v12 = +[BCCacheManager defaultCacheManager];
    _cachedCoverIdentifier = [(BKLibraryBookshelfCoverLayer *)self _cachedCoverIdentifier];
    v14 = [v12 fetchLayerForAssetID:_cachedCoverIdentifier size:v11 options:{width, height}];
    v16 = BUDynamicCast();

    vendedLayerDelegate = [(BKLibraryBookshelfCoverLayer *)self vendedLayerDelegate];
    [v16 setVendedLayerDelegate:vendedLayerDelegate];

    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:v16];
  }
}

- (void)_reloadCoverImage
{
  imageLayer = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [imageLayer removeFromSuperlayer];

  libraryAsset = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
  v6 = [permanentOrTemporaryAssetID length];

  if (!v6)
  {
    return;
  }

  preloadedImageLayer = [(BKLibraryBookshelfCoverLayer *)self preloadedImageLayer];
  if (!preloadedImageLayer)
  {
    goto LABEL_8;
  }

  [(BKLibraryBookshelfCoverLayer *)self coverSize];
  CGSizeScaleToScreen();
  v8 = v7;
  v10 = v9;
  describedImageRequested = [preloadedImageLayer describedImageRequested];
  [describedImageRequested imageSize];
  v13 = v12;
  v15 = v14;

  if (v13 != v8 || v15 != v10)
  {
    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
LABEL_8:
    libraryAsset2 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
    coverEffectsEnvironment = [(BKLibraryBookshelfCoverLayer *)self coverEffectsEnvironment];
    v18 = [BKLibraryManager processingOptionsFor:libraryAsset2 coverEffectsEnvironment:coverEffectsEnvironment];

    objc_opt_class();
    v19 = +[BCCacheManager defaultCacheManager];
    _cachedCoverIdentifier = [(BKLibraryBookshelfCoverLayer *)self _cachedCoverIdentifier];
    [(BKLibraryBookshelfCoverLayer *)self coverSize];
    v21 = [v19 fetchLayerForAssetID:_cachedCoverIdentifier size:v18 options:?];
    v22 = BUDynamicCast();

    vendedLayerDelegate = [(BKLibraryBookshelfCoverLayer *)self vendedLayerDelegate];
    [v22 setVendedLayerDelegate:vendedLayerDelegate];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(BKLibraryBookshelfCoverLayer *)self addSublayer:v22];
    [(BKLibraryBookshelfCoverLayer *)self setImageLayer:v22];
    [(BKLibraryBookshelfCoverLayer *)self _layoutImagelayer];
    +[CATransaction commit];

    goto LABEL_9;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(BKLibraryBookshelfCoverLayer *)self addSublayer:preloadedImageLayer];
  [(BKLibraryBookshelfCoverLayer *)self setImageLayer:preloadedImageLayer];
  [(BKLibraryBookshelfCoverLayer *)self _layoutImagelayer];
  +[CATransaction commit];
  [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
LABEL_9:
}

- (id)_cachedCoverIdentifier
{
  libraryAsset = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  iTunesU = [libraryAsset iTunesU];
  if (iTunesU && ([libraryAsset temporaryAssetID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
  {
    temporaryAssetID = [libraryAsset temporaryAssetID];
  }

  else
  {
    temporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
    if (!iTunesU)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return temporaryAssetID;
}

- (UIBezierPath)boundingPath
{
  if (!self->_boundingPath)
  {
    imageLayer = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    describedImageShown = [imageLayer describedImageShown];
    stackOutline = [describedImageShown stackOutline];

    if (stackOutline)
    {
      v6 = [UIBezierPath bezierPathWithCGPath:stackOutline];
      boundingPath = self->_boundingPath;
      self->_boundingPath = v6;

      [(UIBezierPath *)self->_boundingPath bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(BKLibraryBookshelfCoverLayer *)self bounds];
      Height = CGRectGetHeight(v25);
      v26.origin.x = v9;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      v17 = Height - CGRectGetHeight(v26);
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      v18 = v17 - CGRectGetMinY(v27);
      v19 = self->_boundingPath;
      v28.origin.x = v9;
      v28.origin.y = v11;
      v28.size.width = v13;
      v28.size.height = v15;
      MinX = CGRectGetMinX(v28);
      CGAffineTransformMakeTranslation(&v23, -MinX, v18);
      [(UIBezierPath *)v19 applyTransform:&v23];
    }
  }

  v21 = self->_boundingPath;

  return v21;
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_coverEffectsEnvironment);

  return WeakRetained;
}

- (CGSize)coverSize
{
  width = self->_coverSize.width;
  height = self->_coverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)coverFrame
{
  x = self->_coverFrame.origin.x;
  y = self->_coverFrame.origin.y;
  width = self->_coverFrame.size.width;
  height = self->_coverFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end