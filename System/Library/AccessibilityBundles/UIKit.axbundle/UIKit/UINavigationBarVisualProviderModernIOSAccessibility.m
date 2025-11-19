@interface UINavigationBarVisualProviderModernIOSAccessibility
@end

@implementation UINavigationBarVisualProviderModernIOSAccessibility

void __70___UINavigationBarVisualProviderModernIOSAccessibility_layoutSubviews__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  [a1[4] _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  location[0] = [a1[4] accessibilityElements];
  if (([a1[5] isEqual:location[0]] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(location, 0);
}

@end