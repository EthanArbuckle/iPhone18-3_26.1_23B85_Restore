@interface CKConversationListNewMessageCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKConversationListNewMessageCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKConversationListNewMessageCollectionViewCell" isKindOfClass:@"CKConversationListEmbeddedCollectionViewCell"];
  [v3 validateClass:@"CKConversationListNewMessageCollectionViewCell" hasInstanceMethod:@"embeddedNewMessageTableViewCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListEmbeddedNewMessageTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKConversationListNewMessageCollectionViewCellAccessibility *)self _axEmbeddedTableViewCell];
  v3 = [v2 safeStringForKey:@"text"];

  return v3;
}

@end