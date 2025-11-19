@interface ParallaxViewAccessibility
- (id)accessibilityElements;
@end

@implementation ParallaxViewAccessibility

- (id)accessibilityElements
{
  if (accessibilityElements_onceToken != -1)
  {
    [ParallaxViewAccessibility accessibilityElements];
  }

  return [(ParallaxViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_292];
}

uint64_t __50__ParallaxViewAccessibility_accessibilityElements__block_invoke()
{
  result = MEMORY[0x29C2E2DD0](@"MusicApplication.DetailHeader");
  accessibilityElements_detailHeader = result;
  return result;
}

uint64_t __50__ParallaxViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = 1;
  }

  return isKindOfClass & 1;
}

@end