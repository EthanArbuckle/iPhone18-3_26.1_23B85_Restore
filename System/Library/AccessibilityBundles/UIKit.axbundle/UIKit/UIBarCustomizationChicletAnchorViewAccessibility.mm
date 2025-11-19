@interface UIBarCustomizationChicletAnchorViewAccessibility
@end

@implementation UIBarCustomizationChicletAnchorViewAccessibility

uint64_t __91___UIBarCustomizationChicletAnchorViewAccessibility__accessibilityAllDragSourceDescriptors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uibarcustomiza_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __90___UIBarCustomizationChicletAnchorViewAccessibility__accessibilityAllDropPointDescriptors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uibarcustomiza_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

@end