@interface CKConversationListCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateToolbarItems;
- (void)pinConversation:(id)a3 withReason:(id)a4;
- (void)unpinConversation:(id)a3 withReason:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CKConversationListCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKConversationListCollectionViewConversationCell"];
  [v3 validateClass:@"CKConversationListCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"_updateToolbarItems" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"isShowingSwipeDeleteConfirmation" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"composeButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"optionsButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" conformsToProtocol:@"UICollectionViewDelegate"];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"unpinConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"pinConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKConversationListCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = accessibilityLocalizedString(@"group.conversations.table");
  [v3 setAccessibilityLabel:v4];

  v5 = accessibilityLocalizedString(@"compose.button.text");
  v6 = [(CKConversationListCollectionViewControllerAccessibility *)self safeValueForKey:@"composeButtonItem"];
  [v6 setAccessibilityLabel:v5];

  v7 = [(CKConversationListCollectionViewControllerAccessibility *)self safeValueForKey:@"optionsButtonItem"];
  v8 = accessibilityLocalizedString(@"more.button.text");
  [v7 setAccessibilityLabel:v8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 viewDidAppear:a3];
  [(CKConversationListCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateToolbarItems
{
  v2.receiver = self;
  v2.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v2 _updateToolbarItems];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)unpinConversation:(id)a3 withReason:(id)a4
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 unpinConversation:a3 withReason:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)pinConversation:(id)a3 withReason:(id)a4
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 pinConversation:a3 withReason:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end