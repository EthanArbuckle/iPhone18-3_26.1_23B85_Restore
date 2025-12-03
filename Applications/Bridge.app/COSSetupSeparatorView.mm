@interface COSSetupSeparatorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (COSSetupSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation COSSetupSeparatorView

- (COSSetupSeparatorView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = COSSetupSeparatorView;
  v3 = [(COSSetupSeparatorView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(COSSetupSeparatorView *)v3 layer];
    v6 = [UIColor colorWithWhite:0.439999998 alpha:0.0];
    cGColor = [v6 CGColor];

    v8 = [UIColor colorWithWhite:0.439999998 alpha:1.0];
    cGColor2 = [v8 CGColor];

    v13[0] = cGColor;
    v13[1] = cGColor2;
    v13[2] = cGColor2;
    v13[3] = cGColor;
    v10 = [NSArray arrayWithObjects:v13 count:4];
    [layer setColors:v10];

    [layer setLocations:&off_1002817E0];
    [layer setStartPoint:{CGPointZero.x, CGPointZero.y}];
    [layer setEndPoint:{1.0, 0.0}];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [UIScreen mainScreen:fits.width];
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