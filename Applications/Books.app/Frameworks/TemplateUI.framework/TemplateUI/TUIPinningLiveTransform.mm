@interface TUIPinningLiveTransform
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGSize)size;
- (TUIPinningLiveTransform)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5 pinPosition:(unint64_t)a6;
@end

@implementation TUIPinningLiveTransform

- (TUIPinningLiveTransform)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5 pinPosition:(unint64_t)a6
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = TUIPinningLiveTransform;
  result = [(TUIPinningLiveTransform *)&v15 init];
  if (result)
  {
    result->_center.x = x;
    result->_center.y = y;
    result->_size.width = width;
    result->_size.height = height;
    v13 = *&a5->a;
    v14 = *&a5->tx;
    *&result->_transform.c = *&a5->c;
    *&result->_transform.tx = v14;
    *&result->_transform.a = v13;
    result->_pinPosition = a6;
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
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

@end