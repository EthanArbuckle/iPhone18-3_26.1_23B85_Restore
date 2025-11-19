@interface UIBarCustomizationReservoirCellAccessibility
@end

@implementation UIBarCustomizationReservoirCellAccessibility

uint64_t __87___UIBarCustomizationReservoirCellAccessibility__accessibilityAllDragSourceDescriptors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uibarcustomiza_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __86___UIBarCustomizationReservoirCellAccessibility__accessibilityAllDropPointDescriptors__block_invoke(void *a1, void *a2)
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