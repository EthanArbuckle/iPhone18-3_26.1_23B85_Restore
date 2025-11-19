@interface VideosUIViewAccessibility
- (id)_accessibilityParentForFindingScrollParent;
@end

@implementation VideosUIViewAccessibility

- (id)_accessibilityParentForFindingScrollParent
{
  v8.receiver = self;
  v8.super_class = VideosUIViewAccessibility;
  v3 = [(VideosUIViewAccessibility *)&v8 _accessibilityParentForFindingScrollParent];
  v4 = [(VideosUIViewAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"AXContainedInCollectionView"];

  if (v5)
  {
    v6 = [(VideosUIViewAccessibility *)self safeValueForKey:@"superview"];

    v3 = v6;
  }

  return v3;
}

@end