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

  v5 = [v4 contentView];
  v6 = [v5 subviews];
  v7 = [v6 firstObject];

  objc_opt_class();
  v8 = [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)self safeValueForKey:@"soundHeaderView"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 contentView];
  v11 = [v10 subviews];
  v12 = [v11 firstObject];

  objc_opt_class();
  v13 = [(tvOS_AVInfoPanelAudioViewControllerAccessibility *)self safeValueForKey:@"speakerHeaderView"];
  v14 = __UIAccessibilityCastAsClass();

  v15 = [v14 contentView];
  v16 = [v15 subviews];
  v17 = [v16 firstObject];

  [v4 setIsAccessibilityElement:1];
  [v9 setIsAccessibilityElement:1];
  [v14 setIsAccessibilityElement:1];
  [v7 setIsAccessibilityElement:0];
  [v12 setIsAccessibilityElement:0];
  [v17 setIsAccessibilityElement:0];
  v18 = [v7 accessibilityLabel];
  [v4 setAccessibilityLabel:v18];

  v19 = [v12 accessibilityLabel];
  [v9 setAccessibilityLabel:v19];

  v20 = [v17 accessibilityLabel];
  [v14 setAccessibilityLabel:v20];

  v21 = *MEMORY[0x29EDC7F80];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v9 setAccessibilityTraits:v21];
  [v14 setAccessibilityTraits:v21];
}

@end