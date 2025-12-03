@interface EKStringFactory
+ (id)sharedInstance;
- (id)dateStringForDate:(double)date allDay:(BOOL)day shortFormat:(BOOL)format;
- (id)dateStringForDate:(double)date allDay:(BOOL)day standalone:(BOOL)standalone shortFormat:(BOOL)format;
- (id)dateStringForEventInvitation:(id)invitation timeZone:(id)zone;
- (id)dateStringForEventInvitationWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day;
- (id)dateStringForSuggestedEventWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day showTimeZone:(BOOL)timeZone;
- (id)timeStringForDate:(double)date inTimeZone:(id)zone;
@end

@implementation EKStringFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[EKStringFactory sharedInstance];
  }

  v3 = sharedInstance___shared;

  return v3;
}

void __33__EKStringFactory_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(EKStringFactory);
  v1 = sharedInstance___shared;
  sharedInstance___shared = v0;
}

- (id)timeStringForDate:(double)date inTimeZone:(id)zone
{
  v5 = MEMORY[0x1E695DF00];
  zoneCopy = zone;
  v7 = [v5 dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  mEMORY[0x1E69933D0] = [MEMORY[0x1E69933D0] sharedGenerator];
  v9 = [v7 dateByAddingTimeInterval:date];
  v10 = [mEMORY[0x1E69933D0] timeStringForDate:v9 inTimeZone:zoneCopy];

  return v10;
}

- (id)dateStringForDate:(double)date allDay:(BOOL)day shortFormat:(BOOL)format
{
  formatCopy = format;
  dayCopy = day;
  v8 = [MEMORY[0x1E695DF00] dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  mEMORY[0x1E69933D0] = [MEMORY[0x1E69933D0] sharedGenerator];
  v10 = [v8 dateByAddingTimeInterval:date];
  v11 = [mEMORY[0x1E69933D0] dateStringForDate:v10 allDay:dayCopy shortFormat:formatCopy];

  return v11;
}

- (id)dateStringForDate:(double)date allDay:(BOOL)day standalone:(BOOL)standalone shortFormat:(BOOL)format
{
  formatCopy = format;
  standaloneCopy = standalone;
  dayCopy = day;
  v10 = [MEMORY[0x1E695DF00] dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  mEMORY[0x1E69933D0] = [MEMORY[0x1E69933D0] sharedGenerator];
  v12 = [v10 dateByAddingTimeInterval:date];
  v13 = [mEMORY[0x1E69933D0] dateStringForDate:v12 allDay:dayCopy standalone:standaloneCopy shortFormat:formatCopy];

  return v13;
}

- (id)dateStringForEventInvitation:(id)invitation timeZone:(id)zone
{
  zoneCopy = zone;
  invitationCopy = invitation;
  startDate = [invitationCopy startDate];
  endDate = [invitationCopy endDate];
  isAllDay = [invitationCopy isAllDay];

  v11 = [(EKStringFactory *)self dateStringForEventInvitationWithStartDate:startDate endDate:endDate timeZone:zoneCopy allDay:isAllDay];

  return v11;
}

- (id)dateStringForEventInvitationWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day
{
  dayCopy = day;
  v9 = MEMORY[0x1E69933D0];
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  sharedGenerator = [v9 sharedGenerator];
  v14 = [sharedGenerator dateStringForEventInvitationWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy allDay:dayCopy withFormat:0 showTimeZone:0];

  return v14;
}

- (id)dateStringForSuggestedEventWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day showTimeZone:(BOOL)timeZone
{
  timeZoneCopy = timeZone;
  dayCopy = day;
  v11 = MEMORY[0x1E69933D0];
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  sharedGenerator = [v11 sharedGenerator];
  v16 = [sharedGenerator dateStringForEventInvitationWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy allDay:dayCopy withFormat:1 showTimeZone:timeZoneCopy];

  return v16;
}

@end