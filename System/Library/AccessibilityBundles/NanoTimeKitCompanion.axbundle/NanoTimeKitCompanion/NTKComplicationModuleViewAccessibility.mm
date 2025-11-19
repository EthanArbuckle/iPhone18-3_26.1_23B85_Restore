@interface NTKComplicationModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation NTKComplicationModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKComplicationModuleView" hasInstanceMethod:@"isXL" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NTKEmptyModuleView"];
}

- (BOOL)isAccessibilityElement
{
  result = 1;
  if ([(NTKComplicationModuleViewAccessibility *)self safeBoolForKey:@"isXL"])
  {
    AXSafeClassFromString();
    if (objc_opt_isKindOfClass())
    {
      return 0;
    }
  }

  return result;
}

@end