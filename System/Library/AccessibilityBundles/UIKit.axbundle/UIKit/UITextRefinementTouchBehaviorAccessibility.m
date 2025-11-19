@interface UITextRefinementTouchBehaviorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9;
@end

@implementation UITextRefinementTouchBehaviorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UITextRefinementTouchBehavior";
  [location[0] validateClass:"@" hasInstanceMethod:"q" withFullSignature:{"@?", "@?", "@?", "q", "^B", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_activeSelectionMode" withType:"NSInteger"];
  objc_storeStrong(v5, v4);
}

- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v17 = 0;
  objc_storeStrong(&v17, a7);
  v16 = a8;
  v15 = a9;
  v14.receiver = v22;
  v14.super_class = UITextRefinementTouchBehaviorAccessibility;
  [(UITextRefinementTouchBehaviorAccessibility *)&v14 textLoupeInteraction:location[0] gestureChangedWithState:v20 location:v19 translation:v18 velocity:v17 modifierFlags:a8 shouldCancel:a9];
  switch(v20)
  {
    case 1:
      UIAccessibilityPostNotification(0x43Au, 0);
      break;
    case 2:
      if (![(UITextRefinementTouchBehaviorAccessibility *)v22 safeIntegerForKey:@"_activeSelectionMode"]&& !(++textLoupeInteraction_gestureChangedWithState_location_translation_velocity_modifierFlags_shouldCancel__count % 3))
      {
        UIAccessibilityPostNotification(0x439u, 0);
        textLoupeInteraction_gestureChangedWithState_location_translation_velocity_modifierFlags_shouldCancel__count = 0;
      }

      break;
    case 3:
    case 4:
      UIAccessibilityPostNotification(0x43Bu, 0);
      break;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end