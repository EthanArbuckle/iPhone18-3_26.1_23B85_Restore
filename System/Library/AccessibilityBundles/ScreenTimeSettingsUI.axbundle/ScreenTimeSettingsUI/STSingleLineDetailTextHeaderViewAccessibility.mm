@interface STSingleLineDetailTextHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STSingleLineDetailTextHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSingleLineDetailTextHeaderView" isKindOfClass:@"STSingleLineHeaderView"];
  [validationsCopy validateClass:@"STSingleLineHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSingleLineDetailTextHeaderView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

@end