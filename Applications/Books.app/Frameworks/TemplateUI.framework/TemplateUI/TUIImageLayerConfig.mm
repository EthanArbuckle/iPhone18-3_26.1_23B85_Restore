@interface TUIImageLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (NSString)description;
- (TUIImageLayerConfig)initWithContentsScale:(double)scale resource:(id)resource load:(unint64_t)load cornerRadius:(double)radius fallbackColor:(id)color contentsGravity:(id)gravity hflip:(BOOL)hflip crossfadesContents:(BOOL)self0 opacity:(double)self1 continuousCorners:(BOOL)self2 shouldRasterize:(BOOL)self3 blendMode:(id)self4;
- (id)_compositingFilter;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)configureLayer:(id)layer;
- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)layer;
@end

@implementation TUIImageLayerConfig

- (TUIImageLayerConfig)initWithContentsScale:(double)scale resource:(id)resource load:(unint64_t)load cornerRadius:(double)radius fallbackColor:(id)color contentsGravity:(id)gravity hflip:(BOOL)hflip crossfadesContents:(BOOL)self0 opacity:(double)self1 continuousCorners:(BOOL)self2 shouldRasterize:(BOOL)self3 blendMode:(id)self4
{
  resourceCopy = resource;
  colorCopy = color;
  gravityCopy = gravity;
  modeCopy = mode;
  v33.receiver = self;
  v33.super_class = TUIImageLayerConfig;
  v26 = [(TUIImageLayerConfig *)&v33 init];
  v27 = v26;
  if (v26)
  {
    v26->_contentsScale = scale;
    objc_storeStrong(&v26->_resource, resource);
    v27->_load = load;
    v27->_cornerRadius = radius;
    objc_storeStrong(&v27->_fallbackColor, color);
    objc_storeStrong(&v27->_contentsGravity, gravity);
    v27->_hflip = hflip;
    v27->_crossfadesContents = contents;
    v27->_opacity = opacity;
    v27->_continuousCorners = corners;
    v27->_shouldRasterize = rasterize;
    v28 = [modeCopy copy];
    blendMode = v27->_blendMode;
    v27->_blendMode = v28;
  }

  return v27;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (self == configCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = configCopy;
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

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  resource = [(TUIImageResource *)self->_resource resource];
  [collectorCopy collectResource:resource];

  [collectorCopy collectImageResource:self->_resource];
}

- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)layer
{
  v3 = &kCACornerCurveContinuous;
  if (!self->_continuousCorners)
  {
    v3 = &kCACornerCurveCircular;
  }

  [layer configWithContentsScale:self->_resource resource:self->_load load:*v3 cornerRadius:self->_fallbackColor cornerCurve:self->_contentsGravity fallbackColor:self->_crossfadesContents contentsGravity:self->_contentsScale crossfadesContents:self->_cornerRadius opacity:self->_opacity];
}

- (void)configureLayer:(id)layer
{
  layerCopy = layer;
  v4 = &kCACornerCurveContinuous;
  if (!self->_continuousCorners)
  {
    v4 = &kCACornerCurveCircular;
  }

  v5 = *v4;
  [layerCopy configWithContentsScale:self->_resource resource:self->_load load:v5 cornerRadius:self->_fallbackColor cornerCurve:self->_contentsGravity fallbackColor:self->_crossfadesContents contentsGravity:self->_contentsScale crossfadesContents:self->_cornerRadius opacity:self->_opacity];
  [layerCopy setShouldRasterize:self->_shouldRasterize];
  [layerCopy setCornerCurve:v5];
  [layerCopy setFlipsHorizontalAxis:self->_hflip];
  _compositingFilter = [(TUIImageLayerConfig *)self _compositingFilter];
  [layerCopy setCompositingFilter:_compositingFilter];
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