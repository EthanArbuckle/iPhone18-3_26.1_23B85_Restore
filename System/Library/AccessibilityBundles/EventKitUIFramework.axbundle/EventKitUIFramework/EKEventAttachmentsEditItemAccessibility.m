@interface EKEventAttachmentsEditItemAccessibility
- (id)cellForSubitemAtIndex:(unint64_t)a3;
@end

@implementation EKEventAttachmentsEditItemAccessibility

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = EKEventAttachmentsEditItemAccessibility;
  v3 = [(EKEventAttachmentsEditItemAccessibility *)&v6 cellForSubitemAtIndex:a3];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v4];

  return v3;
}

@end