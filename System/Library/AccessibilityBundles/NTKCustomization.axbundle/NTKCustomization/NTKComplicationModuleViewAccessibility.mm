@interface NTKComplicationModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation NTKComplicationModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKComplicationModuleView" hasInstanceMethod:@"isXL" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NTKEmptyModuleView"];
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