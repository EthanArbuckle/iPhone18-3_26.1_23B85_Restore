@interface CKMessageEntryContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CKMessageEntryContentViewAccessibility)initWithFrame:(CGRect)a3 shouldShowSubject:(BOOL)a4 shouldDisableAttachments:(BOOL)a5 shouldUseNonEmojiKeyboard:(BOOL)a6 shouldUseNonHandwritingKeyboard:(BOOL)a7 shouldDisableKeyboardStickers:(BOOL)a8 shouldAllowPollSuggestions:(BOOL)a9 translationLanguage:(id)a10;
- (void)_accessibilityClearPlugin;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setPluginEntryViewController:(id)a3;
@end

@implementation CKMessageEntryContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"initWithFrame:shouldShowSubject: shouldDisableAttachments:shouldUseNonEmojiKeyboard:shouldUseNonHandwritingKeyboard:shouldDisableKeyboardStickers:shouldAllowPollSuggestions:translationLanguage:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "B", "B", "B", "B", "B", "B", "@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"subjectView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"clearPluginButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"clearPluginButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"shouldShowClearButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"pluginEntryViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKMessageEntryContentViewAccessibility;
  [(CKMessageEntryContentViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKMessageEntryContentViewAccessibility *)self safeValueForKey:@"subjectView"];
  v4 = accessibilityLocalizedString(@"subject.view");
  [v3 setAccessibilityLabel:v4];

  v5 = [(CKMessageEntryContentViewAccessibility *)self safeValueForKey:@"clearPluginButton"];
  v6 = accessibilityLocalizedString(@"plugin.cancel.button");
  [v5 setAccessibilityLabel:v6];
}

- (CKMessageEntryContentViewAccessibility)initWithFrame:(CGRect)a3 shouldShowSubject:(BOOL)a4 shouldDisableAttachments:(BOOL)a5 shouldUseNonEmojiKeyboard:(BOOL)a6 shouldUseNonHandwritingKeyboard:(BOOL)a7 shouldDisableKeyboardStickers:(BOOL)a8 shouldAllowPollSuggestions:(BOOL)a9 translationLanguage:(id)a10
{
  v12.receiver = self;
  v12.super_class = CKMessageEntryContentViewAccessibility;
  v10 = [(CKMessageEntryContentViewAccessibility *)&v12 initWithFrame:a4 shouldShowSubject:a5 shouldDisableAttachments:a6 shouldUseNonEmojiKeyboard:a7 shouldUseNonHandwritingKeyboard:a8 shouldDisableKeyboardStickers:a9 shouldAllowPollSuggestions:a3.origin.x translationLanguage:a3.origin.y, a3.size.width, a3.size.height, a10];
  [(CKMessageEntryContentViewAccessibility *)v10 _accessibilityLoadAccessibilityInformation];

  return v10;
}

- (void)setPluginEntryViewController:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CKMessageEntryContentViewAccessibility;
  [(CKMessageEntryContentViewAccessibility *)&v6 setPluginEntryViewController:v4];
  if ([(CKMessageEntryContentViewAccessibility *)self safeBoolForKey:@"shouldShowClearButton"])
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsSafeCategory();
    [v5 _axSetCloseActionProviderOnBubbleView:self];
  }
}

- (void)_accessibilityClearPlugin
{
  AXPerformSafeBlock();
  v3 = [(CKMessageEntryContentViewAccessibility *)self safeValueForKey:@"textView"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
}

@end