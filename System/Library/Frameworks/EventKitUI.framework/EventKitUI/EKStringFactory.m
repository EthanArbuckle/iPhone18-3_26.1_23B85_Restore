@interface EKStringFactory
+ (id)sharedInstance;
- (id)dateStringForDate:(double)a3 allDay:(BOOL)a4 shortFormat:(BOOL)a5;
- (id)dateStringForDate:(double)a3 allDay:(BOOL)a4 standalone:(BOOL)a5 shortFormat:(BOOL)a6;
- (id)dateStringForEventInvitation:(id)a3 timeZone:(id)a4;
- (id)dateStringForEventInvitationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6;
- (id)dateStringForSuggestedEventWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 showTimeZone:(BOOL)a7;
- (id)timeStringForDate:(double)a3 inTimeZone:(id)a4;
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

- (id)timeStringForDate:(double)a3 inTimeZone:(id)a4
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  v7 = [v5 dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  v8 = [MEMORY[0x1E69933D0] sharedGenerator];
  v9 = [v7 dateByAddingTimeInterval:a3];
  v10 = [v8 timeStringForDate:v9 inTimeZone:v6];

  return v10;
}

- (id)dateStringForDate:(double)a3 allDay:(BOOL)a4 shortFormat:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [MEMORY[0x1E695DF00] dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  v9 = [MEMORY[0x1E69933D0] sharedGenerator];
  v10 = [v8 dateByAddingTimeInterval:a3];
  v11 = [v9 dateStringForDate:v10 allDay:v6 shortFormat:v5];

  return v11;
}

- (id)dateStringForDate:(double)a3 allDay:(BOOL)a4 standalone:(BOOL)a5 shortFormat:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = [MEMORY[0x1E695DF00] dateFromISO8601String:@"2001-01-01T00:00:00Z"];
  v11 = [MEMORY[0x1E69933D0] sharedGenerator];
  v12 = [v10 dateByAddingTimeInterval:a3];
  v13 = [v11 dateStringForDate:v12 allDay:v8 standalone:v7 shortFormat:v6];

  return v13;
}

- (id)dateStringForEventInvitation:(id)a3 timeZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 startDate];
  v9 = [v7 endDate];
  v10 = [v7 isAllDay];

  v11 = [(EKStringFactory *)self dateStringForEventInvitationWithStartDate:v8 endDate:v9 timeZone:v6 allDay:v10];

  return v11;
}

- (id)dateStringForEventInvitationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6
{
  v6 = a6;
  v9 = MEMORY[0x1E69933D0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 sharedGenerator];
  v14 = [v13 dateStringForEventInvitationWithStartDate:v12 endDate:v11 timeZone:v10 allDay:v6 withFormat:0 showTimeZone:0];

  return v14;
}

- (id)dateStringForSuggestedEventWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 showTimeZone:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = MEMORY[0x1E69933D0];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v11 sharedGenerator];
  v16 = [v15 dateStringForEventInvitationWithStartDate:v14 endDate:v13 timeZone:v12 allDay:v8 withFormat:1 showTimeZone:v7];

  return v16;
}

@end