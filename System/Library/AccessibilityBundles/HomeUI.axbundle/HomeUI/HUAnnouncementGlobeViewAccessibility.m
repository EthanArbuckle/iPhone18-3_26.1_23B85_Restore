@interface HUAnnouncementGlobeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_playAnnouncementWithInfo:(id)a3;
- (void)_setupSubviewsForAnnouncementInfo:(id)a3;
@end

@implementation HUAnnouncementGlobeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUAnnouncementGlobeView" hasInstanceVariable:@"_tappableCoverView" withType:"UIView"];
  [v3 validateClass:@"HUAnnouncementGlobeView" hasInstanceMethod:@"_setupSubviewsForAnnouncementInfo:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUAnnouncementGlobeView" hasInstanceMethod:@"_playAnnouncementWithInfo:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUAnnouncementGlobeView" hasInstanceMethod:@"audioPlayer" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = HUAnnouncementGlobeViewAccessibility;
  [(HUAnnouncementGlobeViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(HUAnnouncementGlobeViewAccessibility *)self safeUIViewForKey:@"_tappableCoverView"];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __82__HUAnnouncementGlobeViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F2C6B48;
  objc_copyWeak(&v10, &location);
  [v3 _setAccessibilityLabelBlock:&v6];

  v4 = [(HUAnnouncementGlobeViewAccessibility *)self safeUIViewForKey:@"_tappableCoverView", v6, v7, v8, v9];
  [v4 _setAccessibilityHintBlock:&__block_literal_global_1];

  v5 = [(HUAnnouncementGlobeViewAccessibility *)self safeUIViewForKey:@"_tappableCoverView"];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __82__HUAnnouncementGlobeViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"audioPlayer"];

  if (v2)
  {
    v3 = @"stop.button";
  }

  else
  {
    v3 = @"play.button";
  }

  v4 = accessibilityHomeUILocalizedString(v3);

  return v4;
}

- (void)_setupSubviewsForAnnouncementInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUAnnouncementGlobeViewAccessibility;
  [(HUAnnouncementGlobeViewAccessibility *)&v4 _setupSubviewsForAnnouncementInfo:a3];
  [(HUAnnouncementGlobeViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_playAnnouncementWithInfo:(id)a3
{
  v3.receiver = self;
  v3.super_class = HUAnnouncementGlobeViewAccessibility;
  [(HUAnnouncementGlobeViewAccessibility *)&v3 _playAnnouncementWithInfo:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], &stru_2A21C2B40);
}

@end