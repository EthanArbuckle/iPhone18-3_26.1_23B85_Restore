@interface TUIOverscrollingLiveTransform
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGSize)size;
- (TUIOverscrollingLiveTransform)initWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform;
@end

@implementation TUIOverscrollingLiveTransform

- (TUIOverscrollingLiveTransform)initWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  v13.receiver = self;
  v13.super_class = TUIOverscrollingLiveTransform;
  result = [(TUIOverscrollingLiveTransform *)&v13 init];
  if (result)
  {
    result->_center.x = x;
    result->_center.y = y;
    result->_size.width = width;
    result->_size.height = height;
    v11 = *&transform->a;
    v12 = *&transform->c;
    *&result->_transform.tx = *&transform->tx;
    *&result->_transform.c = v12;
    *&result->_transform.a = v11;
  }

  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

@end