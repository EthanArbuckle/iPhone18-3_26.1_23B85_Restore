@interface VideosUI_OfferListLockupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_axASCLockupView;
- (id)_axContainerPrimaryButton;
- (id)_axContainerSecondaryButton;
- (id)_axContainerView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation VideosUI_OfferListLockupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.OfferListLockupCell" hasSwiftField:@"containerView" withSwiftType:"Optional<VUIBaseView>"];
  [validationsCopy validateClass:@"FocusableTextView" hasInstanceVariable:@"_auxilliaryTextView" withType:"VUITextView"];
  [validationsCopy validateClass:@"VideosUI.ASCListItem"];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"offerButton" withFullSignature:{"@", 0}];
}

- (id)_axContainerView
{
  v2 = [(VideosUI_OfferListLockupCellAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 axContainsString:@"OfferListLockupContentView"];

  if (v5)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_axASCLockupView
{
  objc_opt_class();
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  MEMORY[0x29ED3FF70](@"VideosUI.ASCListItem");
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"ASCLockupContentView")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axContainerPrimaryButton
{
  objc_opt_class();
  _axContainerView = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  v4 = [_axContainerView safeSwiftValueForKey:@"primaryButton"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)_axContainerSecondaryButton
{
  objc_opt_class();
  _axContainerView = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  v4 = [_axContainerView safeSwiftValueForKey:@"secondaryButton"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)accessibilityLabel
{
  _axContainerView = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  _axASCLockupView = [(VideosUI_OfferListLockupCellAccessibility *)self _axASCLockupView];
  array = [MEMORY[0x29EDB8DE8] array];
  if (_axContainerView)
  {
    v6 = [_axContainerView safeSwiftValueForKey:@"titleLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel];

    _axContainerPrimaryButton = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
    accessibilityLabel2 = [_axContainerPrimaryButton accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel2];

    v10 = [_axContainerView safeSwiftValueForKey:@"descriptionTextView"];
    v11 = [v10 safeValueForKey:@"_auxilliaryTextView"];
    v12 = [v11 safeValueForKey:@"_accessibilityGetValue"];
    [array axSafelyAddObject:v12];

    v13 = [_axContainerView safeSwiftValueForKey:@"subBodyLabel"];
    accessibilityLabel3 = [v13 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel3];

    v15 = [_axContainerView safeSwiftValueForKey:@"mediaTagsView"];
    accessibilityLabel4 = [v15 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel4];
  }

  if (_axASCLockupView)
  {
    v17 = [_axASCLockupView safeValueForKey:@"titleLabel"];
    accessibilityLabel5 = [v17 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel5];

    v19 = [_axASCLockupView safeValueForKey:@"subtitleLabel"];
    accessibilityLabel6 = [v19 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel6];

    v21 = [_axASCLockupView safeValueForKey:@"offerButton"];
    accessibilityLabel7 = [v21 accessibilityLabel];
    [array axSafelyAddObject:accessibilityLabel7];
  }

  if ([array count])
  {
    accessibilityLabel8 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = VideosUI_OfferListLockupCellAccessibility;
    accessibilityLabel8 = [(VideosUI_OfferListLockupCellAccessibility *)&v26 accessibilityLabel];
  }

  v24 = accessibilityLabel8;

  return v24;
}

- (CGPoint)accessibilityActivationPoint
{
  _axContainerPrimaryButton = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
  v4 = _axContainerPrimaryButton;
  if (_axContainerPrimaryButton)
  {
    [_axContainerPrimaryButton accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    _axASCLockupView = [(VideosUI_OfferListLockupCellAccessibility *)self _axASCLockupView];
    v10 = [_axASCLockupView safeValueForKey:@"offerButton"];

    if (v10)
    {
      [v10 accessibilityActivationPoint];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = VideosUI_OfferListLockupCellAccessibility;
      [(VideosUI_OfferListLockupCellAccessibility *)&v15 accessibilityActivationPoint];
    }

    v6 = v11;
    v8 = v12;
  }

  v13 = v6;
  v14 = v8;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)accessibilityCustomActions
{
  v19.receiver = self;
  v19.super_class = VideosUI_OfferListLockupCellAccessibility;
  accessibilityCustomActions = [(VideosUI_OfferListLockupCellAccessibility *)&v19 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  _axContainerPrimaryButton = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
  if (_axContainerPrimaryButton)
  {
    objc_initWeak(&location, _axContainerPrimaryButton);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"offer.cell.purchase");
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke;
    v16[3] = &unk_29F31C0A8;
    objc_copyWeak(&v17, &location);
    v8 = [v6 initWithName:v7 actionHandler:v16];

    [array axSafelyAddObject:v8];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  _axContainerSecondaryButton = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerSecondaryButton];
  if (_axContainerSecondaryButton)
  {
    objc_initWeak(&location, _axContainerSecondaryButton);
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [_axContainerSecondaryButton accessibilityLabel];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v14[3] = &unk_29F31C0A8;
    objc_copyWeak(&v15, &location);
    v12 = [v10 initWithName:accessibilityLabel actionHandler:v14];

    [array axSafelyAddObject:v12];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return array;
}

@end