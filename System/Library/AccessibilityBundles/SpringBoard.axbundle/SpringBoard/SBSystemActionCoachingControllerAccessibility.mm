@interface SBSystemActionCoachingControllerAccessibility
- (void)systemActionCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state;
@end

@implementation SBSystemActionCoachingControllerAccessibility

- (void)systemActionCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state
{
  v17[1] = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = SBSystemActionCoachingControllerAccessibility;
  [(SBSystemActionCoachingControllerAccessibility *)&v15 systemActionCoachingHUDViewController:controllerCopy didBeginTransitionToState:state];
  objc_opt_class();
  v7 = [controllerCopy safeValueForKey:@"_coachingLabel"];
  v8 = __UIAccessibilityCastAsClass();

  if ((state - 1) <= 1 && v8)
  {
    text = [v8 text];
    if ([text length])
    {
      v10 = accessibilityLocalizedString(@"word.separator");
      v11 = [text stringByReplacingOccurrencesOfString:@"\n" withString:v10];

      v12 = objc_alloc(MEMORY[0x29EDB9F30]);
      v16 = *MEMORY[0x29EDBD860];
      v17[0] = *MEMORY[0x29EDC7F00];
      v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v12 initWithString:v11 attributes:v13];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v14);
      text = v11;
    }
  }
}

@end