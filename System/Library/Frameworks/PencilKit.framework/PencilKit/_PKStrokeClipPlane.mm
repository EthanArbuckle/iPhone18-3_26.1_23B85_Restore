@interface _PKStrokeClipPlane
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClipPlane:(id)a3;
- (CGPoint)normal;
- (CGPoint)origin;
- (_PKStrokeClipPlane)initWithOrigin:(CGPoint)a3 normal:(CGPoint)a4;
@end

@implementation _PKStrokeClipPlane

- (_PKStrokeClipPlane)initWithOrigin:(CGPoint)a3 normal:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9.receiver = self;
  v9.super_class = _PKStrokeClipPlane;
  result = [(_PKStrokeClipPlane *)&v9 init];
  if (result)
  {
    result->_origin.x = v7;
    result->_origin.y = v6;
    result->_normal.x = x;
    result->_normal.y = y;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_PKStrokeClipPlane *)self isEqualToClipPlane:v4];

  return v5;
}

- (BOOL)isEqualToClipPlane:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = vdupq_n_s64(0x3F847AE147AE147BuLL), v6 = vmovn_s64(vcgtq_f64(v5, vabdq_f64(self->_origin, *(v4 + 8)))), (v6.i32[0] & v6.i32[1] & 1) != 0))
  {
    v7 = vmovn_s64(vcgtq_f64(v5, vabdq_f64(self->_normal, *(v4 + 24))));
    v8 = v7.i8[0] & v7.i8[4];
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)normal
{
  x = self->_normal.x;
  y = self->_normal.y;
  result.y = y;
  result.x = x;
  return result;
}

@end