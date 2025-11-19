@interface RidesharingSpecialPricingBadge
- (RidesharingSpecialPricingBadge)initWithTemplateImage:(id)a3;
@end

@implementation RidesharingSpecialPricingBadge

- (RidesharingSpecialPricingBadge)initWithTemplateImage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RidesharingSpecialPricingBadge;
  v5 = [(RidesharingSpecialPricingBadge *)&v10 init];
  if (v5)
  {
    v6 = [UIColor colorWithWhite:0.0 alpha:0.5];
    v7 = [v4 _flatImageWithColor:v6];
    image = v5->_image;
    v5->_image = v7;
  }

  return v5;
}

@end