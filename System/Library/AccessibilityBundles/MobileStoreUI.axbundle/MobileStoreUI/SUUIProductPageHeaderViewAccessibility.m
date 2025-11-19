@interface SUUIProductPageHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame:(id)a3;
- (SUUIProductPageHeaderViewAccessibility)initWithClientContext:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setNumberOfUserRatings:(int64_t)a3;
- (void)setUserRating:(double)a3;
@end

@implementation SUUIProductPageHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"initWithClientContext:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"setUserRating:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"setIconImage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"setNumberOfUserRatings:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_ageBandLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_userRatingLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_titleLabel" withType:"SUUIProductPageHeaderLabel"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_artistButton" withType:"UIButton"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceVariable:@"_itemOfferButton" withType:"SUUIItemOfferButton"];
  [v3 validateClass:@"SUUIProductPageHeaderView" hasInstanceMethod:@"inAppPurchasesString" withFullSignature:{"@", 0}];
}

- (SUUIProductPageHeaderViewAccessibility)initWithClientContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIProductPageHeaderViewAccessibility;
  v3 = [(SUUIProductPageHeaderViewAccessibility *)&v7 initWithClientContext:a3];
  v4 = [(SUUIProductPageHeaderViewAccessibility *)v3 safeValueForKey:@"_shareButton"];
  v5 = accessibilityLocalizedString(@"share.button");
  [v4 setAccessibilityLabel:v5];

  return v3;
}

- (void)setIconImage:(id)a3
{
  v10.receiver = self;
  v10.super_class = SUUIProductPageHeaderViewAccessibility;
  [(SUUIProductPageHeaderViewAccessibility *)&v10 setIconImage:a3];
  v4 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  [v4 setIsAccessibilityElement:1];

  v5 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityLocalizedString(@"icon.image.with.title");
  v8 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v9 = [v6 stringWithFormat:v7, v8];
  [v5 setAccessibilityLabel:v9];
}

- (void)setNumberOfUserRatings:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = SUUIProductPageHeaderViewAccessibility;
  [(SUUIProductPageHeaderViewAccessibility *)&v9 setNumberOfUserRatings:?];
  if (a3 >= 1)
  {
    v5 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"USER_RATING_COUNT");
    v8 = [v6 localizedStringWithFormat:v7, a3];
    [v5 setAccessibilityLabel:v8];
  }
}

- (void)setUserRating:(double)a3
{
  v5.receiver = self;
  v5.super_class = SUUIProductPageHeaderViewAccessibility;
  [(SUUIProductPageHeaderViewAccessibility *)&v5 setUserRating:a3];
  v4 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  [v4 setIsAccessibilityElement:1];
}

- (CGRect)accessibilityFrame:(id)a3
{
  v4 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
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

- (id)accessibilityLabel:(id)a3
{
  v4 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  v6 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_userRatingLabel"];
  v7 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"inAppPurchasesString"];
  v8 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_ageBandLabel"];
  v9 = [(SUUIProductPageHeaderViewAccessibility *)self _accessibilityValueForKey:@"facebookCount"];
  v10 = [v9 integerValue];

  if (v10 < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"FACEBOOK_FRIEND_LIKE_COUNT");
    v13 = [v11 localizedStringWithFormat:v12, v10];
  }

  v14 = [v4 accessibilityLabel];
  v15 = [v8 accessibilityLabel];
  v16 = [v5 accessibilityLabel];
  v18 = [v6 accessibilityLabel];
  v19 = __UIAXStringForVariables();

  return v19;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(SUUIProductPageHeaderViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v4 addObject:v5];
    [(SUUIProductPageHeaderViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
  }

  v6 = [v4 mutableCopy];
  v7 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_artistButton"];
  v8 = v7;
  if (v7 && [v7 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v8];
  }

  v9 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_shareButton"];
  v10 = v9;
  if (v9 && [v9 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v10];
  }

  v11 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  v12 = v11;
  if (v11 && [v11 _accessibilityViewIsVisible])
  {
    [v6 insertObject:v12 atIndex:0];
  }

  v13 = [(SUUIProductPageHeaderViewAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  v14 = v13;
  if (v13 && [v13 _accessibilityViewIsVisible])
  {
    [v6 axSafelyAddObject:v14];
  }

  return v6;
}

@end