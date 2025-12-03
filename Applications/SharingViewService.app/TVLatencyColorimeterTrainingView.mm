@interface TVLatencyColorimeterTrainingView
- (id)makeCAPackage;
- (void)layoutSubviews;
@end

@implementation TVLatencyColorimeterTrainingView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = TVLatencyColorimeterTrainingView;
  [(TVLatencyColorimeterTrainingView *)&v13 layoutSubviews];
  superview = [(TVLatencyColorimeterTrainingView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layer = [(TVLatencyColorimeterTrainingView *)self layer];
  [layer setFrame:{v5, v7, v9, v11}];
}

- (id)makeCAPackage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"TVLatencyColorimeter" withExtension:@"ca"];
  v4 = [CAPackage packageWithContentsOfURL:v3 type:kCAPackageTypeCAMLBundle options:0 error:0];

  return v4;
}

@end