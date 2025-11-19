@interface HKListItemLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation HKListItemLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKListItemLabel" hasInstanceMethod:@"itemView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKListItemLabel" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
}

@end