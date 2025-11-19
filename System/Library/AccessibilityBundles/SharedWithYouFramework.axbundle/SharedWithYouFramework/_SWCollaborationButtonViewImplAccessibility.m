@interface _SWCollaborationButtonViewImplAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation _SWCollaborationButtonViewImplAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationButtonViewImplAccessibility;
  return *MEMORY[0x29EDC7F70] | [(_SWCollaborationButtonViewImplAccessibility *)&v3 accessibilityTraits];
}

@end