@interface ATXTimeSinceUserWakeupDataSource
- (ATXTimeSinceUserWakeupDataSource)initWithDevice:(id)a3;
- (void)timeIntervalSinceUserWakeupWithCallback:(id)a3;
@end

@implementation ATXTimeSinceUserWakeupDataSource

- (ATXTimeSinceUserWakeupDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXTimeSinceUserWakeupDataSource;
  v6 = [(ATXTimeSinceUserWakeupDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)timeIntervalSinceUserWakeupWithCallback:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 alloc];
  v12 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v7 = [v12 objectForKey:*MEMORY[0x277CEBD80]];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(ATXHeuristicDevice *)self->_device now];
  v10 = v9;
  if (v7)
  {
    [v9 timeIntervalSinceDate:v7];
  }

  else
  {
    [v9 timeIntervalSinceReferenceDate];
  }

  v11 = [v8 numberWithDouble:?];
  v5[2](v5, v11, 0);
}

@end