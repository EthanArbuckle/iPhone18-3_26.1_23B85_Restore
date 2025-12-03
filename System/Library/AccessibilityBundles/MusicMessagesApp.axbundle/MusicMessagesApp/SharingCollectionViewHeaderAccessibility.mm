@interface SharingCollectionViewHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SharingCollectionViewHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicMessagesApp.SharingCollectionViewHeader" hasInstanceMethod:@"accessibilityAttributionImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicMessagesApp.SharingCollectionViewHeader" hasInstanceMethod:@"accessibilityShareRecentlyPlayedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicMessagesApp.SharingCollectionViewHeader" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_opt_class();
  v3 = [(SharingCollectionViewHeaderAccessibility *)self safeValueForKey:@"accessibilityAttributionImageView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityMusicMessagesAppLocalizedString(@"apple.music.logo");
  [v4 setAccessibilityLabel:v5];

  v9 = 0;
  objc_opt_class();
  v6 = [(SharingCollectionViewHeaderAccessibility *)self safeValueForKey:@"accessibilityShareRecentlyPlayedLabel"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v8.receiver = self;
  v8.super_class = SharingCollectionViewHeaderAccessibility;
  [(SharingCollectionViewHeaderAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SharingCollectionViewHeaderAccessibility;
  [(SharingCollectionViewHeaderAccessibility *)&v3 layoutSubviews];
  [(SharingCollectionViewHeaderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end