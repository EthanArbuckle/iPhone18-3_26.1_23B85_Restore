@interface MKTransitInfoLabelView
+ (int64_t)clusteredShieldSizeForContentSizeCategory:(id)category;
@end

@implementation MKTransitInfoLabelView

+ (int64_t)clusteredShieldSizeForContentSizeCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge] & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", UIContentSizeCategoryAccessibilityMedium) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", UIContentSizeCategoryAccessibilityLarge) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraLarge) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraLarge))
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge])
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

@end