@interface MessageListGroupedSenderCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MessageListGroupedSenderCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailUI.MessageListGroupedSenderCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"sender" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"appliedConfiguration" withSwiftType:"MessageListGroupedSenderContentConfiguration"];
  [validationsCopy validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"dateLabel" withSwiftType:"UIDateLabel"];
  [validationsCopy validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration"];
  [validationsCopy validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration" hasSwiftField:@"isRead" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration" hasSwiftField:@"subjects" withSwiftType:"Array<String>"];
}

- (id)accessibilityLabel
{
  v2 = [(MessageListGroupedSenderCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeSwiftValueForKey:@"appliedConfiguration"];
  v4 = [v2 safeSwiftValueForKey:@"sender"];
  accessibilityLabel = [v4 accessibilityLabel];

  v6 = [v3 safeSwiftArrayForKey:@"subjects"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v2 safeSwiftValueForKey:@"dateLabel"];
  accessibilityLabel2 = [v8 accessibilityLabel];

  if ([v3 safeSwiftBoolForKey:@"isRead"])
  {
    v10 = 0;
  }

  else
  {
    v10 = accessibilityLocalizedString(@"state.unread");
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

@end