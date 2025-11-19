@interface AVTGroupDialAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axScrollDial:(BOOL)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AVTGroupDialAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTGroupDial" hasInstanceMethod:@"currentSelectedItemIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"AVTGroupDial" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTGroupDial" hasInstanceMethod:@"setSelectedGroupIndex:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"AVTGroupPickerItem" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"AVTGroupPickerDelegate" hasRequiredInstanceMethod:@"groupPicker:didSelectGroupAtIndex:tapped:"];
  [v3 validateProtocol:@"AVTGroupPicker" hasRequiredInstanceMethod:@"groupItems"];
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

- (BOOL)_axScrollDial:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTGroupDialAccessibility *)self safeIntegerForKey:@"currentSelectedItemIndex"];
  v6 = v5;
  if (v3)
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 1;
    return [(AVTGroupDialAccessibility *)self _axScrollDial:v3];
  }

  if (a3 == 1)
  {
    v3 = 0;
    return [(AVTGroupDialAccessibility *)self _axScrollDial:v3];
  }

  return 0;
}

@end