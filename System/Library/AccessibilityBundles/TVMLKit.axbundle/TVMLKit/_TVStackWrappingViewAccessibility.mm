@interface _TVStackWrappingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)insets sectionIndex:(int64_t)index;
@end

@implementation _TVStackWrappingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVStackWrappingView" hasInstanceMethod:@"configureSupplementaryCellLayoutAttributesWithAutomaticInsets:sectionIndex:" withFullSignature:{"v", "{UIEdgeInsets=dddd}", "q", 0}];
  [validationsCopy validateClass:@"_TVStackWrappingView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
}

- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)insets sectionIndex:(int64_t)index
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v10.receiver = self;
  v10.super_class = _TVStackWrappingViewAccessibility;
  [(_TVStackWrappingViewAccessibility *)&v10 configureSupplementaryCellLayoutAttributesWithAutomaticInsets:index sectionIndex:?];
  v9 = [(_TVStackWrappingViewAccessibility *)self safeValueForKey:@"stackView"];
  [v9 _accessibilitySetVisibleContentInset:{top, left, bottom, right}];
}

@end