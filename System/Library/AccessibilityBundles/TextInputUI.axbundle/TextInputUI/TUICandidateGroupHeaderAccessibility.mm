@interface TUICandidateGroupHeaderAccessibility
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
@end

@implementation TUICandidateGroupHeaderAccessibility

- (id)accessibilityLabel
{
  v2 = [(TUICandidateGroupHeaderAccessibility *)self safeStringForKey:@"text"];
  v3 = [v2 mutableCopy];
  if (!CFStringTransform(v3, 0, @"[:Block=Kangxi_Radicals:] NFKC", 0))
  {
    _AXAssert();
  }

  v4 = v3;
  v5 = v4;
  if (![(__CFString *)v4 length])
  {
    v5 = v2;
  }

  return v5;
}

- (id)accessibilityHeaderElements
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = self;
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

@end