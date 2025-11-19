@interface PHRoundView
- (PHRoundView)initWithFrame:(CGRect)a3 cornerRadius:(float)a4;
@end

@implementation PHRoundView

- (PHRoundView)initWithFrame:(CGRect)a3 cornerRadius:(float)a4
{
  v9.receiver = self;
  v9.super_class = PHRoundView;
  v5 = [(PHRoundView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = [(PHRoundView *)v5 layer];
    [v7 setCornerRadius:a4];
  }

  return v6;
}

@end