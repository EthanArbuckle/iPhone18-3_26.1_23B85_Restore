@interface TUICandidateArrowButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation TUICandidateArrowButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x29ED3C2C0](@"UIKeyboardCandidateController" a2)];
  v3 = [v2 safeBoolForKey:@"isExtended"];

  if (v3)
  {
    v4 = @"collapse.suggestions";
  }

  else
  {
    v4 = @"more.candidates";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

@end