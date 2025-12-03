@interface UIKeyboardLayoutCursorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilitySetLastFocusChangeNotificationTimer:(id)timer;
- (void)setSelectedKeyIndex:(int64_t)index;
@end

@implementation UIKeyboardLayoutCursorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIKeyboardLayoutCursor";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"handleVisualDirectionalInput:" withFullSignature:{"B", "i", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_keyplaneName" withType:"NSString"];
  [location[0] validateClass:v3 hasInstanceVariable:@"_keyplane" withType:"UIKBTree"];
  [location[0] validateClass:@"UIKBTree" hasInstanceMethod:@"componentName" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilitySetLastFocusChangeNotificationTimer:(id)timer
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, timer);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)setSelectedKeyIndex:(int64_t)index
{
  selfCopy = self;
  v20 = a2;
  indexCopy = index;
  v18.receiver = self;
  v18.super_class = UIKeyboardLayoutCursorAccessibility;
  [(UIKeyboardLayoutCursorAccessibility *)&v18 setSelectedKeyIndex:index];
  _accessibilityLastFocusChangeNotificationTimer = [(UIKeyboardLayoutCursorAccessibility *)selfCopy _accessibilityLastFocusChangeNotificationTimer];
  MEMORY[0x29EDC9740](_accessibilityLastFocusChangeNotificationTimer);
  if (!_accessibilityLastFocusChangeNotificationTimer)
  {
    v7 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v6 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    v8 = v6;
    v17 = [v7 initWithTargetSerialQueue:?];
    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    [v17 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:{1, v4}];
    [(UIKeyboardLayoutCursorAccessibility *)selfCopy _accessibilitySetLastFocusChangeNotificationTimer:v17];
    objc_storeStrong(&v17, 0);
  }

  objc_initWeak(&from, selfCopy);
  _accessibilityLastFocusChangeNotificationTimer2 = [(UIKeyboardLayoutCursorAccessibility *)selfCopy _accessibilityLastFocusChangeNotificationTimer];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = -1073741824;
  v12 = 0;
  v13 = __59__UIKeyboardLayoutCursorAccessibility_setSelectedKeyIndex___block_invoke;
  v14 = &unk_29F30CDC0;
  objc_copyWeak(v15, &from);
  [_accessibilityLastFocusChangeNotificationTimer2 afterDelay:&v10 processBlock:0.1];
  MEMORY[0x29EDC9740](_accessibilityLastFocusChangeNotificationTimer2);
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