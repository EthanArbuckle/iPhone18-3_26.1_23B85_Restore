@interface UIKeyboardLayoutCursorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilitySetLastFocusChangeNotificationTimer:(id)a3;
- (void)setSelectedKeyIndex:(int64_t)a3;
@end

@implementation UIKeyboardLayoutCursorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIKeyboardLayoutCursor";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"handleVisualDirectionalInput:" withFullSignature:{"B", "i", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_keyplaneName" withType:"NSString"];
  [location[0] validateClass:v3 hasInstanceVariable:@"_keyplane" withType:"UIKBTree"];
  [location[0] validateClass:@"UIKBTree" hasInstanceMethod:@"componentName" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilitySetLastFocusChangeNotificationTimer:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)setSelectedKeyIndex:(int64_t)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18.receiver = self;
  v18.super_class = UIKeyboardLayoutCursorAccessibility;
  [(UIKeyboardLayoutCursorAccessibility *)&v18 setSelectedKeyIndex:a3];
  v9 = [(UIKeyboardLayoutCursorAccessibility *)v21 _accessibilityLastFocusChangeNotificationTimer];
  MEMORY[0x29EDC9740](v9);
  if (!v9)
  {
    v7 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v6 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    v8 = v6;
    v17 = [v7 initWithTargetSerialQueue:?];
    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    [v17 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:{1, v4}];
    [(UIKeyboardLayoutCursorAccessibility *)v21 _accessibilitySetLastFocusChangeNotificationTimer:v17];
    objc_storeStrong(&v17, 0);
  }

  objc_initWeak(&from, v21);
  v5 = [(UIKeyboardLayoutCursorAccessibility *)v21 _accessibilityLastFocusChangeNotificationTimer];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = -1073741824;
  v12 = 0;
  v13 = __59__UIKeyboardLayoutCursorAccessibility_setSelectedKeyIndex___block_invoke;
  v14 = &unk_29F30CDC0;
  objc_copyWeak(v15, &from);
  [v5 afterDelay:&v10 processBlock:0.1];
  MEMORY[0x29EDC9740](v5);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
}

double __59__UIKeyboardLayoutCursorAccessibility_setSelectedKeyIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axPostFocusChangeNotification];
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

@end