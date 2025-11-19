@interface UIWebBrowserViewAccessibility
- (int64_t)accessibilityContainerType;
- (void)assistFormNode:(id)a3;
@end

@implementation UIWebBrowserViewAccessibility

- (void)assistFormNode:(id)a3
{
  v4 = a3;
  if (!UIAccessibilityIsVoiceOverRunning() || (*MEMORY[0x29EDC7600] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = UIWebBrowserViewAccessibility;
    [(UIWebBrowserViewAccessibility *)&v5 assistFormNode:v4];
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __48__UIWebBrowserViewAccessibility_assistFormNode___block_invoke()
{
  v0 = AXUIKeyboardWindow();
  v1 = NSClassFromString(&cfstr_Uipickerview.isa);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __48__UIWebBrowserViewAccessibility_assistFormNode___block_invoke_2;
  v3[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v3[4] = v1;
  v2 = [v0 _accessibilityFindDescendant:v3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
}

BOOL __48__UIWebBrowserViewAccessibility_assistFormNode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement])
  {
    v4 = [v3 _accessibilityAncestorIsKindOf:*(a1 + 32)];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)accessibilityContainerType
{
  v3.receiver = self;
  v3.super_class = UIWebBrowserViewAccessibility;
  return [(UIWebBrowserViewAccessibility *)&v3 accessibilityContainerType];
}

@end