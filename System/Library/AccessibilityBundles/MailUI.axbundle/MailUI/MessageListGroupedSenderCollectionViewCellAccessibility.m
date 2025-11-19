@interface MessageListGroupedSenderCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MessageListGroupedSenderCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailUI.MessageListGroupedSenderCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"sender" withSwiftType:"UILabel"];
  [v3 validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"appliedConfiguration" withSwiftType:"MessageListGroupedSenderContentConfiguration"];
  [v3 validateClass:@"MailUI.MessageListGroupedSenderContentView" hasSwiftField:@"dateLabel" withSwiftType:"UIDateLabel"];
  [v3 validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration"];
  [v3 validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration" hasSwiftField:@"isRead" withSwiftType:"Bool"];
  [v3 validateSwiftStruct:@"MailUI.MessageListGroupedSenderContentConfiguration" hasSwiftField:@"subjects" withSwiftType:"Array<String>"];
}

- (id)accessibilityLabel
{
  v2 = [(MessageListGroupedSenderCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeSwiftValueForKey:@"appliedConfiguration"];
  v4 = [v2 safeSwiftValueForKey:@"sender"];
  v5 = [v4 accessibilityLabel];

  v6 = [v3 safeSwiftArrayForKey:@"subjects"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v2 safeSwiftValueForKey:@"dateLabel"];
  v9 = [v8 accessibilityLabel];

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