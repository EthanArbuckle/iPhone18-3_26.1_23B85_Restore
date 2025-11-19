@interface EKCalendarShareePicker
- (id)peoplePickerPrompt;
@end

@implementation EKCalendarShareePicker

- (id)peoplePickerPrompt
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Add participants to this Calendar." value:&stru_1F4EF6790 table:0];

  return v3;
}

@end