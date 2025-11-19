@interface MRUActivityNowPlayingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateVisibilty;
@end

@implementation MRUActivityNowPlayingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUActivityNowPlayingView" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUActivityNowPlayingView" hasInstanceMethod:@"trailingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUActivityNowPlayingViewController"];
  [v3 validateClass:@"MRUActivityNowPlayingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateProtocol:@"SBUISystemApertureElementContextProviding" hasMethod:@"systemApertureElementContext" isInstanceMethod:1 isRequired:1];
  [v3 validateProtocol:@"SBUISystemApertureElementContext" hasMethod:@"setElementNeedsUpdate" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"SBUISA_layoutMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MRUActivityNowPlayingView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"MRUActivityNowPlayingView" hasInstanceMethod:@"updateVisibilty" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MRUActivityTrailingAccessoryView" hasInstanceMethod:@"routeImage" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(MRUActivityNowPlayingViewAccessibility *)self safeValueForKey:@"trailingView"];
  if (v3)
  {
    v17 = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"routeImage"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 accessibilityLabel];
    [v3 setAccessibilityLabel:v6];
  }

  v7 = [MEMORY[0x29EDBB2A0] sharedManager];
  v8 = [v7 musicHapticsEnabled];

  if (v8)
  {
    v9 = [(MRUActivityNowPlayingViewAccessibility *)self safeValueForKey:@"trailingView"];
    [v9 setAccessibilityLabelBlock:&__block_literal_global];
  }

  v16.receiver = self;
  v16.super_class = MRUActivityNowPlayingViewAccessibility;
  [(MRUActivityNowPlayingViewAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v10 = [(MRUActivityNowPlayingViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_344 startWithSelf:1];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 _accessibilityViewController];
    v13 = v12;
    if (v12)
    {
      v15 = [v12 safeValueForKey:@"systemApertureElementContext"];
      v14 = v15;
      AXPerformSafeBlock();
    }
  }
}

id __84__MRUActivityNowPlayingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA0] sharedInstance];
  if ([v0 hapticMusicActive])
  {
    v1 = @"music.haptics.active";
  }

  else
  {
    v1 = @"music.haptics.inactive";
  }

  v2 = accessibilityLocalizedString(v1);

  return v2;
}

uint64_t __84__MRUActivityNowPlayingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Mruactivitynow_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)updateVisibilty
{
  v3.receiver = self;
  v3.super_class = MRUActivityNowPlayingViewAccessibility;
  [(MRUActivityNowPlayingViewAccessibility *)&v3 updateVisibilty];
  if ([(MRUActivityNowPlayingViewAccessibility *)self safeIntForKey:@"SBUISA_layoutMode"]== 4)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end