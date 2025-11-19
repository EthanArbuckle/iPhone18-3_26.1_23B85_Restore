@interface _TVMenuBarStackButtonAccessibility
- (_NSRange)accessibilityRowRange;
- (unint64_t)accessibilityTraits;
@end

@implementation _TVMenuBarStackButtonAccessibility

- (_NSRange)accessibilityRowRange
{
  objc_opt_class();
  v3 = [(_TVMenuBarStackButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Tvmenubarstack_1.isa)];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 subviews];
  v6 = [v5 indexOfObject:self];
  v7 = [v4 subviews];
  v8 = [v7 count];

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _TVMenuBarStackButtonAccessibility;
  return *MEMORY[0x29EDC7588] | [(_TVMenuBarStackButtonAccessibility *)&v3 accessibilityTraits];
}

@end