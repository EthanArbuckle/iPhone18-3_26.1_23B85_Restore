@interface _MKUserLocationViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation _MKUserLocationViewAccessibility

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = _MKUserLocationViewAccessibility;
  v2 = *MEMORY[0x29EDBDBF8] | [(_MKUserLocationViewAccessibility *)&v6 accessibilityTraits];
  v3 = NSClassFromString(&cfstr_Vkmapviewtourg.isa);
  if (v3)
  {
    v4 = v3;
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)v4 shouldSuppressLocationUpdates]& 1) == 0)
    {
      v2 |= *MEMORY[0x29EDBDCC0];
    }
  }

  return v2;
}

@end