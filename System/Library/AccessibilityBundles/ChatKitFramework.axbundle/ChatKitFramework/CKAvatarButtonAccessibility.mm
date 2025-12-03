@interface CKAvatarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CKAvatarButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKAvatarButtonAccessibility *)self safeValueForKey:@"avatarView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end