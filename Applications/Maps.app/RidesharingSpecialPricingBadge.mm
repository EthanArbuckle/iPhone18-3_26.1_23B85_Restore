@interface RidesharingSpecialPricingBadge
- (RidesharingSpecialPricingBadge)initWithTemplateImage:(id)image;
@end

@implementation RidesharingSpecialPricingBadge

- (RidesharingSpecialPricingBadge)initWithTemplateImage:(id)image
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = RidesharingSpecialPricingBadge;
  v5 = [(RidesharingSpecialPricingBadge *)&v10 init];
  if (v5)
  {
    v6 = [UIColor colorWithWhite:0.0 alpha:0.5];
    v7 = [imageCopy _flatImageWithColor:v6];
    image = v5->_image;
    v5->_image = v7;
  }

  return v5;
}

@end