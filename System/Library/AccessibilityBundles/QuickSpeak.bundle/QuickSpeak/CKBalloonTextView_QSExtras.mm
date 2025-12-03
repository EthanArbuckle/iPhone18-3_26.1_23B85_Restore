@interface CKBalloonTextView_QSExtras
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation CKBalloonTextView_QSExtras

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBalloonTextView" isKindOfClass:@"UITextView"];
}

- (id)_accessibilityQuickSpeakContent
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  text = [v2 text];

  return text;
}

@end