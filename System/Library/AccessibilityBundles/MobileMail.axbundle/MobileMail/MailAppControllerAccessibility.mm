@interface MailAppControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFirstElementForFocus;
- (id)_accessibilityFirstElementForReadFromTop;
- (id)_accessibilitySplitViewControllerScannerGroupElements;
- (id)_axAccessibilityGroupForKey:(id)a3 fromSplitController:(id)a4;
- (id)_axVisibleViewController;
@end

@implementation MailAppControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailAppController" hasInstanceMethod:@"masterNavigationController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailNavigationController" isKindOfClass:@"UINavigationController"];
  [v3 validateClass:@"UINavigationController" hasInstanceMethod:@"visibleViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewController"];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"conversationViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailAppController" hasInstanceMethod:@"mostRecentMainScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailSplitViewController" hasInstanceMethod:@"mailboxPickerNavController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailSplitViewController" hasInstanceMethod:@"messageListNavController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailSplitViewController" hasInstanceMethod:@"messageDetailNavController" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySplitViewControllerScannerGroupElements
{
  objc_opt_class();
  v3 = [(MailAppControllerAccessibility *)self safeValueForKey:@"mostRecentMainScene"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"splitViewController"];
  v6 = __UIAccessibilityCastAsClass();

  if (!AXDeviceIsPad() || [v6 displayMode] == 1 || objc_msgSend(v6, "displayMode") == 3 || !objc_msgSend(v6, "displayMode"))
  {
    v11 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    if ([v6 displayMode] == 4 || objc_msgSend(v6, "displayMode") == 5 || objc_msgSend(v6, "displayMode") == 6)
    {
      v8 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"mailboxPickerNavController" fromSplitController:v6];
      [v7 axSafelyAddObject:v8];
    }

    v9 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"messageListNavController" fromSplitController:v6];
    [v7 axSafelyAddObject:v9];

    if ([v6 displayMode] == 4 || objc_msgSend(v6, "displayMode") == 2)
    {
      v10 = [(MailAppControllerAccessibility *)self _axAccessibilityGroupForKey:@"messageDetailNavController" fromSplitController:v6];
      [v7 axSafelyAddObject:v10];
    }

    if ([v7 count])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_axAccessibilityGroupForKey:(id)a3 fromSplitController:(id)a4
{
  v15[4] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v6 safeValueForKey:v5];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 safeUIViewForKey:@"view"];
  v10 = objc_opt_new();
  [v9 _accessibilityProcessScannerGroupElementPieces:v10];
  if ([v10 count])
  {
    v14[0] = @"GroupElements";
    v14[1] = @"GroupTraits";
    v15[0] = v10;
    v15[1] = &unk_2A221BD30;
    v14[2] = @"GroupScanBehaviorTraits";
    v14[3] = @"GroupIdentifier";
    v15[2] = &unk_2A221BD48;
    v15[3] = v5;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_axVisibleViewController
{
  objc_opt_class();
  v3 = [(MailAppControllerAccessibility *)self safeValueForKey:@"masterNavigationController"];
  v4 = __UIAccessibilityCastAsClass();

  if (AXDeviceIsPad() && ([v4 visibleViewController], v5 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Messagelistvie_0.isa), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [v4 visibleViewController];
    v8 = [v7 safeValueForKey:@"conversationViewController"];
  }

  else
  {
    v7 = [v4 navigationController];
    v8 = [v7 visibleViewController];
  }

  v9 = v8;

  return v9;
}

- (id)_accessibilityFirstElementForReadFromTop
{
  v3 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v4 = [(MailAppControllerAccessibility *)self _accessibilityFirstElementForFocusWithOptions:v3];

  return v4;
}

- (id)_accessibilityFirstElementForFocus
{
  v3 = [(MailAppControllerAccessibility *)self _axVisibleViewController];
  NSClassFromString(&cfstr_Conversationvi_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v11 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 view];
  v6 = [v5 _accessibilityViewIsVisibleIgnoringAXOverrides:0 stoppingBeforeContainer:0];

  if (v6)
  {
    v7 = [v3 _accessibilityFirstElementForFocus];
  }

  else
  {
LABEL_4:
    v10.receiver = self;
    v10.super_class = MailAppControllerAccessibility;
    v7 = [(MailAppControllerAccessibility *)&v10 _accessibilityFirstElementForFocus];
  }

  v8 = v7;

  return v8;
}

@end