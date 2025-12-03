@interface UITextRefinementTouchBehaviorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
@end

@implementation UITextRefinementTouchBehaviorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITextRefinementTouchBehavior";
  [location[0] validateClass:"@" hasInstanceMethod:"q" withFullSignature:{"@?", "@?", "@?", "q", "^B", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_activeSelectionMode" withType:"NSInteger"];
  objc_storeStrong(v5, v4);
}

- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  stateCopy = state;
  v19 = 0;
  objc_storeStrong(&v19, location);
  v18 = 0;
  objc_storeStrong(&v18, translation);
  v17 = 0;
  objc_storeStrong(&v17, velocity);
  flagsCopy = flags;
  cancelCopy = cancel;
  v14.receiver = selfCopy;
  v14.super_class = UITextRefinementTouchBehaviorAccessibility;
  [(UITextRefinementTouchBehaviorAccessibility *)&v14 textLoupeInteraction:location[0] gestureChangedWithState:stateCopy location:v19 translation:v18 velocity:v17 modifierFlags:flags shouldCancel:cancel];
  switch(stateCopy)
  {
    case 1:
      UIAccessibilityPostNotification(0x43Au, 0);
      break;
    case 2:
      if (![(UITextRefinementTouchBehaviorAccessibility *)selfCopy safeIntegerForKey:@"_activeSelectionMode"]&& !(++textLoupeInteraction_gestureChangedWithState_location_translation_velocity_modifierFlags_shouldCancel__count % 3))
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