@interface VSLinkedOnOrAfterChecker
- (BOOL)shouldPerformBehavior:(int64_t)behavior;
- (id)_minimumVersionsForBehavior:(int64_t)behavior;
@end

@implementation VSLinkedOnOrAfterChecker

- (id)_minimumVersionsForBehavior:(int64_t)behavior
{
  v4 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:2];
  v5 = v4;
  if (behavior <= 2)
  {
    v6 = *(&off_278B73D10 + behavior);
    v7 = *(&off_278B73D28 + behavior);
    v8 = *(&off_278B73D40 + behavior);
    [v4 addPointer:v6];
    [v5 addPointer:v7];
    [v5 addPointer:v8];
  }

  return v5;
}

- (BOOL)shouldPerformBehavior:(int64_t)behavior
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(VSLinkedOnOrAfterChecker *)self _minimumVersionsForBehavior:?];
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      [v4 pointerAtIndex:v5];
      if (dyld_program_sdk_at_least())
      {
        break;
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_5;
      }
    }

    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      behaviorCopy2 = behavior;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Linked against SDK version that performs behavior %lu.", &v9, 0xCu);
    }

    v7 = 1;
  }

  else
  {
LABEL_5:
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      behaviorCopy2 = behavior;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Linked against SDK that pre-dates behavior %lu.", &v9, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end