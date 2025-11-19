@interface CRLiOSCanvasHUDView
+ (double)fontSizeForHUDViewSize:(unint64_t)a3;
+ (double)viewHeightForHUDViewSize:(unint64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)initForHUDViewSize:(unint64_t)a3;
- (void)p_setupView;
- (void)updateViewToHUDViewSize:(unint64_t)a3;
@end

@implementation CRLiOSCanvasHUDView

+ (double)viewHeightForHUDViewSize:(unint64_t)a3
{
  result = 35.0;
  if (a3 != 1)
  {
    result = 0.0;
  }

  if (!a3)
  {
    return 29.0;
  }

  return result;
}

+ (double)fontSizeForHUDViewSize:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    result = 18.0;
  }

  if (!a3)
  {
    return 14.0;
  }

  return result;
}

- (id)initForHUDViewSize:(unint64_t)a3
{
  [CRLiOSCanvasHUDView viewHeightForHUDViewSize:?];
  v9.receiver = self;
  v9.super_class = CRLiOSCanvasHUDView;
  v6 = [(CRLiOSCanvasHUDView *)&v9 initWithFrame:0.0, 0.0, 150.0, v5];
  v7 = v6;
  if (v6)
  {
    v6->_size = a3;
    [(CRLiOSCanvasHUDView *)v6 p_setupView];
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(CRLiOSCanvasHUDView *)self p_shouldAllowTouches])
  {
    v10.receiver = self;
    v10.super_class = CRLiOSCanvasHUDView;
    v8 = [(CRLiOSCanvasHUDView *)&v10 pointInside:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateViewToHUDViewSize:(unint64_t)a3
{
  if (self->_size != a3)
  {
    self->_size = a3;
    [CRLiOSCanvasHUDView fontSizeForHUDViewSize:?];
    v4 = [UIFont boldSystemFontOfSize:?];
    [(UILabel *)self->_label setFont:v4];

    label = self->_label;
    [(UILabel *)label bounds];
    [(UILabel *)label sizeThatFits:v6, v7];
    v9 = v8 + 18.0;
    [CRLiOSCanvasHUDView viewHeightForHUDViewSize:self->_size];
    [(CRLiOSCanvasHUDView *)self center];
    v12 = sub_10011EC70(v10, v11, v9);

    [(CRLiOSCanvasHUDView *)self setFrame:v12];
  }
}

- (void)p_setupView
{
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [UIImage imageNamed:@"CanvasHUD"];
  [v6 size];
  v8 = 5.0 / v7;
  [v6 size];
  v10 = 5.0 / v9;
  v11 = [v6 CGImage];
  v12 = [(CRLiOSCanvasHUDView *)self layer];
  [v12 setContents:v11];

  v13 = [(CRLiOSCanvasHUDView *)self layer];
  [v13 setContentsCenter:{v8, v10, 1.0 - v8 * 2.0, 1.0 - v10 * 2.0}];

  v14 = [(CRLiOSCanvasHUDView *)self layer];
  [v14 setContentsScale:v5];

  v15 = [(CRLiOSCanvasHUDView *)self layer];
  [v15 setZPosition:1.0];

  v16 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 150.0, 20.0}];
  label = self->_label;
  self->_label = v16;

  [(UILabel *)self->_label setText:&stru_1018BCA28];
  [CRLiOSCanvasHUDView fontSizeForHUDViewSize:self->_size];
  v18 = [UIFont boldSystemFontOfSize:?];
  [(UILabel *)self->_label setFont:v18];

  [(UILabel *)self->_label setTextAlignment:1];
  v19 = +[UIColor whiteColor];
  [(UILabel *)self->_label setTextColor:v19];

  v20 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(UILabel *)self->_label setBackgroundColor:v20];

  CGAffineTransformMakeTranslation(&v23, 0.0, -1.0);
  v21 = self->_label;
  v22 = v23;
  [(UILabel *)v21 setTransform:&v22];
  [(CRLiOSCanvasHUDView *)self bounds];
  [(UILabel *)self->_label setFrame:?];
  [(UILabel *)self->_label setAutoresizingMask:18];
  [(CRLiOSCanvasHUDView *)self addSubview:self->_label];
}

@end