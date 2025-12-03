@interface _TUIRuleLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (_TUIRuleLayerConfig)initWithColor:(id)color;
- (void)configureLayer:(id)layer;
- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)layer;
@end

@implementation _TUIRuleLayerConfig

- (_TUIRuleLayerConfig)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = _TUIRuleLayerConfig;
  v6 = [(_TUIRuleLayerConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (void)configureLayer:(id)layer
{
  color = self->_color;
  layerCopy = layer;
  [layerCopy setBackgroundColor:{-[UIColor CGColor](color, "CGColor")}];
}

- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)layer
{
  color = self->_color;
  layerCopy = layer;
  [layerCopy setBackgroundColor:{-[UIColor CGColor](color, "CGColor")}];
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  if (self == configCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      color = [(_TUIRuleLayerConfig *)configCopy color];
      color = self->_color;
      if (color == color)
      {
        v6 = 1;
      }

      else
      {
        v6 = [(UIColor *)color isEqual:color];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end