@interface CKNanoReplyTextInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation CKNanoReplyTextInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKNanoReplyTextInputView" hasProperty:@"sendMenuButton" withType:"@"];
  [v3 validateClass:@"CKNanoReplyTextInputView" hasProperty:@"textInputView" withType:"@"];
}

- (id)accessibilityElements
{
  v3 = objc_opt_new();
  v4 = [(CKNanoReplyTextInputViewAccessibility *)self safeValueForKey:@"sendMenuButton"];
  [v3 axSafelyAddObject:v4];

  v5 = [(CKNanoReplyTextInputViewAccessibility *)self safeValueForKey:@"textInputView"];
  [v3 axSafelyAddObject:v5];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end