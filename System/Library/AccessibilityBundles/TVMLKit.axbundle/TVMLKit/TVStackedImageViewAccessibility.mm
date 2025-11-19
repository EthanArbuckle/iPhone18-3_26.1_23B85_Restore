@interface TVStackedImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFrameDelegate;
@end

@implementation TVStackedImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVStackedImageView" hasInstanceVariable:@"_impl" withType:"NSObject"];
  [v3 validateClass:@"_UIStackedImageContainerView" hasInstanceMethod:@"imageStackLayer" withFullSignature:{"@", 0}];
}

- (id)_accessibilityFrameDelegate
{
  v2 = [(TVStackedImageViewAccessibility *)self safeValueForKey:@"_impl"];
  v3 = [v2 safeValueForKey:@"imageStackLayer"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

@end