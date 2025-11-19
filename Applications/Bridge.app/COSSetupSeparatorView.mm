@interface COSSetupSeparatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSSetupSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation COSSetupSeparatorView

- (COSSetupSeparatorView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = COSSetupSeparatorView;
  v3 = [(COSSetupSeparatorView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(COSSetupSeparatorView *)v3 layer];
    v6 = [UIColor colorWithWhite:0.439999998 alpha:0.0];
    v7 = [v6 CGColor];

    v8 = [UIColor colorWithWhite:0.439999998 alpha:1.0];
    v9 = [v8 CGColor];

    v13[0] = v7;
    v13[1] = v9;
    v13[2] = v9;
    v13[3] = v7;
    v10 = [NSArray arrayWithObjects:v13 count:4];
    [v5 setColors:v10];

    [v5 setLocations:&off_1002817E0];
    [v5 setStartPoint:{CGPointZero.x, CGPointZero.y}];
    [v5 setEndPoint:{1.0, 0.0}];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [UIScreen mainScreen:a3.width];
  [v3 bounds];
  v5 = v4 + -30.0;
  [v3 scale];
  v7 = 1.0 / v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end