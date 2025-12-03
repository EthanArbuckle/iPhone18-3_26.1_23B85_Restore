@interface UIPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityModalizePresentationView;
@end

@implementation UIPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIPresentationControllerAccessibility;
  [(UIPresentationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UIPresentationControllerAccessibility *)selfCopy _accessibilityModalizePresentationView];
}

- (void)_accessibilityModalizePresentationView
{
  v23 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  if ([(UIPresentationControllerAccessibility *)self _accessibilityPresentationControllerModalizes])
  {
    v17 = MEMORY[0x29EDC9748](selfCopy);
    containerView = [v17 containerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x29EDC9740](containerView);
    if (isKindOfClass)
    {
      v15 = 0;
      objc_opt_class();
      containerView2 = [v17 containerView];
      v14 = __UIAccessibilityCastAsSafeCategory();
      MEMORY[0x29EDC9740](containerView2);
      v13 = MEMORY[0x29EDC9748](v14);
      objc_storeStrong(&v14, 0);
      v16 = v13;
      [(UITransitionViewAccessibility *)v13 _axSetPresentationController:v17];
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v12 = AXLogValidations();
      v11 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v3 = v12;
        v4 = v11;
        containerView3 = [v17 containerView];
        v2 = objc_opt_class();
        v5 = NSStringFromClass(v2);
        v10 = MEMORY[0x29EDC9748](v5);
        __os_log_helper_16_2_1_8_66(v21, v10);
        _os_log_error_impl(&dword_29C4D6000, v3, v4, "Unexpected class %{public}@ for presentation controller container view", v21, 0xCu);
        MEMORY[0x29EDC9740](v5);
        MEMORY[0x29EDC9740](containerView3);
        objc_storeStrong(&v10, 0);
      }

      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    location[0] = AXLogAppAccessibility();
    v18 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v22, selfCopy);
      _os_log_impl(&dword_29C4D6000, location[0], v18, "Presentation controller doesn't modalize: %@", v22, 0xCu);
    }

    objc_storeStrong(location, 0);
  }
}

@end