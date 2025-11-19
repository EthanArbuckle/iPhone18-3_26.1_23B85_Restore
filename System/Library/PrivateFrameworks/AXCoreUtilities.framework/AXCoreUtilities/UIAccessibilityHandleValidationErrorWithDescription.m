@interface UIAccessibilityHandleValidationErrorWithDescription
@end

@implementation UIAccessibilityHandleValidationErrorWithDescription

void ____UIAccessibilityHandleValidationErrorWithDescription_block_invoke_2()
{
  if (AXShouldLogValidationErrors())
  {
    v0 = AXLogValidations();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_error_impl(&dword_19159B000, v0, OS_LOG_TYPE_ERROR, "UIAccessibility validation error: see log output above.", v1, 2u);
    }
  }

  abort();
}

@end