@interface CKTranscriptMessageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilitySupplementaryFooterViews;
- (void)setFailed:(BOOL)failed;
@end

@implementation CKTranscriptMessageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"setFailed:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"failureButton" withFullSignature:{"@", 0}];
}

- (void)setFailed:(BOOL)failed
{
  v6.receiver = self;
  v6.super_class = CKTranscriptMessageCellAccessibility;
  [(CKTranscriptMessageCellAccessibility *)&v6 setFailed:failed];
  v4 = [(CKTranscriptMessageCellAccessibility *)self safeValueForKey:@"failureButton"];
  v5 = accessibilityLocalizedString(@"failure.button.text");
  [v4 setAccessibilityLabel:v5];
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_accessibilitySupplementaryFooterViews
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(CKTranscriptMessageCellAccessibility *)self safeValueForKey:@"failureButton"];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end