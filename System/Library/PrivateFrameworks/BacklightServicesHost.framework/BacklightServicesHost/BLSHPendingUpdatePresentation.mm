@interface BLSHPendingUpdatePresentation
- (BLSHPendingUpdatePresentation)initWithPresentation:(id)presentation;
- (NSString)description;
@end

@implementation BLSHPendingUpdatePresentation

- (BLSHPendingUpdatePresentation)initWithPresentation:(id)presentation
{
  presentationCopy = presentation;
  v10.receiver = self;
  v10.super_class = BLSHPendingUpdatePresentation;
  v7 = [(BLSHPendingUpdatePresentation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    if (!presentationCopy)
    {
      [(BLSHPendingUpdatePresentation *)a2 initWithPresentation:v7];
    }

    objc_storeStrong(&v7->_presentation, presentation);
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHPendingUpdatePresentation isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHPendingUpdatePresentation isCompleted](self withName:{"isCompleted"), @"completed"}];
  [(BLSHPendingUpdatePresentation *)self targetBacklightState];
  v6 = NSStringFromBLSBacklightState();
  v7 = [v3 appendObject:v6 withName:@"target"];

  v8 = [v3 appendObject:self->_presentation withName:@"presentation"];
  build = [v3 build];

  return build;
}

- (void)initWithPresentation:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"created BLSHPendingUpdatePresentation with nil presentation"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHPendingUpdatePresentation.m";
    v16 = 1024;
    v17 = 19;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end