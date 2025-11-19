@interface CKSuggestedReplyBalloonViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CKSuggestedReplyBalloonViewAccessibility

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = CKSuggestedReplyBalloonViewAccessibility;
  v3 = [(CKSuggestedReplyBalloonViewAccessibility *)&v8 accessibilityLabel];
  v4 = [(CKSuggestedReplyBalloonViewAccessibility *)self safeSwiftValueForKey:@"view"];
  v7 = UIAXStringForAllChildren();
  v5 = __UIAXStringForVariables();

  return v5;
}

@end