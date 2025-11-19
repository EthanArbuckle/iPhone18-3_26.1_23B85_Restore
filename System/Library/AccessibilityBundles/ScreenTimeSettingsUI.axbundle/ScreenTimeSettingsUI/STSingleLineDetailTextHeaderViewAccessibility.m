@interface STSingleLineDetailTextHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STSingleLineDetailTextHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STSingleLineDetailTextHeaderView" isKindOfClass:@"STSingleLineHeaderView"];
  [v3 validateClass:@"STSingleLineHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSingleLineDetailTextHeaderView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

@end