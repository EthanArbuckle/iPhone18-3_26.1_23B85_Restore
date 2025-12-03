@interface MFMessageHeaderViewAccessibility
- (int64_t)accessibilityContainerType;
@end

@implementation MFMessageHeaderViewAccessibility

- (int64_t)accessibilityContainerType
{
  v2 = [(MFMessageHeaderViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_5 startWithSelf:0];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  _accessibilityMessageIndexDescription = [v3 _accessibilityMessageIndexDescription];

  return 4 * (_accessibilityMessageIndexDescription == 0);
}

uint64_t __62__MFMessageHeaderViewAccessibility_accessibilityContainerType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfexpandedmess_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end