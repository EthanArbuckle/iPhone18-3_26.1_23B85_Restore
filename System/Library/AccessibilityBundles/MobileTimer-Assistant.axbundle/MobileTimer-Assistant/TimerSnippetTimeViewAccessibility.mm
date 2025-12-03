@interface TimerSnippetTimeViewAccessibility
- (BOOL)updateDisplayWithTime:(double)time;
@end

@implementation TimerSnippetTimeViewAccessibility

- (BOOL)updateDisplayWithTime:(double)time
{
  v9.receiver = self;
  v9.super_class = TimerSnippetTimeViewAccessibility;
  v4 = [(TimerSnippetTimeViewAccessibility *)&v9 updateDisplayWithTime:?];
  v5 = [(TimerSnippetTimeViewAccessibility *)self safeValueForKey:@"_fireTime"];
  [v5 doubleValue];

  v6 = UIAXTimeStringForDuration();
  v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v6];
  [v7 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8B8]];
  [(TimerSnippetTimeViewAccessibility *)self setAccessibilityLabel:v7];

  return v4;
}

@end