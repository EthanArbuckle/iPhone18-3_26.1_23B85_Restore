@interface PXUIScrollViewAccessibility
@end

@implementation PXUIScrollViewAccessibility

uint64_t __53___PXUIScrollViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E6930](@"PXGView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __53___PXUIScrollViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained subviews];
  }

  else
  {
    [MEMORY[0x29EDB8D80] array];
  }
  v3 = ;

  return v3;
}

uint64_t __68___PXUIScrollViewAccessibility__accessibilityIsInFeedViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E6930](@"PXFeedViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __64___PXUIScrollViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __64___PXUIScrollViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2;
  v6[3] = &__block_descriptor_48_e8_B16__0_8l;
  v7 = *(a1 + 40);
  v3 = [a2 _accessibilityFindDescendant:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL __64___PXUIScrollViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(CGPoint *a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement])
  {
    [v3 accessibilityFrame];
    v4 = CGRectContainsPoint(v6, a1[2]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end