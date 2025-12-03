@interface NCNotificationSeamlessContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySecondaryText;
- (id)_accessibilitySecondaryTextGroupCollapsed;
- (id)_accessibilitySupportGesturesAttributes;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
@end

@implementation NCNotificationSeamlessContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceVariable:@"_dateLabel" withType:"UILabel<BSUIDateLabel>"];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"primaryText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"primarySubtitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"secondaryText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"secondaryTextGroupCollapsed" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"importantText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"footerText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCell"];
  [validationsCopy validateClass:@"NCNotificationListCell" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceVariable:@"_secondaryTextElementTopAligned" withType:"NCNotificationBodyLabel"];
  [validationsCopy validateClass:@"NCNotificationSeamlessContentView" hasInstanceVariable:@"_secondaryTextElementBottomAligned" withType:"NCNotificationBodyLabel"];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_executeDefaultAction:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NCExpandedPlatterViewController" hasInstanceMethod:@"customContentRequestsDefaultAction:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"thumbnail"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (![accessibilityLabel length])
  {
    v6 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"thumbnail"];

    if (v6)
    {
      v5 = accessibilityLocalizedString(@"attachment.label");
      goto LABEL_7;
    }
  }

  if ([accessibilityLabel isAXAttributedString] && objc_msgSend(accessibilityLabel, "hasAttribute:", *MEMORY[0x29EDBD900]))
  {
    v5 = 0;
LABEL_7:

    accessibilityLabel = v5;
  }

  v7 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"_dateLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v9 = [(NCNotificationSeamlessContentViewAccessibility *)self safeStringForKey:@"primaryText"];
  v10 = [(NCNotificationSeamlessContentViewAccessibility *)self safeStringForKey:@"primarySubtitleText"];
  _accessibilitySecondaryText = [(NCNotificationSeamlessContentViewAccessibility *)self _accessibilitySecondaryText];
  _accessibilitySecondaryTextGroupCollapsed = [(NCNotificationSeamlessContentViewAccessibility *)self _accessibilitySecondaryTextGroupCollapsed];
  v13 = [(NCNotificationSeamlessContentViewAccessibility *)self safeStringForKey:@"importantText"];
  v16 = [(NCNotificationSeamlessContentViewAccessibility *)self safeStringForKey:@"footerText"];
  v14 = __UIAXStringForVariables();

  return v14;
}

- (BOOL)accessibilityActivate
{
  v3 = [(NCNotificationSeamlessContentViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:0];
  v4 = [v3 safeValueForKey:@"contentViewController"];
  v5 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"delegate"];
  _accessibilityViewController = [v5 _accessibilityViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = v12;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v8 = __71__NCNotificationSeamlessContentViewAccessibility_accessibilityActivate__block_invoke_2;
    v9 = v4;
LABEL_5:
    v7[2] = v8;
    v7[3] = &unk_29F316E90;
    v7[4] = v9;
    AXPerformSafeBlock();

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = v11;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v8 = __71__NCNotificationSeamlessContentViewAccessibility_accessibilityActivate__block_invoke_3;
    v9 = _accessibilityViewController;
    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

uint64_t __71__NCNotificationSeamlessContentViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ncnotification_36.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityCustomRotors
{
  v10.receiver = self;
  v10.super_class = NCNotificationSeamlessContentViewAccessibility;
  accessibilityCustomRotors = [(NCNotificationSeamlessContentViewAccessibility *)&v10 accessibilityCustomRotors];
  v4 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"_secondaryTextElementTopAligned"];
  accessibilityCustomRotors2 = [v4 accessibilityCustomRotors];

  v6 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"_secondaryTextElementBottomAligned"];
  accessibilityCustomRotors3 = [v6 accessibilityCustomRotors];

  array = [MEMORY[0x29EDB8DE8] array];
  [array axSafelyAddObjectsFromArray:accessibilityCustomRotors];
  [array axSafelyAddObjectsFromArray:accessibilityCustomRotors2];
  [array axSafelyAddObjectsFromArray:accessibilityCustomRotors3];

  return array;
}

- (id)_accessibilitySupportGesturesAttributes
{
  v8[1] = *MEMORY[0x29EDCA608];
  v6[0] = @"AXSupportedGestureTypeKey";
  v6[1] = @"AXOrbGestureMode";
  v7[0] = &unk_2A2395558;
  v7[1] = &unk_2A2395570;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_accessibilitySecondaryTextGroupCollapsed
{
  objc_opt_class();
  v3 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"secondaryTextGroupCollapsed"];
  v4 = __UIAccessibilityCastAsClass();

  string = [v4 string];
  _accessibilitySecondaryText = [(NCNotificationSeamlessContentViewAccessibility *)self _accessibilitySecondaryText];
  string2 = [_accessibilitySecondaryText string];
  v8 = [string isEqualToString:string2];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)_accessibilitySecondaryText
{
  objc_opt_class();
  v3 = [(NCNotificationSeamlessContentViewAccessibility *)self safeValueForKey:@"secondaryText"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end