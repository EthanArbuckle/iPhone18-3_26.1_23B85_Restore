@interface CCUIMenuModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityControlCenterShouldExpandContentModule;
- (CGRect)_accessibilityControlCenterButtonFrame;
- (id)_accessibilityControlCenterButtonIdentifier;
- (id)_accessibilityControlCenterButtonLabel;
- (id)_accessibilityModuleViewElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CCUIMenuModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" hasProperty:@"title" withType:"@"];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" hasInstanceMethod:@"shouldBeginTransitionToExpandedContentModule" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" hasInstanceVariable:@"_menuItemsContainer" withType:"UIStackView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = CCUIMenuModuleViewControllerAccessibility;
  [(CCUIMenuModuleViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CCUIMenuModuleViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __87__CCUIMenuModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2B7360;
  objc_copyWeak(&v8, &location);
  [v3 setIsAccessibilityElementBlock:v7];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v4 = [(CCUIMenuModuleViewControllerAccessibility *)self safeUIViewForKey:@"_menuItemsContainer"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __87__CCUIMenuModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F2B7388;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityElementsBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __87__CCUIMenuModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2;
}

id __87__CCUIMenuModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityModuleViewElements];

  return v2;
}

- (id)_accessibilityControlCenterButtonLabel
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_4:
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 isEqualToString:@"SleepModeControlCenterButton.SleepModeButtonViewController"];

    if (v6)
    {
      v3 = accessibilityLocalizedString(@"sleep.mode.module.label");
    }

    else
    {
      v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
      localizedInfoDictionary = [v7 localizedInfoDictionary];
      v9 = [localizedInfoDictionary objectForKey:*MEMORY[0x29EDB8EB8]];

      if ([v9 length])
      {
        accessibilityLabel = v9;
      }

      else
      {
        v12.receiver = self;
        v12.super_class = CCUIMenuModuleViewControllerAccessibility;
        accessibilityLabel = [(CCUIMenuModuleViewControllerAccessibility *)&v12 accessibilityLabel];
      }

      v3 = accessibilityLabel;
    }

    goto LABEL_10;
  }

  v3 = [(CCUIMenuModuleViewControllerAccessibility *)self safeStringForKey:@"title"];
  if (![v3 length])
  {

    goto LABEL_4;
  }

LABEL_10:

  return v3;
}

- (id)_accessibilityControlCenterButtonIdentifier
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityLabel = [(CCUIMenuModuleViewControllerAccessibility *)self safeStringForKey:@"title"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CCUIMenuModuleViewControllerAccessibility;
    accessibilityLabel = [(CCUIMenuModuleViewControllerAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (BOOL)_accessibilityControlCenterShouldExpandContentModule
{
  v3 = [(CCUIMenuModuleViewControllerAccessibility *)self safeBoolForKey:@"shouldBeginTransitionToExpandedContentModule"];
  if (v3)
  {
    LOBYTE(v3) = [(CCUIMenuModuleViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"]^ 1;
  }

  return v3;
}

- (CGRect)_accessibilityControlCenterButtonFrame
{
  objc_opt_class();
  v3 = [(CCUIMenuModuleViewControllerAccessibility *)self safeValueForKey:@"_buttonModuleView"];
  v4 = __UIAccessibilityCastAsClass();

  [(UIView *)v4 bounds];
  v20 = UIAccessibilityConvertFrameToScreenCoordinates(v19, v4);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if ([(CCUIMenuModuleViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v9 = [(CCUIMenuModuleViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
    v10 = v9;
    if (v9)
    {
      [v9 accessibilityFrame];
      v24.origin.x = v11;
      v24.origin.y = v12;
      v24.size.width = v13;
      v24.size.height = v14;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22 = CGRectUnion(v21, v24);
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIMenuModuleViewControllerAccessibility;
  [(CCUIMenuModuleViewControllerAccessibility *)&v3 viewDidLoad];
  [(CCUIMenuModuleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityModuleViewElements
{
  array = [(CCUIMenuModuleViewControllerAccessibility *)self _accessibilityValueForKey:@"AXChildren"];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [(CCUIMenuModuleViewControllerAccessibility *)self _accessibilitySetRetainedValue:array forKey:@"AXChildren"];
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v4 = [(CCUIMenuModuleViewControllerAccessibility *)self safeUIViewForKey:@"_menuItemsContainer"];
  v5 = __UIAccessibilityCastAsClass();

  arrangedSubviews = [v5 arrangedSubviews];
  v7 = [arrangedSubviews count];

  v8 = [array count];
  v9 = [array count];
  if (v8 <= v7)
  {
    if (v9 < v7)
    {
      objc_initWeak(&location, self);
      for (i = 0; i < v7 - [array count]; ++i)
      {
        v11 = [[AXCCMenuModuleElement alloc] initWithAccessibilityContainer:self];
        v13[0] = MEMORY[0x29EDCA5F8];
        v13[1] = 3221225472;
        v13[2] = __77__CCUIMenuModuleViewControllerAccessibility__accessibilityModuleViewElements__block_invoke;
        v13[3] = &unk_29F2B73B0;
        objc_copyWeak(&v14, &location);
        [(AXCCMenuModuleElement *)v11 setProvider:v13];
        -[AXCCMenuModuleElement setIndex:](v11, "setIndex:", [array count]);
        [array addObject:v11];
        objc_destroyWeak(&v14);
      }

      objc_destroyWeak(&location);
    }
  }

  else
  {
    [array removeObjectsInRange:{v7, v9 - v7}];
  }

  return array;
}

id __77__CCUIMenuModuleViewControllerAccessibility__accessibilityModuleViewElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 index];
  objc_opt_class();
  v6 = [WeakRetained safeUIViewForKey:@"_menuItemsContainer"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 arrangedSubviews];

  if (v5 < [v8 count] && objc_msgSend(WeakRetained, "_accessibilityControlCenterMenuItemAtIndexIsValid:", v5))
  {
    v9 = [v8 objectAtIndexedSubscript:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end