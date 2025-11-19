@interface _MFAtomFieldEditorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityCanBeFirstResponder;
- (id)_axAtomTextViewAncestor;
- (id)accessibilityPlaceholderValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _MFAtomFieldEditorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFAtomTextView"];
  [v3 validateClass:@"MFAtomTextView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MFAtomFieldEditor" isKindOfClass:@"UIView"];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBHomeScreenWindow" isKindOfClass:@"UIWindow"];
  }
}

- (id)_axAtomTextViewAncestor
{
  v2 = [(_MFAtomFieldEditorAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Mfatomtextview_1.isa)];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = _MFAtomFieldEditorAccessibility;
  [(_MFAtomFieldEditorAccessibility *)&v8 accessibilityTraits];
  v3 = *MEMORY[0x29EDBDC00];
  v4 = _AXTraitsRemoveTrait();
  v5 = [(_MFAtomFieldEditorAccessibility *)self _axAtomTextViewAncestor];
  v6 = [v5 accessibilityTraits];

  return v6 | v4;
}

- (id)accessibilityPlaceholderValue
{
  v2 = [(_MFAtomFieldEditorAccessibility *)self _axAtomTextViewAncestor];
  v3 = [v2 safeValueForKey:@"placeholderLabel"];
  v4 = __UIAccessibilitySafeClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_accessibilityCanBeFirstResponder
{
  if (_accessibilityCanBeFirstResponder_onceToken != -1)
  {
    [_MFAtomFieldEditorAccessibility _accessibilityCanBeFirstResponder];
  }

  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 window];
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MFAtomFieldEditorAccessibility;
    v5 = [(_MFAtomFieldEditorAccessibility *)&v7 _accessibilityCanBeFirstResponder];
  }

  return v5;
}

@end