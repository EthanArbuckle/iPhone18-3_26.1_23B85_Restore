@interface SearchUIMultiResultAppCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation SearchUIMultiResultAppCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIHomeScreenAppIconView"];
  [v3 validateClass:@"SearchUIMultiResultAppCollectionCell" hasInstanceMethod:@"appIconView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIMultiResultAppCollectionCellAccessibility *)self safeValueForKey:@"appIconView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(SearchUIMultiResultAppCollectionCellAccessibility *)self safeValueForKey:@"appIconView"];
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

@end