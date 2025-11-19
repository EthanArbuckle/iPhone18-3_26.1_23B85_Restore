@interface UIDropShadowViewAccessibility_Maps_AppKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axCollapseCard;
- (BOOL)_axExpandCard;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityContaineeViewController;
- (id)_accessibilityContainerViewController;
- (unint64_t)_accessibilityContaineeLayout;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation UIDropShadowViewAccessibility_Maps_AppKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIDropShadowView" hasInstanceMethod:@"_topGrabber" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIDropShadowView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ContainerViewController" hasInstanceMethod:@"setLayoutIfSupported: animated:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"ModalContaineeViewController" hasInstanceMethod:@"_dismissContainee" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ContainerViewController"];
  [v3 validateClass:@"ModalContaineeViewController"];
  [v3 validateClass:@"CollectionCreateViewController"];
  [v3 validateClass:@"ControlContaineeViewController"];
  [v3 validateClass:@"MapsRouteCreationContainee"];
  [v3 validateClass:@"ContainerViewController" hasInstanceMethod:@"currentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CardPresentationController" hasInstanceMethod:@"containeeLayout" withFullSignature:{"Q", 0}];
}

- (BOOL)_axExpandCard
{
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContainerViewController];
  v4 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContaineeLayout];
  if (v4 == 2)
  {
    v5 = v9;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v6 = __58__UIDropShadowViewAccessibility_Maps_AppKit__axExpandCard__block_invoke_2;
  }

  else
  {
    if (v4 != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = v10;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v6 = __58__UIDropShadowViewAccessibility_Maps_AppKit__axExpandCard__block_invoke;
  }

  v5[2] = v6;
  v5[3] = &unk_29F2CC3B0;
  v5[4] = v3;
  AXPerformSafeBlock();

  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)_axCollapseCard
{
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContainerViewController];
  v4 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContaineeLayout];
  if (v4 - 3 >= 2)
  {
    if (v4 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = v10;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v6 = __60__UIDropShadowViewAccessibility_Maps_AppKit__axCollapseCard__block_invoke;
  }

  else
  {
    v5 = v9;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v6 = __60__UIDropShadowViewAccessibility_Maps_AppKit__axCollapseCard__block_invoke_2;
  }

  v5[2] = v6;
  v5[3] = &unk_29F2CC3B0;
  v5[4] = v3;
  AXPerformSafeBlock();

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21[2] = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = UIDropShadowViewAccessibility_Maps_AppKit;
  [(UIDropShadowViewAccessibility_Maps_AppKit *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self safeUIViewForKey:@"_topGrabber"];
  [v3 _accessibilitySetFrameExpansion:{20.0, 10.0}];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityRespondsToUserInteraction:1];
  [v3 setAccessibilityIdentifier:@"Card grabber"];
  v4 = [v3 accessibilityCustomActions];
  v5 = v4 == 0;

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = AXMapsLocString(@"EXPAND_CARD");
    v8 = [v6 initWithName:v7 target:self selector:sel__axExpandCard];

    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = AXMapsLocString(@"COLLAPSE_CARD");
    v11 = [v9 initWithName:v10 target:self selector:sel__axCollapseCard];

    v12 = [MEMORY[0x29EDBA068] defaultCenter];
    [v12 addObserver:self selector:sel__axCollapseCard name:@"AXCollapseMapsChromeNotification" object:0];

    v21[0] = v8;
    v21[1] = v11;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v21 count:2];
    [v3 setAccessibilityCustomActions:v13];

    v14 = AXMapsLocString(@"CARD_GRABBER_VIEW");
    [v3 setAccessibilityLabel:v14];

    v15 = AXMapsLocString(@"CARD_GRABBER_VIEW_HINT");
    [v3 setAccessibilityHint:v15];

    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __87__UIDropShadowViewAccessibility_Maps_AppKit__accessibilityLoadAccessibilityInformation__block_invoke;
    v17[3] = &unk_29F2CC418;
    objc_copyWeak(&v18, &location);
    [v3 _setAccessibilityValueBlock:v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UIDropShadowViewAccessibility_Maps_AppKit;
  [(UIDropShadowViewAccessibility_Maps_AppKit *)&v4 layoutSubviews];
  [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:@"AXMapVisibleRegionDidChange" object:0];
}

- (id)_accessibilityContainerViewController
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self safeUIViewForKey:@"contentView"];
  v4 = [v2 viewControllerForView:v3];

  NSClassFromString(&cfstr_Controlcontain.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Mapsroutecreat.isa), (objc_opt_isKindOfClass()))
  {
    v5 = [v4 safeValueForKey:@"cardPresentationController"];
    v6 = [v5 safeValueForKey:@"containerViewController"];

    NSClassFromString(&cfstr_Containerviewc_0.isa);
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)_accessibilityContaineeViewController
{
  v2 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContainerViewController];
  v3 = [v2 safeValueForKey:@"currentViewController"];

  return v3;
}

- (unint64_t)_accessibilityContaineeLayout
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self safeUIViewForKey:@"contentView"];
  v4 = [v2 viewControllerForView:v3];

  NSClassFromString(&cfstr_Controlcontain.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Mapsroutecreat.isa), (objc_opt_isKindOfClass())) && ([v4 safeValueForKey:@"cardPresentationController"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 safeUnsignedIntegerForKey:@"containeeLayout"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDC7DA8] viewControllerForView:self];
  NSClassFromString(&cfstr_Modalcontainee.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return isKindOfClass & 1;
}

- (BOOL)accessibilityViewIsModal
{
  v3 = [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContaineeViewController];
  NSClassFromString(&cfstr_Collectioncrea.isa);
  v4 = (objc_opt_isKindOfClass() & 1) != 0 || [(UIDropShadowViewAccessibility_Maps_AppKit *)self _accessibilityContaineeLayout]== 3;

  return v4;
}

@end