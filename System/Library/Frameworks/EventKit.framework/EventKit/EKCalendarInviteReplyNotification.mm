@interface EKCalendarInviteReplyNotification
- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4;
- (EKCalendarInviteReplyNotification)initWithType:(int64_t)a3;
@end

@implementation EKCalendarInviteReplyNotification

- (EKCalendarInviteReplyNotification)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = EKCalendarInviteReplyNotification;
  v5 = [(EKCalendarNotification *)&v8 initWithType:?];
  v6 = v5;
  if ((a3 - 11) <= 0xFFFFFFFFFFFFFFFDLL && v5)
  {
    [(EKCalendarInviteReplyNotification *)a2 initWithType:v5];
  }

  return v6;
}

- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EKCalendarInviteReplyNotification *)self inviteReplyNotificationFromEventStore:v6];
  if (v7)
  {
    v8 = [v6 removeInviteReplyNotification:v7 error:a4];
  }

  else
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendarInviteReplyNotification acknowledgeWithEventStore:v9 error:?];
    }

    v8 = 1;
  }

  return v8;
}

- (void)initWithType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKCalendarInviteReplyNotification.m" lineNumber:22 description:@"Invalid type for EKCalendarInviteReplyNotification."];
}

- (void)acknowledgeWithEventStore:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Attempted to acknowledge calendar invite reply notification with objectID %{public}@, but it was not found. Silently ignoring this request.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end