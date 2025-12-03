@interface VPNCiscoImageHeader
- (VPNCiscoImageHeader)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)layoutSubviews;
@end

@implementation VPNCiscoImageHeader

- (VPNCiscoImageHeader)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = VPNCiscoImageHeader;
  v5 = [(VPNCiscoImageHeader *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5 == self)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [UIImage imageNamed:@"Cisco.png" inBundle:v7];

    v9 = [[UIImageView alloc] initWithImage:v8];
    [(VPNCiscoImageHeader *)v5 setImageView:v9];

    imageView = [(VPNCiscoImageHeader *)v5 imageView];
    [(VPNCiscoImageHeader *)v5 addSubview:imageView];

    v11 = [specifierCopy propertyForKey:@"VisibleOnInit"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 BOOLValue] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    imageView2 = [(VPNCiscoImageHeader *)v5 imageView];
    [imageView2 setHidden:v13];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)preferredHeightForWidth:(double)width
{
  imageView = [(VPNCiscoImageHeader *)self imageView];
  v5 = 0.0;
  if (([imageView isHidden] & 1) == 0)
  {
    imageView2 = [(VPNCiscoImageHeader *)self imageView];
    image = [imageView2 image];
    [image size];
    v5 = v8 + 0.0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = VPNCiscoImageHeader;
  [(VPNCiscoImageHeader *)&v18 layoutSubviews];
  imageView = [(VPNCiscoImageHeader *)self imageView];
  [imageView frame];
  v5 = v4;

  imageView2 = [(VPNCiscoImageHeader *)self imageView];
  superview = [imageView2 superview];
  [superview frame];
  v9 = v8;

  v10 = floor(v9 * 0.5) - floor(v5 * 0.5);
  imageView3 = [(VPNCiscoImageHeader *)self imageView];
  image = [imageView3 image];
  [image size];
  v14 = v13;
  v16 = v15;

  imageView4 = [(VPNCiscoImageHeader *)self imageView];
  [imageView4 setFrame:{v10, -10.0, v14, v16}];
}

@end