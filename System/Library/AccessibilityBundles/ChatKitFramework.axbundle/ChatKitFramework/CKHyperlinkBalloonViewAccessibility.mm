@interface CKHyperlinkBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
@end

@implementation CKHyperlinkBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKHyperlinkBalloonView" hasInstanceMethod:@"textView:shouldInteractWithURL:inRange:" withFullSignature:{"B", "@", "@", "{_NSRange=QQ}", 0}];
  [v3 validateClass:@"CKHyperlinkBalloonView" isKindOfClass:@"CKTextBalloonView"];
  [v3 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityActivate
{
  v2 = [(CKHyperlinkBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = [v2 accessibilityActivate];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [v11 isClarityBoardEnabled];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CKHyperlinkBalloonViewAccessibility;
    v13 = [(CKHyperlinkBalloonViewAccessibility *)&v15 textView:v9 shouldInteractWithURL:v10 inRange:location, length];
  }

  return v13;
}

@end