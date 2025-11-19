@interface TUIRenderReferenceTransform
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (id)description;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation TUIRenderReferenceTransform

- (CGRect)frame
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
  return CGRectApplyAffineTransform(v10, &v8);
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromCGSize(self->_size);
  v6 = NSStringFromCGPoint(self->_center);
  v7 = *&self->_transform.c;
  *&transform.a = *&self->_transform.a;
  *&transform.c = v7;
  *&transform.tx = *&self->_transform.tx;
  v8 = NSStringFromCGAffineTransform(&transform);
  v9 = [NSString stringWithFormat:@"<%@ size=%@ center=%@ transform=%@>", v4, v5, v6, v8];

  return v9;
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
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end