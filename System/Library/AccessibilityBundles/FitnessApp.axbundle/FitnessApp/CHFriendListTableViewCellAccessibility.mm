@interface CHFriendListTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CHFriendListTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHFriendListTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"CHFriendListTableViewCell" hasInstanceMethod:@"detailLineOneLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHFriendListTableViewCell" hasInstanceMethod:@"detailLineTwoLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHFriendListTableViewCell" hasInstanceMethod:@"competitionBadgeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHFriendListTableViewCell" hasInstanceMethod:@"setFriend:snapshot:formattingManager:animated:" withFullSignature:{"v", "@", "@", "@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = CHFriendListTableViewCellAccessibility;
  [(CHFriendListTableViewCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  textLabel = [v3 textLabel];
  if (textLabel)
  {
    v5 = [(CHFriendListTableViewCellAccessibility *)self safeValueForKey:@"detailLineOneLabel"];
    v6 = [(CHFriendListTableViewCellAccessibility *)self safeValueForKey:@"detailLineTwoLabel"];
    v7 = [(CHFriendListTableViewCellAccessibility *)self safeValueForKey:@"competitionBadgeView"];
    [v7 setIsAccessibilityElement:1];
    v8 = accessibilityLocalizedString(@"competition.in.progress");
    [v7 setAccessibilityLabel:v8];

    objc_initWeak(&location, textLabel);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __84__CHFriendListTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v14 = &unk_1C448;
    objc_copyWeak(&v15, &location);
    [textLabel _setAccessibilityLabelBlock:&v11];
    v9 = [NSArray axArrayByIgnoringNilElementsWithCount:4, textLabel, v5, v6, v7, v11, v12, v13, v14];
    v10 = AXLabelForElements();
    [(CHFriendListTableViewCellAccessibility *)self setAccessibilityLabel:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

id __84__CHFriendListTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained text];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"•" withString:&stru_1F138];

  return v3;
}

@end