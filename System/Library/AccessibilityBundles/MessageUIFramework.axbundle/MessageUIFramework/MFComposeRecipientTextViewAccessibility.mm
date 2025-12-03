@interface MFComposeRecipientTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_didRemoveRecipient:(id)recipient;
- (void)_ensureAddButton;
- (void)_updateInactiveTextView;
- (void)didMoveToWindow;
@end

@implementation MFComposeRecipientTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFComposeRecipientTextView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceMethod:@"_updateInactiveTextView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceMethod:@"_ensureAddButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceVariable:@"_inactiveTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceVariable:@"_atomContainerView" withType:"UIView"];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceMethod:@"_didRemoveRecipient:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"didMoveToWindow" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MFComposeRecipientTextView" hasInstanceVariable:@"_recipientsBeingRemoved" withType:"NSMutableArray"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientTextViewAccessibility;
  [(MFComposeRecipientTextViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFComposeRecipientTextViewAccessibility *)self safeValueForKey:@"_atomContainerView"];
  [v3 setAccessibilityIdentifier:@"RecipientAtomContainerView"];
}

- (MFComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFComposeRecipientTextViewAccessibility;
  v3 = [(MFComposeRecipientTextViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MFComposeRecipientTextViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MFComposeRecipientTextViewAccessibility;
  [(MFComposeRecipientTextViewAccessibility *)&v3 didMoveToWindow];
  [(MFComposeRecipientTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateInactiveTextView
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientTextViewAccessibility;
  [(MFComposeRecipientTextViewAccessibility *)&v4 _updateInactiveTextView];
  v3 = [(MFComposeRecipientTextViewAccessibility *)self safeValueForKey:@"_inactiveTextView"];
  [v3 setIsAccessibilityElement:0];
}

- (void)_ensureAddButton
{
  v3.receiver = self;
  v3.super_class = MFComposeRecipientTextViewAccessibility;
  [(MFComposeRecipientTextViewAccessibility *)&v3 _ensureAddButton];
  [(MFComposeRecipientTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_didRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [(MFComposeRecipientTextViewAccessibility *)self safeArrayForKey:@"_recipientsBeingRemoved"];
  if ([v5 indexOfObject:recipientCopy] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *MEMORY[0x29EDC7EA8];
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"remove.item.announce");
    v9 = [recipientCopy safeValueForKey:@"displayString"];
    v10 = [v7 stringWithFormat:v8, v9];
    UIAccessibilityPostNotification(v6, v10);
  }

  v11.receiver = self;
  v11.super_class = MFComposeRecipientTextViewAccessibility;
  [(MFComposeRecipientTextViewAccessibility *)&v11 _didRemoveRecipient:recipientCopy];
}

@end