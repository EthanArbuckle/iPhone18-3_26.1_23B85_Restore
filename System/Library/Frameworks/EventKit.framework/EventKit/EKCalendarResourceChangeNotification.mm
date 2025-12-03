@interface EKCalendarResourceChangeNotification
- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error;
- (BOOL)needsAlert;
- (EKCalendarResourceChangeNotification)initWithType:(int64_t)type;
@end

@implementation EKCalendarResourceChangeNotification

- (EKCalendarResourceChangeNotification)initWithType:(int64_t)type
{
  v4.receiver = self;
  v4.super_class = EKCalendarResourceChangeNotification;
  return [(EKCalendarNotification *)&v4 initWithType:type];
}

- (BOOL)needsAlert
{
  v5.receiver = self;
  v5.super_class = EKCalendarResourceChangeNotification;
  needsAlert = [(EKCalendarNotification *)&v5 needsAlert];
  if (needsAlert)
  {
    LOBYTE(needsAlert) = ![(EKCalendarNotification *)self hiddenFromNotificationCenter];
  }

  return needsAlert;
}

- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = [(EKCalendarResourceChangeNotification *)self resourceChangeFromEventStore:storeCopy];
  if (!v7)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendarResourceChangeNotification acknowledgeWithEventStore:v9 error:?];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithCADResult:1010];
      *error = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v8 = [storeCopy removeResourceChange:v7 error:error];
LABEL_8:

  return v8;
}

- (void)acknowledgeWithEventStore:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Failed to load EKResourceChange with objectID %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end