@interface CKRecipientSelectionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLabelOnToField;
- (void)addRecipient:(id)recipient;
- (void)viewDidLoad;
@end

@implementation CKRecipientSelectionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKComposeRecipientView" isKindOfClass:@"CNComposeRecipientTextView"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAutocompleteResultsTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"CKRecipientSearchListController" isKindOfClass:@"CNAutocompleteResultsTableViewController"];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKRecipientSelectionController" hasInstanceMethod:@"searchListController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKRecipientSelectionController" hasInstanceMethod:@"addRecipient:" withFullSignature:{"v", "@", 0}];
}

- (void)_updateLabelOnToField
{
  v4 = [(CKRecipientSelectionControllerAccessibility *)self safeValueForKey:@"toField"];
  v2 = [v4 safeValueForKey:@"textView"];
  v3 = accessibilityLocalizedString(@"to.field");
  [v2 setAccessibilityLabel:v3];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKRecipientSelectionControllerAccessibility;
  [(CKRecipientSelectionControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKRecipientSelectionControllerAccessibility *)self _updateLabelOnToField];
}

- (id)accessibilityElements
{
  v3 = [(CKRecipientSelectionControllerAccessibility *)self safeUIViewForKey:@"toField"];
  objc_opt_class();
  v4 = [(CKRecipientSelectionControllerAccessibility *)self safeValueForKeyPath:@"searchListController.tableView"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v5}];

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CKRecipientSelectionControllerAccessibility;
  [(CKRecipientSelectionControllerAccessibility *)&v3 viewDidLoad];
  [(CKRecipientSelectionControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)addRecipient:(id)recipient
{
  v8.receiver = self;
  v8.super_class = CKRecipientSelectionControllerAccessibility;
  recipientCopy = recipient;
  [(CKRecipientSelectionControllerAccessibility *)&v8 addRecipient:recipientCopy];
  v4 = [recipientCopy safeStringForKey:@"displayString"];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"recipient.added.announcement");
  v7 = [v5 stringWithFormat:v6, v4];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
}

@end