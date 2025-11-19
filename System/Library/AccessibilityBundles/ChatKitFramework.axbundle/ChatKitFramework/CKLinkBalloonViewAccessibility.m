@interface CKLinkBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKLinkBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKLinkBalloonView" hasInstanceMethod:@"linkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"tapGestureRecognized:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKLinkBalloonViewAccessibility *)self safeValueForKey:@"linkView"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKLinkBalloonViewAccessibility;
    v5 = [(CKLinkBalloonViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end