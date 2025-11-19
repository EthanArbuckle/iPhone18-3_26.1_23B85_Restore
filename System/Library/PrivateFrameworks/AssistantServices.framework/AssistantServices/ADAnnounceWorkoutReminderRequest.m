@interface ADAnnounceWorkoutReminderRequest
- (ADAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)a3 completion:(id)a4;
@end

@implementation ADAnnounceWorkoutReminderRequest

- (ADAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ADAnnounceWorkoutReminderRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:1 platform:1 completion:a4];
  if (v7)
  {
    v8 = [v6 copy];
    workoutReminder = v7->_workoutReminder;
    v7->_workoutReminder = v8;

    [(ADAnnounceNotificationRequest *)v7 setAnnouncementType:8];
    [(ADAnnouncementRequest *)v7 setRequiresOpportuneTime:0];
  }

  return v7;
}

@end