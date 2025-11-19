@interface SBSystemActionCoachingControllerAccessibility
- (void)systemActionCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4;
@end

@implementation SBSystemActionCoachingControllerAccessibility

- (void)systemActionCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4
{
  v17[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SBSystemActionCoachingControllerAccessibility;
  [(SBSystemActionCoachingControllerAccessibility *)&v15 systemActionCoachingHUDViewController:v6 didBeginTransitionToState:a4];
  objc_opt_class();
  v7 = [v6 safeValueForKey:@"_coachingLabel"];
  v8 = __UIAccessibilityCastAsClass();

  if ((a4 - 1) <= 1 && v8)
  {
    v9 = [v8 text];
    if ([v9 length])
    {
      v10 = accessibilityLocalizedString(@"word.separator");
      v11 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:v10];

      v12 = objc_alloc(MEMORY[0x29EDB9F30]);
      v16 = *MEMORY[0x29EDBD860];
      v17[0] = *MEMORY[0x29EDC7F00];
      v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v12 initWithString:v11 attributes:v13];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v14);
      v9 = v11;
    }
  }
}

@end