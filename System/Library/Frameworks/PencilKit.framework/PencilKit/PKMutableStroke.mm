@interface PKMutableStroke
- (UIColor)_color;
- (void)_setColor:(id)a3;
- (void)_setLocation:(CGPoint)a3 atIndex:(unint64_t)a4;
@end

@implementation PKMutableStroke

- (void)_setLocation:(CGPoint)a3 atIndex:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(_PKStrokeConcrete *)self _transform];
  CGAffineTransformInvert(&v11, &v10);
  v9 = vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x));
  v6 = [(PKStroke *)self _strokeData];
  [v6 setLocation:a4 atIndex:*&v9];
}

- (UIColor)_color
{
  v2 = [(_PKStrokeConcrete *)self ink];
  v3 = [v2 color];

  return v3;
}

- (void)_setColor:(id)a3
{
  v6 = a3;
  v4 = [(_PKStrokeConcrete *)self ink];
  v5 = [PKInk inkFromInk:v4 color:v6];
  [(PKStroke *)self _setInk:v5];
}

@end