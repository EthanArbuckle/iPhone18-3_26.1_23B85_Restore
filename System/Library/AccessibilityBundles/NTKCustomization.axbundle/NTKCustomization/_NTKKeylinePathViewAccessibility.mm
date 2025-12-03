@interface _NTKKeylinePathViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (id)_accessibilityEditPageView;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityIncrement;
@end

@implementation _NTKKeylinePathViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKKeylinePathView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityActivate
{
  if (accessibilityFaceLibraryTabEditorEnabled())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = accessibilityHandleActivateOnKeylineView(v3);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _NTKKeylinePathViewAccessibility;
    return [(_NTKKeylinePathViewAccessibility *)&v6 accessibilityActivate];
  }

  return v4;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityLabelForKeylineView(v2);

  return v3;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityValueForKeylineView(v2);

  return v3;
}

- (void)accessibilityElementDidBecomeFocused
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  accessibilityHandleFocusOnKeylineView();
}

- (id)accessibilityHint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityHintForKeylineView(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityTraitsForKeylineView(v2);

  return v3;
}

- (void)accessibilityIncrement
{
  _accessibilityEditPageView = [(_NTKKeylinePathViewAccessibility *)self _accessibilityEditPageView];
  _accessibilityEditComplicationPickerView(_accessibilityEditPageView, 1);
}

- (void)accessibilityDecrement
{
  _accessibilityEditPageView = [(_NTKKeylinePathViewAccessibility *)self _accessibilityEditPageView];
  _accessibilityEditComplicationPickerView(_accessibilityEditPageView, 0);
}

- (id)_accessibilityEditPageView
{
  v3 = AXSafeClassFromString();

  return [(_NTKKeylinePathViewAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

- (BOOL)canBecomeFocused
{
  if (([(_NTKKeylinePathViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _NTKKeylinePathViewAccessibility;
  return [(_NTKKeylinePathViewAccessibility *)&v4 canBecomeFocused];
}

@end