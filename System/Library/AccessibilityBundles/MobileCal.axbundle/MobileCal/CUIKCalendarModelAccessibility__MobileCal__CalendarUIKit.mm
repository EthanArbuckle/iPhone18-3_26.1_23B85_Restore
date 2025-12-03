@interface CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setSelectedDate:(id)date;
@end

@implementation CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKCalendarDate" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NSLocale" hasClassMethod:@"currentLocale" withFullSignature:{"@", 0}];
}

- (void)setSelectedDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit;
  [(CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit *)&v12 setSelectedDate:dateCopy];
  v5 = [(CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit *)self _accessibilityValueForKey:@"ShouldOutputChange"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = MEMORY[0x29EDBD7E8];
    date = [dateCopy date];
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