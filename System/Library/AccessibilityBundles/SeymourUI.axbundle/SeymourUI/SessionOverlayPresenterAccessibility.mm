@interface SessionOverlayPresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
+ (void)accessibilityAnnounceEvent:(id)event;
+ (void)accessibilityAnnounceTimer:(double)timer start:(BOOL)start;
@end

@implementation SessionOverlayPresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.AccessibilitySessionOverlayPresenter" hasClassMethod:@"accessibilityAnnounceEvent:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SeymourUI.AccessibilitySessionOverlayPresenter" hasClassMethod:@"accessibilityAnnounceTimer:start:" withFullSignature:{"v", "d", "B", 0}];
}

+ (void)accessibilityAnnounceEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SessionOverlayPresenterAccessibility;
  eventCopy = event;
  objc_msgSendSuper2(&v4, sel_accessibilityAnnounceEvent_, eventCopy);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], eventCopy);
}

+ (void)accessibilityAnnounceTimer:(double)timer start:(BOOL)start
{
  startCopy = start;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___SessionOverlayPresenterAccessibility;
  objc_msgSendSuper2(&v13, sel_accessibilityAnnounceTimer_start_);
  if (startCopy)
  {
    v6 = (timer % 60);
    v7 = MEMORY[0x29EDBA0F8];
    if (timer < 60)
    {
      v8 = accessibilityLocalizedString(@"timer.start.short.format");
      [v7 stringWithFormat:v8, v6, v12];
    }

    else
    {
      v8 = accessibilityLocalizedString(@"timer.start.long.format");
      [v7 stringWithFormat:v8, timer / 0x3CuLL, v6];
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