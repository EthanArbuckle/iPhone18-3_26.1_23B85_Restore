@interface UIPickerColumnViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityKeyCommands;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)accessibilityPath;
- (void)_fkaMoveToNextColumn;
- (void)_fkaMoveToPreviousColumn;
- (void)_fkaScrollToNextRow;
- (void)_fkaScrollToPreviousRow;
@end

@implementation UIPickerColumnViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIPickerTableView" isKindOfClass:@"UITableView"];
  v3 = @"UIPickerColumnView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIPickerColumnView" hasInstanceVariable:@"_middleTable" withType:"UIPickerTableView"];
  v5 = "q";
  [location[0] validateClass:@"UIPickerColumnView" hasInstanceMethod:@"selectionBarRow" withFullSignature:0];
  v4 = "@";
  [location[0] validateClass:v3 hasInstanceMethod:@"_scrollRowAtIndexPathToSelectionBar:animated:" withFullSignature:{"@", "B", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_tableFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:@"UIPickerView" hasInstanceMethod:@"columnForTableView:" withFullSignature:{v5, v4, 0}];
  objc_storeStrong(v7, v6);
}

- (id)_accessibilityNativeFocusPreferredElement
{
  selfCopy = self;
  v17[1] = a2;
  v16 = 0;
  objc_opt_class();
  v5 = [(UIPickerColumnViewAccessibility *)selfCopy safeValueForKey:@"_pickerView"];
  v15 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17[0] = v14;
  accessibilityElements = [v14 accessibilityElements];
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v13 = 0;
  v8[1] = &v9;
  v7 = MEMORY[0x29EDC9748](v17[0]);
  v8[0] = MEMORY[0x29EDC9748](selfCopy);
  AXPerformSafeBlock();
  v6 = v10[3];
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v7, 0);
  _Block_object_dispose(&v9, 8);
  v3 = [accessibilityElements axSafeObjectAtIndex:v6];
  MEMORY[0x29EDC9740](accessibilityElements);
  objc_storeStrong(v17, 0);

  return v3;
}

double __76__UIPickerColumnViewAccessibility__accessibilityNativeFocusPreferredElement__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) safeValueForKey:@"_middleTable"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 columnForTableView:?];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (id)_accessibilityKeyCommands
{
  v15[4] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v13 = a2;
  _accessibilityIsRTL = [(UIPickerColumnViewAccessibility *)self _accessibilityIsRTL];
  if (_accessibilityIsRTL)
  {
    v2 = MEMORY[0x29EDC9748](*MEMORY[0x29EDC8170]);
  }

  else
  {
    v2 = MEMORY[0x29EDC9748](*MEMORY[0x29EDC8168]);
  }

  v11 = v2;
  if (_accessibilityIsRTL)
  {
    v3 = MEMORY[0x29EDC9748](*MEMORY[0x29EDC8168]);
  }

  else
  {
    v3 = MEMORY[0x29EDC9748](*MEMORY[0x29EDC8170]);
  }

  v10 = v3;
  v9 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8178] modifierFlags:? action:?];
  v15[0] = v9;
  v8 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8160] modifierFlags:0 action:sel__fkaScrollToNextRow];
  v15[1] = v8;
  v7 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:v11 modifierFlags:0 action:sel__fkaMoveToPreviousColumn];
  v15[2] = v7;
  v5 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:v10 modifierFlags:0 action:sel__fkaMoveToNextColumn];
  v15[3] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:4];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);

  return v6;
}

- (void)_fkaScrollToPreviousRow
{
  selfCopy = self;
  v13[1] = a2;
  v3 = MEMORY[0x29EDB9FE0];
  v12 = 0;
  v11 = [(UIPickerColumnViewAccessibility *)self safeIntegerForKey:@"selectionBarRow"]- 1;
  if (v11 > 0)
  {
    v2 = v11;
  }

  else
  {
    v2 = v12;
  }

  v10[1] = v2;
  v13[0] = [v3 indexPathForRow:v2 inSection:0];
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__UIPickerColumnViewAccessibility__fkaScrollToPreviousRow__block_invoke;
  v8 = &unk_29F30C888;
  v9 = MEMORY[0x29EDC9748](selfCopy);
  v10[0] = MEMORY[0x29EDC9748](v13[0]);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v13, 0);
}

- (void)_fkaScrollToNextRow
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [MEMORY[0x29EDB9FE0] indexPathForRow:-[UIPickerColumnViewAccessibility safeIntegerForKey:](self inSection:{"safeIntegerForKey:", @"selectionBarRow", 0}];
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __54__UIPickerColumnViewAccessibility__fkaScrollToNextRow__block_invoke;
  v6 = &unk_29F30C888;
  v7 = MEMORY[0x29EDC9748](selfCopy);
  v8 = MEMORY[0x29EDC9748](v9[0]);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v9, 0);
}

- (void)_fkaMoveToPreviousColumn
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __59__UIPickerColumnViewAccessibility__fkaMoveToPreviousColumn__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(v7, 0);
}

double __59__UIPickerColumnViewAccessibility__fkaMoveToPreviousColumn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFocusContainer];
  [v2 _accessibilityMoveFocusWithHeading:32];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (void)_fkaMoveToNextColumn
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __55__UIPickerColumnViewAccessibility__fkaMoveToNextColumn__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(v7, 0);
}

double __55__UIPickerColumnViewAccessibility__fkaMoveToNextColumn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFocusContainer];
  [v2 _accessibilityMoveFocusWithHeading:16];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (id)accessibilityPath
{
  [(UIPickerColumnViewAccessibility *)self safeCGRectForKey:@"frame"];
  r1.origin.x = v2;
  r1.origin.y = v3;
  r1.size.width = v4;
  r1.size.height = v5;
  [(UIPickerColumnViewAccessibility *)self safeCGRectForKey:@"_tableFrame"];
  r2.origin.x = v6;
  r2.origin.y = v7;
  r2.size.width = v8;
  r2.size.height = v9;
  v19 = CGRectIntersection(r1, r2);
  v15 = MEMORY[0x29EDC7948];
  [(UIPickerColumnViewAccessibility *)self convertRect:0 toView:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
  return [v15 bezierPathWithRoundedRect:v10 cornerRadius:{v11, v12, v13, 5.0}];
}

@end