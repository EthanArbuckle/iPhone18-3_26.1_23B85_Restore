@interface CKHyperlinkBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
@end

@implementation CKHyperlinkBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKHyperlinkBalloonView" hasInstanceMethod:@"textView:shouldInteractWithURL:inRange:" withFullSignature:{"B", "@", "@", "{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"CKHyperlinkBalloonView" isKindOfClass:@"CKTextBalloonView"];
  [validationsCopy validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityActivate
{
  v2 = [(CKHyperlinkBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  accessibilityActivate = [v2 accessibilityActivate];

  return accessibilityActivate;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  lCopy = l;
  v11 = objc_opt_new();
  isClarityBoardEnabled = [v11 isClarityBoardEnabled];

  if (isClarityBoardEnabled)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CKHyperlinkBalloonViewAccessibility;
    v13 = [(CKHyperlinkBalloonViewAccessibility *)&v15 textView:viewCopy shouldInteractWithURL:lCopy inRange:location, length];
  }

  return v13;
}

@end