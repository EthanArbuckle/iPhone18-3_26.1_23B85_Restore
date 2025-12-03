@interface FMFindingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLabelForModernItemViewWithMode:(unsigned int)mode;
- (id)_accessibilityValueForModernItemViewWithMode:(unsigned int)mode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadHeaderElement;
- (void)accessibilityDidUpdateWithTopLabelMessage:(id)message instruction:(id)instruction;
- (void)accessibilityDistanceAndDirectionUpdated;
- (void)accessibilityShowViewHandler;
- (void)viewDidLoad;
@end

@implementation FMFindingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"foundPlayerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityR1DistanceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityModeRawValue" withFullSignature:{"I", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityDistanceAndDirectionUpdated" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityDidUpdateWithTopLabelMessage:instruction:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMFindingViewController" hasInstanceMethod:@"accessibilityShowViewHandler" withFullSignature:{"v", 0}];
}

- (void)_axLoadHeaderElement
{
  _axCachedAggregateHeaderElement = [(FMFindingViewControllerAccessibility *)self _axCachedAggregateHeaderElement];

  if (!_axCachedAggregateHeaderElement)
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    view = [v4 view];

    v6 = [(FMFindingViewControllerAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
    v7 = [(FMFindingViewControllerAccessibility *)self safeValueForKey:@"accessibilityNameLabel"];
    v8 = objc_alloc(MEMORY[0x29EDC7318]);
    v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v6, v7}];
    v10 = [v8 initWithAccessibilityContainer:view representedElements:v9];

    [v10 _setAccessibilityServesAsFirstElement:1];
    [v10 _setAccessibilityTraitsBlock:&__block_literal_global_0];
    [(FMFindingViewControllerAccessibility *)self _axSetCachedAggregateHeaderElement:v10];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = FMFindingViewControllerAccessibility;
  [(FMFindingViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  [(FMFindingViewControllerAccessibility *)self _axLoadHeaderElement];
  objc_initWeak(&location, self);
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __82__FMFindingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2BDFB8;
  objc_copyWeak(&v6, &location);
  [view _setAccessibilityElementsBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __82__FMFindingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _axCachedAccessibilityElements];

  if (!v3)
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 view];

    if (v5)
    {
      v6 = [WeakRetained _axCachedAggregateHeaderElement];
      v7 = [v5 subviews];
      v8 = [v7 mutableCopy];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = [v6 representedElements];
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [v8 removeObject:*(*(&v36 + 1) + 8 * i)];
          }

          v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v10);
      }

      [v8 axSafelyAddObject:v6];
      v13 = [WeakRetained safeUIViewForKey:@"foundPlayerView"];
      objc_initWeak(&location, v13);

      v14 = objc_loadWeakRetained(&location);
      v15 = [v14 _accessibilityViewIsVisible];

      if ((v15 & 1) == 0)
      {
        v16 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v5];
        v17 = objc_loadWeakRetained(&location);
        [v17 accessibilityFrame];
        [v16 setAccessibilityFrame:?];

        v18 = [WeakRetained safeUnsignedIntForKey:@"accessibilityModeRawValue"];
        v19 = objc_loadWeakRetained((a1 + 32));
        v20 = [v19 _accessibilityLabelForModernItemViewWithMode:v18];
        [v16 setAccessibilityLabel:v20];

        v21 = objc_loadWeakRetained((a1 + 32));
        v22 = [v21 _accessibilityValueForModernItemViewWithMode:v18];
        [v16 setAccessibilityValue:v22];

        [v8 axSafelyAddObject:v16];
      }

      [v8 axFilterObjectsUsingBlock:&__block_literal_global_327];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v23 = v32 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v24)
      {
        v25 = *v32;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v23);
            }

            [v8 removeObject:{*(*(&v31 + 1) + 8 * j), v31}];
          }

          v24 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v24);
      }

      v27 = [v8 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
      [WeakRetained _axSetCachedAccessibilityElements:v27];

      objc_destroyWeak(&location);
    }
  }

  v28 = [WeakRetained _axCachedAccessibilityElements];

  v29 = *MEMORY[0x29EDCA608];

  return v28;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FMFindingViewControllerAccessibility;
  [(FMFindingViewControllerAccessibility *)&v3 viewDidLoad];
  [(FMFindingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)accessibilityShowViewHandler
{
  v3.receiver = self;
  v3.super_class = FMFindingViewControllerAccessibility;
  [(FMFindingViewControllerAccessibility *)&v3 accessibilityShowViewHandler];
  [(FMFindingViewControllerAccessibility *)self _axSetCachedAccessibilityElements:0];
}

- (void)accessibilityDidUpdateWithTopLabelMessage:(id)message instruction:(id)instruction
{
  v6.receiver = self;
  v6.super_class = FMFindingViewControllerAccessibility;
  instructionCopy = instruction;
  [(FMFindingViewControllerAccessibility *)&v6 accessibilityDidUpdateWithTopLabelMessage:message instruction:instructionCopy];
  UIAccessibilitySpeakIfNotSpeaking();
}

- (void)accessibilityDistanceAndDirectionUpdated
{
  v6.receiver = self;
  v6.super_class = FMFindingViewControllerAccessibility;
  [(FMFindingViewControllerAccessibility *)&v6 accessibilityDistanceAndDirectionUpdated];
  v3 = [(FMFindingViewControllerAccessibility *)self safeValueForKey:@"accessibilityR1DistanceView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = accessibilityLabel;
  if (accessibilityLabel && [accessibilityLabel length] && (objc_msgSend(accessibilityDistanceAndDirectionUpdated_previousDistance, "isEqualToString:", v5) & 1) == 0)
  {
    UIAccessibilitySpeakIfNotSpeaking();
    objc_storeStrong(&accessibilityDistanceAndDirectionUpdated_previousDistance, v5);
  }
}

- (id)_accessibilityLabelForModernItemViewWithMode:(unsigned int)mode
{
  v4 = mode - 1;
  if (mode - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = accessibilityLocalizedString(off_29F2BDFD8[v4]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityValueForModernItemViewWithMode:(unsigned int)mode
{
  if (mode == 4)
  {
    v4 = @"item.in.field.of.vision.mode";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);

    return v5;
  }

  if (mode == 2)
  {
    v4 = @"item.out.field.of.vision.mode";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end