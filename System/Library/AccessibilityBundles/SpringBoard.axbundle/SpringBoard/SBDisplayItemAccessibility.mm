@interface SBDisplayItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SBDisplayItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SBDisplayItemAccessibility *)self safeStringForKey:@"bundleIdentifier"];
  v4 = [(SBDisplayItemAccessibility *)self _accessibilityValueForKey:@"AXSpokenName"];
  if (!v4)
  {
    v5 = [MEMORY[0x29EDB93F0] applicationProxyForIdentifier:v3];
    v6 = [v5 bundleURL];
    v4 = AXSpokenNameLabelForBundleURL();

    if (!v4)
    {
      v7 = AXSBApplicationControllerSharedInstance();
      v8 = [v7 applicationWithBundleIdentifier:v3];

      v4 = [v8 safeStringForKey:@"displayName"];
    }

    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = &stru_2A22F9D20;
    }

    [(SBDisplayItemAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:@"AXSpokenName"];
  }

  return v4;
}

@end