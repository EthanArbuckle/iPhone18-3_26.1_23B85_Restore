@interface UITableViewAccessibility__MessageUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation UITableViewAccessibility__MessageUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIPopoverView"];
  [v3 validateClass:@"MFMailComposeView" hasInstanceVariable:@"_activeRecipientView" withType:"MFMailComposeRecipientTextView"];
  [v3 validateClass:@"MFAutocompleteResultsTableViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityViewIsModal
{
  v3 = [(UITableViewAccessibility__MessageUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"MessageRecipientSearchTable"];

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
    v9 = [(UITableViewAccessibility__MessageUI__UIKit *)&v11 _accessibilityObscuredScreenAllowedViews];
  }

  else
  {
    v6 = [(UITableViewAccessibility__MessageUI__UIKit *)self safeValueForKey:@"delegate"];
    v7 = [v6 safeValueForKey:@"delegate"];
    v8 = [v7 safeValueForKey:@"_activeRecipientView"];
    v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v8}];
  }

  return v9;
}

@end