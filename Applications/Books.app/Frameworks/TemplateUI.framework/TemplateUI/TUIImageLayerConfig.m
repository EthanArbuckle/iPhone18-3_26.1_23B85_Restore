@interface TUIImageLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (NSString)description;
- (TUIImageLayerConfig)initWithContentsScale:(double)a3 resource:(id)a4 load:(unint64_t)a5 cornerRadius:(double)a6 fallbackColor:(id)a7 contentsGravity:(id)a8 hflip:(BOOL)a9 crossfadesContents:(BOOL)a10 opacity:(double)a11 continuousCorners:(BOOL)a12 shouldRasterize:(BOOL)a13 blendMode:(id)a14;
- (id)_compositingFilter;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
- (void)configureLayer:(id)a3;
- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)a3;
@end

@implementation TUIImageLayerConfig

- (TUIImageLayerConfig)initWithContentsScale:(double)a3 resource:(id)a4 load:(unint64_t)a5 cornerRadius:(double)a6 fallbackColor:(id)a7 contentsGravity:(id)a8 hflip:(BOOL)a9 crossfadesContents:(BOOL)a10 opacity:(double)a11 continuousCorners:(BOOL)a12 shouldRasterize:(BOOL)a13 blendMode:(id)a14
{
  v22 = a4;
  v23 = a7;
  v24 = a8;
  v25 = a14;
  v33.receiver = self;
  v33.super_class = TUIImageLayerConfig;
  v26 = [(TUIImageLayerConfig *)&v33 init];
  v27 = v26;
  if (v26)
  {
    v26->_contentsScale = a3;
    objc_storeStrong(&v26->_resource, a4);
    v27->_load = a5;
    v27->_cornerRadius = a6;
    objc_storeStrong(&v27->_fallbackColor, a7);
    objc_storeStrong(&v27->_contentsGravity, a8);
    v27->_hflip = a9;
    v27->_crossfadesContents = a10;
    v27->_opacity = a11;
    v27->_continuousCorners = a12;
    v27->_shouldRasterize = a13;
    v28 = [v25 copy];
    blendMode = v27->_blendMode;
    v27->_blendMode = v28;
  }

  return v27;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    v7 = v6;
    if (v6 && self->_resource == v6->_resource && self->_contentsScale == v6->_contentsScale && self->_load == v6->_load && self->_cornerRadius == v6->_cornerRadius && ((fallbackColor = self->_fallbackColor, fallbackColor == v7[5]) || [(UIColor *)fallbackColor isEqual:?]) && ((contentsGravity = self->_contentsGravity, contentsGravity == v7[6]) || [(NSString *)contentsGravity isEqualToString:?]) && self->_hflip == *(v7 + 56) && self->_crossfadesContents == *(v7 + 57) && self->_opacity == *(v7 + 8) && self->_continuousCorners == *(v7 + 58) && self->_shouldRasterize == *(v7 + 72))
    {
      blendMode = self->_blendMode;
      if (blendMode == v7[10])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)blendMode isEqualToString:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p resource=%@>", v4, self, self->_resource];

  return v5;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  v5 = [(TUIImageResource *)self->_resource resource];
  [v6 collectResource:v5];

  [v6 collectImageResource:self->_resource];
}

- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)a3
{
  v3 = &kCACornerCurveContinuous;
  if (!self->_continuousCorners)
  {
    v3 = &kCACornerCurveCircular;
  }

  [a3 configWithContentsScale:self->_resource resource:self->_load load:*v3 cornerRadius:self->_fallbackColor cornerCurve:self->_contentsGravity fallbackColor:self->_crossfadesContents contentsGravity:self->_contentsScale crossfadesContents:self->_cornerRadius opacity:self->_opacity];
}

- (void)configureLayer:(id)a3
{
  v7 = a3;
  v4 = &kCACornerCurveContinuous;
  if (!self->_continuousCorners)
  {
    v4 = &kCACornerCurveCircular;
  }

  v5 = *v4;
  [v7 configWithContentsScale:self->_resource resource:self->_load load:v5 cornerRadius:self->_fallbackColor cornerCurve:self->_contentsGravity fallbackColor:self->_crossfadesContents contentsGravity:self->_contentsScale crossfadesContents:self->_cornerRadius opacity:self->_opacity];
  [v7 setShouldRasterize:self->_shouldRasterize];
  [v7 setCornerCurve:v5];
  [v7 setFlipsHorizontalAxis:self->_hflip];
  v6 = [(TUIImageLayerConfig *)self _compositingFilter];
  [v7 setCompositingFilter:v6];
}

- (id)_compositingFilter
{
  if (self->_blendMode)
  {
    v3 = [CAFilter filterWithType:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end