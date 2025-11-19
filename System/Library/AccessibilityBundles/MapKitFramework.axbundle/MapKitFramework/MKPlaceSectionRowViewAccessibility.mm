@interface MKPlaceSectionRowViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
@end

@implementation MKPlaceSectionRowViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(MKPlaceSectionRowViewAccessibility *)self storedIsAccessibilityElement];

  if (v3)
  {
    v4 = [(MKPlaceSectionRowViewAccessibility *)self storedIsAccessibilityElement];
    LOBYTE(v5) = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MKPlaceSectionRowViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_3];
    v5 = v4 == 0;
  }

  return v5;
}

uint64_t __60__MKPlaceSectionRowViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v2 = [(MKPlaceSectionRowViewAccessibility *)self _accessibleSubviews];
  v3 = [v2 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_291_0];
  v5 = MEMORY[0x29C2DC5B0]();

  v6 = AXStringByReplacingMiddleDots(v5);

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  v14[1] = *MEMORY[0x29EDCA608];
  v3 = [(MKPlaceSectionRowViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_294 startWithSelf:1];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7900]);
    v5 = MEMORY[0x29EDBA0F8];
    v6 = AXMapKitLocString(@"DRAG_CARD_ROW");
    v7 = [(MKPlaceSectionRowViewAccessibility *)self accessibilityLabel];
    v8 = [v5 stringWithFormat:v6, v7];
    [(MKPlaceSectionRowViewAccessibility *)self accessibilityActivationPoint];
    UIAccessibilityPointToPoint();
    v9 = [v4 initWithName:v8 point:v3 inView:?];
    v14[0] = v9;
    v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MKPlaceSectionRowViewAccessibility;
    v10 = [(MKPlaceSectionRowViewAccessibility *)&v13 accessibilityDragSourceDescriptors];
  }

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

@end