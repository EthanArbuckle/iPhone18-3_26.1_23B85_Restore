@interface CKLinkBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKLinkBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKLinkBalloonView" hasInstanceMethod:@"linkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBalloonView" hasInstanceMethod:@"tapGestureRecognized:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKLinkBalloonViewAccessibility *)self safeValueForKey:@"linkView"];
  v4 = v3;
  if (v3)
  {
    accessibilityLabel = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKLinkBalloonViewAccessibility;
    accessibilityLabel = [(CKLinkBalloonViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

@end