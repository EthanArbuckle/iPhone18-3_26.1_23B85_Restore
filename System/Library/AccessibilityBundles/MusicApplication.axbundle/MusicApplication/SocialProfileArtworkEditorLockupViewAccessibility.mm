@interface SocialProfileArtworkEditorLockupViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SocialProfileArtworkEditorLockupViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SocialProfileArtworkEditorLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SocialProfileArtworkEditorLockupViewAccessibility *)&v3 accessibilityTraits];
}

@end