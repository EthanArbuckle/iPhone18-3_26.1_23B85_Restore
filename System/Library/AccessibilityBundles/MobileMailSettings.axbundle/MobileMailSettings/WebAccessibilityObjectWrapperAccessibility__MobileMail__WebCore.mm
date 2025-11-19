@interface WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore
- (BOOL)accessibilityRespondsToUserInteraction;
@end

@implementation WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore

- (BOOL)accessibilityRespondsToUserInteraction
{
  v3 = [(WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2DFDF0](@"MFSignatureTextView", a2)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore;
  return [(WebAccessibilityObjectWrapperAccessibility__MobileMail__WebCore *)&v5 accessibilityRespondsToUserInteraction];
}

@end