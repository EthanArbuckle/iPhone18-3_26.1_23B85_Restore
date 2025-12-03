@interface VideosUIViewAccessibility
- (id)_accessibilityParentForFindingScrollParent;
@end

@implementation VideosUIViewAccessibility

- (id)_accessibilityParentForFindingScrollParent
{
  v8.receiver = self;
  v8.super_class = VideosUIViewAccessibility;
  _accessibilityParentForFindingScrollParent = [(VideosUIViewAccessibility *)&v8 _accessibilityParentForFindingScrollParent];
  accessibilityIdentifier = [(VideosUIViewAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"AXContainedInCollectionView"];

  if (v5)
  {
    v6 = [(VideosUIViewAccessibility *)self safeValueForKey:@"superview"];

    _accessibilityParentForFindingScrollParent = v6;
  }

  return _accessibilityParentForFindingScrollParent;
}

@end