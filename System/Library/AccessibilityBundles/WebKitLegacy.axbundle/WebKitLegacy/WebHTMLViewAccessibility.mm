@interface WebHTMLViewAccessibility
- (id)accessibilityElements;
@end

@implementation WebHTMLViewAccessibility

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(WebHTMLViewAccessibility *)self safeValueForKey:@"accessibilityRootElement"];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end