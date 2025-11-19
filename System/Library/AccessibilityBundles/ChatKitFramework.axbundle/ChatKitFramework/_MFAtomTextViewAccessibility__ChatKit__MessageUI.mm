@interface _MFAtomTextViewAccessibility__ChatKit__MessageUI
- (unint64_t)accessibilityTraits;
@end

@implementation _MFAtomTextViewAccessibility__ChatKit__MessageUI

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = _MFAtomTextViewAccessibility__ChatKit__MessageUI;
  v3 = [(_MFAtomTextViewAccessibility__ChatKit__MessageUI *)&v7 accessibilityTraits];
  v4 = [(_MFAtomTextViewAccessibility__ChatKit__MessageUI *)self _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:0];
  if (v4)
  {
    v5 = ~*MEMORY[0x29EDC7598];
  }

  else
  {
    v5 = -1;
  }

  return v5 & v3;
}

@end