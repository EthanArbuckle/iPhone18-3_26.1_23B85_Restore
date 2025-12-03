@interface AVTGroupDialAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axScrollDial:(BOOL)dial;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AVTGroupDialAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTGroupDial" hasInstanceMethod:@"currentSelectedItemIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"AVTGroupDial" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTGroupDial" hasInstanceMethod:@"setSelectedGroupIndex:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"AVTGroupPickerItem" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"AVTGroupPickerDelegate" hasRequiredInstanceMethod:@"groupPicker:didSelectGroupAtIndex:tapped:"];
  [validationsCopy validateProtocol:@"AVTGroupPicker" hasRequiredInstanceMethod:@"groupItems"];
}

- (id)accessibilityValue
{
  v3 = [(AVTGroupDialAccessibility *)self safeIntegerForKey:@"currentSelectedItemIndex"];
  v4 = [(AVTGroupDialAccessibility *)self safeArrayForKey:@"groupItems"];
  v5 = [v4 objectAtIndex:v3];
  v6 = [v5 safeStringForKey:@"localizedName"];
  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"starfish.number.of");
  v11 = [v7 localizedStringWithFormat:v8, v3 + 1, objc_msgSend(v4, "count")];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVTGroupDialAccessibility;
  return *MEMORY[0x29EDC7F60] | [(AVTGroupDialAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)_axScrollDial:(BOOL)dial
{
  dialCopy = dial;
  v5 = [(AVTGroupDialAccessibility *)self safeIntegerForKey:@"currentSelectedItemIndex"];
  v6 = v5;
  if (dialCopy)
  {
    v7 = [(AVTGroupDialAccessibility *)self safeArrayForKey:@"groupItems"];
    v8 = v6 < [v7 count] - 1;
  }

  else
  {
    v8 = v5 > 0;
  }

  AXPerformSafeBlock();
  return v8;
}

void __43__AVTGroupDialAccessibility__axScrollDial___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedGroupIndex:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 groupPicker:*(a1 + 32) didSelectGroupAtIndex:*(a1 + 40) tapped:0];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 2)
  {
    v3 = 1;
    return [(AVTGroupDialAccessibility *)self _axScrollDial:v3];
  }

  if (scroll == 1)
  {
    v3 = 0;
    return [(AVTGroupDialAccessibility *)self _axScrollDial:v3];
  }

  return 0;
}

@end