@interface TUIFloatingLiveTransform
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGSize)size;
- (TUIFloatingLiveTransform)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5;
@end

@implementation TUIFloatingLiveTransform

- (TUIFloatingLiveTransform)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = TUIFloatingLiveTransform;
  result = [(TUIFloatingLiveTransform *)&v13 init];
  if (result)
  {
    result->_center.x = x;
    result->_center.y = y;
    result->_size.width = width;
    result->_size.height = height;
    v11 = *&a5->a;
    v12 = *&a5->c;
    *&result->_transform.tx = *&a5->tx;
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