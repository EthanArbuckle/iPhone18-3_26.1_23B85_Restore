@interface BTSFitTestControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)focusHeader;
- (void)focusPlayButton;
- (void)inEarStatusChanged:(id)changed;
- (void)sealValueChanged:(id)changed;
- (void)startFitTest;
- (void)updateFocus;
- (void)viewWillAppear;
@end

@implementation BTSFitTestControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceMethod:@"startFitTest" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceMethod:@"inEarStatusChanged:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceMethod:@"sealValueChanged:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_playButton" withType:"OBTrayButton"];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_testActive" withType:"B"];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_budsInEar" withType:"B"];
  [validationsCopy validateClass:@"OBTrayButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBTemplateLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_leftBudResultLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_rightBudResultLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"_fitTestController" withType:"OBWelcomeController"];
  [validationsCopy validateClass:@"OBWelcomeController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BTSFitTestController" hasInstanceVariable:@"currentDevice" withType:"BluetoothDevice"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v24.receiver = self;
  v24.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v24 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  objc_opt_class();
  v3 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_playButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_leftBudResultLabel"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_rightBudResultLabel"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_fitTestController"];
  v10 = __UIAccessibilityCastAsClass();

  v22 = 0;
  objc_opt_class();
  v11 = [v10 safeValueForKey:@"contentView"];
  v12 = __UIAccessibilityCastAsClass();

  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v20[3] = &unk_29F2C2048;
  objc_copyWeak(&v21, &location);
  [v4 _setAccessibilityTraitsBlock:v20];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v18[3] = &unk_29F2C2070;
  objc_copyWeak(&v19, &location);
  [v4 _setAccessibilityLabelBlock:v18];
  [v12 setIsAccessibilityElement:1];
  [v12 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
  [v12 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A21AEDB8];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_367;
  v15[3] = &unk_29F2C2098;
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  [v12 _setAccessibilityLabelBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

uint64_t __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"_budsInEar"];

  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v1;
}

id __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_playButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 titleLabel];
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v4 titleLabel];
    v9 = [v8 text];
  }

  else
  {
    v8 = accessibilityLocalizedStringForB298(@"fit.test.button.play");
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 safeBoolForKey:@"_testActive"];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = accessibilityLocalizedStringForB298(@"fit.test.button.in.progress");
  }

  v12 = v9;

  v8 = v12;
LABEL_6:

  return v8;
}

id __79__BTSFitTestControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_367(id *a1)
{
  objc_opt_class();
  v2 = [a1[4] safeValueForKey:@"currentDevice"];
  v3 = __UIAccessibilityCastAsClass();

  LODWORD(v2) = [v3 productId];
  if (v2 == 8210)
  {
    v4 = accessibilityLocalizedStringForB298(@"Beats494");
  }

  else
  {
    v5 = accessibilityLocalizedStringForB298(@"left.airpod");
    v6 = accessibilityLocalizedStringForB298(@"right.airpod");
    v7 = [a1[5] accessibilityLabel];
    v9 = [a1[6] accessibilityLabel];
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (void)updateFocus
{
  v3 = [(BTSFitTestControllerAccessibility *)self safeBoolForKey:@"_testActive"];
  if (![(BTSFitTestControllerAccessibility *)self safeBoolForKey:@"_budsInEar"]|| (v3 & 1) != 0)
  {

    [(BTSFitTestControllerAccessibility *)self focusHeader];
  }

  else
  {

    [(BTSFitTestControllerAccessibility *)self focusPlayButton];
  }
}

- (void)focusPlayButton
{
  objc_opt_class();
  v3 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_playButton"];
  v4 = __UIAccessibilityCastAsClass();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v4);
}

- (void)focusHeader
{
  v2 = [(BTSFitTestControllerAccessibility *)self safeValueForKey:@"_fitTestController"];
  v3 = [v2 safeValueForKey:@"headerView"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"headerLabel"];
  v5 = __UIAccessibilityCastAsClass();

  if ([v5 accessibilityElementIsFocused])
  {
    text = [v5 text];
    UIAccessibilitySpeak();
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v5);
  }
}

- (void)viewWillAppear
{
  v3.receiver = self;
  v3.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v3 viewWillAppear];
  [(BTSFitTestControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)startFitTest
{
  v3.receiver = self;
  v3.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v3 startFitTest];
  [(BTSFitTestControllerAccessibility *)self updateFocus];
}

- (void)inEarStatusChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v4 inEarStatusChanged:changed];
  [(BTSFitTestControllerAccessibility *)self updateFocus];
}

- (void)sealValueChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = BTSFitTestControllerAccessibility;
  [(BTSFitTestControllerAccessibility *)&v4 sealValueChanged:changed];
  [(BTSFitTestControllerAccessibility *)self focusHeader];
}

@end