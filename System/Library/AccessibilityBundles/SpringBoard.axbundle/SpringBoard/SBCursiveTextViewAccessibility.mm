@interface SBCursiveTextViewAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)loadText:(id)a3 pointSize:(double)a4;
@end

@implementation SBCursiveTextViewAccessibility

- (void)loadText:(id)a3 pointSize:(double)a4
{
  v14.receiver = self;
  v14.super_class = SBCursiveTextViewAccessibility;
  v6 = a3;
  [(SBCursiveTextViewAccessibility *)&v14 loadText:v6 pointSize:a4];
  v7 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:v6];

  if (!v7)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v8 = [MEMORY[0x29EDBA0C0] propertyListWithData:v7 options:0 format:0 error:&v13];
  v9 = v13;
  if (!v9)
  {
    v12 = [v8 objectForKey:@"language"];
    [(SBCursiveTextViewAccessibility *)self setAccessibilityLanguage:v12];

LABEL_7:
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = AXLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBCursiveTextViewAccessibility loadText:v10 pointSize:v11];
  }

LABEL_8:
}

- (CGRect)accessibilityFrame
{
  v2 = self;
  v3 = [(SBCursiveTextViewAccessibility *)v2 window];
  [v3 frame];
  v5 = v4 * 0.5 + -150.0;
  v6 = [(SBCursiveTextViewAccessibility *)v2 window];
  [v6 frame];
  v8 = v7;
  v9 = [(SBCursiveTextViewAccessibility *)v2 window];

  v18.size.height = 300.0;
  v18.origin.x = 0.0;
  v18.origin.y = v5;
  v18.size.width = v8;
  v19 = UIAccessibilityConvertFrameToScreenCoordinates(v18, v9);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v4 = [(SBCursiveTextViewAccessibility *)self accessibilityLanguage];
  v5 = AXNSLocalizedStringForLocale();

  return v5;
}

- (id)accessibilityHint
{
  AXDeviceHasHomeButton();
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v4 = [(SBCursiveTextViewAccessibility *)self accessibilityLanguage];
  v5 = AXNSLocalizedStringForLocale();

  return v5;
}

- (void)loadText:(uint64_t)a1 pointSize:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_29C37A000, a2, OS_LOG_TYPE_ERROR, "Failed to create NSPropertyList: %{public}@", &v2, 0xCu);
}

@end