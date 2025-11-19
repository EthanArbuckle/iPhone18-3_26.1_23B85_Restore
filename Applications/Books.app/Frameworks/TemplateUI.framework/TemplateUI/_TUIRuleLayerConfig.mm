@interface _TUIRuleLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (_TUIRuleLayerConfig)initWithColor:(id)a3;
- (void)configureLayer:(id)a3;
- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)a3;
@end

@implementation _TUIRuleLayerConfig

- (_TUIRuleLayerConfig)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIRuleLayerConfig;
  v6 = [(_TUIRuleLayerConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (void)configureLayer:(id)a3
{
  color = self->_color;
  v4 = a3;
  [v4 setBackgroundColor:{-[UIColor CGColor](color, "CGColor")}];
}

- (void)dynamicUserInterfaceTraitDidChangeForLayer:(id)a3
{
  color = self->_color;
  v4 = a3;
  [v4 setBackgroundColor:{-[UIColor CGColor](color, "CGColor")}];
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(_TUIRuleLayerConfig *)v4 color];
      color = self->_color;
      if (color == v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = [(UIColor *)color isEqual:v7];
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