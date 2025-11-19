@interface CRLMediaRep
+ (id)CRLSpatialLabelColor;
- (BOOL)i_shouldRenderStroke:(id)a3;
- (BOOL)shouldDisplayAsSpatial;
- (CRLMediaLayout)mediaLayout;
- (id)additionalRenderablesOverRenderable;
- (id)p_spatialGlyphRenderable;
- (int64_t)supportedMediaTypes;
- (void)documentModeDidChange;
- (void)processChangedProperty:(unint64_t)a3;
- (void)updateSpatialLabel;
@end

@implementation CRLMediaRep

- (CRLMediaLayout)mediaLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLMediaRep;
  [(CRLStyledRep *)&v5 processChangedProperty:?];
  if (a3 == 20)
  {
    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (int64_t)supportedMediaTypes
{
  v2 = [(CRLCanvasRep *)self layout];
  if ([v2 isInGroup])
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

- (id)p_spatialGlyphRenderable
{
  mGlyphRenderable = self->mGlyphRenderable;
  if (!mGlyphRenderable)
  {
    v4 = +[CRLCanvasRenderable renderable];
    v5 = self->mGlyphRenderable;
    self->mGlyphRenderable = v4;

    v6 = [UIImage crl_imageNamed:@"spatial.cube" withPointSize:25.0];
    v7 = [CRLImage imageWithUIImage:v6];

    v8 = +[CRLMediaRep CRLSpatialLabelColor];
    v9 = [v7 compositedImageWithColor:v8 alpha:20 blendMode:1.0];

    -[CRLCanvasRenderable setContents:](self->mGlyphRenderable, "setContents:", [v9 CGImage]);
    [(CRLCanvasRenderable *)self->mGlyphRenderable setOpacity:0.0];
    [(CRLCanvasRenderable *)self->mGlyphRenderable setAnchorPoint:CGPointZero.x, CGPointZero.y];

    mGlyphRenderable = self->mGlyphRenderable;
  }

  return mGlyphRenderable;
}

- (BOOL)shouldDisplayAsSpatial
{
  v2 = [(CRLMediaRep *)self mediaLayout];
  v3 = [v2 mediaItem];
  v4 = [v3 isSpatial];

  return v4;
}

- (void)updateSpatialLabel
{
  if (self->mIsZooming || ![(CRLMediaRep *)self shouldDisplayAsSpatial])
  {
    if (self->mGlyphRenderable)
    {
      v36 = [(CRLMediaRep *)self p_spatialGlyphRenderable];
      [v36 setOpacity:0.0];
    }
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v3 = [(CRLCanvasRep *)self canvas];
    [v3 viewScale];
    v5 = v4;

    v6 = [(CRLCanvasRep *)self canvas];
    [(CRLCanvasRep *)self naturalBounds];
    [v6 convertUnscaledToBoundsRect:?];
    v8 = v7;

    v9 = [(CRLMediaRep *)self p_spatialGlyphRenderable];
    v10 = v9;
    *&v11 = COERCE_UNSIGNED_INT(1.0) | 0x4055400000000000;
    if (v8 < 85.0)
    {
      *&v11 = 0.0;
    }

    [v9 setOpacity:v11];
    [v10 setBounds:{0.0, 0.0, 25.0, 25.0}];
    v12 = 8.0;
    if (v8 >= 140.0)
    {
      if (v5 == 0.0)
      {
        v12 = 16.0;
      }

      else
      {
        v12 = 16.0 / v5;
      }
    }

    v13 = sub_1004A48FC();
    [(CRLCanvasRep *)self naturalBounds];
    if (v13)
    {
      MaxX = CGRectGetMaxX(*&v14);
      [(CRLCanvasRep *)self naturalBounds];
      MinY = CGRectGetMinY(v40);
      v20 = MaxX - v12;
    }

    else
    {
      MinX = CGRectGetMinX(*&v14);
      [(CRLCanvasRep *)self naturalBounds];
      MinY = CGRectGetMinY(v41);
      v20 = v12 + MinX;
    }

    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:v20, v12 + MinY];
    v24 = sub_10011F340(v22, v23, v5);
    v26 = v25;
    if (sub_1004A48FC())
    {
      v24 = v24 + -25.0;
    }

    v27 = [(CRLCanvasRep *)self parentRep];

    if (v27)
    {
      v28 = [(CRLCanvasRep *)self parentRep];
      [v28 layerFrameInScaledCanvas];
      v24 = sub_10011F31C(v24, v26, v29);
      v26 = v30;
    }

    [v10 setPosition:{v24, v26}];
    v31 = [(CRLCanvasRep *)self layout];
    v32 = [v31 geometryInRoot];
    v33 = v32;
    if (v32)
    {
      [v32 transform];
    }

    else
    {
      memset(&v38, 0, sizeof(v38));
    }

    v34 = sub_1001399C0(&v38.a);

    CGAffineTransformMakeRotation(&v37, v34);
    v35 = [v10 layer];
    v38 = v37;
    [v35 setAffineTransform:&v38];

    +[CATransaction commit];
  }
}

- (id)additionalRenderablesOverRenderable
{
  v10.receiver = self;
  v10.super_class = CRLMediaRep;
  v3 = [(CRLCanvasRep *)&v10 additionalRenderablesOverRenderable];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(CRLMediaRep *)self mediaLayout];
  v6 = [v5 mediaItem];
  v7 = [v6 isSpatial];

  if (v7)
  {
    v8 = [(CRLMediaRep *)self p_spatialGlyphRenderable];
    [v4 addObject:v8];
  }

  return v4;
}

+ (id)CRLSpatialLabelColor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1003BE2BC;
  v10 = sub_1003BE2CC;
  v11 = 0;
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003BE2D4;
  v5[3] = &unk_1018430F8;
  v5[4] = &v6;
  [UITraitCollection crl_withTraitCollectionAsCurrent:v2 performBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)documentModeDidChange
{
  v3.receiver = self;
  v3.super_class = CRLMediaRep;
  [(CRLCanvasRep *)&v3 documentModeDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (BOOL)i_shouldRenderStroke:(id)a3
{
  v3 = a3;
  v4 = +[NSNull null];
  v5 = 0;
  if (v3 && v4 != v3)
  {
    v5 = [(NSNull *)v3 shouldRender];
  }

  return v5;
}

@end