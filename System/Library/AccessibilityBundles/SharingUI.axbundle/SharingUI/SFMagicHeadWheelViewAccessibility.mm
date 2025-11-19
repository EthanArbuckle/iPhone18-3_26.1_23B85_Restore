@interface SFMagicHeadWheelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsShowingHead;
- (BOOL)updateSelectedHead:(id)a3;
- (id)_axDisplayNameForCurrentHead;
- (id)accessibilityHint;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axAnnounceCurrentHeadForce:(BOOL)a3;
- (void)pulseSelectedHead;
@end

@implementation SFMagicHeadWheelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"selectedHead" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"centerOfContentBounds" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"radius" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"updateSelectedHead:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"pulseSelectedHead" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SFMagicHead"];
  [v3 validateClass:@"SFMagicHead" hasInstanceMethod:@"node" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFAirDropNode"];
  [v3 validateClass:@"SFAirDropNode" hasInstanceMethod:@"displayNameForLocale:" withFullSignature:{"@", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SFMagicHeadWheelViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SFMagicHeadWheelViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if ([(SFMagicHeadWheelViewAccessibility *)self _axIsShowingHead])
  {
    v3 = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    v6 = [(SFMagicHeadWheelViewAccessibility *)self _axStatusText];
    v4 = __UIAXStringForVariables();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(SFMagicHeadWheelViewAccessibility *)self _axIsShowingHead])
  {
    v3 = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    v4 = [(SFMagicHeadWheelViewAccessibility *)self safeValueForKey:@"selectedHead"];
    v5 = [v4 safeValueForKey:@"node"];
    v6 = __UIAccessibilitySafeClass();

    v7 = [v6 contactIdentifier];

    if (v7)
    {
      v8 = @"magic.head.share.person.hint";
    }

    else
    {
      v8 = @"magic.head.share.device.hint";
    }

    v9 = accessibilityLocalizedString(v8);
    v10 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v9, v3];
  }

  else
  {
    if (AXDeviceIsPad())
    {
      v11 = @"magic.head.find.hint.ipad";
    }

    else
    {
      v11 = @"magic.head.find.hint.iphone";
    }

    v10 = accessibilityLocalizedString(v11);
  }

  return v10;
}

- (id)accessibilityPath
{
  [(SFMagicHeadWheelViewAccessibility *)self accessibilityFrame];
  AX_CGRectGetCenter();
  v4 = v3;
  v6 = v5;
  [(SFMagicHeadWheelViewAccessibility *)self safeCGFloatForKey:@"radius"];
  v8 = MEMORY[0x29EDC7948];

  return [v8 bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v7 + -30.0 clockwise:{0.0, 6.28318531}];
}

- (BOOL)updateSelectedHead:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFMagicHeadWheelViewAccessibility;
  v4 = [(SFMagicHeadWheelViewAccessibility *)&v6 updateSelectedHead:a3];
  if (v4)
  {
    [(SFMagicHeadWheelViewAccessibility *)self _axAnnounceCurrentHeadForce:1];
  }

  return v4;
}

- (void)pulseSelectedHead
{
  v3.receiver = self;
  v3.super_class = SFMagicHeadWheelViewAccessibility;
  [(SFMagicHeadWheelViewAccessibility *)&v3 pulseSelectedHead];
  [(SFMagicHeadWheelViewAccessibility *)self _axAnnounceCurrentHeadForce:0];
}

- (void)_axAnnounceCurrentHeadForce:(BOOL)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *&Current;
  if (a3 || Current - *&_axAnnounceCurrentHeadForce__LastAnnouncementTime > 4.0)
  {
    v7 = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
    _axAnnounceCurrentHeadForce__LastAnnouncementTime = v6;
  }
}

- (id)_axDisplayNameForCurrentHead
{
  v2 = [(SFMagicHeadWheelViewAccessibility *)self safeValueForKey:@"selectedHead"];
  [v2 safeValueForKey:@"node"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v5 = v11 = 0;
  AXPerformSafeBlock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __65__SFMagicHeadWheelViewAccessibility__axDisplayNameForCurrentHead__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x29EDB8DE0] currentLocale];
  v3 = [v2 displayNameForLocale:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)_axIsShowingHead
{
  v3 = [(SFMagicHeadWheelViewAccessibility *)self safeValueForKey:@"selectedHead"];
  v4 = [(SFMagicHeadWheelViewAccessibility *)self safeBoolForKey:@"inGuidanceStates"]^ 1;

  return (v3 != 0) & v4;
}

@end