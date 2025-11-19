@interface CKMessagesControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)setChatController:(id)a3;
@end

@implementation CKMessagesControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMessagesController" isKindOfClass:@"UISplitViewController"];
  [v3 validateClass:@"CKMessagesController" hasProperty:@"chatController" withType:"@"];
  [v3 validateClass:@"CKMessagesController" hasInstanceMethod:@"setChatController:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKMessagesController" hasProperty:@"conversationListController" withType:"@"];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"CKMessagesController" hasInstanceMethod:@"conversationListController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKMessagesControllerAccessibility;
  [(CKMessagesControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKMessagesControllerAccessibility *)self _accessibilityWindow];
  [v3 setAccessibilityIdentifier:@"AXChatMainWindow"];

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

- (void)setChatController:(id)a3
{
  v4 = a3;
  v8 = 0;
  objc_opt_class();
  v5 = [(CKMessagesControllerAccessibility *)self safeValueForKey:@"chatController"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  v7.receiver = self;
  v7.super_class = CKMessagesControllerAccessibility;
  [(CKMessagesControllerAccessibility *)&v7 setChatController:v4];
  [v6 _accessibilityReloadElementRelations:0];
  if (v4)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    [(CKMessagesControllerAccessibility *)self _accessibilityReloadElementRelations:0];
  }
}

@end