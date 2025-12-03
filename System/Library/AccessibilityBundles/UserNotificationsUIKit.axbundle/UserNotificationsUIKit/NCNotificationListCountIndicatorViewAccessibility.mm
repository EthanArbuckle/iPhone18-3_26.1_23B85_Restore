@interface NCNotificationListCountIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation NCNotificationListCountIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBUILegibilityLabel" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_titleLabel" withType:"NCNotificationListCountIndicatorButton"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_subtitleString" withType:"NSString"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorViewController" conformsToProtocol:@"NCNotificationListCountIndicatorViewDelegate"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_titleLabelRepresentsNotificationCount" withType:"BOOL"];
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"listModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"rootListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorViewController" hasInstanceMethod:@"notificationListCountIndicatorViewTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorViewController" hasInstanceMethod:@"notificationListCountIndicatorViewLongPressed:presentingView:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_titleString" withType:"NSString"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_titleSymbol" withType:"NSString"];
  [validationsCopy validateClass:@"NCNotificationListCountIndicatorView" hasInstanceVariable:@"_contentHidden" withType:"BOOL"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  if (v3)
  {
    v4 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeBoolForKey:@"_contentHidden"]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeStringForKey:@"_titleString"];
  v6 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeStringForKey:@"_subtitleString"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NCNotificationListCountIndicatorViewAccessibility;
  accessibilityTraits = [(NCNotificationListCountIndicatorViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  if (v4)
  {

LABEL_4:
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
    return accessibilityTraits;
  }

  v5 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeStringForKey:@"_subtitleString"];

  if (v5)
  {
    goto LABEL_4;
  }

  return accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  v4 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeValueForKey:@"delegate"];
  v5 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v6 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeBoolForKey:@"_titleLabelRepresentsNotificationCount"];
  parentViewController = [v4 parentViewController];
  if (v6)
  {
    v2 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeStringForKey:@"_titleSymbol"];
    if ([v2 isEqualToString:@"circlebadge.fill"])
    {

LABEL_7:
      v27 = MEMORY[0x29EDCA5F8];
      v28 = 3221225472;
      v29 = __74__NCNotificationListCountIndicatorViewAccessibility_accessibilityActivate__block_invoke;
      v30 = &unk_29F316EF8;
      v31 = v4;
      selfCopy = self;
      AXPerformSafeBlock();
      v22 = MEMORY[0x29EDCA5F8];
      v23 = 3221225472;
      v24 = __74__NCNotificationListCountIndicatorViewAccessibility_accessibilityActivate__block_invoke_2;
      v25 = &unk_29F316E90;
      v26 = parentViewController;
      AXPerformBlockOnMainThreadAfterDelay();

      goto LABEL_8;
    }
  }

  v8 = [(NCNotificationListCountIndicatorViewAccessibility *)self safeStringForKey:@"_subtitleString"];

  if (v6)
  {
  }

  if (v8)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    v14.receiver = self;
    v14.super_class = NCNotificationListCountIndicatorViewAccessibility;
    accessibilityActivate = [(NCNotificationListCountIndicatorViewAccessibility *)&v14 accessibilityActivate];
    goto LABEL_9;
  }

  if (v6)
  {
    selfCopy2 = v5;
  }

  else
  {
    selfCopy2 = self;
  }

  v12 = selfCopy2;
  v15 = MEMORY[0x29EDCA5F8];
  v16 = 3221225472;
  v17 = __74__NCNotificationListCountIndicatorViewAccessibility_accessibilityActivate__block_invoke_3;
  v18 = &unk_29F316F20;
  v19 = v4;
  selfCopy3 = self;
  v21 = v12;
  v13 = v12;
  AXPerformSafeBlock();
  AXPerformBlockOnMainThreadAfterDelay();

LABEL_8:
  accessibilityActivate = 1;
LABEL_9:

  return accessibilityActivate;
}

void __74__NCNotificationListCountIndicatorViewAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v3 = [*(a1 + 32) safeValueForKey:@"listModel"];
  v2 = [v3 safeValueForKey:@"masterListView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _allSubviews = [v2 _allSubviews];

  return _allSubviews;
}

@end