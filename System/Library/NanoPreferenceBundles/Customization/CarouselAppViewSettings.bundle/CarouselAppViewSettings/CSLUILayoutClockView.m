@interface CSLUILayoutClockView
- (CSLUILayoutClockView)init;
@end

@implementation CSLUILayoutClockView

- (CSLUILayoutClockView)init
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIImage imageNamed:@"Clock@2x" inBundle:v3 compatibleWithTraitCollection:0];

  [v4 size];
  v6 = v5;
  v11.receiver = self;
  v11.super_class = CSLUILayoutClockView;
  v7 = [(CSLUILayoutClockView *)&v11 initWithFrame:0.0, 0.0, v6, v6];
  if (v7)
  {
    v8 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v6, v6}];
    v9 = [CSLUILayoutIconView circleMaskImage:v4];
    [v8 setImage:v9];

    objc_storeWeak(&v7->_imageView, v8);
    [(CSLUILayoutClockView *)v7 addSubview:v8];
  }

  return v7;
}

@end