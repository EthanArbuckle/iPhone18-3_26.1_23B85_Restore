@interface CKConversationListCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateToolbarItems;
- (void)pinConversation:(id)conversation withReason:(id)reason;
- (void)unpinConversation:(id)conversation withReason:(id)reason;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CKConversationListCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKConversationListCollectionViewConversationCell"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"_updateToolbarItems" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"isShowingSwipeDeleteConfirmation" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"composeButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"optionsButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" conformsToProtocol:@"UICollectionViewDelegate"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"unpinConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"pinConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(CKConversationListCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateToolbarItems
{
  v2.receiver = self;
  v2.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v2 _updateToolbarItems];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)unpinConversation:(id)conversation withReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 unpinConversation:conversation withReason:reason];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)pinConversation:(id)conversation withReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewControllerAccessibility;
  [(CKConversationListCollectionViewControllerAccessibility *)&v4 pinConversation:conversation withReason:reason];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end