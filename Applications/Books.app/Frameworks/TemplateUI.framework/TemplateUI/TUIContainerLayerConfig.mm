@interface TUIContainerLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (TUIContainerLayerConfig)initWithSize:(CGSize)size;
- (void)configureLayer:(id)layer;
@end

@implementation TUIContainerLayerConfig

- (TUIContainerLayerConfig)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)configureLayer:(id)layer
{
  if (self->_size.width != CGSizeZero.width || self->_size.height != CGSizeZero.height)
  {
    layerCopy = layer;
    [layerCopy setAnchorPoint:{0.5, 0.5}];
    [layerCopy setFrame:{0.0, 0.0, self->_size.width, self->_size.height}];
  }
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, configCopy);

  return v6 == self;
}

@end