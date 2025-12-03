@interface SiriCalendarSyncSystemSetting
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
@end

@implementation SiriCalendarSyncSystemSetting

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  anchorCopy = anchor;
  v5 = MEMORY[0x277CBEA80];
  infoCopy = info;
  currentCalendar = [v5 currentCalendar];
  calendarIdentifier = [currentCalendar calendarIdentifier];

  if ([anchorCopy isEqualToString:calendarIdentifier])
  {
    [infoCopy setPostAnchor:anchorCopy];
    [infoCopy setObject:0];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D47120]);
    v10 = [MEMORY[0x277CBEBC0] URLWithString:@"CalendarSystemSettingIdentifier"];
    [v9 setIdentifier:v10];

    [v9 setCalendarType:calendarIdentifier];
    [infoCopy setObject:v9];
    [infoCopy setPostAnchor:calendarIdentifier];
  }

  [infoCopy setIsDelete:0];
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  infoCopy = info;
  if (([validity isEqualToString:@"CalendarSystemSettingValidity"] & 1) == 0)
  {
    [infoCopy resetWithValidity:@"CalendarSystemSettingValidity"];
  }
}

@end