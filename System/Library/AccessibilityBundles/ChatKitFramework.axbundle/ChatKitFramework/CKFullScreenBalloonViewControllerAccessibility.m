@interface CKFullScreenBalloonViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKFullScreenBalloonViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  v2 = [(CKFullScreenBalloonViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = v2;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end