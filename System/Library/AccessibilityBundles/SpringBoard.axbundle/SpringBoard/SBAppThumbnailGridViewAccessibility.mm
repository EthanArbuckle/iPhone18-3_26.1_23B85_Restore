@interface SBAppThumbnailGridViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (void)_layoutSubviews:(BOOL)subviews;
- (void)removeViewAtIndex:(int64_t)index animate:(BOOL)animate;
@end

@implementation SBAppThumbnailGridViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_emptyLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  v4 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  if ([v4 count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:index];
  }

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  v5 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v6 = [v5 indexOfObject:elementCopy];

  return v6;
}

- (void)removeViewAtIndex:(int64_t)index animate:(BOOL)animate
{
  animateCopy = animate;
  v7 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v8 = [v7 count];
  v9.receiver = self;
  v9.super_class = SBAppThumbnailGridViewAccessibility;
  [(SBAppThumbnailGridViewAccessibility *)&v9 removeViewAtIndex:index animate:animateCopy];
  if ([v7 count] != v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_layoutSubviews:(BOOL)subviews
{
  subviewsCopy = subviews;
  v5 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v6 = [v5 count];
  v7.receiver = self;
  v7.super_class = SBAppThumbnailGridViewAccessibility;
  [(SBAppThumbnailGridViewAccessibility *)&v7 _layoutSubviews:subviewsCopy];
  if ([v5 count] != v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end