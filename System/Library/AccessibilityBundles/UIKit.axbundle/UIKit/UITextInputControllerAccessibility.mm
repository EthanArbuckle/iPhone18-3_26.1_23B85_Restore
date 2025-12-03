@interface UITextInputControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axTextInputResponderAccessibilityParentElementForDelegate:(uint64_t)delegate;
- (void)_accessibilityUpdateSelectionNotification:(id)notification;
- (void)_sendDelegateChangeNotificationsForText:(BOOL)text selection:(BOOL)selection;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)paste:(id)paste;
- (void)selectAll:(id)all;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
@end

@implementation UITextInputControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v6 = "B";
  v4 = @"UITextInputController";
  v3 = "v";
  [location[0] validateClass:"B" hasInstanceMethod:"B" withFullSignature:0];
  v5 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"copy:" withFullSignature:{v3, "@", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"cut:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"paste:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"selectAll:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"toggleBoldface:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"toggleUnderline:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"toggleItalics:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"delegate" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_firstTextView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_textInputTraits" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UITextInputTraits" hasInstanceVariable:@"secureTextEntry" withType:v6];
  objc_storeStrong(v8, v7);
}

- (void)_sendDelegateChangeNotificationsForText:(BOOL)text selection:(BOOL)selection
{
  selfCopy = self;
  v12 = a2;
  textCopy = text;
  selectionCopy = selection;
  v9.receiver = self;
  v9.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v9 _sendDelegateChangeNotificationsForText:text selection:selection];
  v7 = 0;
  isFirstResponder = 0;
  if (selectionCopy)
  {
    v8 = [(UITextInputControllerAccessibility *)selfCopy safeUIViewForKey:@"_firstTextView"];
    v7 = 1;
    isFirstResponder = [v8 isFirstResponder];
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (isFirstResponder)
  {
    v6 = textCopy;
    v5 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_storeStrong(&v5, 0);
  }
}

double __88__UITextInputControllerAccessibility__sendDelegateChangeNotificationsForText_selection___block_invoke(uint64_t a1)
{
  v6 = 0;
  LOBYTE(v5) = 1;
  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = [*(a1 + 32) safeValueForKey:@"_textInputTraits"];
    v6 = 1;
    v5 = [v7 safeBoolForKey:@"secureTextEntry"] ^ 1;
  }

  if (v6)
  {
    *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  }

  if (v5)
  {
    v2 = *(a1 + 32);
    v3 = [v2 safeValueForKey:@"delegate"];
    [v2 _accessibilityUpdateSelectionNotification:?];
    *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  }

  return result;
}

- (id)_axTextInputResponderAccessibilityParentElementForDelegate:(uint64_t)delegate
{
  delegateCopy = delegate;
  location = 0;
  objc_storeStrong(&location, a2);
  if (delegateCopy)
  {
    _accessibilityWindow = [location _accessibilityWindow];
    MEMORY[0x29EDC9740](_accessibilityWindow);
    if (_accessibilityWindow)
    {
      v9 = MEMORY[0x29EDC9748](location);
      while (v9 && ([v9 isAccessibilityElement] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _accessibilityResponderElement = [v9 _accessibilityResponderElement];
          v3 = v9;
          v9 = _accessibilityResponderElement;
          MEMORY[0x29EDC9740](v3);
          break;
        }

        accessibilityContainer = [v9 accessibilityContainer];
        v5 = v9;
        v9 = accessibilityContainer;
        MEMORY[0x29EDC9740](v5);
      }

      v13 = MEMORY[0x29EDC9748](v9);
      v10 = 1;
      objc_storeStrong(&v9, 0);
    }

    else
    {
      v13 = 0;
      v10 = 1;
    }
  }

  else
  {
    v13 = 0;
    v10 = 1;
  }

  objc_storeStrong(&location, 0);
  v6 = v13;

  return v6;
}

- (void)_accessibilityUpdateSelectionNotification:(id)notification
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  argument = 0;
  v9 = [location[0] _accessibilityFindAncestor:&__block_literal_global_49 startWithSelf:1];
  if ([v9 _accessibilityTextViewIgnoresValueChanges])
  {
    oslog = AXLogCommon();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v15, v9);
      _os_log_impl(&dword_29C4D6000, oslog, type, "Ignoring ax value notifications for %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 accessibilityValueChangesAreReplacements])
    {
      v13 = *MEMORY[0x29EDBDB90];
      v14 = MEMORY[0x29EDB8EB0];
      v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v4 = argument;
      argument = v3;
      MEMORY[0x29EDC9740](v4);
    }

    v5 = [(UITextInputControllerAccessibility *)selfCopy _axTextInputResponderAccessibilityParentElementForDelegate:?];
    if (v5)
    {
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], argument);
    }

    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(location, 0);
}

uint64_t __80__UITextInputControllerAccessibility__accessibilityUpdateSelectionNotification___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (void)copy:(id)copy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, copy);
  v3.receiver = selfCopy;
  v3.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v3 copy:location[0]];
  [(UITextInputControllerAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
  objc_storeStrong(location, 0);
}

- (void)cut:(id)cut
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cut);
  [(UITextInputControllerAccessibility *)selfCopy _accessibilityIgnoreNextPostPasteboardTextOperation:*MEMORY[0x29EDBDC18]];
  v3.receiver = selfCopy;
  v3.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v3 cut:location[0]];
  [(UITextInputControllerAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC20]];
  objc_storeStrong(location, 0);
}

- (void)paste:(id)paste
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paste);
  v5 = [(UITextInputControllerAccessibility *)selfCopy safeValueForKey:@"delegate"];
  v4 = [(UITextInputControllerAccessibility *)selfCopy _axTextInputResponderAccessibilityParentElementForDelegate:v5];
  [(UITextInputControllerAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC50] associatedObject:v4];
  v3.receiver = selfCopy;
  v3.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v3 paste:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)selectAll:(id)all
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, all);
  v5.receiver = selfCopy;
  v5.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v5 selectAll:location[0]];
  notification = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(*MEMORY[0x29EDBDC78]);
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (void)toggleBoldface:(id)boldface
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, boldface);
  v21.receiver = selfCopy;
  v21.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v21 toggleBoldface:location[0]];
  v19 = 0;
  objc_opt_class();
  v8 = [(UITextInputControllerAccessibility *)selfCopy safeValueForKey:@"typingAttributes"];
  v18 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20 = v17;
  v16 = [v17 objectForKey:*MEMORY[0x29EDC7638]];
  if (!v16)
  {
    v7 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC76B0] systemFontSize];
    v16 = [v7 systemFontOfSize:?];
    MEMORY[0x29EDC9740](0);
  }

  fontDescriptor = [v16 fontDescriptor];
  v6 = ([fontDescriptor symbolicTraits] & 2) != 0;
  MEMORY[0x29EDC9740](fontDescriptor);
  v15 = v6;
  v12 = 0;
  v10 = 0;
  if (v6)
  {
    v13 = accessibilityLocalizedString(@"toggle.on");
    v12 = 1;
    v3 = MEMORY[0x29EDC9748](v13);
  }

  else
  {
    v11 = accessibilityLocalizedString(@"toggle.off");
    v10 = 1;
    v3 = MEMORY[0x29EDC9748](v11);
  }

  v14 = v3;
  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  v4 = accessibilityLocalizedString(*MEMORY[0x29EDBDC10]);
  argument = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v4);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)toggleUnderline:(id)underline
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, underline);
  v18.receiver = selfCopy;
  v18.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v18 toggleUnderline:location[0]];
  v16 = 0;
  objc_opt_class();
  v5 = [(UITextInputControllerAccessibility *)selfCopy safeValueForKey:@"typingAttributes"];
  v15 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  v13 = [v14 objectForKey:*MEMORY[0x29EDC7670]];
  v12 = [v13 intValue] != 0;
  v9 = 0;
  v7 = 0;
  if (v12)
  {
    v10 = accessibilityLocalizedString(@"toggle.on");
    v9 = 1;
    v3 = MEMORY[0x29EDC9748](v10);
  }

  else
  {
    v8 = accessibilityLocalizedString(@"toggle.off");
    v7 = 1;
    v3 = MEMORY[0x29EDC9748](v8);
  }

  v11 = v3;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  v4 = accessibilityLocalizedString(*MEMORY[0x29EDBDCA0]);
  argument = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v4);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)toggleItalics:(id)italics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, italics);
  v21.receiver = selfCopy;
  v21.super_class = UITextInputControllerAccessibility;
  [(UITextInputControllerAccessibility *)&v21 toggleItalics:location[0]];
  v19 = 0;
  objc_opt_class();
  v8 = [(UITextInputControllerAccessibility *)selfCopy safeValueForKey:@"typingAttributes"];
  v18 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20 = v17;
  v16 = [v17 objectForKey:*MEMORY[0x29EDC7638]];
  if (!v16)
  {
    v7 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC76B0] systemFontSize];
    v16 = [v7 systemFontOfSize:?];
    MEMORY[0x29EDC9740](0);
  }

  fontDescriptor = [v16 fontDescriptor];
  v6 = ([fontDescriptor symbolicTraits] & 1) != 0;
  MEMORY[0x29EDC9740](fontDescriptor);
  v15 = v6;
  v12 = 0;
  v10 = 0;
  if (v6)
  {
    v13 = accessibilityLocalizedString(@"toggle.on");
    v12 = 1;
    v3 = MEMORY[0x29EDC9748](v13);
  }

  else
  {
    v11 = accessibilityLocalizedString(@"toggle.off");
    v10 = 1;
    v3 = MEMORY[0x29EDC9748](v11);
  }

  v14 = v3;
  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  v4 = accessibilityLocalizedString(*MEMORY[0x29EDBDC48]);
  argument = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v4);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end