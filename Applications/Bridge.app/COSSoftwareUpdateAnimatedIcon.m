@interface COSSoftwareUpdateAnimatedIcon
- (COSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3;
- (id)outerGearView;
@end

@implementation COSSoftwareUpdateAnimatedIcon

- (COSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = COSSoftwareUpdateAnimatedIcon;
  v3 = [(COSSoftwareUpdateAnimatedIcon *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(COSSoftwareUpdateAnimatedIcon *)v3 constraints];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndex:v5];
      [v6 setActive:0];

      ++v5;
    }

    while ([v4 count] > v5);
  }

  v7 = [(UIImageView *)v3->_outerGear centerYAnchor];
  v8 = [(COSSoftwareUpdateAnimatedIcon *)v3 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(UIImageView *)v3->_outerGear centerXAnchor];
  v11 = [(COSSoftwareUpdateAnimatedIcon *)v3 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-1.5];
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