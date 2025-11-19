@interface UIImageViewAccessibility
@end

@implementation UIImageViewAccessibility

BOOL __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Puusertransfor_0.isa);
  if (objc_opt_isKindOfClass())
  {
    [v2 frame];
    v5 = v4 == *(MEMORY[0x29EDB90B8] + 8) && v3 == *MEMORY[0x29EDB90B8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke_3;
  v3[3] = &unk_29F2E8618;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _performZoomAndScrollChanges:v3];
}

void __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_scrollView"];
  v3 = __UIAccessibilitySafeClass();

  [v3 zoomScale];
  v5 = v4;
  [v3 maximumZoomScale];
  v7 = v6;
  [v3 minimumZoomScale];
  v9 = (v7 - v8) / 10.0;
  if (!*(a1 + 40))
  {
    v9 = -v9;
  }

  [v3 setZoomScale:1 animated:v5 + v9];
  [v3 zoomScale];
  v15 = MEMORY[0x29EDCA5F8];
  v16 = *(a1 + 32);
  AXPerformSafeBlock();
  v10 = *MEMORY[0x29EDC7EA8];
  v11 = MEMORY[0x29EDBA0F8];
  v12 = UIKitAccessibilityLocalizedString();
  v13 = AXFormatFloat();
  v14 = [v11 stringWithFormat:v12, v13, v15, 3221225472, __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke_4, &unk_29F2E85F0];
  UIAccessibilityPostNotification(v10, v14);
}

uint64_t __78__UIImageViewAccessibility__PhotosUI__UIKit__accessibilityZoomAtPoint_zoomIn___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setDesiredZoomScale:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setEnabledInteractions:7];
}

uint64_t __65__UIImageViewAccessibility__PhotosUI__UIKit__liftableSubjectView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Vkcimagesubjec.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end