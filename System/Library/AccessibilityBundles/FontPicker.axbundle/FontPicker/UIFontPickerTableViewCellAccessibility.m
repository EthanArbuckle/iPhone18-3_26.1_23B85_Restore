@interface UIFontPickerTableViewCellAccessibility
@end

@implementation UIFontPickerTableViewCellAccessibility

id __85___UIFontPickerTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v3 = *(MEMORY[0x29EDB90A0] + 16);
  *&v6.a = *MEMORY[0x29EDB90A0];
  *&v6.c = v3;
  *&v6.tx = *(MEMORY[0x29EDB90A0] + 32);
  CGAffineTransformEqualToTransform(&t1, &v6);

  v4 = UIKitAccessibilityLocalizedString();

  return v4;
}

@end