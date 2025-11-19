@interface TLKAuxilliaryTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation TLKAuxilliaryTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"middleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

@end