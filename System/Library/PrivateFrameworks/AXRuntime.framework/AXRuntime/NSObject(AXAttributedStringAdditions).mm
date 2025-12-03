@interface NSObject(AXAttributedStringAdditions)
- (void)_setAccessibilityAttributedLocalizedString:()AXAttributedStringAdditions;
@end

@implementation NSObject(AXAttributedStringAdditions)

- (void)_setAccessibilityAttributedLocalizedString:()AXAttributedStringAdditions
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NSObject(AXAttributedStringAdditions) _setAccessibilityAttributedLocalizedString:v5];
    }

    __assert_rtn("[NSObject(AXAttributedStringAdditions) _setAccessibilityAttributedLocalizedString:]", "AXAttributedString.m", 820, "false");
  }

  v6 = v4;
  objc_setAssociatedObject(self, &AXAttributedLocalizedString, v4, 0x301);
}

@end