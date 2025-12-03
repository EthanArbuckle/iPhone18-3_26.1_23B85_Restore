@interface _TUIGradientContainerLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (Class)layerClass;
- (_TUIGradientContainerLayerConfig)initWithStyle:(id)style;
@end

@implementation _TUIGradientContainerLayerConfig

- (_TUIGradientContainerLayerConfig)initWithStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = _TUIGradientContainerLayerConfig;
  v6 = [(_TUIGradientContainerLayerConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, style);
  }

  return v7;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, configCopy);

  if (v6)
  {
    style = self->_style;
    style = [v6 style];
    v9 = [(_TUIGradientStyler *)style isEqualToStyle:style];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (Class)layerClass
{
  blendMode = [(_TUIGradientStyler *)self->_style blendMode];
  if ([blendMode isEqualToString:kCAFilterVariableBlur])
  {

LABEL_4:
    v6 = objc_opt_class();
    goto LABEL_6;
  }

  blendMode2 = [(_TUIGradientStyler *)self->_style blendMode];
  v5 = [blendMode2 isEqualToString:kCAFilterGaussianBlur];

  if (v5)
  {
    goto LABEL_4;
  }

  opacityTriggers = [(_TUIGradientStyler *)self->_style opacityTriggers];
  v6 = objc_opt_class();

LABEL_6:

  return v6;
}

@end