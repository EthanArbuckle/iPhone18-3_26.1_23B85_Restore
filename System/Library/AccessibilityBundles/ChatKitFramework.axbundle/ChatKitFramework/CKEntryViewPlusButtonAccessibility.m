@interface CKEntryViewPlusButtonAccessibility
- (BOOL)accessibilityActivate;
- (unint64_t)accessibilityTraits;
@end

@implementation CKEntryViewPlusButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKEntryViewPlusButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKEntryViewPlusButtonAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  v4.receiver = self;
  v4.super_class = CKEntryViewPlusButtonAccessibility;
  v2 = [(CKEntryViewPlusButtonAccessibility *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  return v2;
}

@end