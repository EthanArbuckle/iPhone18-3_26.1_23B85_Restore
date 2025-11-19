@interface SessionOverlayPresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)accessibilityAnnounceEvent:(id)a3;
+ (void)accessibilityAnnounceTimer:(double)a3 start:(BOOL)a4;
@end

@implementation SessionOverlayPresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.AccessibilitySessionOverlayPresenter" hasClassMethod:@"accessibilityAnnounceEvent:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SeymourUI.AccessibilitySessionOverlayPresenter" hasClassMethod:@"accessibilityAnnounceTimer:start:" withFullSignature:{"v", "d", "B", 0}];
}

+ (void)accessibilityAnnounceEvent:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SessionOverlayPresenterAccessibility;
  v3 = a3;
  objc_msgSendSuper2(&v4, sel_accessibilityAnnounceEvent_, v3);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v3);
}

+ (void)accessibilityAnnounceTimer:(double)a3 start:(BOOL)a4
{
  v4 = a4;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___SessionOverlayPresenterAccessibility;
  objc_msgSendSuper2(&v13, sel_accessibilityAnnounceTimer_start_);
  if (v4)
  {
    v6 = (a3 % 60);
    v7 = MEMORY[0x29EDBA0F8];
    if (a3 < 60)
    {
      v8 = accessibilityLocalizedString(@"timer.start.short.format");
      [v7 stringWithFormat:v8, v6, v12];
    }

    else
    {
      v8 = accessibilityLocalizedString(@"timer.start.long.format");
      [v7 stringWithFormat:v8, a3 / 0x3CuLL, v6];
    }
    v10 = ;

    v11 = *MEMORY[0x29EDC7EA8];
  }

  else
  {
    v9 = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"timer.end");
    v11 = v9;
  }

  UIAccessibilityPostNotification(v11, v10);
}

@end