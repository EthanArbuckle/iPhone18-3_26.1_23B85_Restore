@interface SFOneStepBookmarkingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFOneStepBookmarkingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFOneStepBookmarkingButton" conformsToProtocol:@"SFTooltipProviding"];
  [v3 validateProtocol:@"SFTooltipProviding" hasMethod:@"tooltip" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"SFTooltip" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SFOneStepBookmarkingButtonAccessibility *)self safeValueForKey:@"tooltip"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeStringForKey:@"text"];
  }

  else
  {
    v4 = &stru_2A2220B98;
  }

  return v4;
}

@end