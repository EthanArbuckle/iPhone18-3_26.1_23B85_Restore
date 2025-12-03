@interface CKMessageEntryContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CKMessageEntryContentViewAccessibility)initWithFrame:(CGRect)frame shouldShowSubject:(BOOL)subject shouldDisableAttachments:(BOOL)attachments shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions translationLanguage:(id)self0;
- (void)_accessibilityClearPlugin;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setPluginEntryViewController:(id)controller;
@end

@implementation CKMessageEntryContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"initWithFrame:shouldShowSubject: shouldDisableAttachments:shouldUseNonEmojiKeyboard:shouldUseNonHandwritingKeyboard:shouldDisableKeyboardStickers:shouldAllowPollSuggestions:translationLanguage:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "B", "B", "B", "B", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"subjectView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"clearPluginButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"clearPluginButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"shouldShowClearButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"pluginEntryViewController" withFullSignature:{"@", 0}];
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

- (CKMessageEntryContentViewAccessibility)initWithFrame:(CGRect)frame shouldShowSubject:(BOOL)subject shouldDisableAttachments:(BOOL)attachments shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions translationLanguage:(id)self0
{
  v12.receiver = self;
  v12.super_class = CKMessageEntryContentViewAccessibility;
  language = [(CKMessageEntryContentViewAccessibility *)&v12 initWithFrame:subject shouldShowSubject:attachments shouldDisableAttachments:keyboard shouldUseNonEmojiKeyboard:handwritingKeyboard shouldUseNonHandwritingKeyboard:stickers shouldDisableKeyboardStickers:suggestions shouldAllowPollSuggestions:frame.origin.x translationLanguage:frame.origin.y, frame.size.width, frame.size.height, language];
  [(CKMessageEntryContentViewAccessibility *)language _accessibilityLoadAccessibilityInformation];

  return language;
}

- (void)setPluginEntryViewController:(id)controller
{
  controllerCopy = controller;
  v6.receiver = self;
  v6.super_class = CKMessageEntryContentViewAccessibility;
  [(CKMessageEntryContentViewAccessibility *)&v6 setPluginEntryViewController:controllerCopy];
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