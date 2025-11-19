@interface CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setSelectedDate:(id)a3;
@end

@implementation CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKCalendarDate" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NSLocale" hasClassMethod:@"currentLocale" withFullSignature:{"@", 0}];
}

- (void)setSelectedDate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit;
  [(CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit *)&v12 setSelectedDate:v4];
  v5 = [(CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit *)self _accessibilityValueForKey:@"ShouldOutputChange"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = MEMORY[0x29EDBD7E8];
    v8 = [v4 date];
    v9 = AXDateStringForFormat();
    v10 = [v7 axAttributedStringWithString:v9];

    [v10 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD898]];
    v11 = *MEMORY[0x29EDC7EF0];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v10);
    MEMORY[0x29C2DF370](v11);
    [(CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit *)self _accessibilityRemoveValueForKey:@"ShouldOutputChange"];
  }
}

@end