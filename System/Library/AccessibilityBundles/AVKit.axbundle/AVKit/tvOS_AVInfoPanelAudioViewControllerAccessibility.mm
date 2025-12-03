@interface tvOS_AVInfoPanelAudioViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation tvOS_AVInfoPanelAudioViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v22.receiver = self;
  v22.super_class = tvOS_AVInfoPanelAudioViewControllerAccessibility;
  [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)&v22 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)self safeValueForKey:@"languageHeaderView"];
  v4 = __UIAccessibilityCastAsClass();

  contentView = [v4 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  objc_opt_class();
  v8 = [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)self safeValueForKey:@"soundHeaderView"];
  v9 = __UIAccessibilityCastAsClass();

  contentView2 = [v9 contentView];
  subviews2 = [contentView2 subviews];
  firstObject2 = [subviews2 firstObject];

  objc_opt_class();
  v13 = [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)self safeValueForKey:@"speakerHeaderView"];
  v14 = __UIAccessibilityCastAsClass();

  contentView3 = [v14 contentView];
  subviews3 = [contentView3 subviews];
  firstObject3 = [subviews3 firstObject];

  [v4 setIsAccessibilityElement:1];
  [v9 setIsAccessibilityElement:1];
  [v14 setIsAccessibilityElement:1];
  [firstObject setIsAccessibilityElement:0];
  [firstObject2 setIsAccessibilityElement:0];
  [firstObject3 setIsAccessibilityElement:0];
  accessibilityLabel = [firstObject accessibilityLabel];
  [v4 setAccessibilityLabel:accessibilityLabel];

  accessibilityLabel2 = [firstObject2 accessibilityLabel];
  [v9 setAccessibilityLabel:accessibilityLabel2];

  accessibilityLabel3 = [firstObject3 accessibilityLabel];
  [v14 setAccessibilityLabel:accessibilityLabel3];

  v21 = *MEMORY[0x29EDC7F80];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v9 setAccessibilityTraits:v21];
  [v14 setAccessibilityTraits:v21];
}

@end