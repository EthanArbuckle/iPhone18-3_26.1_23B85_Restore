@interface _CNAtomFieldEditorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCanBeFirstResponder;
- (id)_axAtomTextViewAncestor;
- (id)accessibilityPlaceholderValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _CNAtomFieldEditorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAtomTextView"];
  [validationsCopy validateClass:@"CNAtomTextView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_CNAtomFieldEditor" isKindOfClass:@"UIView"];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBHomeScreenWindow" isKindOfClass:@"UIWindow"];
  }
}

- (id)_axAtomTextViewAncestor
{
  v2 = [(_CNAtomFieldEditorAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cnatomtextview_1.isa)];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = _CNAtomFieldEditorAccessibility;
  [(_CNAtomFieldEditorAccessibility *)&v8 accessibilityTraits];
  v3 = *MEMORY[0x29EDBDC00];
  v4 = _AXTraitsRemoveTrait();
  _axAtomTextViewAncestor = [(_CNAtomFieldEditorAccessibility *)self _axAtomTextViewAncestor];
  accessibilityTraits = [_axAtomTextViewAncestor accessibilityTraits];

  return accessibilityTraits | v4;
}

- (id)accessibilityPlaceholderValue
{
  _axAtomTextViewAncestor = [(_CNAtomFieldEditorAccessibility *)self _axAtomTextViewAncestor];
  v3 = [_axAtomTextViewAncestor safeValueForKey:@"placeholderLabel"];
  v4 = __UIAccessibilitySafeClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (BOOL)_accessibilityCanBeFirstResponder
{
  if (_accessibilityCanBeFirstResponder_onceToken != -1)
  {
    [_CNAtomFieldEditorAccessibility _accessibilityCanBeFirstResponder];
  }

  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  window = [v3 window];
  if (objc_opt_isKindOfClass())
  {
    _accessibilityCanBeFirstResponder = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _CNAtomFieldEditorAccessibility;
    _accessibilityCanBeFirstResponder = [(_CNAtomFieldEditorAccessibility *)&v7 _accessibilityCanBeFirstResponder];
  }

  return _accessibilityCanBeFirstResponder;
}

@end