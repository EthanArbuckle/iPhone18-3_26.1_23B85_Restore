@interface _TUIGradientContainerLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (Class)layerClass;
- (_TUIGradientContainerLayerConfig)initWithStyle:(id)a3;
@end

@implementation _TUIGradientContainerLayerConfig

- (_TUIGradientContainerLayerConfig)initWithStyle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIGradientContainerLayerConfig;
  v6 = [(_TUIGradientContainerLayerConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, a3);
  }

  return v7;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6)
  {
    style = self->_style;
    v8 = [v6 style];
    v9 = [(_TUIGradientStyler *)style isEqualToStyle:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (Class)layerClass
{
  v3 = [(_TUIGradientStyler *)self->_style blendMode];
  if ([v3 isEqualToString:kCAFilterVariableBlur])
  {

LABEL_4:
    v6 = objc_opt_class();
    goto LABEL_6;
  }

  v4 = [(_TUIGradientStyler *)self->_style blendMode];
  v5 = [v4 isEqualToString:kCAFilterGaussianBlur];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [(_TUIGradientStyler *)self->_style opacityTriggers];
  v6 = objc_opt_class();

LABEL_6:

  return v6;
}

@end