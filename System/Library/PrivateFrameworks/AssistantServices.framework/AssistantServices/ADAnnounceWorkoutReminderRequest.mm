@interface ADAnnounceWorkoutReminderRequest
- (ADAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)reminder completion:(id)completion;
@end

@implementation ADAnnounceWorkoutReminderRequest

- (ADAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)reminder completion:(id)completion
{
  reminderCopy = reminder;
  v11.receiver = self;
  v11.super_class = ADAnnounceWorkoutReminderRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:1 platform:1 completion:completion];
  if (v7)
  {
    v8 = [reminderCopy copy];
    workoutReminder = v7->_workoutReminder;
    v7->_workoutReminder = v8;

    [(ADAnnounceNotificationRequest *)v7 setAnnouncementType:8];
    [(ADAnnouncementRequest *)v7 setRequiresOpportuneTime:0];
  }

  return v7;
}

@end