@interface UIInputWindowControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)resetBackdropHeight;
- (void)updateInputAssistantViewForInputViewSet:(id)set;
@end

@implementation UIInputWindowControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"candidateController" withFullSignature:0];
  [location[0] validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"isExtended" withFullSignature:{"B", 0}];
  v4 = @"UIInputWindowController";
  v5 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UIInputViewSet" hasInstanceMethod:@"inputView" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"updateInputAssistantViewForInputViewSet:" withFullSignature:{v5, v3, 0}];
  objc_storeStrong(v7, v6);
}

- (void)resetBackdropHeight
{
  selfCopy = self;
  v8 = a2;
  v6 = 0;
  v4 = 0;
  v2 = 0;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
    v6 = 1;
    v5 = [mEMORY[0x29EDC7B08] safeValueForKey:@"candidateController"];
    v4 = 1;
    v2 = [v5 safeBoolForKey:@"isExtended"];
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
  }

  if ((v2 & 1) == 0)
  {
    v3.receiver = selfCopy;
    v3.super_class = UIInputWindowControllerAccessibility;
    [(UIInputWindowControllerAccessibility *)&v3 resetBackdropHeight];
  }
}

- (void)updateInputAssistantViewForInputViewSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, set);
  v6.receiver = selfCopy;
  v6.super_class = UIInputWindowControllerAccessibility;
  [(UIInputWindowControllerAccessibility *)&v6 updateInputAssistantViewForInputViewSet:location[0]];
  v5 = [location[0] safeValueForKey:@"inputView"];
  NSClassFromString(&cfstr_Uiremotekeyboa_2.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    argument = [v5 _accessibilityDescendantOfType:objc_opt_class()];
    if (argument)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    }

    else
    {
      v3 = [v5 _accessibilityDescendantOfType:objc_opt_class()];
      if (v3)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
      }

      objc_storeStrong(&v3, 0);
    }

    objc_storeStrong(&argument, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end