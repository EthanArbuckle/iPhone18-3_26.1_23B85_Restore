@interface SBHApplicationIconAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHApplicationIconAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHApplicationIcon" isKindOfClass:@"SBIcon"];
  [validationsCopy validateClass:@"SBHApplicationIcon" hasInstanceMethod:@"applicationPlaceholder" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SBHApplicationIconAccessibility *)self _accessibilityValueForKey:@"AXSpokenName"];
  if (!v3)
  {
    if (AXDoesRequestingClientDeserveAutomation())
    {
      v3 = 0;
    }

    else
    {
      v4 = MEMORY[0x29EDB93F0];
      _accessibilityBundleIdentifier = [(SBHApplicationIconAccessibility *)self _accessibilityBundleIdentifier];
      v6 = [v4 applicationProxyForIdentifier:_accessibilityBundleIdentifier];
      bundleURL = [v6 bundleURL];
      v3 = AXSpokenNameLabelForBundleURL();

      if (v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = &stru_2A230FAF0;
      }

      [(SBHApplicationIconAccessibility *)self _accessibilitySetRetainedValue:v8 forKey:@"AXSpokenName"];
    }
  }

  if ([(__CFString *)v3 length])
  {
    v9 = v3;
  }

  else
  {
    v10 = [(SBHApplicationIconAccessibility *)self safeValueForKey:@"applicationPlaceholder"];
    v11 = v10;
    if (v10)
    {
      [v10 accessibilityLabel];
    }

    else
    {
      [(SBHApplicationIconAccessibility *)self safeStringForKey:@"_axIconLabel"];
    }
    v9 = ;
  }

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(SBHApplicationIconAccessibility *)self safeValueForKey:@"applicationPlaceholder"];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityValue];
  }

  else
  {
    [(SBHApplicationIconAccessibility *)self safeStringForKey:@"_axIconValue"];
  }
  v5 = ;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBHApplicationIconAccessibility;
  return *MEMORY[0x29EDC7530] | [(SBHApplicationIconAccessibility *)&v3 accessibilityTraits];
}

@end