@interface EKCalendarSharedCalendarNotification
- (BOOL)couldBeJunk;
- (EKCalendarSharedCalendarNotification)initWithType:(int64_t)type;
@end

@implementation EKCalendarSharedCalendarNotification

- (EKCalendarSharedCalendarNotification)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = EKCalendarSharedCalendarNotification;
  v5 = [(EKCalendarNotification *)&v8 initWithType:?];
  v6 = v5;
  if (type != 8 && v5)
  {
    [(EKCalendarSharedCalendarNotification *)a2 initWithType:v5];
  }

  return v6;
}

- (BOOL)couldBeJunk
{
  calendar = [(EKCalendarNotification *)self calendar];
  couldBeJunk = [calendar couldBeJunk];

  return couldBeJunk;
}

- (void)initWithType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKCalendarSharedCalendarNotification.m" lineNumber:20 description:@"Invalid type for EKCalendarSharedCalendarNotification."];
}

@end