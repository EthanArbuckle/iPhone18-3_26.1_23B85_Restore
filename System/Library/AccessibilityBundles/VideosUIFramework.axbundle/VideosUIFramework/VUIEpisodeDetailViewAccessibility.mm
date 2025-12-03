@interface VUIEpisodeDetailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
@end

@implementation VUIEpisodeDetailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"seasonNumberLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"episodeNumberLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"episodeTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"mediaBadgeTagsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"contentDescriptionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"releaseDateLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"mediaItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIEpisodeDetailView" hasInstanceMethod:@"imageFrameView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryEpisodeFrameView" hasInstanceMethod:@"playButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryEpisodeFrameView" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VUIEpisodeDetailViewAccessibility;
  [(VUIEpisodeDetailViewAccessibility *)&v3 didMoveToWindow];
  [(VUIEpisodeDetailViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19.receiver = self;
  v19.super_class = VUIEpisodeDetailViewAccessibility;
  [(VUIEpisodeDetailViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"imageFrameView"];
  v3 = [v18 safeValueForKey:@"playButton"];
  v4 = accessibilityLocalizedString(@"play");
  [v3 setAccessibilityLabel:v4];

  v5 = [v18 safeValueForKey:@"progressView"];
  v6 = MEMORY[0x29EDB8D80];
  v7 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"seasonNumberLabel"];
  v8 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"episodeNumberLabel"];
  v9 = [v6 axArrayByIgnoringNilElementsWithCount:{2, v7, v8}];

  v10 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v9];
  v11 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"episodeTitleLabel"];
  accessibilityTraits = [v11 accessibilityTraits];
  [v11 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  v13 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"releaseDateLabel"];
  v14 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"mediaBadgeTagsView"];
  v15 = [(VUIEpisodeDetailViewAccessibility *)self safeValueForKey:@"contentDescriptionView"];
  v16 = v5;
  v17 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{7, v3, v5, v10, v11, v13, v14, v15}];
  [(VUIEpisodeDetailViewAccessibility *)self setAccessibilityElements:v17];
}

@end