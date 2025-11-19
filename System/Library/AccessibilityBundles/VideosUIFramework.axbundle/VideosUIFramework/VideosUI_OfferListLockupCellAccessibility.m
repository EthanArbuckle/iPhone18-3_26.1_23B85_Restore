@interface VideosUI_OfferListLockupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_axASCLockupView;
- (id)_axContainerPrimaryButton;
- (id)_axContainerSecondaryButton;
- (id)_axContainerView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation VideosUI_OfferListLockupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.OfferListLockupCell" hasSwiftField:@"containerView" withSwiftType:"Optional<VUIBaseView>"];
  [v3 validateClass:@"FocusableTextView" hasInstanceVariable:@"_auxilliaryTextView" withType:"VUITextView"];
  [v3 validateClass:@"VideosUI.ASCListItem"];
  [v3 validateClass:@"ASCLockupContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASCLockupContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASCLockupContentView" hasInstanceMethod:@"offerButton" withFullSignature:{"@", 0}];
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
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  v4 = [v3 safeSwiftValueForKey:@"primaryButton"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)_axContainerSecondaryButton
{
  objc_opt_class();
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  v4 = [v3 safeSwiftValueForKey:@"secondaryButton"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerView];
  v4 = [(VideosUI_OfferListLockupCellAccessibility *)self _axASCLockupView];
  v5 = [MEMORY[0x29EDB8DE8] array];
  if (v3)
  {
    v6 = [v3 safeSwiftValueForKey:@"titleLabel"];
    v7 = [v6 accessibilityLabel];
    [v5 axSafelyAddObject:v7];

    v8 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
    v9 = [v8 accessibilityLabel];
    [v5 axSafelyAddObject:v9];

    v10 = [v3 safeSwiftValueForKey:@"descriptionTextView"];
    v11 = [v10 safeValueForKey:@"_auxilliaryTextView"];
    v12 = [v11 safeValueForKey:@"_accessibilityGetValue"];
    [v5 axSafelyAddObject:v12];

    v13 = [v3 safeSwiftValueForKey:@"subBodyLabel"];
    v14 = [v13 accessibilityLabel];
    [v5 axSafelyAddObject:v14];

    v15 = [v3 safeSwiftValueForKey:@"mediaTagsView"];
    v16 = [v15 accessibilityLabel];
    [v5 axSafelyAddObject:v16];
  }

  if (v4)
  {
    v17 = [v4 safeValueForKey:@"titleLabel"];
    v18 = [v17 accessibilityLabel];
    [v5 axSafelyAddObject:v18];

    v19 = [v4 safeValueForKey:@"subtitleLabel"];
    v20 = [v19 accessibilityLabel];
    [v5 axSafelyAddObject:v20];

    v21 = [v4 safeValueForKey:@"offerButton"];
    v22 = [v21 accessibilityLabel];
    [v5 axSafelyAddObject:v22];
  }

  if ([v5 count])
  {
    v23 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = VideosUI_OfferListLockupCellAccessibility;
    v23 = [(VideosUI_OfferListLockupCellAccessibility *)&v26 accessibilityLabel];
  }

  v24 = v23;

  return v24;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(VideosUI_OfferListLockupCellAccessibility *)self _axASCLockupView];
    v10 = [v9 safeValueForKey:@"offerButton"];

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
  v3 = [(VideosUI_OfferListLockupCellAccessibility *)&v19 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
  }

  v5 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerPrimaryButton];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"offer.cell.purchase");
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke;
    v16[3] = &unk_29F31C0A8;
    objc_copyWeak(&v17, &location);
    v8 = [v6 initWithName:v7 actionHandler:v16];

    [v4 axSafelyAddObject:v8];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v9 = [(VideosUI_OfferListLockupCellAccessibility *)self _axContainerSecondaryButton];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11 = [v9 accessibilityLabel];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v14[3] = &unk_29F31C0A8;
    objc_copyWeak(&v15, &location);
    v12 = [v10 initWithName:v11 actionHandler:v14];

    [v4 axSafelyAddObject:v12];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end