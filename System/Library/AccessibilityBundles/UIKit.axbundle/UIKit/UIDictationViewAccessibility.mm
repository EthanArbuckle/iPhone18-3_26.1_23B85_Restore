@interface UIDictationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)endpointButtonPressed;
- (void)finishReturnToKeyboard;
- (void)setState:(int)a3;
@end

@implementation UIDictationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = @"UIDictationView";
  v7 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = @"UIKeyboardImpl";
  v5 = "@";
  [location[0] validateClass:0 hasClassMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"m_layout" withType:"UIKeyboardLayout"];
  v4 = @"UIKeyboardLayoutStar";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_accessibilityKeys" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_accessibilityKeyElementForKey:" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"setState:" withFullSignature:{v7, "i", 0}];
  objc_storeStrong(v9, v8);
}

- (void)setState:(int)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = UIDictationViewAccessibility;
  [(UIDictationViewAccessibility *)&v12 setState:a3];
  v9 = 1;
  if (v13 != 3)
  {
    v9 = v13 == 4;
  }

  v11 = v9;
  location = [(UIDictationViewAccessibility *)v15 _accessibilityValueForKey:@"kAXDictationThinkingTimer"];
  if (v9)
  {
    if (!location || ![location isActive] && !objc_msgSend(location, "isPending"))
    {
      v7 = objc_alloc(MEMORY[0x29EDBD6A0]);
      v6 = MEMORY[0x29EDCA578];
      v3 = MEMORY[0x29EDCA578];
      v8 = v6;
      v4 = [v7 initWithTargetSerialQueue:?];
      v5 = location;
      location = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v8);
      [location afterDelay:&__block_literal_global_19 processBlock:1.0];
      [(UIDictationViewAccessibility *)v15 _accessibilitySetRetainedValue:location forKey:@"kAXDictationThinkingTimer"];
    }
  }

  else
  {
    [location cancel];
    [(UIDictationViewAccessibility *)v15 _accessibilityRemoveValueForKey:@"kAXDictationThinkingTimer"];
  }

  objc_storeStrong(&location, 0);
}

double __41__UIDictationViewAccessibility_setState___block_invoke()
{
  notification = *MEMORY[0x29EDC7EA8];
  v2 = accessibilityLocalizedString(@"thinking.about.dictation");
  UIAccessibilityPostNotification(notification, v2);
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (void)endpointButtonPressed
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIDictationViewAccessibility;
  [(UIDictationViewAccessibility *)&v2 endpointButtonPressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)finishReturnToKeyboard
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = UIDictationViewAccessibility;
  [(UIDictationViewAccessibility *)&v29 finishReturnToKeyboard];
  v6 = [MEMORY[0x29EDC7B08] activeInstance];
  v28 = [v6 safeValueForKey:@"m_layout"];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v21 = 0;
  v22 = &v21;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  v5 = [v28 safeValueForKey:{@"_accessibilityKeys", v2}];
  v15[1] = MEMORY[0x29EDCA5F8];
  v16 = -1073741824;
  v17 = 0;
  v18 = __54__UIDictationViewAccessibility_finishReturnToKeyboard__block_invoke;
  v19 = &unk_29F30D6F8;
  v20 = &v21;
  [v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x29EDC9740](v5);
  if (v22[5])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 838860800;
    v12 = 48;
    v13 = __Block_byref_object_copy__9;
    v14 = __Block_byref_object_dispose__9;
    v15[0] = 0;
    v8[1] = &v9;
    v8[0] = MEMORY[0x29EDC9748](v28);
    v8[2] = &v21;
    AXPerformSafeBlock();
    v7 = MEMORY[0x29EDC9748](v10[5]);
    objc_storeStrong(v8, 0);
    _Block_object_dispose(&v9, 8);
    objc_storeStrong(v15, 0);
    v3 = v22[5];
    v22[5] = v7;
    MEMORY[0x29EDC9740](v3);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - [(UIApplicationAccessibility *)*MEMORY[0x29EDC8008] _accessibilityLastDictationMagicTapTime]> 2.0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v22[5]);
  }

  _Block_object_dispose(&v21, 8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
}

void __54__UIDictationViewAccessibility_finishReturnToKeyboard__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v10 = [location[0] properties];
    v9 = 1;
    v8 = [v10 objectForKey:*MEMORY[0x29EDC8150]];
    v7 = 1;
    v6 = [v8 intValue] == 4;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  if (v6)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

double __54__UIDictationViewAccessibility_finishReturnToKeyboard__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityKeyElementForKey:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end