@interface ATXScreenLockStateDuetEvent
- (ATXScreenLockStateDuetEvent)initWithATXEvent:(id)a3;
- (ATXScreenLockStateDuetEvent)initWithCoder:(id)a3;
- (ATXScreenLockStateDuetEvent)initWithCurrentContextStoreValues;
- (ATXScreenLockStateDuetEvent)initWithScreenLockState:(int64_t)a3 startDate:(id)a4 endDate:(id)a5;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXScreenLockStateDuetEvent

- (ATXScreenLockStateDuetEvent)initWithScreenLockState:(int64_t)a3 startDate:(id)a4 endDate:(id)a5
{
  v7.receiver = self;
  v7.super_class = ATXScreenLockStateDuetEvent;
  result = [(ATXDuetEvent *)&v7 initWithStartDate:a4 endDate:a5];
  if (result)
  {
    result->_screenLockState = a3;
  }

  return result;
}

- (ATXScreenLockStateDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 isLocked];
    v7 = [v5 startTime];
    v8 = [v5 endTime];

    self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:v6 startDate:v7 endDate:v8];
    v9 = self;
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXScreenLockStateDuetEvent *)v4 initWithATXEvent:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (ATXScreenLockStateDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForDeviceLockStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXScreenLockStateDuetEvent *)v9 initWithCurrentContextStoreValues];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXScreenLockStateDuetEvent *)v10 initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"ContextStore's 'keyPathForDeviceLockStatus' is not an NSNumber."];
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [v5 integerValue];
  v7 = [MEMORY[0x277CBEAA8] date];
  self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:v6 startDate:v7 endDate:v7];

  v8 = self;
LABEL_11:

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXScreenLockStateDuetEvent *)self screenLockState];
  v5 = [(ATXDuetEvent *)self startDate];
  v6 = [(ATXDuetEvent *)self endDate];
  v7 = [v3 initWithFormat:@"Screen Lock state: %ld, start date: %@, end date: %@", v4, v5, v6];

  return v7;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(ATXDuetEvent *)self startDate];
  [v6 encodeObject:v4 forKey:@"codingKeyForStartDate"];

  v5 = [(ATXDuetEvent *)self endDate];
  [v6 encodeObject:v5 forKey:@"codingKeyForEndDate"];

  [v6 encodeInteger:-[ATXScreenLockStateDuetEvent screenLockState](self forKey:{"screenLockState"), @"codingKeyForScreenLockState"}];
}

- (ATXScreenLockStateDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.ScreenLockState" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.ScreenLockState" errorCode:-1 logHandle:v13];

    if (!v14 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForScreenLockState"), -[ATXScreenLockStateDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForScreenLockState", v4, @"com.apple.proactive.ATXDuetEvent.ScreenLockState", -1)))
    {
      v10 = 0;
    }

    else
    {
      self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:v16 startDate:v8 endDate:v14];
      v10 = self;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end