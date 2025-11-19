@interface SiriUISashViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation SiriUISashViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriUISashView" hasInstanceMethod:@"sashItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriUISashItem" isKindOfClass:@"SiriSharedUISashItem"];
  [v3 validateClass:@"SiriSharedUISashItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriSharedUISashItem" hasInstanceMethod:@"isHidden" withFullSignature:{"B", 0}];
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