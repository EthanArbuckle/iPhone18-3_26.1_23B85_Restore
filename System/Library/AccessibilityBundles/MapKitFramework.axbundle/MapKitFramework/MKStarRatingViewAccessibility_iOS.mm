@interface MKStarRatingViewAccessibility_iOS
+ (id)ratingAsAttributedString:(double)string baseFont:(id)font style:(int64_t)style theme:(id)theme;
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MKStarRatingViewAccessibility_iOS

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKStarRatingView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"MKStarRatingView" hasInstanceMethod:@"rating" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MKStarRatingView" hasClassMethod:@"ratingAsAttributedString: baseFont: style:theme:" withFullSignature:{"d", "@", "q", "@", 0}];
}

+ (id)ratingAsAttributedString:(double)string baseFont:(id)font style:(int64_t)style theme:(id)theme
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___MKStarRatingViewAccessibility_iOS;
  v6 = objc_msgSendSuper2(&v9, sel_ratingAsAttributedString_baseFont_style_theme_, font, style, theme);
  v7 = UIAXStarRatingStringForRating();
  [v6 setAccessibilityLabel:v7];

  return v6;
}

- (id)accessibilityLabel
{
  [(MKStarRatingViewAccessibility_iOS *)self safeFloatForKey:@"rating"];

  return UIAXStarRatingStringForRating();
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end