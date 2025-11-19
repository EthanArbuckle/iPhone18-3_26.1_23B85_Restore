@interface _TUILayerContainerClip
- (_TUILayerContainerClip)initWithLayer:(id)a3;
- (void)addAnimation:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation _TUILayerContainerClip

- (_TUILayerContainerClip)initWithLayer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUILayerContainerClip;
  v6 = [(_TUILayerContainerClip *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, a3);
  }

  return v7;
}

- (void)addAnimation:(id)a3
{
  [a3 setDelegate:self];
  count = self->_count;
  if (!count)
  {
    [(CALayer *)self->_layer setMasksToBounds:1];
    count = self->_count;
  }

  self->_count = count + 1;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  count = self->_count;
  if (count)
  {
    v7 = count - 1;
    self->_count = v7;
    if (!v7)
    {
      v8 = v5;
      [(CALayer *)self->_layer setMasksToBounds:0];
      v5 = v8;
    }
  }
}

@end