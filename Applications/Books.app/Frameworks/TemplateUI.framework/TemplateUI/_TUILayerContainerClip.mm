@interface _TUILayerContainerClip
- (_TUILayerContainerClip)initWithLayer:(id)layer;
- (void)addAnimation:(id)animation;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation _TUILayerContainerClip

- (_TUILayerContainerClip)initWithLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = _TUILayerContainerClip;
  v6 = [(_TUILayerContainerClip *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, layer);
  }

  return v7;
}

- (void)addAnimation:(id)animation
{
  [animation setDelegate:self];
  count = self->_count;
  if (!count)
  {
    [(CALayer *)self->_layer setMasksToBounds:1];
    count = self->_count;
  }

  self->_count = count + 1;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  count = self->_count;
  if (count)
  {
    v7 = count - 1;
    self->_count = v7;
    if (!v7)
    {
      v8 = stopCopy;
      [(CALayer *)self->_layer setMasksToBounds:0];
      stopCopy = v8;
    }
  }
}

@end