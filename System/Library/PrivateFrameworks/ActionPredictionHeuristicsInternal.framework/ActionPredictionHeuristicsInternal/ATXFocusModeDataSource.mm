@interface ATXFocusModeDataSource
- (ATXFocusModeDataSource)initWithDevice:(id)device;
- (void)isFocusModeActive:(id)active;
@end

@implementation ATXFocusModeDataSource

- (ATXFocusModeDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXFocusModeDataSource;
  v6 = [(ATXFocusModeDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)isFocusModeActive:(id)active
{
  activeCopy = active;
  v4 = +[ATXHeuristicResultCache sharedInstance];
  v7 = 0;
  v5 = [v4 isFocusModeActiveWithError:&v7];
  v6 = v7;

  activeCopy[2](activeCopy, v5, v6);
}

@end