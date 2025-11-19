@interface SBAppThumbnailGridViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (void)_layoutSubviews:(BOOL)a3;
- (void)removeViewAtIndex:(int64_t)a3 animate:(BOOL)a4;
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
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
  }

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)removeViewAtIndex:(int64_t)a3 animate:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v8 = [v7 count];
  v9.receiver = self;
  v9.super_class = SBAppThumbnailGridViewAccessibility;
  [(SBAppThumbnailGridViewAccessibility *)&v9 removeViewAtIndex:a3 animate:v4];
  if ([v7 count] != v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_layoutSubviews:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBAppThumbnailGridViewAccessibility *)self safeValueForKey:@"_appThumbnails"];
  v6 = [v5 count];
  v7.receiver = self;
  v7.super_class = SBAppThumbnailGridViewAccessibility;
  [(SBAppThumbnailGridViewAccessibility *)&v7 _layoutSubviews:v3];
  if ([v5 count] != v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end