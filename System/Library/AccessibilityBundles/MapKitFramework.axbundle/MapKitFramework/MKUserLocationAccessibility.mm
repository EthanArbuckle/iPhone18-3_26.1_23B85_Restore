@interface MKUserLocationAccessibility
- (void)setLocation:(id)location;
@end

@implementation MKUserLocationAccessibility

- (void)setLocation:(id)location
{
  locationCopy = location;
  v7.receiver = self;
  v7.super_class = MKUserLocationAccessibility;
  [(MKUserLocationAccessibility *)&v7 setLocation:locationCopy];
  if (locationCopy && UIAccessibilityIsVoiceOverRunning())
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB9260]);
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __43__MKUserLocationAccessibility_setLocation___block_invoke;
    v6[3] = &unk_29F2CB2E0;
    v6[4] = self;
    [v5 reverseGeocodeLocation:locationCopy completionHandler:v6];
  }
}

uint64_t __43__MKUserLocationAccessibility_setLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v15 = v5;
    v5 = [v5 count];
    v6 = v15;
    if (v5)
    {
      v7 = [v15 objectAtIndex:0];
      v8 = [v7 name];
      v9 = [v7 thoroughfare];
      v10 = [v7 locality];
      if (v8 && v9)
      {
        if (([v8 hasPrefix:v9] & 1) != 0 || objc_msgSend(v8, "hasSuffix:", v9))
        {
          v13 = v10;
          v14 = @"__AXStringForVariablesSentinel";
        }

        else
        {
          v14 = v10;
          v13 = v9;
        }

        v11 = __UIAXStringForVariables();
        [*(a1 + 32) _accessibilitySetRetainedValue:v11 forKey:{@"AccessibilityDeterminedLocation", v13, v14}];
      }

      [*(a1 + 32) _accessibilitySetRetainedValue:v10 forKey:@"AccessibilityDeterminedLocality"];

      v6 = v15;
    }
  }

  return MEMORY[0x2A1C71028](v5, v6);
}

@end