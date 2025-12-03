@interface WKContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityBeginUndoableTextInsertion;
- (BOOL)_accessibilityEndUndoableTextInsertion;
- (BOOL)accessibilityParentDiscardsChildrenContainerGroupingBehavior;
- (BOOL)canBecomeFocused;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityResponderElement;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityElements;
- (int)_accessibilityRemotePid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterUIProcessTokens;
- (void)_axCleanupAfterTermination;
- (void)_axClearRemoteElements;
- (void)_didRelaunchProcess;
- (void)_hideKeyboard;
- (void)_processDidExit;
- (void)_registerForNotificationsIfNecessary;
- (void)_setAccessibilityWebProcessToken:(id)token;
- (void)_zoomToRevealFocusedElement;
- (void)accessibilityRelayNotification:(id)notification notificationData:(id)data;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)decreaseSizeForWebView:(id)view;
- (void)handleKeyEntry:(id)entry withCompletionHandler:(id)handler;
- (void)handleKeyWebEvent:(id)event withCompletionHandler:(id)handler;
- (void)increaseSizeForWebView:(id)view;
- (void)paste:(id)paste;
- (void)selectAll:(id)all;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
@end

@implementation WKContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WebEvent" hasInstanceVariable:@"_characters" withType:"NSString"];
  [validationsCopy validateClass:@"WebEvent" hasInstanceVariable:@"_charactersIgnoringModifiers" withType:"NSString"];
  [validationsCopy validateClass:@"WebEvent" hasInstanceVariable:@"_modifierFlags" withType:"I"];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"webView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_setAccessibilityWebProcessToken:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_accessibilityRegisterUIProcessTokens" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_processDidExit" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_didRelaunchProcess" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_selectionChanged" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_updateChangedSelection" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_requiresKeyboardWhenFirstResponder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_zoomToRevealFocusedElement" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_hideKeyboard" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"shareForWebView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"handleKeyWebEvent:withCompletionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"copy:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"paste:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"selectAll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"toggleBoldface:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"toggleItalics:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"increaseSizeForWebView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"decreaseSizeForWebView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"toggleUnderline:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIResponder" hasInstanceMethod:@"_handleKeyUIEvent:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"undoManagerForWebView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"WKContentView" isKindOfClass:@"UIResponder"];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_systemDefaultFocusGroupIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKWebView"];
  [validationsCopy validateClass:@"WKWebView" hasInstanceMethod:@"URL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"handleKeyEntry:withCompletionHandler:" withFullSignature:{"v", "@", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WKContentViewAccessibility *)self _registerForNotificationsIfNecessary];
  [(WKContentViewAccessibility *)self _signalAccessibilityPageLoadCompleteForCatalyst];
  [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"postedWebPageLoadedNotification"];
}

- (void)_registerForNotificationsIfNecessary
{
  if (([(WKContentViewAccessibility *)self _accessibilityBoolValueForKey:@"registerdForPBNotifications"]& 1) == 0)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__pasteboardChanged_ name:*MEMORY[0x29EDC8200] object:0];

    [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"registerdForPBNotifications"];
  }
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  if ([(WKContentViewAccessibility *)self pointInside:event withEvent:test.x, test.y])
  {
    accessibilityElements = [(WKContentViewAccessibility *)self accessibilityElements];
    firstObject = [accessibilityElements firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_axClearRemoteElements
{
  [(WKContentViewAccessibility *)self _accessibilityRemoveValueForKey:@"RemoteElements"];
  [MEMORY[0x29EDC7360] postNotification:1001 withData:*MEMORY[0x29EDBDAE8]];

  [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"postedWebPageLoadedNotification"];
}

- (void)_accessibilityRegisterUIProcessTokens
{
  [(WKContentViewAccessibility *)self _axClearRemoteElements];
  v3.receiver = self;
  v3.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v3 _accessibilityRegisterUIProcessTokens];
}

- (void)_axCleanupAfterTermination
{
  v3 = AXLogAppAccessibility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_29C7A6000, v3, OS_LOG_TYPE_INFO, "Process relaunched, clearing elements", v4, 2u);
  }

  objc_setAssociatedObject(self, [@"ax-pid" hash], 0, 0);
  objc_setAssociatedObject(self, [@"ax-uuid" hash], 0, 0);
  [(WKContentViewAccessibility *)self _axClearRemoteElements];
}

- (void)_didRelaunchProcess
{
  v3.receiver = self;
  v3.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v3 _didRelaunchProcess];
  [(WKContentViewAccessibility *)self _axCleanupAfterTermination];
}

- (void)_processDidExit
{
  v3.receiver = self;
  v3.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v3 _processDidExit];
  [(WKContentViewAccessibility *)self _axCleanupAfterTermination];
}

- (void)_setAccessibilityWebProcessToken:(id)token
{
  v5.receiver = self;
  v5.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v5 _setAccessibilityWebProcessToken:token];
  v4 = [(WKContentViewAccessibility *)self _accessibilityBoolValueForKey:@"postedWebPageLoadedNotification"];
  [(WKContentViewAccessibility *)self _axClearRemoteElements];
  if ((v4 & 1) == 0)
  {
    [(WKContentViewAccessibility *)self _signalAccessibilityPageLoadCompleteForCatalyst];
    [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"postedWebPageLoadedNotification"];
  }
}

- (BOOL)accessibilityParentDiscardsChildrenContainerGroupingBehavior
{
  v2 = [(WKContentViewAccessibility *)self safeValueForKey:@"webView"];
  storedAccessibilityContainerType = [v2 storedAccessibilityContainerType];
  if (storedAccessibilityContainerType)
  {
    storedAccessibilityContainerType2 = [v2 storedAccessibilityContainerType];
    v5 = [storedAccessibilityContainerType2 integerValue] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleKeyWebEvent:(id)event withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __70__WKContentViewAccessibility_handleKeyWebEvent_withCompletionHandler___block_invoke;
  v9[3] = &unk_29F320E98;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = WKContentViewAccessibility;
  v7 = handlerCopy;
  [(WKContentViewAccessibility *)&v8 handleKeyWebEvent:event withCompletionHandler:v9];
}

uint64_t __70__WKContentViewAccessibility_handleKeyWebEvent_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v20 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  if (a3 && _AXSAutomationEnabled())
  {
    v7 = [v20 safeValueForKey:@"_characters"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_2A23B72B0;
    }

    v10 = v9;

    v11 = [v20 safeValueForKey:@"_charactersIgnoringModifiers"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_2A23B72B0;
    }

    v14 = v13;

    v15 = [v20 safeValueForKey:@"_modifierFlags"];
    v16 = v15;
    v17 = &unk_2A23B83B0;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    AXUIAutomationHandleKeyComplete();
  }

  return MEMORY[0x2A1C71028]();
}

- (void)handleKeyEntry:(id)entry withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __67__WKContentViewAccessibility_handleKeyEntry_withCompletionHandler___block_invoke;
  v9[3] = &unk_29F320EC0;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = WKContentViewAccessibility;
  v7 = handlerCopy;
  [(WKContentViewAccessibility *)&v8 handleKeyEntry:entry withCompletionHandler:v9];
}

uint64_t __67__WKContentViewAccessibility_handleKeyEntry_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  if (a3 && _AXSAutomationEnabled())
  {
    v7 = [v12 key];
    v8 = [v7 characters];
    v9 = [v7 charactersIgnoringModifiers];
    v10 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v7, "modifierFlags")}];
    AXUIAutomationHandleKeyComplete();
  }

  return MEMORY[0x2A1C71028]();
}

uint64_t __49__WKContentViewAccessibility__pasteboardChanged___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _accessibilityBoolValueForKey:@"needToAnnounceCopy"];
  if (result)
  {
    [*(a1 + 32) _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
    v3 = *(a1 + 32);

    return [v3 _accessibilitySetBoolValue:0 forKey:@"needToAnnounceCopy"];
  }

  return result;
}

- (void)accessibilityRelayNotification:(id)notification notificationData:(id)data
{
  v21[7] = *MEMORY[0x29EDCA608];
  notificationCopy = notification;
  dataCopy = data;
  if ([dataCopy length])
  {
    v7 = MEMORY[0x29EDBA000];
    v8 = MEMORY[0x29EDB8E50];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v21[4] = objc_opt_class();
    v21[5] = objc_opt_class();
    v21[6] = objc_opt_class();
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v21 count:7];
    v10 = [v8 setWithArray:v9];
    v20 = 0;
    v11 = [v7 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v20];
    v12 = v20;

    if (v12)
    {
      v13 = AXLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WKContentViewAccessibility accessibilityRelayNotification:v12 notificationData:v13];
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v11];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v11 objectForKey:@"associatedElement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = _AXUIElementCreateWithData();
        _UIAccessibilitySetAssociatedElementContextForNextNotification();
        if (v18)
        {
          CFRelease(v18);
        }
      }

      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v19 = _AXUIElementCreateWithData();
    v14 = CFAutorelease(v19);
  }

  v15 = v11;
  v11 = v14;
LABEL_10:

LABEL_11:
  v16 = AXWebNotificationWithName(notificationCopy);
  UIAccessibilityPostNotification([v16 unsignedIntValue], v11);

  v17 = *MEMORY[0x29EDCA608];
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  [(WKContentViewAccessibility *)self _registerForNotificationsIfNecessary];
  [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"needToAnnounceCopy"];
  v5.receiver = self;
  v5.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v5 copy:copyCopy];
}

- (void)cut:(id)cut
{
  v4 = *MEMORY[0x29EDBDC18];
  cutCopy = cut;
  [(WKContentViewAccessibility *)self _accessibilityIgnoreNextPostPasteboardTextOperation:v4];
  v6.receiver = self;
  v6.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v6 cut:cutCopy];

  [(WKContentViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC20]];
}

- (void)paste:(id)paste
{
  v4 = *MEMORY[0x29EDBDC50];
  pasteCopy = paste;
  [(WKContentViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:v4];
  v6.receiver = self;
  v6.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v6 paste:pasteCopy];
}

- (void)selectAll:(id)all
{
  v6.receiver = self;
  v6.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v6 selectAll:all];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = *MEMORY[0x29EDBDC78];
  v5 = UIKitAccessibilityLocalizedString();
  UIAccessibilityPostNotification(v3, v5);
}

- (void)toggleBoldface:(id)boldface
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v7 toggleBoldface:boldface];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = *MEMORY[0x29EDBDC10];
  v5 = UIKitAccessibilityLocalizedString();
  v6 = [v3 axAttributedStringWithString:v5];

  [v6 setAttribute:*MEMORY[0x29EDBD870] forKey:*MEMORY[0x29EDBD9A0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

- (void)increaseSizeForWebView:(id)view
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v7 toggleBoldface:view];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = *MEMORY[0x29EDBDC40];
  v5 = UIKitAccessibilityLocalizedString();
  v6 = [v3 axAttributedStringWithString:v5];

  [v6 setAttribute:*MEMORY[0x29EDBD8D8] forKey:*MEMORY[0x29EDBD9A0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

- (void)decreaseSizeForWebView:(id)view
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v7 toggleBoldface:view];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = *MEMORY[0x29EDBDC28];
  v5 = UIKitAccessibilityLocalizedString();
  v6 = [v3 axAttributedStringWithString:v5];

  [v6 setAttribute:*MEMORY[0x29EDBD8D8] forKey:*MEMORY[0x29EDBD9A0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

- (void)toggleItalics:(id)italics
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v7 toggleItalics:italics];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = *MEMORY[0x29EDBDC48];
  v5 = UIKitAccessibilityLocalizedString();
  v6 = [v3 axAttributedStringWithString:v5];

  [v6 setAttribute:*MEMORY[0x29EDBD910] forKey:*MEMORY[0x29EDBD9A0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

- (void)toggleUnderline:(id)underline
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v7 toggleUnderline:underline];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = *MEMORY[0x29EDBDCA0];
  v5 = UIKitAccessibilityLocalizedString();
  v6 = [v3 axAttributedStringWithString:v5];

  [v6 setAttribute:*MEMORY[0x29EDBDA28] forKey:*MEMORY[0x29EDBD9A0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

- (BOOL)_accessibilityBeginUndoableTextInsertion
{
  objc_opt_class();
  v3 = [(WKContentViewAccessibility *)self safeValueForKey:@"undoManagerForWebView"];
  v4 = __UIAccessibilityCastAsClass();

  v7 = v4;
  v5 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (BOOL)_accessibilityEndUndoableTextInsertion
{
  objc_opt_class();
  v3 = [(WKContentViewAccessibility *)self safeValueForKey:@"undoManagerForWebView"];
  v4 = __UIAccessibilityCastAsClass();

  v7 = v4;
  v5 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (id)_accessibilityResponderElement
{
  if ([(WKContentViewAccessibility *)self safeBoolForKey:@"_requiresKeyboardWhenFirstResponder"])
  {
    v3 = [(WKContentViewAccessibility *)self _accessibilityValueForKey:@"RemoteElements"];
    lastObject = [v3 lastObject];
    _accessibilityResponderElement = [lastObject _accessibilityResponderElement];
  }

  else
  {
    _accessibilityResponderElement = 0;
  }

  return _accessibilityResponderElement;
}

- (void)dealloc
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = [(WKContentViewAccessibility *)self _accessibilityValueForKey:@"RemoteElements"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC8200] object:0];

  v10.receiver = self;
  v10.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v10 dealloc];
  v9 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityElements
{
  v16[1] = *MEMORY[0x29EDCA608];
  v3 = [(WKContentViewAccessibility *)self _accessibilityValueForKey:@"RemoteElements"];
  if (!v3)
  {
    v4 = objc_getAssociatedObject(self, [@"ax-uuid" hash]);
    if (v4)
    {
      v5 = v4;
      uUIDString = [v4 UUIDString];
      v7 = objc_getAssociatedObject(self, [@"ax-pid" hash]);
      intValue = [v7 intValue];

      if (intValue)
      {
        v9 = objc_getAssociatedObject(self, [@"ax-machport" hash]);
        intValue2 = [v9 intValue];

        v15 = objc_getAssociatedObject(self, [@"ax-pid" hash]);
        LOBYTE(v14) = 1;
        _AXLogWithFacility();

        v11 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:uUIDString andRemotePid:intValue andContextId:{-[WKContentViewAccessibility _accessibilityContextId](self, "_accessibilityContextId", v14, @"WKContentView[%@] set up: %@ pid: %@ MACH_PORT %d", self, uUIDString, v15, intValue2)}];
        [v11 setOnClientSide:1];
        [v11 setAccessibilityContainer:self];
        [v11 setMachPort:0];
        [v11 setDeniesDirectAppConnection:1];
        v16[0] = v11;
        v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:1];
        [(WKContentViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"RemoteElements"];

        goto LABEL_8;
      }

      [(WKContentViewAccessibility *)self _accessibilityRegisterUIProcessTokens];
    }

    else
    {
      [(WKContentViewAccessibility *)self _accessibilityRegisterUIProcessTokens];
    }

    v3 = 0;
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(WKContentViewAccessibility *)self accessibilityContainer];
  [accessibilityContainer accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_zoomToRevealFocusedElement
{
  v2.receiver = self;
  v2.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v2 _zoomToRevealFocusedElement];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __57__WKContentViewAccessibility__zoomToRevealFocusedElement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilitySetBoolValue:1 forKey:@"WebFormControlStarted"];
  v1 = *MEMORY[0x29EDC75E0];

  UIAccessibilityPostNotification(v1, 0);
}

- (void)_hideKeyboard
{
  v3.receiver = self;
  v3.super_class = WKContentViewAccessibility;
  [(WKContentViewAccessibility *)&v3 _hideKeyboard];
  if ([(WKContentViewAccessibility *)self _accessibilityBoolValueForKey:@"WebFormControlStarted"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75D8], 0);
  }

  [(WKContentViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"WebFormControlStarted"];
}

- (id)accessibilityDragSourceDescriptors
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDC7900]);
  v3 = accessibilityUIKitLocalizedString();
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v2 initWithName:v3 point:v4 inView:{0.0, 0.0}];
  v9[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (BOOL)canBecomeFocused
{
  if ([(WKContentViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(WKContentViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29ED41AB0](@"WKWebView")];
    v4 = [v3 safeValueForKey:@"URL"];
    if (v4)
    {
    }

    else
    {
      _accessibilityResponderElement = [(WKContentViewAccessibility *)self _accessibilityResponderElement];

      if (_accessibilityResponderElement)
      {
        v7 = 0;
LABEL_11:

        return v7;
      }
    }

    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    uIDelegate = [v5 UIDelegate];

    if (objc_opt_respondsToSelector())
    {
      v7 = [uIDelegate _webViewCanBecomeFocused:v3];
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_11;
  }

  v10.receiver = self;
  v10.super_class = WKContentViewAccessibility;
  return [(WKContentViewAccessibility *)&v10 canBecomeFocused];
}

- (id)_systemDefaultFocusGroupIdentifier
{
  if ([(WKContentViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    _accessibilityDefaultFocusGroupIdentifier = [(WKContentViewAccessibility *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WKContentViewAccessibility;
    _accessibilityDefaultFocusGroupIdentifier = [(WKContentViewAccessibility *)&v5 _systemDefaultFocusGroupIdentifier];
  }

  return _accessibilityDefaultFocusGroupIdentifier;
}

- (int)_accessibilityRemotePid
{
  v2 = objc_getAssociatedObject(self, [@"ax-pid" hash]);
  intValue = [v2 intValue];

  return intValue;
}

- (void)accessibilityRelayNotification:(uint64_t)a1 notificationData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C7A6000, a2, OS_LOG_TYPE_ERROR, "Could not de-archive: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end