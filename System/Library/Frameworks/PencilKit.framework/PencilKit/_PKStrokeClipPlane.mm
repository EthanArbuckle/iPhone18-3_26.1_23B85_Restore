@interface _PKStrokeClipPlane
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClipPlane:(id)plane;
- (CGPoint)normal;
- (CGPoint)origin;
- (_PKStrokeClipPlane)initWithOrigin:(CGPoint)origin normal:(CGPoint)normal;
@end

@implementation _PKStrokeClipPlane

- (_PKStrokeClipPlane)initWithOrigin:(CGPoint)origin normal:(CGPoint)normal
{
  y = normal.y;
  x = normal.x;
  v6 = origin.y;
  v7 = origin.x;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_PKStrokeClipPlane *)self isEqualToClipPlane:equalCopy];

  return v5;
}

- (BOOL)isEqualToClipPlane:(id)plane
{
  planeCopy = plane;
  if (planeCopy && (v5 = vdupq_n_s64(0x3F847AE147AE147BuLL), v6 = vmovn_s64(vcgtq_f64(v5, vabdq_f64(self->_origin, *(planeCopy + 8)))), (v6.i32[0] & v6.i32[1] & 1) != 0))
  {
    v7 = vmovn_s64(vcgtq_f64(v5, vabdq_f64(self->_normal, *(planeCopy + 24))));
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