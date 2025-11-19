@interface ABDynamicLoaderAccessibility
@end

@implementation ABDynamicLoaderAccessibility

uint64_t __82__ABDynamicLoaderAccessibility_loadFrameworkAtPath_andStoreHandle_bundle_logging___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isLoaded] & 1) == 0)
  {
    [*(a1 + 32) load];
  }

  v2 = MEMORY[0x29EDC7358];
  v3 = *(a1 + 32);

  return [v2 loadAccessibilityBundleForBundle:v3 didLoadCallback:0 force:1 loadAllAccessibilityInfo:0];
}

@end