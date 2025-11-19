@interface UIEditMenuListViewAccessibility
@end

@implementation UIEditMenuListViewAccessibility

void __56___UIEditMenuListViewAccessibility__reloadMenuAnimated___block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  v1 = [*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive];
  v8 = 0;
  v6 = 0;
  if ((v1 & 1) != 0 || (v9 = [MEMORY[0x29EDC7B08] activeInstance], v8 = 1, v7 = objc_msgSend(v9, "inputDelegate"), v6 = 1, LOBYTE(v3) = 0, !v7))
  {
    v3 = !AXIsDictationListening();
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v3)
  {
    v2 = [*(a1 + 32) safeUIViewForKey:@"collectionView"];
    argument = [v2 _accessibilityUnignoredDescendant];
    MEMORY[0x29EDC9740](v2);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
  }
}

@end