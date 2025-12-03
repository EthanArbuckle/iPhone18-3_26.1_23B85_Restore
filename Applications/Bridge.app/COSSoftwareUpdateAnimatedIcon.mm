@interface COSSoftwareUpdateAnimatedIcon
- (COSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame;
- (id)outerGearView;
@end

@implementation COSSoftwareUpdateAnimatedIcon

- (COSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = COSSoftwareUpdateAnimatedIcon;
  v3 = [(COSSoftwareUpdateAnimatedIcon *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  constraints = [(COSSoftwareUpdateAnimatedIcon *)v3 constraints];
  if ([constraints count])
  {
    v5 = 0;
    do
    {
      v6 = [constraints objectAtIndex:v5];
      [v6 setActive:0];

      ++v5;
    }

    while ([constraints count] > v5);
  }

  centerYAnchor = [(UIImageView *)v3->_outerGear centerYAnchor];
  centerYAnchor2 = [(COSSoftwareUpdateAnimatedIcon *)v3 centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v9 setActive:1];

  centerXAnchor = [(UIImageView *)v3->_outerGear centerXAnchor];
  centerXAnchor2 = [(COSSoftwareUpdateAnimatedIcon *)v3 centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-1.5];
  [v12 setActive:1];

  return v3;
}

- (id)outerGearView
{
  v3 = [UIImage systemImageNamed:@"gear"];
  v4 = +[UIColor whiteColor];
  v5 = [v3 _flatImageWithColor:v4];

  v6 = [[UIImageView alloc] initWithImage:v5];
  [v6 setOpaque:1];
  objc_storeStrong(&self->_outerGear, v6);

  return v6;
}

@end