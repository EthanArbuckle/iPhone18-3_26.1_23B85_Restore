@interface BLSAlwaysOnTimelineUnconfiguredEntry
+ (id)entryForPresentationTime:(id)a3 withRequestedFidelity:(int64_t)a4;
@end

@implementation BLSAlwaysOnTimelineUnconfiguredEntry

+ (id)entryForPresentationTime:(id)a3 withRequestedFidelity:(int64_t)a4
{
  v5 = a3;
  v6 = [[BLSAlwaysOnTimelineUnconfiguredEntry alloc] initWithPresentationTime:v5 requestedFidelity:a4 animated:0 duration:0 timelineIdentifier:0 userObject:0.2];

  return v6;
}

- (void)initWithPresentationTime:(const char *)a1 requestedFidelity:animated:duration:timelineIdentifier:userObject:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self respondsToSelector:@selector(setTimelineIdentifier:)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"BLSAlwaysOnTimelineEntry.m";
    v9 = 1024;
    v10 = 145;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPresentationTime:(const char *)a1 requestedFidelity:animated:duration:timelineIdentifier:userObject:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self respondsToSelector:@selector(setRequestedFidelity:)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"BLSAlwaysOnTimelineEntry.m";
    v9 = 1024;
    v10 = 146;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end