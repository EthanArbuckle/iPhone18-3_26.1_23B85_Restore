@interface MusicUINavigationButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation MusicUINavigationButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(MusicUINavigationButtonAccessibility *)self safeValueForKey:@"_accessibilityImagePath"];
  v4 = [v3 hasPrefix:@"UIButtonBarListIcon"];

  if (v4)
  {
    accessibilityLabel = accessibilityMusicLocalizedString(@"track.list.button");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MusicUINavigationButtonAccessibility;
    accessibilityLabel = [(MusicUINavigationButtonAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end