@interface MRURoutingTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShowVolumeSlider;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityRoutingState;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)accessibilityLabel;
@end

@implementation MRURoutingTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"subtitleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"didTapToExpand" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"routingAccessoryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"volumeController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingAccessoryView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MRURoutingSubtitleView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"volumeSlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_routingAccessoryView" withType:"MRURoutingAccessoryView"];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"showChevron" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_outlineImageView" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v3 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"subtitleView"];
  v5 = [v4 safeValueForKey:@"textLabel"];

  v6 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_iconImageView"];
  v7 = [v6 accessibilityLabel];

  if ([v7 isAXAttributedString] && objc_msgSend(v7, "hasAttribute:", *MEMORY[0x29EDBD900]))
  {
    if ([v7 isEqualToString:@"speaker.wave.2.fill"])
    {
      v8 = @"speaker.route";
LABEL_7:
      v9 = accessibilityLocalizedString(v8);

      v7 = v9;
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"headphones"])
    {
      v8 = @"headphones.route";
      goto LABEL_7;
    }

    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MRURoutingTableViewCellAccessibility *)v7 accessibilityLabel];
    }

    v7 = 0;
  }

LABEL_11:
  v11 = [v3 accessibilityLabel];
  v14 = [v5 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)accessibilityValue
{
  if ([(MRURoutingTableViewCellAccessibility *)self _accessibilityRoutingState]== 2)
  {
    v3 = accessibilityLocalizedString(@"route.state.pending.value");
  }

  else
  {
    v3 = 0;
  }

  if ([(MRURoutingTableViewCellAccessibility *)self _accessibilityShowVolumeSlider])
  {
    v4 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"volumeSlider"];
    v5 = [v4 accessibilityValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = MRURoutingTableViewCellAccessibility;
  v3 = [(MRURoutingTableViewCellAccessibility *)&v9 accessibilityTraits];
  if (([(MRURoutingTableViewCellAccessibility *)self _accessibilityRoutingState]- 3) >= 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x29EDC7FC0];
  }

  v5 = v4 | v3;
  v6 = [(MRURoutingTableViewCellAccessibility *)self _accessibilityShowVolumeSlider];
  v7 = *MEMORY[0x29EDC7F60];
  if (!v6)
  {
    v7 = 0;
  }

  return v5 | v7;
}

- (id)accessibilityCustomActions
{
  v13[1] = *MEMORY[0x29EDCA608];
  if ([(MRURoutingTableViewCellAccessibility *)self safeBoolForKey:@"showChevron"])
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityLocalizedString(@"expand.group.action");
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __66__MRURoutingTableViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v10[3] = &unk_29F2CF360;
    objc_copyWeak(&v11, &location);
    v5 = [v3 initWithName:v4 actionHandler:v10];

    v13[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MRURoutingTableViewCellAccessibility;
    v6 = [(MRURoutingTableViewCellAccessibility *)&v9 accessibilityCustomActions];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

uint64_t __66__MRURoutingTableViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  AXPerformSafeBlock();

  return 1;
}

uint64_t __66__MRURoutingTableViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didTapToExpand];

  return AXPerformBlockOnMainThreadAfterDelay();
}

- (int64_t)_accessibilityRoutingState
{
  v2 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"routingAccessoryView"];
  v3 = [v2 safeIntegerForKey:@"state"];

  return v3;
}

- (BOOL)_accessibilityShowVolumeSlider
{
  objc_opt_class();
  v3 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"volumeController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 isVolumeControlAvailable];
  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(MRURoutingTableViewCellAccessibility *)self safeBoolForKey:@"showChevron"])
  {
    v3 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_outlineImageView"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MRURoutingTableViewCellAccessibility;
    [(MRURoutingTableViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (void)accessibilityIncrement
{
  if ([(MRURoutingTableViewCellAccessibility *)self _accessibilityShowVolumeSlider])
  {
    v3 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_volumeSlider"];
    [v3 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  if ([(MRURoutingTableViewCellAccessibility *)self _accessibilityShowVolumeSlider])
  {
    v3 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_volumeSlider"];
    [v3 accessibilityDecrement];
  }
}

- (void)accessibilityLabel
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BF3C000, a2, OS_LOG_TYPE_ERROR, "Missing icon type for %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end