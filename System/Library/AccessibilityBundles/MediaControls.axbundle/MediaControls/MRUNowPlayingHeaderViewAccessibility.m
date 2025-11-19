@interface MRUNowPlayingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axMakeNowPlayingHeaderViewElement;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation MRUNowPlayingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUNowPlayingHeaderView" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingHeaderView" hasInstanceMethod:@"transportButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingHeaderView" hasInstanceMethod:@"routingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingHeaderView" hasInstanceMethod:@"layout" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"routeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"titleMarqueeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"subtitleMarqueeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUMarqueeLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingHeaderView" hasInstanceMethod:@"hapticView" withFullSignature:{"@", 0}];
}

- (id)_axMakeNowPlayingHeaderViewElement
{
  v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __74__MRUNowPlayingHeaderViewAccessibility__axMakeNowPlayingHeaderViewElement__block_invoke;
  v7[3] = &unk_29F2CF198;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityLabelBlock:v7];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __74__MRUNowPlayingHeaderViewAccessibility__axMakeNowPlayingHeaderViewElement__block_invoke_2;
  v5[3] = &unk_29F2CF298;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityFrameBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v3;
}

id __74__MRUNowPlayingHeaderViewAccessibility__axMakeNowPlayingHeaderViewElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"labelView"];
  v3 = [v2 safeUIViewForKey:@"routeLabel"];
  [v3 alpha];
  if (v4 <= 0.01)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 accessibilityLabel];
  }

  v6 = [v2 safeValueForKey:@"titleMarqueeView"];
  v7 = [v2 safeValueForKey:@"subtitleMarqueeView"];
  v8 = [v6 safeStringForKey:@"text"];
  v11 = [v7 safeStringForKey:@"text"];
  v9 = __UIAXStringForVariables();

  return v9;
}

double __74__MRUNowPlayingHeaderViewAccessibility__axMakeNowPlayingHeaderViewElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"labelView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

- (id)accessibilityElements
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDC7620];
  v4 = [(MRUNowPlayingHeaderViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v5 = [(MRUNowPlayingHeaderViewAccessibility *)self _axMakeNowPlayingHeaderViewElement];
    v13[0] = v5;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

    [(MRUNowPlayingHeaderViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
  }

  v6 = [MEMORY[0x29EDB8DE8] arrayWithArray:v4];
  v7 = [(MRUNowPlayingHeaderViewAccessibility *)self safeUIViewForKey:@"transportButton"];
  v8 = [(MRUNowPlayingHeaderViewAccessibility *)self safeUIViewForKey:@"routingButton"];
  [v7 alpha];
  if (v9 > 0.01)
  {
    [v6 axSafelyAddObject:v7];
  }

  [v8 alpha];
  if (v10 > 0.01)
  {
    [v6 axSafelyAddObject:v8];
  }

  v11 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = MRUNowPlayingHeaderViewAccessibility;
  v5 = [(MRUNowPlayingHeaderViewAccessibility *)&v8 _accessibilityHitTest:a4 withEvent:a3.x, a3.y];
  if (!v5)
  {
    v6 = [(MRUNowPlayingHeaderViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (id)accessibilityLabel
{
  v2 = [(MRUNowPlayingHeaderViewAccessibility *)self safeValueForKey:@"labelView"];
  v3 = [v2 safeValueForKey:@"routeLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [v2 safeValueForKey:@"placeholder"];
  v6 = [v2 accessibilityLabel];
  v7 = [v6 length];

  if (v7)
  {
    v10 = [v2 accessibilityLabel];
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v8 = __UIAXStringForVariables();
  }

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v10.receiver = self;
  v10.super_class = MRUNowPlayingHeaderViewAccessibility;
  v4 = [(MRUNowPlayingHeaderViewAccessibility *)&v10 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(MRUNowPlayingHeaderViewAccessibility *)self safeValueForKey:@"hapticView"];
  if (v5)
  {
    v6 = [MEMORY[0x29EDBB2A0] sharedManager];
    v7 = [v6 musicHapticsEnabled];

    if (v7)
    {
      [v3 axSafelyAddObject:v5];
    }
  }

  v8 = [(MRUNowPlayingHeaderViewAccessibility *)self safeValueForKey:@"transportButton"];
  [v3 axSafelyAddObject:v8];

  return v3;
}

@end