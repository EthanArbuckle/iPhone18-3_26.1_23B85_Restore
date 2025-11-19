@interface CKAvatarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CKAvatarButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKAvatarButtonAccessibility *)self safeValueForKey:@"avatarView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end