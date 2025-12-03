@interface AMSUICommonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AMSUICommonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AMSUICommonCollectionViewCell" hasInstanceMethod:@"underlyingContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AMSUICommonCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AMSUICommonCollectionViewCellAccessibility *)self safeValueForKey:@"underlyingContentView"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end