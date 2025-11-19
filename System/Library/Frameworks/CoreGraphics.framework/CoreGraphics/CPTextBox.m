@interface CPTextBox
- (CGRect)bounds;
- (CPTextBox)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CPTextBox

- (CGRect)bounds
{
  v17.receiver = self;
  v17.super_class = CPTextBox;
  [(CPChunk *)&v17 bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CPTextBox *)self isRotated])
  {
    v11 = __sincos_stret(self->rotationAngle * 0.0174532925);
    v16.a = v11.__cosval;
    v16.b = v11.__sinval;
    v16.c = -v11.__sinval;
    v16.d = v11.__cosval;
    v16.tx = 0.0;
    v16.ty = 0.0;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectApplyAffineTransform(v18, &v16);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CPTextBox;
  return [(CPRegion *)&v4 copyWithZone:a3];
}

- (CPTextBox)init
{
  v3.receiver = self;
  v3.super_class = CPTextBox;
  return [(CPChunk *)&v3 init];
}

@end