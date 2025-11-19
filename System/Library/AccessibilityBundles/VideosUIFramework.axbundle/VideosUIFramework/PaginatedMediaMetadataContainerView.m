@interface PaginatedMediaMetadataContainerView
@end

@implementation PaginatedMediaMetadataContainerView

void __94__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axKeysInOrder__block_invoke()
{
  v0 = _axKeysInOrder__keysInOrder;
  _axKeysInOrder__keysInOrder = &unk_2A23AB1A0;
}

uint64_t __101__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axTextViewModelClass__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.TextViewModel");
  _axTextViewModelClass__textViewModelClass = result;
  return result;
}

uint64_t __102__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axImageViewModelClass__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.ImageViewModel");
  _axImageViewModelClass__imageViewModelClass = result;
  return result;
}

uint64_t __104__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axGenericViewModelClass__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.ViewModel");
  _axGenericViewModelClass__viewModelClass = result;
  return result;
}

id __122__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axCurrentMetadata];
  v3 = [WeakRetained _axLabelForGenericViewModel:v2];

  return v3;
}

uint64_t __122__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUIButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __121__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axContainedInCatchUpToLiveViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

uint64_t __105__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axLabelForTextViewModel___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) BOOLValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end