@interface TUIRenderModelDraw
- (CGSize)size;
- (TUIRenderModelDraw)initWithDraw:(id)draw erasableInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)eraseableInsets;
- (unint64_t)hash;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
@end

@implementation TUIRenderModelDraw

- (TUIRenderModelDraw)initWithDraw:(id)draw erasableInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  drawCopy = draw;
  v14.receiver = self;
  v14.super_class = TUIRenderModelDraw;
  v11 = [(TUIRenderModelDraw *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_draw, draw);
    v12->_eraseableInsets.top = top;
    v12->_eraseableInsets.left = left;
    v12->_eraseableInsets.bottom = bottom;
    v12->_eraseableInsets.right = right;
    v12->_size = CGSizeZero;
  }

  return v12;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  draw = self->_draw;
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(TUIRenderModelDraw *)draw appendResourcesToCollector:collector transform:v6];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer bounds];
  CGContextTranslateCTM(context, v6, v7);
  draw = self->_draw;

  [(TUIRenderModelDraw *)draw drawInContext:context];
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelDraw *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)eraseableInsets
{
  top = self->_eraseableInsets.top;
  left = self->_eraseableInsets.left;
  bottom = self->_eraseableInsets.bottom;
  right = self->_eraseableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end