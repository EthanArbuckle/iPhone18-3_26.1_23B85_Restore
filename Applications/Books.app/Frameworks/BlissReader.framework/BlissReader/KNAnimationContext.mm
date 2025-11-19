@interface KNAnimationContext
- (CATransform3D)slideProjectionMatrix;
- (CGRect)slideRect;
- (CGRect)unscaledSlideRect;
- (KNAnimationContext)initWithShowSize:(CGSize)a3 viewScale:(double)a4 baseLayer:(id)a5 isBaseLayerVisible:(BOOL)a6;
- (double)showScale;
- (void)dealloc;
@end

@implementation KNAnimationContext

- (KNAnimationContext)initWithShowSize:(CGSize)a3 viewScale:(double)a4 baseLayer:(id)a5 isBaseLayerVisible:(BOOL)a6
{
  v32.receiver = self;
  v32.super_class = KNAnimationContext;
  v9 = [(KNAnimationContext *)&v32 init];
  if (v9)
  {
    TSDRectWithSize();
    v9->mUnscaledSlideRect.origin.x = v10;
    v9->mUnscaledSlideRect.origin.y = v11;
    v9->mUnscaledSlideRect.size.width = v12;
    v9->mUnscaledSlideRect.size.height = v13;
    v9->mViewScale = a4;
    [a5 bounds];
    v9->mSlideRect.origin.x = v14;
    v9->mSlideRect.origin.y = v15;
    v9->mSlideRect.size.width = v16;
    v9->mSlideRect.size.height = v17;
    v9->mBaseLayer = [[CALayer alloc] initWithLayer:a5];
    [a5 bounds];
    [(CALayer *)v9->mBaseLayer setBounds:?];
    [a5 position];
    [(CALayer *)v9->mBaseLayer setPosition:?];
    v9->mBaseLayerVisible = a6;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)v9->mBaseLayer setSublayers:0];
    [(CALayer *)v9->mBaseLayer setName:@"Show base layer"];
    [(CALayer *)v9->mBaseLayer setMasksToBounds:1];
    [(CALayer *)v9->mBaseLayer setEdgeAntialiasingMask:0];
    +[CATransaction commit];
    v9->mFOVInRadians = 0.34906585;
    height = v9->mSlideRect.size.height;
    [(KNAnimationContext *)v9 fieldOfViewInRadians];
    v20 = tan(v19 * 0.5);
    v21 = height / (v20 + v20);
    memset(&v31, 0, sizeof(v31));
    [(KNAnimationContext *)v9 fieldOfViewInRadians];
    TSDTransform3DMakeProjection();
    memset(&v30, 0, sizeof(v30));
    CATransform3DMakeTranslation(&v30, v9->mSlideRect.size.width * -0.5 - v9->mSlideRect.origin.x, v9->mSlideRect.size.height * -0.5 - v9->mSlideRect.origin.y, -v21);
    a = v30;
    v27 = v31;
    CATransform3DConcat(&v29, &a, &v27);
    v22 = *&v29.m33;
    *&v9->mSlideProjectionMatrix.m31 = *&v29.m31;
    *&v9->mSlideProjectionMatrix.m33 = v22;
    v23 = *&v29.m43;
    *&v9->mSlideProjectionMatrix.m41 = *&v29.m41;
    *&v9->mSlideProjectionMatrix.m43 = v23;
    v24 = *&v29.m13;
    *&v9->mSlideProjectionMatrix.m11 = *&v29.m11;
    *&v9->mSlideProjectionMatrix.m13 = v24;
    v25 = *&v29.m23;
    *&v9->mSlideProjectionMatrix.m21 = *&v29.m21;
    *&v9->mSlideProjectionMatrix.m23 = v25;
    v9->mPixelAspectRatio = 1.0;
    v9->mCapabilities = objc_alloc_init(TSDCapabilities);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNAnimationContext;
  [(KNAnimationContext *)&v3 dealloc];
}

- (double)showScale
{
  v2 = [(KNAnimationContext *)self baseLayer];
  if (!v2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(CALayer *)v2 valueForKeyPath:@"transform.scale.x"];
  v4 = [(CALayer *)v2 valueForKeyPath:@"transform.scale.y"];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_5:
  [v3 tsu_CGFloatValue];
  v7 = v6;
  [v5 tsu_CGFloatValue];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  return fmin(v8, 1.0);
}

- (CGRect)slideRect
{
  x = self->mSlideRect.origin.x;
  y = self->mSlideRect.origin.y;
  width = self->mSlideRect.size.width;
  height = self->mSlideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unscaledSlideRect
{
  x = self->mUnscaledSlideRect.origin.x;
  y = self->mUnscaledSlideRect.origin.y;
  width = self->mUnscaledSlideRect.size.width;
  height = self->mUnscaledSlideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CATransform3D)slideProjectionMatrix
{
  v3 = *&self[1].m23;
  *&retstr->m31 = *&self[1].m21;
  *&retstr->m33 = v3;
  v4 = *&self[1].m33;
  *&retstr->m41 = *&self[1].m31;
  *&retstr->m43 = v4;
  v5 = *&self->m43;
  *&retstr->m11 = *&self->m41;
  *&retstr->m13 = v5;
  v6 = *&self[1].m13;
  *&retstr->m21 = *&self[1].m11;
  *&retstr->m23 = v6;
  return self;
}

@end