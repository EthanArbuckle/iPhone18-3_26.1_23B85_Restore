@interface UIButtonAccessibility__MapKit__UIKit
- (id)_accessibilityInfoButtonContext;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__MapKit__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(UIButtonAccessibility__MapKit__UIKit *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"AccessibilityMoreInfoButtonIdentifier"])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = AXMapKitLocString(@"MORE_INFO_WITH_CONTEXT");
    _accessibilityInfoButtonContext = [(UIButtonAccessibility__MapKit__UIKit *)self _accessibilityInfoButtonContext];
    v7 = [v4 localizedStringWithFormat:v5, _accessibilityInfoButtonContext];

    goto LABEL_10;
  }

  v8 = [(UIButtonAccessibility__MapKit__UIKit *)self safeValueForKey:@"_accessibilityImagePath"];
  if ([v8 isEqualToString:@"StreetView.png"])
  {
    v9 = @"STREET_VIEW_LABEL";
  }

  else
  {
    if (![v8 isEqualToString:@"HideInfo.png"])
    {
      v12.receiver = self;
      v12.super_class = UIButtonAccessibility__MapKit__UIKit;
      accessibilityLabel = [(UIButtonAccessibility__MapKit__UIKit *)&v12 accessibilityLabel];
      goto LABEL_9;
    }

    v9 = @"MORE_INFO";
  }

  accessibilityLabel = AXMapKitLocString(v9);
LABEL_9:
  v7 = accessibilityLabel;

LABEL_10:

  return v7;
}

- (id)_accessibilityInfoButtonContext
{
  v2 = [(UIButtonAccessibility__MapKit__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Calloutview_0.isa)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeValueForKey:@"_title"];
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

@end