@interface TUIRenderModelDraw
- (CGSize)size;
- (TUIRenderModelDraw)initWithDraw:(id)a3 erasableInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)eraseableInsets;
- (unint64_t)hash;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
@end

@implementation TUIRenderModelDraw

- (TUIRenderModelDraw)initWithDraw:(id)a3 erasableInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = TUIRenderModelDraw;
  v11 = [(TUIRenderModelDraw *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_draw, a3);
    v12->_eraseableInsets.top = top;
    v12->_eraseableInsets.left = left;
    v12->_eraseableInsets.bottom = bottom;
    v12->_eraseableInsets.right = right;
    v12->_size = CGSizeZero;
  }

  return v12;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  draw = self->_draw;
  v5 = *&a4->c;
  v6[0] = *&a4->a;
  v6[1] = v5;
  v6[2] = *&a4->tx;
  [(TUIRenderModelDraw *)draw appendResourcesToCollector:a3 transform:v6];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  [a3 bounds];
  CGContextTranslateCTM(a4, v6, v7);
  draw = self->_draw;

  [(TUIRenderModelDraw *)draw drawInContext:a4];
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelDraw *)self identifier];
  v3 = TUIIdentifierHash(v2);

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