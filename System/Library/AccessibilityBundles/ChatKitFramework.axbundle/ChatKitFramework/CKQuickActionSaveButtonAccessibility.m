@interface CKQuickActionSaveButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CKQuickActionSaveButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKQuickActionSaveButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKQuickActionSaveButtonAccessibility *)&v3 accessibilityTraits];
}

@end