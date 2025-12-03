@interface UIViewAccessibility__MobileMail__UIKit
- (BOOL)_accessibilityIsApplicationSceneView;
- (BOOL)_accessibilityIsFirstElementForFocus;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (BOOL)_accessibilityUseAccessibilityFrameForHittest;
- (id)accessibilityElements;
@end

@implementation UIViewAccessibility__MobileMail__UIKit

- (BOOL)_accessibilityUseAccessibilityFrameForHittest
{
  accessibilityIdentification = [(UIViewAccessibility__MobileMail__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXAccessibilityUseAccessibilityFrameForHittest"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__MobileMail__UIKit;
  return [(UIViewAccessibility__MobileMail__UIKit *)&v6 _accessibilityUseAccessibilityFrameForHittest];
}

- (BOOL)_accessibilityIsFirstElementForFocus
{
  accessibilityIdentifier = [(UIViewAccessibility__MobileMail__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"MailMessagesTableView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__MobileMail__UIKit;
  return [(UIViewAccessibility__MobileMail__UIKit *)&v6 _accessibilityIsFirstElementForFocus];
}

- (BOOL)_accessibilityIsApplicationSceneView
{
  accessibilityIdentifier = [(UIViewAccessibility__MobileMail__UIKit *)self accessibilityIdentifier];
  v3 = [accessibilityIdentifier isEqualToString:@"kAXApplicationSceneViewIdentifier"];

  return v3;
}

- (id)accessibilityElements
{
  if (![(UIViewAccessibility__MobileMail__UIKit *)self _accessibilityIsApplicationSceneView])
  {
    v34.receiver = self;
    v34.super_class = UIViewAccessibility__MobileMail__UIKit;
    [(UIViewAccessibility__MobileMail__UIKit *)&v34 accessibilityElements];
    v28 = LABEL_12:;
    goto LABEL_13;
  }

  v3 = [(UIViewAccessibility__MobileMail__UIKit *)self _accessibilityValueForKey:@"kAXShowDraftsKey"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v33.receiver = self;
    v33.super_class = UIViewAccessibility__MobileMail__UIKit;
    [(UIViewAccessibility__MobileMail__UIKit *)&v33 accessibilityElements];
    goto LABEL_12;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __63__UIViewAccessibility__MobileMail__UIKit_accessibilityElements__block_invoke;
  block[3] = &unk_29F2D3E70;
  block[4] = self;
  if (accessibilityElements_onceToken != -1)
  {
    dispatch_once(&accessibilityElements_onceToken, block);
  }

  v5 = [(UIViewAccessibility__MobileMail__UIKit *)self _accessibilityValueForKey:@"kAXDraftHeightKey"];
  [v5 floatValue];
  v7 = v6;

  v8 = [(UIViewAccessibility__MobileMail__UIKit *)self _accessibilityValueForKey:@"kAXNumberOfDraftsKey"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = accessibilityLocalizedString(@"show.drafts");
  v11 = MEMORY[0x29EDBA0F8];
  v12 = accessibilityLocalizedString(@"number.of.drafts");
  v13 = [v11 localizedStringWithFormat:v12, unsignedIntegerValue];

  v14 = __UIAXStringForVariables();

  [accessibilityElements_showDraftsElement setAccessibilityLabel:{v14, v13, @"__AXStringForVariablesSentinel"}];
  v31 = 0;
  objc_opt_class();
  v15 = __UIAccessibilityCastAsClass();
  v16 = v7;
  [v15 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v15 safeAreaInsets];
  [accessibilityElements_showDraftsElement setAccessibilityFrame:{v18, v22 - v16, v20, v16 - v23}];
  v30.receiver = self;
  v30.super_class = UIViewAccessibility__MobileMail__UIKit;
  accessibilityElements = [(UIViewAccessibility__MobileMail__UIKit *)&v30 accessibilityElements];
  array = [accessibilityElements mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v26 = [(UIViewAccessibility__MobileMail__UIKit *)self safeArrayForKey:@"subviews"];
  [array axSafelyAddObjectsFromArray:v26];

  v27 = [array ax_filteredArrayUsingBlock:&__block_literal_global_16];
  v28 = [v27 mutableCopy];

  if (([v28 containsObject:accessibilityElements_showDraftsElement] & 1) == 0)
  {
    [v28 axSafelyAddObject:accessibilityElements_showDraftsElement];
  }

LABEL_13:

  return v28;
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  accessibilityIdentification = [(UIViewAccessibility__MobileMail__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXAccessibilityStatusIndicatorView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__MobileMail__UIKit;
  return [(UIViewAccessibility__MobileMail__UIKit *)&v6 _accessibilityOverridesInvalidFrames];
}

@end