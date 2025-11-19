@interface PosterSectionFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PosterSectionFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PosterBoard.PosterSectionFooterView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PosterBoard.PosterSectionFooterView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"PosterBoard.PosterSectionFooterView" hasSwiftField:@"titleLabel" withSwiftType:"Optional<UILabel>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = PosterSectionFooterViewAccessibility;
  [(PosterSectionFooterViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (CGRect)accessibilityFrame
{
  v2 = [(PosterSectionFooterViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PosterSectionFooterViewAccessibility;
  [(PosterSectionFooterViewAccessibility *)&v3 layoutSubviews];
  [(PosterSectionFooterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end