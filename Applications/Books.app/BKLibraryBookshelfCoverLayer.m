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
- (void)preloadCoverImageAtSize:(CGSize)a3;
- (void)setLibraryAsset:(id)a3 size:(CGSize)a4;
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
    v11 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    [v11 bounds];
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
    v23 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    v34 = v35;
    [v23 setAffineTransform:&v34];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  v24 = [(BKLibraryBookshelfCoverLayer *)self bottomAligned];
  v25 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  v26 = v25;
  if (v24)
  {
    [v25 setAnchorPoint:{0.5, 1.0}];

    MidX = CGRectGetMidX(rect_16);
    MaxY = CGRectGetMaxY(rect_16);
  }

  else
  {
    [v25 setAnchorPoint:{0.5, 0.5}];

    MidX = CGRectGetMidX(rect_16);
    MaxY = CGRectGetMidY(rect_16);
  }

  v29 = MaxY;
  v30 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [v30 setPosition:{MidX, v29}];

  if (![(BKLibraryBookshelfCoverLayer *)self animateFrameChange])
  {
    +[CATransaction commit];
  }
}

- (CGRect)coverBounds
{
  v2 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [v2 frame];
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

- (void)setLibraryAsset:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  libraryAsset = self->_libraryAsset;
  v14 = v8;
  if (libraryAsset == v8)
  {
    [(BKLibraryBookshelfCoverLayer *)self coverSize];
    if (v11 == width && v10 == height)
    {
      goto LABEL_10;
    }

    libraryAsset = self->_libraryAsset;
    v8 = v14;
  }

  if (libraryAsset != v8)
  {
    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
  }

  objc_storeStrong(&self->_libraryAsset, a3);
  boundingPath = self->_boundingPath;
  self->_boundingPath = 0;

  [(BKLibraryBookshelfCoverLayer *)self setCoverSize:width, height];
  [(BKLibraryBookshelfCoverLayer *)self _reloadCoverImage];
LABEL_10:
}

- (void)preloadCoverImageAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  v7 = [v6 permanentOrTemporaryAssetID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
    v10 = [(BKLibraryBookshelfCoverLayer *)self coverEffectsEnvironment];
    v11 = [BKLibraryManager processingOptionsFor:v9 coverEffectsEnvironment:v10];

    objc_opt_class();
    v12 = +[BCCacheManager defaultCacheManager];
    v13 = [(BKLibraryBookshelfCoverLayer *)self _cachedCoverIdentifier];
    v14 = [v12 fetchLayerForAssetID:v13 size:v11 options:{width, height}];
    v16 = BUDynamicCast();

    v15 = [(BKLibraryBookshelfCoverLayer *)self vendedLayerDelegate];
    [v16 setVendedLayerDelegate:v15];

    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:v16];
  }
}

- (void)_reloadCoverImage
{
  v3 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
  [v3 removeFromSuperlayer];

  v4 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  v5 = [v4 permanentOrTemporaryAssetID];
  v6 = [v5 length];

  if (!v6)
  {
    return;
  }

  v24 = [(BKLibraryBookshelfCoverLayer *)self preloadedImageLayer];
  if (!v24)
  {
    goto LABEL_8;
  }

  [(BKLibraryBookshelfCoverLayer *)self coverSize];
  CGSizeScaleToScreen();
  v8 = v7;
  v10 = v9;
  v11 = [v24 describedImageRequested];
  [v11 imageSize];
  v13 = v12;
  v15 = v14;

  if (v13 != v8 || v15 != v10)
  {
    [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
LABEL_8:
    v16 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
    v17 = [(BKLibraryBookshelfCoverLayer *)self coverEffectsEnvironment];
    v18 = [BKLibraryManager processingOptionsFor:v16 coverEffectsEnvironment:v17];

    objc_opt_class();
    v19 = +[BCCacheManager defaultCacheManager];
    v20 = [(BKLibraryBookshelfCoverLayer *)self _cachedCoverIdentifier];
    [(BKLibraryBookshelfCoverLayer *)self coverSize];
    v21 = [v19 fetchLayerForAssetID:v20 size:v18 options:?];
    v22 = BUDynamicCast();

    v23 = [(BKLibraryBookshelfCoverLayer *)self vendedLayerDelegate];
    [v22 setVendedLayerDelegate:v23];

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
  [(BKLibraryBookshelfCoverLayer *)self addSublayer:v24];
  [(BKLibraryBookshelfCoverLayer *)self setImageLayer:v24];
  [(BKLibraryBookshelfCoverLayer *)self _layoutImagelayer];
  +[CATransaction commit];
  [(BKLibraryBookshelfCoverLayer *)self setPreloadedImageLayer:0];
LABEL_9:
}

- (id)_cachedCoverIdentifier
{
  v3 = [(BKLibraryBookshelfCoverLayer *)self libraryAsset];
  v4 = [v3 iTunesU];
  if (v4 && ([v3 temporaryAssetID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
  {
    v5 = [v3 temporaryAssetID];
  }

  else
  {
    v5 = [v3 permanentOrTemporaryAssetID];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return v5;
}

- (UIBezierPath)boundingPath
{
  if (!self->_boundingPath)
  {
    v3 = [(BKLibraryBookshelfCoverLayer *)self imageLayer];
    v4 = [v3 describedImageShown];
    v5 = [v4 stackOutline];

    if (v5)
    {
      v6 = [UIBezierPath bezierPathWithCGPath:v5];
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