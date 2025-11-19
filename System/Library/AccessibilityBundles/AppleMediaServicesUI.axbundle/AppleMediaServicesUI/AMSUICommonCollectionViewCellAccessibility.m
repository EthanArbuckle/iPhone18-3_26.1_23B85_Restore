@interface AMSUICommonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AMSUICommonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AMSUICommonCollectionViewCell" hasInstanceMethod:@"underlyingContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AMSUICommonCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AMSUICommonCollectionViewCellAccessibility *)self safeValueForKey:@"underlyingContentView"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityLabel
{
  v2 = [(AMSUICommonCollectionViewCellAccessibility *)self safeValueForKey:@"underlyingContentView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end