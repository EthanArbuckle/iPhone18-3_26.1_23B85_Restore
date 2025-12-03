@interface CKMessagesControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)setChatController:(id)controller;
@end

@implementation CKMessagesControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMessagesController" isKindOfClass:@"UISplitViewController"];
  [validationsCopy validateClass:@"CKMessagesController" hasProperty:@"chatController" withType:"@"];
  [validationsCopy validateClass:@"CKMessagesController" hasInstanceMethod:@"setChatController:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKMessagesController" hasProperty:@"conversationListController" withType:"@"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKMessagesController" hasInstanceMethod:@"conversationListController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKMessagesControllerAccessibility;
  [(CKMessagesControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  _accessibilityWindow = [(CKMessagesControllerAccessibility *)self _accessibilityWindow];
  [_accessibilityWindow setAccessibilityIdentifier:@"AXChatMainWindow"];

  v4 = [(CKMessagesControllerAccessibility *)self safeValueForKey:@"conversationListController"];
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"navigationItem"];
  v6 = __UIAccessibilityCastAsClass();

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSFullKeyboardAccessEnabled() || _AXSCommandAndControlEnabled())
  {
    [v6 setHidesSearchBarWhenScrolling:0];
  }

  [(CKMessagesControllerAccessibility *)self _accessibilityReloadElementRelations:1];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKMessagesControllerAccessibility;
  [(CKMessagesControllerAccessibility *)&v3 loadView];
  [(CKMessagesControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setChatController:(id)controller
{
  controllerCopy = controller;
  v8 = 0;
  objc_opt_class();
  v5 = [(CKMessagesControllerAccessibility *)self safeValueForKey:@"chatController"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  v7.receiver = self;
  v7.super_class = CKMessagesControllerAccessibility;
  [(CKMessagesControllerAccessibility *)&v7 setChatController:controllerCopy];
  [v6 _accessibilityReloadElementRelations:0];
  if (controllerCopy)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    [(CKMessagesControllerAccessibility *)self _accessibilityReloadElementRelations:0];
  }
}

@end