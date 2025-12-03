@interface TPNumberPadAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (id)_accessibilityScannerGroupElements;
@end

@implementation TPNumberPadAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSimpleNumberPad"];
  [validationsCopy validateClass:@"TPSimpleNumberPad" hasInstanceVariable:@"_deleteButton" withType:"UIButton"];
  [validationsCopy validateClass:@"TPSimpleNumberPad" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (id)_accessibilityScannerGroupElements
{
  v16[2] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:4];
  v4 = [(TPNumberPadAccessibility *)self safeValueForKey:@"_buttons"];
  if ([v4 count] == 12)
  {
    v5 = -3;
    do
    {
      v5 += 3;
      v15[0] = @"GroupElements";
      v6 = [v4 subarrayWithRange:{v5, 3}];
      v15[1] = @"GroupTraits";
      v16[0] = v6;
      v16[1] = &unk_2A23460F8;
      v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

      [v3 addObject:v7];
    }

    while (v5 < 9);
  }

  else
  {
    [v4 count];
    _AXAssert();
  }

  NSClassFromString(&cfstr_Tpsimplenumber_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = [(TPNumberPadAccessibility *)self safeValueForKey:@"_deleteButton"];
    if ([v8 isAccessibilityElement] && objc_msgSend(v8, "_accessibilityViewIsVisible"))
    {
      lastObject = [v3 lastObject];
      v10 = [lastObject mutableCopy];

      v11 = [v10 objectForKey:@"GroupElements"];
      v12 = [v11 arrayByAddingObject:v8];
      [v10 setObject:v12 forKey:@"GroupElements"];

      [v3 replaceObjectAtIndex:objc_msgSend(v3 withObject:{"count") - 1, v10}];
    }
  }

  v13 = *MEMORY[0x29EDCA608];

  return v3;
}

- (BOOL)canBecomeFocused
{
  if (([(TPNumberPadAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TPNumberPadAccessibility;
  return [(TPNumberPadAccessibility *)&v4 canBecomeFocused];
}

@end