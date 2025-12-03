@interface EKEventAttachmentsEditItemAccessibility
- (id)cellForSubitemAtIndex:(unint64_t)index;
@end

@implementation EKEventAttachmentsEditItemAccessibility

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = EKEventAttachmentsEditItemAccessibility;
  v3 = [(EKEventAttachmentsEditItemAccessibility *)&v6 cellForSubitemAtIndex:index];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];

  return v3;
}

@end