@interface SFMagicHeadWheelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsShowingHead;
- (BOOL)updateSelectedHead:(id)head;
- (id)_axDisplayNameForCurrentHead;
- (id)accessibilityHint;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axAnnounceCurrentHeadForce:(BOOL)force;
- (void)pulseSelectedHead;
@end

@implementation SFMagicHeadWheelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"selectedHead" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"centerOfContentBounds" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"radius" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"updateSelectedHead:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SFMagicHeadWheelView" hasInstanceMethod:@"pulseSelectedHead" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFMagicHead"];
  [validationsCopy validateClass:@"SFMagicHead" hasInstanceMethod:@"node" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFAirDropNode"];
  [validationsCopy validateClass:@"SFAirDropNode" hasInstanceMethod:@"displayNameForLocale:" withFullSignature:{"@", "@", 0}];
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
    _axDisplayNameForCurrentHead = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    _axStatusText = [(SFMagicHeadWheelViewAccessibility *)self _axStatusText];
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
    _axDisplayNameForCurrentHead = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    v4 = [(SFMagicHeadWheelViewAccessibility *)self safeValueForKey:@"selectedHead"];
    v5 = [v4 safeValueForKey:@"node"];
    v6 = __UIAccessibilitySafeClass();

    contactIdentifier = [v6 contactIdentifier];

    if (contactIdentifier)
    {
      v8 = @"magic.head.share.person.hint";
    }

    else
    {
      v8 = @"magic.head.share.device.hint";
    }

    v9 = accessibilityLocalizedString(v8);
    v10 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v9, _axDisplayNameForCurrentHead];
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

- (BOOL)updateSelectedHead:(id)head
{
  v6.receiver = self;
  v6.super_class = SFMagicHeadWheelViewAccessibility;
  v4 = [(SFMagicHeadWheelViewAccessibility *)&v6 updateSelectedHead:head];
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

- (void)_axAnnounceCurrentHeadForce:(BOOL)force
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *&Current;
  if (force || Current - *&_axAnnounceCurrentHeadForce__LastAnnouncementTime > 4.0)
  {
    _axDisplayNameForCurrentHead = [(SFMagicHeadWheelViewAccessibility *)self _axDisplayNameForCurrentHead];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], _axDisplayNameForCurrentHead);
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