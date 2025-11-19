@interface UIViewAccessibility
@end

@implementation UIViewAccessibility

uint64_t __63__UIViewAccessibility__MobileMail__UIKit_accessibilityElements__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:*(a1 + 32)];
  v2 = accessibilityElements_showDraftsElement;
  accessibilityElements_showDraftsElement = v1;

  [accessibilityElements_showDraftsElement setIsAccessibilityElement:1];
  v3 = accessibilityElements_showDraftsElement;
  v4 = *MEMORY[0x29EDC7F70];

  return [v3 setAccessibilityTraits:v4];
}

@end