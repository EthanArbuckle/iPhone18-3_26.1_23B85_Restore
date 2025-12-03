@interface _TUISymbolImageLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (_TUISymbolImageLayerConfig)initWithContentsScale:(double)scale image:(id)image color:(id)color hflip:(BOOL)hflip blendMode:(id)mode;
- (id)compositingFilter;
- (void)configureLayer:(id)layer;
@end

@implementation _TUISymbolImageLayerConfig

- (_TUISymbolImageLayerConfig)initWithContentsScale:(double)scale image:(id)image color:(id)color hflip:(BOOL)hflip blendMode:(id)mode
{
  imageCopy = image;
  colorCopy = color;
  modeCopy = mode;
  v21.receiver = self;
  v21.super_class = _TUISymbolImageLayerConfig;
  v16 = [(_TUISymbolImageLayerConfig *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_contentsScale = scale;
    objc_storeStrong(&v16->_image, image);
    objc_storeStrong(&v17->_color, color);
    v17->_hflip = hflip;
    v18 = [modeCopy copy];
    blendMode = v17->_blendMode;
    v17->_blendMode = v18;
  }

  return v17;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  if (self == configCopy)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = TUIDynamicCast(v9, configCopy);
    v6 = v10;
    if (v10)
    {
      if (self->_contentsScale == *(v10 + 8) && self->_hflip == *(v10 + 32))
      {
        image = self->_image;
        if (image == v6[2] || [(TUISymbolImage *)image isEqual:?])
        {
          color = self->_color;
          if (color == v6[3] || [(UIColor *)color isEqual:?])
          {
            blendMode = self->_blendMode;
            if (blendMode == v6[5])
            {
              v7 = 1;
            }

            else
            {
              v7 = [(NSString *)blendMode isEqual:?];
            }

            goto LABEL_5;
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_5:

LABEL_7:
  return v7;
}

- (void)configureLayer:(id)layer
{
  contentsScale = self->_contentsScale;
  layerCopy = layer;
  [layerCopy setContentsScale:contentsScale];
  [layerCopy setFlipsHorizontalAxis:self->_hflip];
  [layerCopy updateContentAndBoundsWithImage:self->_image color:self->_color];
  compositingFilter = [(_TUISymbolImageLayerConfig *)self compositingFilter];
  [layerCopy setContentCompositingFilter:compositingFilter];
}

- (id)compositingFilter
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