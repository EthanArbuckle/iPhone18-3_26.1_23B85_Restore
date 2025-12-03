@interface SiriUISashViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation SiriUISashViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriUISashView" hasInstanceMethod:@"sashItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriUISashItem" isKindOfClass:@"SiriSharedUISashItem"];
  [validationsCopy validateClass:@"SiriSharedUISashItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriSharedUISashItem" hasInstanceMethod:@"isHidden" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriUISashViewAccessibility *)self safeValueForKey:@"sashItem"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SiriUISashViewAccessibility *)self safeValueForKey:@"sashItem"];
  v3 = [v2 safeBoolForKey:@"isHidden"];

  return v3 ^ 1;
}

@end