@interface _TUIStyledLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (_TUIStyledLayerConfig)initWithStyler:(id)styler;
@end

@implementation _TUIStyledLayerConfig

- (_TUIStyledLayerConfig)initWithStyler:(id)styler
{
  stylerCopy = styler;
  v9.receiver = self;
  v9.super_class = _TUIStyledLayerConfig;
  v6 = [(_TUIStyledLayerConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styler, styler);
  }

  return v7;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = configCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    v9 = 1;
  }

  else if (v7)
  {
    v9 = [(_TUIStyledBoxStyler *)self->_styler isEqualToStyle:v7->_styler];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end