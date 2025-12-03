@interface TUIGeometryAttributes
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (TUIGeometryAttributes)initWithSize:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform;
@end

@implementation TUIGeometryAttributes

- (TUIGeometryAttributes)initWithSize:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = TUIGeometryAttributes;
  result = [(TUIGeometryAttributes *)&v14 init];
  if (result)
  {
    size = CGRectNull.size;
    result->_frame.origin = CGRectNull.origin;
    result->_frame.size = size;
    result->_size.width = width;
    result->_size.height = height;
    result->_center.x = x;
    result->_center.y = y;
    v13 = *&transform->a;
    v12 = *&transform->c;
    *&result->_transform.tx = *&transform->tx;
    *&result->_transform.a = v13;
    *&result->_transform.c = v12;
  }

  return result;
}

- (CGRect)frame
{
  if (CGRectIsNull(self->_frame))
  {
    width = self->_size.width;
    height = self->_size.height;
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeTranslation(&v9, width * -0.5, height * -0.5);
    t1 = v9;
    v5 = *&self->_transform.c;
    *&v6.a = *&self->_transform.a;
    *&v6.c = v5;
    *&v6.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v8, &t1, &v6);
    v9 = v8;
    CGAffineTransformMakeTranslation(&t1, self->_center.x, self->_center.y);
    v6 = v9;
    CGAffineTransformConcat(&v8, &v6, &t1);
    v9 = v8;
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = width;
    v10.size.height = height;
    result = CGRectApplyAffineTransform(v10, &v8);
    self->_frame = result;
  }

  else
  {
    return self->_frame;
  }

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

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

@end