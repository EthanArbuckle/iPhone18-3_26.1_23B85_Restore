@interface SUUIDocumentContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_rightBarButtonIsEnabled;
- (id)_accessibilityRightBarButtonItem;
- (id)_rightBarButtonAccessibilityLabel;
- (void)documentDidUpdate:(id)update;
@end

@implementation SUUIDocumentContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"navigationBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationBar" hasInstanceMethod:@"currentRightView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (id)_accessibilityRightBarButtonItem
{
  v2 = [(SUUIDocumentContainerViewControllerAccessibility *)self safeValueForKey:@"navigationController"];
  NSClassFromString(&cfstr_Musicaccountna.isa);
  v3 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v2)
  {
    v4 = [v2 safeValueForKey:@"navigationBar"];
    NSClassFromString(&cfstr_Suuiscrollingt_2.isa);
    v3 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4)
    {
      v3 = [v4 safeValueForKey:@"currentRightView"];
    }
  }

  return v3;
}

- (id)_rightBarButtonAccessibilityLabel
{
  _accessibilityRightBarButtonItem = [(SUUIDocumentContainerViewControllerAccessibility *)self _accessibilityRightBarButtonItem];
  accessibilityLabel = [_accessibilityRightBarButtonItem accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)_rightBarButtonIsEnabled
{
  _accessibilityRightBarButtonItem = [(SUUIDocumentContainerViewControllerAccessibility *)self _accessibilityRightBarButtonItem];
  v3 = [_accessibilityRightBarButtonItem safeValueForKey:@"isEnabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  _rightBarButtonAccessibilityLabel = [(SUUIDocumentContainerViewControllerAccessibility *)self _rightBarButtonAccessibilityLabel];
  _rightBarButtonIsEnabled = [(SUUIDocumentContainerViewControllerAccessibility *)self _rightBarButtonIsEnabled];
  v21.receiver = self;
  v21.super_class = SUUIDocumentContainerViewControllerAccessibility;
  [(SUUIDocumentContainerViewControllerAccessibility *)&v21 documentDidUpdate:updateCopy];

  _rightBarButtonAccessibilityLabel2 = [(SUUIDocumentContainerViewControllerAccessibility *)self _rightBarButtonAccessibilityLabel];
  _rightBarButtonIsEnabled2 = [(SUUIDocumentContainerViewControllerAccessibility *)self _rightBarButtonIsEnabled];
  if ([_rightBarButtonAccessibilityLabel isEqualToString:_rightBarButtonAccessibilityLabel2] && _rightBarButtonIsEnabled != _rightBarButtonIsEnabled2)
  {
    v9 = MEMORY[0x29EDBD7E8];
    v10 = MEMORY[0x29EDBA0F8];
    if (_rightBarButtonIsEnabled2)
    {
      v11 = accessibilityLocalizedString(@"button.enabled");
      v12 = [v10 stringWithFormat:v11, _rightBarButtonAccessibilityLabel2];
      v13 = [v9 axAttributedStringWithString:v12];

      [v13 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
      v14 = v20;
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 3221225472;
      v15 = __70__SUUIDocumentContainerViewControllerAccessibility_documentDidUpdate___block_invoke;
    }

    else
    {
      v16 = accessibilityLocalizedString(@"button.disabled");
      v17 = [v10 stringWithFormat:v16, _rightBarButtonAccessibilityLabel2];
      v13 = [v9 axAttributedStringWithString:v17];

      [v13 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
      v14 = v19;
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v15 = __70__SUUIDocumentContainerViewControllerAccessibility_documentDidUpdate___block_invoke_2;
    }

    v14[2] = v15;
    v14[3] = &unk_29F2D8E30;
    v14[4] = v13;
    v18 = v13;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end