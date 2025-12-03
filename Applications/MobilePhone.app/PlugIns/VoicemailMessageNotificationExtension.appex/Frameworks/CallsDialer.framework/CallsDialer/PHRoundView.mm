@interface PHRoundView
- (PHRoundView)initWithFrame:(CGRect)frame cornerRadius:(float)radius;
@end

@implementation PHRoundView

- (PHRoundView)initWithFrame:(CGRect)frame cornerRadius:(float)radius
{
  v9.receiver = self;
  v9.super_class = PHRoundView;
  v5 = [(PHRoundView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    layer = [(PHRoundView *)v5 layer];
    [layer setCornerRadius:radius];
  }

  return v6;
}

@end