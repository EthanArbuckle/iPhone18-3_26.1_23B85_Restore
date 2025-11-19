@interface AVInfoPanelAudioCollectionViewCellAccessibility
@end

@implementation AVInfoPanelAudioCollectionViewCellAccessibility

void __74__tvOS_AVInfoPanelAudioCollectionViewCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v7 = [*(a1 + 32) safeValueForKey:@"route"];
  v4 = [v3 _imageForRoute:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __83__tvOS_AVInfoPanelAudioCollectionViewCellAccessibility_accessibilityHeaderElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C6300](@"AVInfoPanelCollectionReusableHeaderView");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end