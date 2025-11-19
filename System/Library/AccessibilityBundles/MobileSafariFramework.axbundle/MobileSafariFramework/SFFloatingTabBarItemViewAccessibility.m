@interface SFFloatingTabBarItemViewAccessibility
@end

@implementation SFFloatingTabBarItemViewAccessibility

uint64_t __84___SFFloatingTabBarItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"configuration"];

  if (v2)
  {
    v3 = [v2 safeSwiftBoolForKey:@"isRetitling"];
    v4 = *MEMORY[0x29EDC7598];
    v5 = *MEMORY[0x29EDC7FD0];
    if (v3)
    {
      v6 = *MEMORY[0x29EDC7598];
    }

    else
    {
      v6 = *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F70];
    }

    v7 = [v2 safeSwiftBoolForKey:@"isSelected"];
    v8 = *MEMORY[0x29EDC7FC0];
    if (!v7)
    {
      v8 = 0;
    }

    v9 = v8 | v6;
  }

  else
  {
    v9 = *MEMORY[0x29EDC7F70];
  }

  return v9;
}

@end