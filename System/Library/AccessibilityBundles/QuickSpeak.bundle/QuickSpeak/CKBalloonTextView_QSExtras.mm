@interface CKBalloonTextView_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation CKBalloonTextView_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBalloonTextView" isKindOfClass:@"UITextView"];
}

- (id)_accessibilityQuickSpeakContent
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 text];

  return v3;
}

@end