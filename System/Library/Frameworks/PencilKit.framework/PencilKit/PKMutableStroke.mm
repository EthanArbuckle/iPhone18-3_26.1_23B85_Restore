@interface PKMutableStroke
- (UIColor)_color;
- (void)_setColor:(id)color;
- (void)_setLocation:(CGPoint)location atIndex:(unint64_t)index;
@end

@implementation PKMutableStroke

- (void)_setLocation:(CGPoint)location atIndex:(unint64_t)index
{
  y = location.y;
  x = location.x;
  [(_PKStrokeConcrete *)self _transform];
  CGAffineTransformInvert(&v11, &v10);
  v9 = vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x));
  _strokeData = [(PKStroke *)self _strokeData];
  [_strokeData setLocation:index atIndex:*&v9];
}

- (UIColor)_color
{
  v2 = [(_PKStrokeConcrete *)self ink];
  color = [v2 color];

  return color;
}

- (void)_setColor:(id)color
{
  colorCopy = color;
  v4 = [(_PKStrokeConcrete *)self ink];
  v5 = [PKInk inkFromInk:v4 color:colorCopy];
  [(PKStroke *)self _setInk:v5];
}

@end