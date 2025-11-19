@interface EKCalendarResourceChangeNotification
- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4;
- (BOOL)needsAlert;
- (EKCalendarResourceChangeNotification)initWithType:(int64_t)a3;
@end

@implementation EKCalendarResourceChangeNotification

- (EKCalendarResourceChangeNotification)initWithType:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = EKCalendarResourceChangeNotification;
  return [(EKCalendarNotification *)&v4 initWithType:a3];
}

- (BOOL)needsAlert
{
  v5.receiver = self;
  v5.super_class = EKCalendarResourceChangeNotification;
  v3 = [(EKCalendarNotification *)&v5 needsAlert];
  if (v3)
  {
    LOBYTE(v3) = ![(EKCalendarNotification *)self hiddenFromNotificationCenter];
  }

  return v3;
}

- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EKCalendarResourceChangeNotification *)self resourceChangeFromEventStore:v6];
  if (!v7)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendarResourceChangeNotification acknowledgeWithEventStore:v9 error:?];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithCADResult:1010];
      *a4 = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v8 = [v6 removeResourceChange:v7 error:a4];
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