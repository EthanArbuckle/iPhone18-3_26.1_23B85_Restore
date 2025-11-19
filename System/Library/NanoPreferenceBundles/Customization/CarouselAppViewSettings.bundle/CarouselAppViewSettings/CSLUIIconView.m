@interface CSLUIIconView
+ (double)maximumZoomDiameter;
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributes;
- (CSLUIIconView)initWithFrame:(CGRect)a3;
- (void)beginDraggingAtPoint:(CGPoint)a3;
- (void)endDraggingToLayoutAttributes:(id)a3;
- (void)setJiggling:(BOOL)a3;
- (void)setLayoutAttributes:(id)a3;
@end

@implementation CSLUIIconView

- (CSLUIIconView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CSLUIIconView;
  result = [(CSLUIIconView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_unscaledIconSize = 40.0;
  }

  return result;
}

+ (double)maximumZoomDiameter
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  return sqrt(v6 * v6 + v4 * v4);
}

- (void)setJiggling:(BOOL)a3
{
  if (self->_jiggling != a3)
  {
    if (a3)
    {
      [(CSLUIIconView *)self setupJiggling];
    }

    else
    {
      [(CSLUIIconView *)self cleanupJiggling];
    }

    self->_jiggling = a3;
  }
}

- (void)beginDraggingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CSLUIIconView *)self pauseJiggling];
  self->_isDragging = 1;
  memset(&v12, 0, sizeof(v12));
  v6 = [(CSLUIIconView *)self layer];
  v7 = v6;
  if (v6)
  {
    [v6 transform];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v10 = v12;
  CATransform3DScale(&v11, &v10, 1.6, 1.6, 1.0);
  v12 = v11;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1F20;
  v8[3] = &unk_3C968;
  v8[4] = self;
  *&v8[5] = x;
  *&v8[6] = y;
  v9 = v11;
  [UIView _animateUsingSpringWithDuration:0 delay:v8 options:0 mass:0.63 stiffness:0.0 damping:2.0 initialVelocity:450.0 animations:45.0 completion:0.0];
}

- (void)endDraggingToLayoutAttributes:(id)a3
{
  self->_isDragging = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_20AC;
  v6[3] = &unk_3C990;
  v9 = self;
  v4 = v3[1];
  v7 = *v3;
  v8 = v4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_20F4;
  v5[3] = &unk_3C9B8;
  v5[4] = self;
  [UIView _animateUsingSpringWithDuration:0 delay:v6 options:v5 mass:0.65 stiffness:0.0 damping:2.0 initialVelocity:450.0 animations:40.0 completion:0.0];
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributes
{
  v3 = *&self[1].super.super.super.isa;
  v4 = *&self[1]._unscaledIconSize;
  *v2 = v3;
  v2[1] = v4;
  return v3;
}

- (void)setLayoutAttributes:(id)a3
{
  v4 = v3[1];
  *&self[1].super.super.super.isa = *v3;
  *&self[1]._unscaledIconSize = v4;
}

@end