@interface LUIUserGridViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation LUIUserGridViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __68__LUIUserGridViewControllerAccessibility_accessibilityPerformEscape__block_invoke;
  v9 = &unk_29F2CA3A0;
  selfCopy = self;
  v11 = &v12;
  AXPerformSafeBlock();
  if (v13[3])
  {
    accessibilityPerformEscape = 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = LUIUserGridViewControllerAccessibility;
    accessibilityPerformEscape = [(LUIUserGridViewControllerAccessibility *)&v5 accessibilityPerformEscape];
    *(v13 + 24) = accessibilityPerformEscape;
  }

  _Block_object_dispose(&v12, 8);
  return accessibilityPerformEscape;
}

uint64_t __68__LUIUserGridViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) vibrantButtonPressed:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end