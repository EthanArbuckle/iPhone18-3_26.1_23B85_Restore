@interface UIKeyboardImplAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_shouldMinimizeForHardwareKeyboard;
- (BOOL)automaticMinimizationEnabled;
- (UIKeyboardImplAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_accessibilityAnnounceHardwareKeyboardVisibilityChange:(BOOL)a3;
- (void)_axShowKeyboardIfHidden;
- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)a3;
- (void)dismissKeyboard;
- (void)hideKeyboard;
- (void)presentContinuousPathIntroductionView;
- (void)showKeyboardIfNeeded;
- (void)updateAutocorrectPrompt:(id)a3;
- (void)updateTextCandidateView;
@end

@implementation UIKeyboardImplAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v13 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  v10 = @"UIKeyboardImpl";
  v6 = @"initWithFrame:";
  v9 = "@";
  [location[0] validateClass:"{CGRect={CGPoint=dd}{CGSize=dd}}" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v10 hasInstanceVariable:@"m_geometryDelegate" withType:"<UIKeyboardImplGeometryDelegate>"];
  v3 = @"UIKeyboardImplGeometryDelegate";
  [location[0] validateProtocol:? hasRequiredInstanceMethod:?];
  [location[0] validateProtocol:v3 hasRequiredInstanceMethod:@"isMinimized"];
  v5 = @"UIView";
  [location[0] validateClass:v10 isKindOfClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:v6 withFullSignature:{v9, v4, 0}];
  v7 = "B";
  [location[0] validateClass:v10 hasInstanceMethod:@"automaticMinimizationEnabled" withFullSignature:0];
  [location[0] validateClass:v10 hasInstanceMethod:@"showsCandidateBar" withFullSignature:{v7, 0}];
  v11 = "v";
  [location[0] validateClass:v10 hasInstanceMethod:@"showKeyboard" withFullSignature:0];
  [location[0] validateClass:v10 hasInstanceMethod:@"showKeyboardIfNeeded" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"hideKeyboard" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_showKeyboardIgnoringPolicyDelegate:" withFullSignature:{v11, v7, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"candidateController" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_shouldMinimizeForHardwareKeyboard" withFullSignature:{v7, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"presentContinuousPathIntroductionView" withFullSignature:{v11, 0}];
  [location[0] validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"activeViews" withFullSignature:{v9, 0}];
  v8 = @"UIKeyboardInputModeController";
  [location[0] validateClass:0 hasClassMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"suggestedInputModesForPreferredLanguages" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UIKeyboardInputMode" hasInstanceMethod:@"identifier" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasClassMethod:@"sharedInstance" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"setInputModeFromPreferences" withFullSignature:{v11, 0}];
  objc_storeStrong(v13, v12);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v27 = a3;
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if ((-[UIKeyboardImplAccessibility safeBoolForKey:](v26, "safeBoolForKey:", @"showsCandidateBar") & 1) == 0 || ((v23 = 0, objc_opt_class(), v11 = -[UIKeyboardImplAccessibility safeValueForKey:](v26, "safeValueForKey:", @"candidateController"), v10 = [v11 safeValueForKey:@"activeViews"], v22 = __UIAccessibilityCastAsClass(), MEMORY[0x29EDC9740](v10), MEMORY[0x29EDC9740](v11), v21 = MEMORY[0x29EDC9748](v22), objc_storeStrong(&v22, 0), v24 = v21, v19 = 0, objc_opt_class(), v9 = objc_msgSend(v24, "firstObject"), v18 = __UIAccessibilityCastAsClass(), MEMORY[0x29EDC9740](v9), v17 = MEMORY[0x29EDC9748](v18), objc_storeStrong(&v18, 0), v20 = v17, -[UIKeyboardImplAccessibility convertPoint:toView:](v26, "convertPoint:toView:", v17, v27.x, v27.y), v14 = v4, v15 = v5, v16 = objc_msgSend(v17, "_accessibilityHitTest:withEvent:", location[0], v4, v5), (objc_msgSend(v16, "isAccessibilityElement") & 1) == 0) ? (v13 = 0) : (v28 = MEMORY[0x29EDC9748](v16), v13 = 1), obj = 0, objc_storeStrong(&v16, 0), objc_storeStrong(&v20, 0), objc_storeStrong(&v24, 0), !v13))
  {
    v12.receiver = v26;
    v12.super_class = UIKeyboardImplAccessibility;
    v28 = [(UIKeyboardImplAccessibility *)&v12 _accessibilityHitTest:location[0] withEvent:v27.x, v27.y, obj];
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v28;

  return v6;
}

- (UIKeyboardImplAccessibility)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = UIKeyboardImplAccessibility;
  v7 = [(UIKeyboardImplAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v7, v7);
  [(UIKeyboardImplAccessibility *)v7 _accessibilityLoadAccessibilityInformation];
  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (BOOL)automaticMinimizationEnabled
{
  v5 = self;
  v4 = a2;
  if (_AXSAssistiveTouchScannerEnabled() || _AXSAccessibilityKeyboardContinuousPathEnabled())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UIKeyboardImplAccessibility;
  return [(UIKeyboardImplAccessibility *)&v3 automaticMinimizationEnabled];
}

- (void)updateAutocorrectPrompt:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIKeyboardImplAccessibility;
  [(UIKeyboardImplAccessibility *)&v6 updateAutocorrectPrompt:location[0]];
  v4 = [location[0] candidate];
  v3 = [location[0] input];
  v5 = [v4 isEqualToString:?];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  if ((v5 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v4 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"AXShowOnscreenKeyboardWithBraille"];
  LOBYTE(v5) = 0;
  if (v4)
  {
    v5 = [*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"AXShowOnscreenKeyboardWithBraille"] ^ 1;
  }

  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if ((v5 & 1) == 0)
  {
    v8 = [(UIKeyboardImplAccessibility *)v11 safeValueForKey:@"m_geometryDelegate", v3];
    v7 = [v8 safeBoolForKey:@"isMinimized"];
    v6.receiver = v11;
    v6.super_class = UIKeyboardImplAccessibility;
    [(UIKeyboardImplAccessibility *)&v6 _showKeyboardIgnoringPolicyDelegate:v9];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    [(UIKeyboardImplAccessibility *)v11 _accessibilityAnnounceHardwareKeyboardVisibilityChange:v7 & 1];
    objc_storeStrong(&v8, 0);
  }
}

- (void)hideKeyboard
{
  v8 = self;
  v7[1] = a2;
  v3 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"AXShowOnscreenKeyboardWithBraille"];
  v4 = 0;
  if (v3)
  {
    v4 = [*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"AXShowOnscreenKeyboardWithBraille"];
  }

  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if ((v4 & 1) == 0)
  {
    v7[0] = [(UIKeyboardImplAccessibility *)v8 safeValueForKey:@"m_geometryDelegate", v2];
    v6 = [v7[0] safeBoolForKey:@"isMinimized"];
    v5.receiver = v8;
    v5.super_class = UIKeyboardImplAccessibility;
    [(UIKeyboardImplAccessibility *)&v5 hideKeyboard];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    [(UIKeyboardImplAccessibility *)v8 _accessibilityAnnounceHardwareKeyboardVisibilityChange:v6 & 1];
    objc_storeStrong(v7, 0);
  }
}

- (void)dismissKeyboard
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(UIKeyboardImplAccessibility *)self safeValueForKey:@"m_geometryDelegate"];
  v3 = [v4[0] safeBoolForKey:@"isMinimized"];
  v2.receiver = v5;
  v2.super_class = UIKeyboardImplAccessibility;
  [(UIKeyboardImplAccessibility *)&v2 dismissKeyboard];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(UIKeyboardImplAccessibility *)v5 _accessibilityAnnounceHardwareKeyboardVisibilityChange:v3 & 1];
  objc_storeStrong(v4, 0);
}

- (void)_accessibilityAnnounceHardwareKeyboardVisibilityChange:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  location = [(UIKeyboardImplAccessibility *)self safeValueForKey:@"m_geometryDelegate"];
  if ([location safeBoolForKey:@"isActive"])
  {
    v7 = [location safeBoolForKey:@"isMinimized"];
    if ((v7 & 1) == 0 || v9)
    {
      if ((v7 & 1) == 0 && v9)
      {
        v3 = *MEMORY[0x29EDC7EA8];
        v4 = accessibilityUIKitLocalizedString();
        UIAccessibilityPostNotification(v3, v4);
        MEMORY[0x29EDC9740](v4);
      }
    }

    else
    {
      notification = *MEMORY[0x29EDC7EA8];
      v6 = accessibilityUIKitLocalizedString();
      UIAccessibilityPostNotification(notification, v6);
      MEMORY[0x29EDC9740](v6);
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)updateTextCandidateView
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardImplAccessibility;
  [(UIKeyboardImplAccessibility *)&v2 updateTextCandidateView];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
}

- (void)showKeyboardIfNeeded
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardImplAccessibility;
  [(UIKeyboardImplAccessibility *)&v2 showKeyboardIfNeeded];
  if ([(UIKeyboardImplAccessibility *)v4 _axShouldShowKeyboard])
  {
    [(UIKeyboardImplAccessibility *)v4 _axShowKeyboardIfHidden];
  }
}

- (void)_axShowKeyboardIfHidden
{
  v4 = a1;
  if (a1)
  {
    v1 = [v4 safeValueForKey:@"m_geometryDelegate"];
    v2 = [v1 safeBoolForKey:@"isMinimized"];
    MEMORY[0x29EDC9740](v1);
    if (v2)
    {
      v3 = MEMORY[0x29EDC9748](v4);
      AXPerformSafeBlock();
      objc_storeStrong(&v3, 0);
    }
  }
}

- (void)presentContinuousPathIntroductionView
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardImplAccessibility;
  [(UIKeyboardImplAccessibility *)&v2 presentContinuousPathIntroductionView];
}

- (BOOL)_shouldMinimizeForHardwareKeyboard
{
  v5 = self;
  v4 = a2;
  if ([(UIKeyboardImplAccessibility *)self _axShouldShowKeyboard])
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UIKeyboardImplAccessibility;
  return [(UIKeyboardImplAccessibility *)&v3 _shouldMinimizeForHardwareKeyboard];
}

@end