@interface PUIProgressWindowAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityValue;
- (void)dealloc;
@end

@implementation PUIProgressWindowAccessibility

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"data.migration.value");
  [(PUIProgressWindowAccessibility *)self safeFloatForKey:@"_currentProgress"];
  v6 = [v3 localizedStringWithFormat:v4, roundf(v5)];

  return v6;
}

- (CGRect)accessibilityFrame
{
  MEMORY[0x2A1C5EB80](self, a2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(PUIProgressWindowAccessibility *)self _accessibilityUnregister];
  }

  v3.receiver = self;
  v3.super_class = PUIProgressWindowAccessibility;
  [(PUIProgressWindowAccessibility *)&v3 dealloc];
}

@end