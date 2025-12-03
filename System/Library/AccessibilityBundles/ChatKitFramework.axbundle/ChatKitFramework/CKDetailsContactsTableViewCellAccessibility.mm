@interface CKDetailsContactsTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CKDetailsContactsTableViewCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKDetailsContactsTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKDetailsContactsTableViewCell" hasInstanceMethod:@"messageButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKDetailsContactsTableViewCell" hasInstanceMethod:@"phoneButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKDetailsContactsTableViewCell" hasInstanceMethod:@"facetimeVideoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKDetailsContactsTableViewCell" hasInstanceMethod:@"screenSharingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKDetailsContactsTableViewCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CKDetailsContactsTableViewCellAccessibility;
  [(CKDetailsContactsTableViewCellAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKDetailsContactsTableViewCellAccessibility *)self safeValueForKey:@"messageButton"];
  v4 = accessibilityLocalizedString(@"details.message.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(CKDetailsContactsTableViewCellAccessibility *)self safeValueForKey:@"phoneButton"];
  v6 = accessibilityLocalizedString(@"details.phone.button.label");
  [v5 setAccessibilityLabel:v6];

  v7 = [(CKDetailsContactsTableViewCellAccessibility *)self safeValueForKey:@"facetimeVideoButton"];
  v8 = accessibilityLocalizedString(@"details.facetime.video.button.label");
  [v7 setAccessibilityLabel:v8];

  v9 = [(CKDetailsContactsTableViewCellAccessibility *)self safeValueForKey:@"screenSharingButton"];
  v10 = accessibilityLocalizedString(@"details.screensharing.button.label");
  [v9 setAccessibilityLabel:v10];
}

- (CKDetailsContactsTableViewCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKDetailsContactsTableViewCellAccessibility;
  v4 = [(CKDetailsContactsTableViewCellAccessibility *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsContactsTableViewCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  }

  return v5;
}

@end