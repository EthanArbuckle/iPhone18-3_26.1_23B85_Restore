@interface NTKAlaskanButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKAlaskanButton)initWithFrame:(CGRect)frame;
@end

@implementation NTKAlaskanButton

- (NTKAlaskanButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKAlaskanButton;
  v3 = [(NTKAlaskanButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIButtonConfiguration prominentGlassButtonConfiguration];
    [(NTKAlaskanButton *)v3 setConfiguration:v4];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKAlaskanButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(NTKAlaskanButton *)self bounds];
  v16 = v15 * -0.4;
  [(NTKAlaskanButton *)self bounds];
  v18 = v17 * -0.4;
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v24 = CGRectInset(v23, v16, v18);
  v19 = x;
  v20 = y;

  return CGRectContainsPoint(v24, *&v19);
}

@end