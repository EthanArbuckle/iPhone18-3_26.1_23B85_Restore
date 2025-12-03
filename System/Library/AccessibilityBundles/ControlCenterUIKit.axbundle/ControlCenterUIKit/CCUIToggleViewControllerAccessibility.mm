@interface CCUIToggleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityControlCenterButtonIsToggle;
- (id)_accessibilityControlCenterButtonHint;
- (id)_accessibilityControlCenterButtonIdentifier;
- (id)_accessibilityControlCenterButtonLabel;
@end

@implementation CCUIToggleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIToggleViewController" hasInstanceMethod:@"module" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIToggleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [validationsCopy validateClass:@"CCUIButtonModuleViewControllerAccessibility" hasInstanceMethod:@"_accessibilityControlCenterButtonLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIButtonModuleViewControllerAccessibility" hasInstanceMethod:@"_accessibilityControlCenterButtonIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIButtonModuleViewControllerAccessibility" hasInstanceMethod:@"_accessibilityControlCenterButtonHint" withFullSignature:{"@", 0}];
}

- (id)_accessibilityControlCenterButtonLabel
{
  v3 = [(CCUIToggleViewControllerAccessibility *)self safeValueForKey:@"module"];
  if (objc_opt_respondsToSelector())
  {
    _accessibilityControlCenterButtonLabel = [v3 _accessibilityControlCenterButtonLabel];
LABEL_7:
    v5 = _accessibilityControlCenterButtonLabel;
    goto LABEL_9;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __79__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonLabel__block_invoke;
  block[3] = &unk_29F2B7248;
  block[4] = self;
  if (_accessibilityControlCenterButtonLabel_onceToken != -1)
  {
    dispatch_once(&_accessibilityControlCenterButtonLabel_onceToken, block);
  }

  if (_accessibilityControlCenterButtonLabel_superclassMethodAvailable == 1)
  {
    v7.receiver = self;
    v7.super_class = CCUIToggleViewControllerAccessibility;
    _accessibilityControlCenterButtonLabel = [(CCUIToggleViewControllerAccessibility *)&v7 _accessibilityControlCenterButtonLabel];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

Method __79__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonLabel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  Superclass = class_getSuperclass(v2);
  result = class_getInstanceMethod(Superclass, sel__accessibilityControlCenterButtonLabel);
  _accessibilityControlCenterButtonLabel_superclassMethodAvailable = result != 0;
  if (!result)
  {

    return MEMORY[0x2A1C5E7B0]();
  }

  return result;
}

- (id)_accessibilityControlCenterButtonIdentifier
{
  v3 = [(CCUIToggleViewControllerAccessibility *)self safeValueForKey:@"module"];
  if (objc_opt_respondsToSelector())
  {
    _accessibilityControlCenterButtonIdentifier = [v3 _accessibilityControlCenterButtonIdentifier];
LABEL_7:
    v5 = _accessibilityControlCenterButtonIdentifier;
    goto LABEL_9;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __84__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonIdentifier__block_invoke;
  block[3] = &unk_29F2B7248;
  block[4] = self;
  if (_accessibilityControlCenterButtonIdentifier_onceToken != -1)
  {
    dispatch_once(&_accessibilityControlCenterButtonIdentifier_onceToken, block);
  }

  if (_accessibilityControlCenterButtonIdentifier_superclassMethodAvailable == 1)
  {
    v7.receiver = self;
    v7.super_class = CCUIToggleViewControllerAccessibility;
    _accessibilityControlCenterButtonIdentifier = [(CCUIToggleViewControllerAccessibility *)&v7 _accessibilityControlCenterButtonIdentifier];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

Method __84__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  Superclass = class_getSuperclass(v2);
  result = class_getInstanceMethod(Superclass, sel__accessibilityControlCenterButtonIdentifier);
  _accessibilityControlCenterButtonIdentifier_superclassMethodAvailable = result != 0;
  if (!result)
  {

    return MEMORY[0x2A1C5E7B0]();
  }

  return result;
}

- (id)_accessibilityControlCenterButtonHint
{
  v3 = [(CCUIToggleViewControllerAccessibility *)self safeValueForKey:@"module"];
  if (objc_opt_respondsToSelector())
  {
    _accessibilityControlCenterButtonHint = [v3 _accessibilityControlCenterButtonHint];
LABEL_7:
    v5 = _accessibilityControlCenterButtonHint;
    goto LABEL_9;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __78__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonHint__block_invoke;
  block[3] = &unk_29F2B7248;
  block[4] = self;
  if (_accessibilityControlCenterButtonHint_onceToken != -1)
  {
    dispatch_once(&_accessibilityControlCenterButtonHint_onceToken, block);
  }

  if (_accessibilityControlCenterButtonHint_superclassMethodAvailable == 1)
  {
    v7.receiver = self;
    v7.super_class = CCUIToggleViewControllerAccessibility;
    _accessibilityControlCenterButtonHint = [(CCUIToggleViewControllerAccessibility *)&v7 _accessibilityControlCenterButtonHint];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

Method __78__CCUIToggleViewControllerAccessibility__accessibilityControlCenterButtonHint__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  Superclass = class_getSuperclass(v2);
  result = class_getInstanceMethod(Superclass, sel__accessibilityControlCenterButtonHint);
  _accessibilityControlCenterButtonHint_superclassMethodAvailable = result != 0;
  if (!result)
  {

    return MEMORY[0x2A1C5E7B0]();
  }

  return result;
}

- (BOOL)_accessibilityControlCenterButtonIsToggle
{
  v2 = [(CCUIToggleViewControllerAccessibility *)self safeValueForKey:@"module"];
  if (objc_opt_respondsToSelector())
  {
    _accessibilityControlCenterButtonIsToggle = [v2 _accessibilityControlCenterButtonIsToggle];
  }

  else
  {
    _accessibilityControlCenterButtonIsToggle = 1;
  }

  return _accessibilityControlCenterButtonIsToggle;
}

@end