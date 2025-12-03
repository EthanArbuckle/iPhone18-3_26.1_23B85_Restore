@interface CKConversationListNewMessageCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKConversationListNewMessageCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKConversationListNewMessageCollectionViewCell" isKindOfClass:@"CKConversationListEmbeddedCollectionViewCell"];
  [validationsCopy validateClass:@"CKConversationListNewMessageCollectionViewCell" hasInstanceMethod:@"embeddedNewMessageTableViewCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversationListEmbeddedNewMessageTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axEmbeddedTableViewCell = [(CKConversationListNewMessageCollectionViewCellAccessibility *)self _axEmbeddedTableViewCell];
  v3 = [_axEmbeddedTableViewCell safeStringForKey:@"text"];

  return v3;
}

@end