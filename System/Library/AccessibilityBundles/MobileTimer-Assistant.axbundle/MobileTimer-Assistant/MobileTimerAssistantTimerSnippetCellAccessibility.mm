@interface MobileTimerAssistantTimerSnippetCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MobileTimerAssistantTimerSnippetCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MobileTimerAssistantTimerSnippetCellAccessibility *)self safeValueForKey:@"_timeView"];
  v3 = [v2 safeValueForKey:@"_running"];
  bOOLValue = [v3 BOOLValue];

  accessibilityLabel = [v2 accessibilityLabel];
  if (bOOLValue)
  {
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v8 = accessibilityLocalizedString(@"timer.cell.paused");
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

@end