@interface NSObject(AXBrailleMapProvider)
- (double)accessibilityBrailleMapRenderRegion;
- (id)accessibilityBrailleMapRenderer;
- (void)setAccessibilityBrailleMapRenderRegion:()AXBrailleMapProvider;
- (void)setAccessibilityBrailleMapRenderer:()AXBrailleMapProvider;
@end

@implementation NSObject(AXBrailleMapProvider)

- (void)setAccessibilityBrailleMapRenderer:()AXBrailleMapProvider
{
  v4 = _Block_copy(aBlock);

  objc_setAssociatedObject(self, &AXBrailleRegion, v4, 3);
}

- (id)accessibilityBrailleMapRenderer
{
  v1 = objc_getAssociatedObject(self, &AXBrailleRegion);
  v2 = _Block_copy(v1);

  return v2;
}

- (double)accessibilityBrailleMapRenderRegion
{
  v1 = objc_getAssociatedObject(self, &AXBrailleRegion);
  v2 = v1;
  if (v1)
  {
    [v1 rectValue];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  return v4;
}

- (void)setAccessibilityBrailleMapRenderRegion:()AXBrailleMapProvider
{
  v2 = [MEMORY[0x1E696B098] valueWithRect:?];
  objc_setAssociatedObject(self, &AXBrailleRegion, v2, 3);
}

@end