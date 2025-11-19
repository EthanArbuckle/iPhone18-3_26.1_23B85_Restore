@interface TUIContainerLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (TUIContainerLayerConfig)initWithSize:(CGSize)a3;
- (void)configureLayer:(id)a3;
@end

@implementation TUIContainerLayerConfig

- (TUIContainerLayerConfig)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = TUIContainerLayerConfig;
  result = [(TUIContainerLayerConfig *)&v6 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (void)configureLayer:(id)a3
{
  if (self->_size.width != CGSizeZero.width || self->_size.height != CGSizeZero.height)
  {
    v6 = a3;
    [v6 setAnchorPoint:{0.5, 0.5}];
    [v6 setFrame:{0.0, 0.0, self->_size.width, self->_size.height}];
  }
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  return v6 == self;
}

@end