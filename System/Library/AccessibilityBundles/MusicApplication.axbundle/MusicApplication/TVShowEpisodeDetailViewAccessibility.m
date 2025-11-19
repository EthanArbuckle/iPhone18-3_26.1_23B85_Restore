@interface TVShowEpisodeDetailViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation TVShowEpisodeDetailViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = 0;
  objc_opt_class();
  v3 = [(TVShowEpisodeDetailViewAccessibility *)self safeValueForKey:@"accessibilityContextualActionsButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityMusicLocalizedString(@"more.button");
  [v4 setAccessibilityLabel:v5];

  v6.receiver = self;
  v6.super_class = TVShowEpisodeDetailViewAccessibility;
  [(TVShowEpisodeDetailViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVShowEpisodeDetailViewAccessibility;
  [(TVShowEpisodeDetailViewAccessibility *)&v3 layoutSubviews];
  [(TVShowEpisodeDetailViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end