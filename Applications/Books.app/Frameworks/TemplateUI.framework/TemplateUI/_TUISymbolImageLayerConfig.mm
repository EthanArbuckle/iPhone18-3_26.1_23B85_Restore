@interface _TUISymbolImageLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (_TUISymbolImageLayerConfig)initWithContentsScale:(double)a3 image:(id)a4 color:(id)a5 hflip:(BOOL)a6 blendMode:(id)a7;
- (id)compositingFilter;
- (void)configureLayer:(id)a3;
@end

@implementation _TUISymbolImageLayerConfig

- (_TUISymbolImageLayerConfig)initWithContentsScale:(double)a3 image:(id)a4 color:(id)a5 hflip:(BOOL)a6 blendMode:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = _TUISymbolImageLayerConfig;
  v16 = [(_TUISymbolImageLayerConfig *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_contentsScale = a3;
    objc_storeStrong(&v16->_image, a4);
    objc_storeStrong(&v17->_color, a5);
    v17->_hflip = a6;
    v18 = [v15 copy];
    blendMode = v17->_blendMode;
    v17->_blendMode = v18;
  }

  return v17;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = TUIDynamicCast(v9, v4);
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

- (void)configureLayer:(id)a3
{
  contentsScale = self->_contentsScale;
  v5 = a3;
  [v5 setContentsScale:contentsScale];
  [v5 setFlipsHorizontalAxis:self->_hflip];
  [v5 updateContentAndBoundsWithImage:self->_image color:self->_color];
  v6 = [(_TUISymbolImageLayerConfig *)self compositingFilter];
  [v5 setContentCompositingFilter:v6];
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