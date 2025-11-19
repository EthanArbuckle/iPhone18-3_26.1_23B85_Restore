@interface COSTinkerFamilyBadgeView
- (COSTinkerFamilyBadgeView)init;
@end

@implementation COSTinkerFamilyBadgeView

- (COSTinkerFamilyBadgeView)init
{
  v28.receiver = self;
  v28.super_class = COSTinkerFamilyBadgeView;
  v2 = [(COSTinkerFamilyBadgeView *)&v28 init];
  if (v2)
  {
    objc_opt_self();
    v3 = +[UIColor systemGray5Color];
    v4 = [v3 CGColor];
    v5 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [v5 setFillColor:v4];

    v6 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [v6 setLineWidth:1.0];

    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 14.0;
    v30.size.height = 14.0;
    v7 = CGPathCreateWithEllipseInRect(v30, 0);
    v8 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [v8 setPath:v7];

    v9 = [UIColor colorWithWhite:0.0 alpha:0.2];
    v10 = [v9 CGColor];
    v11 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [v11 setStrokeColor:v10];

    v12 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIImage systemImageNamed:@"applewatch.side.right"];
    [v12 setImage:v13];

    v14 = +[UIColor whiteColor];
    [v12 setTintColor:v14];

    [(COSTinkerFamilyBadgeView *)v2 addSubview:v12];
    v27 = [v12 widthAnchor];
    v26 = [v27 constraintEqualToConstant:10.0];
    v29[0] = v26;
    v25 = [v12 heightAnchor];
    v24 = [v12 widthAnchor];
    v15 = [v25 constraintEqualToAnchor:v24];
    v29[1] = v15;
    v16 = [v12 centerXAnchor];
    v17 = [(COSTinkerFamilyBadgeView *)v2 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v29[2] = v18;
    v19 = [v12 centerYAnchor];
    v20 = [(COSTinkerFamilyBadgeView *)v2 centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v29[3] = v21;
    v22 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v2;
}

@end