@interface NCNotificationContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupportGesturesAttributes;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
@end

@implementation NCNotificationContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"primaryText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"primarySubtitleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"secondaryText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"summaryText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContentView" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell"];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceVariable:@"_contentViewController" withType:"UIViewController<NCNotificationListDimmable><NCNotificationListZPositionable>"];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_executeDefaultAction:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"thumbnail"];
  v4 = [v3 accessibilityLabel];

  if (![v4 length])
  {
    v6 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"thumbnail"];

    if (v6)
    {
      v5 = accessibilityLocalizedString(@"attachment.label");
      goto LABEL_7;
    }
  }

  if ([v4 isAXAttributedString] && objc_msgSend(v4, "hasAttribute:", *MEMORY[0x29EDBD900]))
  {
    v5 = 0;
LABEL_7:

    v4 = v5;
  }

  v7 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"primaryText"];
  v8 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"primarySubtitleText"];
  v9 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"secondaryText"];
  v12 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"summaryText"];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (BOOL)accessibilityActivate
{
  v2 = [(NCNotificationContentViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_4 startWithSelf:0];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return 1;
}

uint64_t __63__NCNotificationContentViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ncnotification_36.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __63__NCNotificationContentViewAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"_contentViewController"];
  [v1 _executeDefaultAction:1];
}

- (id)accessibilityCustomRotors
{
  v8.receiver = self;
  v8.super_class = NCNotificationContentViewAccessibility;
  v3 = [(NCNotificationContentViewAccessibility *)&v8 accessibilityCustomRotors];
  v4 = [(NCNotificationContentViewAccessibility *)self safeValueForKey:@"secondaryTextView"];
  v5 = [v4 accessibilityCustomRotors];

  v6 = [MEMORY[0x29EDB8DE8] array];
  [v6 axSafelyAddObjectsFromArray:v3];
  [v6 axSafelyAddObjectsFromArray:v5];

  return v6;
}

- (id)_accessibilitySupportGesturesAttributes
{
  v8[1] = *MEMORY[0x29EDCA608];
  v6[0] = @"AXSupportedGestureTypeKey";
  v6[1] = @"AXOrbGestureMode";
  v7[0] = &unk_2A2395588;
  v7[1] = &unk_2A23955A0;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

@end