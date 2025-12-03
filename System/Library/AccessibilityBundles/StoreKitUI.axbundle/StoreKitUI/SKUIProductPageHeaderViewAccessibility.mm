@interface SKUIProductPageHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame:(id)frame;
- (SKUIProductPageHeaderViewAccessibility)initWithClientContext:(id)context;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)label;
- (void)setIconImage:(id)image;
- (void)setNumberOfUserRatings:(int64_t)ratings;
- (void)setUserRating:(double)rating;
@end

@implementation SKUIProductPageHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"initWithClientContext:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"setUserRating:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"setIconImage:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"setNumberOfUserRatings:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_ageBandLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_userRatingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_titleLabel" withType:"SKUIProductPageHeaderLabel"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_artistButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceVariable:@"_itemOfferButton" withType:"SKUIItemOfferButton"];
  [validationsCopy validateClass:@"SKUIProductPageHeaderView" hasInstanceMethod:@"inAppPurchasesString" withFullSignature:{"@", 0}];
}

- (SKUIProductPageHeaderViewAccessibility)initWithClientContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SKUIProductPageHeaderViewAccessibility;
  v3 = [(SKUIProductPageHeaderViewAccessibility *)&v7 initWithClientContext:context];
  v4 = [(SKUIProductPageHeaderViewAccessibility *)v3 safeValueForKey:@"_shareButton"];
  v5 = accessibilitySKUILocalizedString(@"share.button");
  [v4 setAccessibilityLabel:v5];

  return v3;
}

- (void)setIconImage:(id)image
{
  v10.receiver = self;
  v10.super_class = SKUIProductPageHeaderViewAccessibility;
  [(SKUIProductPageHeaderViewAccessibility *)&v10 setIconImage:image];
  v4 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  [v4 setIsAccessibilityElement:1];

  v5 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilitySKUILocalizedString(@"icon.image.with.title");
  v8 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v9 = [v6 stringWithFormat:v7, v8];
  [v5 setAccessibilityLabel:v9];
}

- (void)setNumberOfUserRatings:(int64_t)ratings
{
  v9.receiver = self;
  v9.super_class = SKUIProductPageHeaderViewAccessibility;
  [(SKUIProductPageHeaderViewAccessibility *)&v9 setNumberOfUserRatings:?];
  if (ratings >= 1)
  {
    v5 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
    ratings = [v6 localizedStringWithFormat:v7, ratings];
    [v5 setAccessibilityLabel:ratings];
  }
}

- (void)setUserRating:(double)rating
{
  v5.receiver = self;
  v5.super_class = SKUIProductPageHeaderViewAccessibility;
  [(SKUIProductPageHeaderViewAccessibility *)&v5 setUserRating:rating];
  v4 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  [v4 setIsAccessibilityElement:1];
}

- (CGRect)accessibilityFrame:(id)frame
{
  v4 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
  [v4 accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 accessibilityFrame];
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v27 = CGRectUnion(v26, v29);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)accessibilityLabel:(id)label
{
  v4 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  v6 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
  v7 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"inAppPurchasesString"];
  v8 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_ageBandLabel"];
  v9 = [(SKUIProductPageHeaderViewAccessibility *)self _accessibilityValueForKey:@"facebookCount"];
  integerValue = [v9 integerValue];

  if (integerValue < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilitySKUILocalizedString(@"FACEBOOK_FRIEND_LIKE_COUNT");
    v13 = [v11 localizedStringWithFormat:v12, integerValue];
  }

  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v8 accessibilityLabel];
  accessibilityLabel3 = [v5 accessibilityLabel];
  accessibilityLabel4 = [v6 accessibilityLabel];
  v19 = __UIAXStringForVariables();

  return v19;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  array = [(SKUIProductPageHeaderViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [array addObject:v5];
    [(SKUIProductPageHeaderViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
  }

  v6 = [array mutableCopy];
  v7 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_artistButton"];
  v8 = v7;
  if (v7 && [v7 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v8];
  }

  v9 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_shareButton"];
  v10 = v9;
  if (v9 && [v9 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v10];
  }

  v11 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  v12 = v11;
  if (v11 && [v11 _accessibilityViewIsVisible])
  {
    [v6 insertObject:v12 atIndex:0];
  }

  v13 = [(SKUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  v14 = v13;
  if (v13 && [v13 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v14];
  }

  return v6;
}

@end