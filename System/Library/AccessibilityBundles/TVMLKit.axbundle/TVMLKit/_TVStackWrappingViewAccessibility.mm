@interface _TVStackWrappingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)a3 sectionIndex:(int64_t)a4;
@end

@implementation _TVStackWrappingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVStackWrappingView" hasInstanceMethod:@"configureSupplementaryCellLayoutAttributesWithAutomaticInsets:sectionIndex:" withFullSignature:{"v", "{UIEdgeInsets=dddd}", "q", 0}];
  [v3 validateClass:@"_TVStackWrappingView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
}

- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)a3 sectionIndex:(int64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10.receiver = self;
  v10.super_class = _TVStackWrappingViewAccessibility;
  [(_TVStackWrappingViewAccessibility *)&v10 configureSupplementaryCellLayoutAttributesWithAutomaticInsets:a4 sectionIndex:?];
  v9 = [(_TVStackWrappingViewAccessibility *)self safeValueForKey:@"stackView"];
  [v9 _accessibilitySetVisibleContentInset:{top, left, bottom, right}];
}

@end