@interface SBHCalendarApplicationIconAccessibility
- (id)accessibilityValue;
@end

@implementation SBHCalendarApplicationIconAccessibility

- (id)accessibilityValue
{
  if (accessibilityValue_didSet != 1 || CFAbsoluteTimeGetCurrent() - *&accessibilityValue_LastSetTime > 300.0 || (accessibilityValue_didSet & 1) == 0)
  {
    accessibilityValue_didSet = 1;
    date = [MEMORY[0x29EDB8DB0] date];
    v4 = AXDateStringForFormat();

    v5 = accessibilityValue_Value;
    accessibilityValue_Value = v4;

    accessibilityValue_LastSetTime = CFAbsoluteTimeGetCurrent();
  }

  v8 = [(SBHCalendarApplicationIconAccessibility *)self safeStringForKey:@"_axIconValue"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end