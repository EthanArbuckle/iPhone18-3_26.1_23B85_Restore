@interface AVInfoMenuControllerAccessibility
@end

@implementation AVInfoMenuControllerAccessibility

uint64_t __69__tvOS_AVInfoMenuControllerAccessibility_accessibilityHeaderElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C6300](@"AVInfoPanelMetadataViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end