@interface UITableViewAccessibility__MessageUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation UITableViewAccessibility__MessageUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIPopoverView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_activeRecipientView" withType:"MFMailComposeRecipientTextView"];
  [validationsCopy validateClass:@"MFAutocompleteResultsTableViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityViewIsModal
{
  accessibilityIdentifier = [(UITableViewAccessibility__MessageUI__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"MessageRecipientSearchTable"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITableViewAccessibility__MessageUI__UIKit;
  return [(UITableViewAccessibility__MessageUI__UIKit *)&v6 accessibilityViewIsModal];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v3 = [(UITableViewAccessibility__MessageUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uipopoverview.isa)];

  if (v3 || (-[UITableViewAccessibility__MessageUI__UIKit accessibilityIdentifier](self, "accessibilityIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:@"MessageRecipientSearchTable"], v4, !v5))
  {
    v11.receiver = self;
    v11.super_class = UITableViewAccessibility__MessageUI__UIKit;
    _accessibilityObscuredScreenAllowedViews = [(UITableViewAccessibility__MessageUI__UIKit *)&v11 _accessibilityObscuredScreenAllowedViews];
  }

  else
  {
    v6 = [(UITableViewAccessibility__MessageUI__UIKit *)self safeValueForKey:@"delegate"];
    v7 = [v6 safeValueForKey:@"delegate"];
    v8 = [v7 safeValueForKey:@"_activeRecipientView"];
    _accessibilityObscuredScreenAllowedViews = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v8}];
  }

  return _accessibilityObscuredScreenAllowedViews;
}

@end