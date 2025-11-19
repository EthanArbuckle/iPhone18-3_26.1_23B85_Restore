@interface RecordButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation RecordButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RecordButton" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"enabled" withFullSignature:{"B", 0}];
}

@end