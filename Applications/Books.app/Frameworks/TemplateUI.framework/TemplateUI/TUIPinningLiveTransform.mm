@interface TUIPinningLiveTransform
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGSize)size;
- (TUIPinningLiveTransform)initWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform pinPosition:(unint64_t)position;
@end

@implementation TUIPinningLiveTransform

- (TUIPinningLiveTransform)initWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform pinPosition:(unint64_t)position
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  v15.receiver = self;
  v15.super_class = TUIPinningLiveTransform;
  result = [(TUIPinningLiveTransform *)&v15 init];
  if (result)
  {
    result->_center.x = x;
    result->_center.y = y;
    result->_size.width = width;
    result->_size.height = height;
    v13 = *&transform->a;
    v14 = *&transform->tx;
    *&result->_transform.c = *&transform->c;
    *&result->_transform.tx = v14;
    *&result->_transform.a = v13;
    result->_pinPosition = position;
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