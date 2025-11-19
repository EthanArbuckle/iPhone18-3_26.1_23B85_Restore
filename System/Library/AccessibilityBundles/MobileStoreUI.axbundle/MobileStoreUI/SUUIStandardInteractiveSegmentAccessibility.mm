@interface SUUIStandardInteractiveSegmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIStandardInteractiveSegmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIInteractiveSegmentedControl"];
  [v3 validateClass:@"SUUIInteractiveSegmentedControl" hasInstanceMethod:@"segments" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIInteractiveSegmentedControl" hasInstanceMethod:@"selectedSegmentIndexForSelectionProgress:" withFullSignature:{"q", "d", 0}];
  [v3 validateClass:@"SUUIStandardInteractiveSegment" hasInstanceMethod:@"attributedTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIInteractiveSegmentedControl" hasInstanceVariable:@"_selectionProgress" withType:"d"];
}

- (_NSRange)accessibilityRowRange
{
  v3 = [(SUUIStandardInteractiveSegmentAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Suuiinteractiv.isa)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"segments"];
    v6 = __UIAccessibilitySafeClass();

    v7 = [v6 indexOfObject:self];
    v8 = [v6 count];
  }

  else
  {
    v8 = 0;
    v7 = 0x7FFFFFFFLL;
  }

  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SUUIStandardInteractiveSegmentAccessibility *)self safeValueForKey:@"attributedTitle"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 string];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7F70];
  v4 = [(SUUIStandardInteractiveSegmentAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Suuiinteractiv.isa)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"segments"];
    v7 = __UIAccessibilitySafeClass();

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12 = MEMORY[0x29EDCA5F8];
    v13 = v5;
    AXPerformSafeBlock();
    v8 = v15[3];

    _Block_object_dispose(&v14, 8);
    v9 = [v7 indexOfObject:{self, v12, 3221225472, __66__SUUIStandardInteractiveSegmentAccessibility_accessibilityTraits__block_invoke, &unk_29F2D8DE0}];
    v10 = *MEMORY[0x29EDC7FC0];
    if (v8 != v9)
    {
      v10 = 0;
    }

    v3 |= v10;
  }

  return v3;
}

uint64_t __66__SUUIStandardInteractiveSegmentAccessibility_accessibilityTraits__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 safeDoubleForKey:@"_selectionProgress"];
  result = [v2 selectedSegmentIndexForSelectionProgress:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end