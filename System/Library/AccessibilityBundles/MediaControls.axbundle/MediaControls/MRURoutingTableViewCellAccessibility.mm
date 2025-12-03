@interface MRURoutingTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"subtitleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"didTapToExpand" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"routingAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"volumeController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingAccessoryView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MRURoutingSubtitleView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"volumeSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_routingAccessoryView" withType:"MRURoutingAccessoryView"];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceMethod:@"showChevron" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MRURoutingTableViewCell" hasInstanceVariable:@"_outlineImageView" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v3 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(MRURoutingTableViewCellAccessibility *)self safeValueForKey:@"subtitleView"];
  v5 = [v4 safeValueForKey:@"textLabel"];

  v6 = [(MRURoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_iconImageView"];
  accessibilityLabel = [v6 accessibilityLabel];

  if ([accessibilityLabel isAXAttributedString] && objc_msgSend(accessibilityLabel, "hasAttribute:", *MEMORY[0x29EDBD900]))
  {
    if ([accessibilityLabel isEqualToString:@"speaker.wave.2.fill"])
    {
      v8 = @"speaker.route";
LABEL_7:
      v9 = accessibilityLocalizedString(v8);

      accessibilityLabel = v9;
      goto LABEL_11;
    }

    if ([accessibilityLabel isEqualToString:@"headphones"])
    {
      v8 = @"headphones.route";
      goto LABEL_7;
    }

    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MRURoutingTableViewCellAccessibility *)accessibilityLabel accessibilityLabel];
    }

    accessibilityLabel = 0;
  }

LABEL_11:
  accessibilityLabel2 = [v3 accessibilityLabel];
  accessibilityLabel3 = [v5 accessibilityLabel];
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
    accessibilityValue = [v4 accessibilityValue];
  }

  else
  {
    accessibilityValue = 0;
  }

  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = MRURoutingTableViewCellAccessibility;
  accessibilityTraits = [(MRURoutingTableViewCellAccessibility *)&v9 accessibilityTraits];
  if (([(MRURoutingTableViewCellAccessibility *)self _accessibilityRoutingState]- 3) >= 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *MEMORY[0x29EDC7FC0];
  }

  v5 = v4 | accessibilityTraits;
  _accessibilityShowVolumeSlider = [(MRURoutingTableViewCellAccessibility *)self _accessibilityShowVolumeSlider];
  v7 = *MEMORY[0x29EDC7F60];
  if (!_accessibilityShowVolumeSlider)
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
    accessibilityCustomActions = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MRURoutingTableViewCellAccessibility;
    accessibilityCustomActions = [(MRURoutingTableViewCellAccessibility *)&v9 accessibilityCustomActions];
  }

  v7 = *MEMORY[0x29EDCA608];

  return accessibilityCustomActions;
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

  isVolumeControlAvailable = [v4 isVolumeControlAvailable];
  return isVolumeControlAvailable;
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
  selfCopy = self;
  _os_log_error_impl(&dword_29BF3C000, a2, OS_LOG_TYPE_ERROR, "Missing icon type for %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end