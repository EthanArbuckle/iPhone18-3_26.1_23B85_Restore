@interface _SFMultipleLineAlertActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _SFMultipleLineAlertActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFMultipleLineAlertActionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFMultipleLineAlertActionView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

@end