@interface SFURLFieldOverlayViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFURLFieldOverlayViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = SFURLFieldOverlayViewAccessibility;
  [(SFURLFieldOverlayViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SFURLFieldOverlayViewAccessibility *)self safeArrayForKey:@"_buttons"];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = *v16;
    v6 = MEMORY[0x29EDCA5F8];
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        LOBYTE(location) = 0;
        objc_opt_class();
        v9 = __UIAccessibilityCastAsClass();
        if (location == 1)
        {
          abort();
        }

        v10 = v9;
        objc_initWeak(&location, v9);
        v12[0] = v6;
        v12[1] = 3221225472;
        v12[2] = __80__SFURLFieldOverlayViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v12[3] = &unk_29F2D67E0;
        objc_copyWeak(&v13, &location);
        [v10 setAccessibilityTraitsBlock:v12];
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t __80__SFURLFieldOverlayViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained configuration];
  v4 = [v3 baseBackgroundColor];
  [v4 alphaComponent];
  v6 = v5;

  v7 = *MEMORY[0x29EDC7FA8];
  if (v6 >= 0.1)
  {
    v7 = 0;
  }

  return v7 | v1;
}

@end