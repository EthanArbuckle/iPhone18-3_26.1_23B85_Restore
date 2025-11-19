@interface VPNCiscoImageHeader
- (VPNCiscoImageHeader)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (void)layoutSubviews;
@end

@implementation VPNCiscoImageHeader

- (VPNCiscoImageHeader)initWithSpecifier:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VPNCiscoImageHeader;
  v5 = [(VPNCiscoImageHeader *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5 == self)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [UIImage imageNamed:@"Cisco.png" inBundle:v7];

    v9 = [[UIImageView alloc] initWithImage:v8];
    [(VPNCiscoImageHeader *)v5 setImageView:v9];

    v10 = [(VPNCiscoImageHeader *)v5 imageView];
    [(VPNCiscoImageHeader *)v5 addSubview:v10];

    v11 = [v4 propertyForKey:@"VisibleOnInit"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 BOOLValue] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    v14 = [(VPNCiscoImageHeader *)v5 imageView];
    [v14 setHidden:v13];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)preferredHeightForWidth:(double)a3
{
  v4 = [(VPNCiscoImageHeader *)self imageView];
  v5 = 0.0;
  if (([v4 isHidden] & 1) == 0)
  {
    v6 = [(VPNCiscoImageHeader *)self imageView];
    v7 = [v6 image];
    [v7 size];
    v5 = v8 + 0.0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = VPNCiscoImageHeader;
  [(VPNCiscoImageHeader *)&v18 layoutSubviews];
  v3 = [(VPNCiscoImageHeader *)self imageView];
  [v3 frame];
  v5 = v4;

  v6 = [(VPNCiscoImageHeader *)self imageView];
  v7 = [v6 superview];
  [v7 frame];
  v9 = v8;

  v10 = floor(v9 * 0.5) - floor(v5 * 0.5);
  v11 = [(VPNCiscoImageHeader *)self imageView];
  v12 = [v11 image];
  [v12 size];
  v14 = v13;
  v16 = v15;

  v17 = [(VPNCiscoImageHeader *)self imageView];
  [v17 setFrame:{v10, -10.0, v14, v16}];
}

@end