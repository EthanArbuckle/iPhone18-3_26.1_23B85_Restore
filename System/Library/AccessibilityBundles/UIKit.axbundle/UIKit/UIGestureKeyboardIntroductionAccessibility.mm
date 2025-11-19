@interface UIGestureKeyboardIntroductionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)showGestureKeyboardIntroduction;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIGestureKeyboardIntroductionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIGestureKeyboardIntroduction";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v3 = "UIKBKeyView";
  [location[0] validateClass:@"UIGestureKeyboardIntroduction" hasInstanceVariable:@"m_firstKeyView" withType:?];
  [location[0] validateClass:@"UIGestureKeyboardIntroduction" hasInstanceVariable:@"m_secondKeyView" withType:"UIKBKeyView"];
  [location[0] validateClass:@"UIGestureKeyboardIntroduction" hasInstanceMethod:@"showGestureKeyboardIntroduction" withFullSignature:{"B", 0}];
  [location[0] validateClass:@"UIKBKeyView" hasInstanceMethod:@"key" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v45 = *MEMORY[0x29EDCA608];
  v43 = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = UIGestureKeyboardIntroductionAccessibility;
  [(UIGestureKeyboardIntroductionAccessibility *)&v41 _accessibilityLoadAccessibilityInformation];
  v40 = [(UIGestureKeyboardIntroductionAccessibility *)v43 safeUIViewForKey:@"m_view"];
  v39 = [(UIGestureKeyboardIntroductionAccessibility *)v43 safeUIViewForKey:@"m_firstKeyView"];
  v38 = [(UIGestureKeyboardIntroductionAccessibility *)v43 safeUIViewForKey:@"m_secondKeyView"];
  v36 = 0;
  objc_opt_class();
  v22 = [v39 safeValueForKey:@"key"];
  v35 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v22);
  v34 = MEMORY[0x29EDC9748](v35);
  objc_storeStrong(&v35, 0);
  v37 = v34;
  v32 = 0;
  objc_opt_class();
  v21 = [v38 safeValueForKey:@"key"];
  v31 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v21);
  v30 = MEMORY[0x29EDC9748](v31);
  objc_storeStrong(&v31, 0);
  v33 = v30;
  memset(__b, 0, sizeof(__b));
  obj = [v40 subviews];
  v20 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
  if (v20)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = 0;
        [v29 center];
        v25 = v2;
        v26 = v3;
        [v39 center];
        if (__CGPointEqualToPoint_0(v25, v26, v4, v5))
        {
          objc_storeStrong(&v27, v37);
        }

        else
        {
          [v29 center];
          v23 = v6;
          v24 = v7;
          [v38 center];
          if (__CGPointEqualToPoint_0(v23, v24, v8, v9))
          {
            objc_storeStrong(&v27, v33);
          }
        }

        if (v27)
        {
          v13 = [v37 displayString];
          v12 = [v37 secondaryDisplayStrings];
          v11 = MEMORY[0x29ED3D9D0]();
          v10 = __UIAXStringForVariables();
          [v29 setAccessibilityLabel:{v11, @"__AXStringForVariablesSentinel"}];
          MEMORY[0x29EDC9740](v10);
          MEMORY[0x29EDC9740](v11);
          MEMORY[0x29EDC9740](v12);
          MEMORY[0x29EDC9740](v13);
          v14 = accessibilityUIKitLocalizedString();
          [v29 setAccessibilityHint:?];
          MEMORY[0x29EDC9740](v14);
        }

        objc_storeStrong(&v27, 0);
      }

      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
}

- (BOOL)showGestureKeyboardIntroduction
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIGestureKeyboardIntroductionAccessibility;
  v4 = [(UIGestureKeyboardIntroductionAccessibility *)&v3 showGestureKeyboardIntroduction];
  if (v4)
  {
    [(UIGestureKeyboardIntroductionAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  return v4 & 1;
}

@end