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
    cGColor = [v3 CGColor];
    layer = [(COSTinkerFamilyBadgeView *)v2 layer];
    [layer setFillColor:cGColor];

    layer2 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [layer2 setLineWidth:1.0];

    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 14.0;
    v30.size.height = 14.0;
    v7 = CGPathCreateWithEllipseInRect(v30, 0);
    layer3 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [layer3 setPath:v7];

    v9 = [UIColor colorWithWhite:0.0 alpha:0.2];
    cGColor2 = [v9 CGColor];
    layer4 = [(COSTinkerFamilyBadgeView *)v2 layer];
    [layer4 setStrokeColor:cGColor2];

    v12 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIImage systemImageNamed:@"applewatch.side.right"];
    [v12 setImage:v13];

    v14 = +[UIColor whiteColor];
    [v12 setTintColor:v14];

    [(COSTinkerFamilyBadgeView *)v2 addSubview:v12];
    widthAnchor = [v12 widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:10.0];
    v29[0] = v26;
    heightAnchor = [v12 heightAnchor];
    widthAnchor2 = [v12 widthAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v29[1] = v15;
    centerXAnchor = [v12 centerXAnchor];
    centerXAnchor2 = [(COSTinkerFamilyBadgeView *)v2 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v29[2] = v18;
    centerYAnchor = [v12 centerYAnchor];
    centerYAnchor2 = [(COSTinkerFamilyBadgeView *)v2 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v29[3] = v21;
    v22 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v2;
}

@end